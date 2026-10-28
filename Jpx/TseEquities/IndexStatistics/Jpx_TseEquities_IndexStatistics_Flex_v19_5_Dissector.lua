-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Jpx TseEquities IndexStatistics Flex 19.5 Protocol
local omi_jpx_tseequities_indexstatistics_flex_v19_5 = Proto("Omi.Jpx.TseEquities.IndexStatistics.Flex.v19.5", "Jpx TseEquities IndexStatistics Flex 19.5")

-- Protocol table
local jpx_tseequities_indexstatistics_flex_v19_5 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Jpx TseEquities IndexStatistics Flex 19.5 Fields
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.aggregate_trading_volume = ProtoField.new("Aggregate Trading Volume", "jpx.tseequities.indexstatistics.flex.v19.5.aggregatetradingvolume", ftypes.STRING, nil, nil, nil, "Indicates the aggregate of trading volume for transactions conducted on ToSTNeT.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.aggregate_turnover = ProtoField.new("Aggregate Turnover", "jpx.tseequities.indexstatistics.flex.v19.5.aggregateturnover", ftypes.STRING, nil, nil, nil, "Indicates the aggregate of turnovers for transactions conducted on the ToSTNeT.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.basket_transaction_c_14 = ProtoField.new("Basket Transaction C 14", "jpx.tseequities.indexstatistics.flex.v19.5.baskettransactionc14", ftypes.STRING, nil, nil, nil, "Indicates the total of trading volumes for basket transactions.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.basket_transaction_c_8 = ProtoField.new("Basket Transaction C 8", "jpx.tseequities.indexstatistics.flex.v19.5.baskettransactionc8", ftypes.STRING, nil, nil, nil, "Indicates the number of basket transactions.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.blank_issue_code = ProtoField.new("Blank Issue Code", "jpx.tseequities.indexstatistics.flex.v19.5.blankissuecode", ftypes.STRING, nil, nil, nil, "Issue Code layout for a Control, Index or Statistics Message, which 5.3.3 (7) sets to spaces. The twelve bytes are on the wire either way, so they are read rather than skipped.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.cb_issue_code = ProtoField.new("CB Issue Code", "jpx.tseequities.indexstatistics.flex.v19.5.cbissuecode", ftypes.STRING, nil, nil, nil, "Issue Code layout used when Issue Classification Large Classification is 02 CB-Related. The figure carries no label of its own in 5.3.3 (7). FLEX Issue Code is set with right-align.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.cb_proper_name_code = ProtoField.new("CB Proper Name Code", "jpx.tseequities.indexstatistics.flex.v19.5.cbpropernamecode", ftypes.STRING, nil, nil, nil, "Proper Name Code.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.cb_reserved_code = ProtoField.new("CB Reserved Code", "jpx.tseequities.indexstatistics.flex.v19.5.cbreservedcode", ftypes.STRING, nil, nil, nil, "Reserved Code.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.cb_space = ProtoField.new("CB Space", "jpx.tseequities.indexstatistics.flex.v19.5.cbspace", ftypes.STRING, nil, nil, nil, "Space.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.closing_price_transaction = ProtoField.new("Closing Price Transaction", "jpx.tseequities.indexstatistics.flex.v19.5.closingpricetransaction", ftypes.STRING, nil, nil, nil, "Indicates the total of trading volumes for closing price transactions.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.comparison_type = ProtoField.new("Comparison Type", "jpx.tseequities.indexstatistics.flex.v19.5.comparisontype", ftypes.STRING, nil, nil, nil, "Indicates comparison type.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.control_medium_classification = ProtoField.new("Control Medium Classification", "jpx.tseequities.indexstatistics.flex.v19.5.controlmediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of a Control Message. Indicates details and other information.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.current_price = ProtoField.new("Current Price", "jpx.tseequities.indexstatistics.flex.v19.5.currentprice", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.current_price_c_14 = ProtoField.new("Current Price C 14", "jpx.tseequities.indexstatistics.flex.v19.5.currentpricec14", ftypes.DOUBLE, nil, nil, nil, "Indicates the current price.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.day_on_day_comparison_c_14 = ProtoField.new("Day On Day Comparison C 14", "jpx.tseequities.indexstatistics.flex.v19.5.dayondaycomparisonc14", ftypes.DOUBLE, nil, nil, nil, "Indicates the change in the total market value (after adjustment) from the previous day.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.day_on_day_comparison_c_8 = ProtoField.new("Day On Day Comparison C 8", "jpx.tseequities.indexstatistics.flex.v19.5.dayondaycomparisonc8", ftypes.DOUBLE, nil, nil, nil, "Indicates the change in the final yield from the previous day.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.direct_yield_average = ProtoField.new("Direct Yield Average", "jpx.tseequities.indexstatistics.flex.v19.5.directyieldaverage", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.direct_yield_average_c_8 = ProtoField.new("Direct Yield Average C 8", "jpx.tseequities.indexstatistics.flex.v19.5.directyieldaveragec8", ftypes.DOUBLE, nil, nil, nil, "Indicates the direct yield. The unit is 1/100%.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.divergence_average = ProtoField.new("Divergence Average", "jpx.tseequities.indexstatistics.flex.v19.5.divergenceaverage", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.divergence_average_c_8 = ProtoField.new("Divergence Average C 8", "jpx.tseequities.indexstatistics.flex.v19.5.divergenceaveragec8", ftypes.DOUBLE, nil, nil, nil, "Indicates the divergence average. The unit is 1/100%.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.estimated_total_trading_volume = ProtoField.new("Estimated Total Trading Volume", "jpx.tseequities.indexstatistics.flex.v19.5.estimatedtotaltradingvolume", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.estimated_total_trading_volume_c_14 = ProtoField.new("Estimated Total Trading Volume C 14", "jpx.tseequities.indexstatistics.flex.v19.5.estimatedtotaltradingvolumec14", ftypes.STRING, nil, nil, nil, "Indicates the estimated total trading volume for each issue classification.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.estimated_total_turnover = ProtoField.new("Estimated Total Turnover", "jpx.tseequities.indexstatistics.flex.v19.5.estimatedtotalturnover", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.estimated_total_turnover_c_14 = ProtoField.new("Estimated Total Turnover C 14", "jpx.tseequities.indexstatistics.flex.v19.5.estimatedtotalturnoverc14", ftypes.STRING, nil, nil, nil, "Indicates the estimated total turnover.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.exchange_code = ProtoField.new("Exchange Code", "jpx.tseequities.indexstatistics.flex.v19.5.exchangecode", ftypes.STRING, nil, nil, nil, "Exchange the information belongs to. This section is a space in Control Message.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.flag = ProtoField.new("Flag", "jpx.tseequities.indexstatistics.flex.v19.5.flag", ftypes.STRING, nil, nil, nil, "Indicates the flag of the opening price.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.fourth_trading_volumeturnover_unit_flag = ProtoField.new("Fourth Trading Volume/Turnover Unit Flag", "jpx.tseequities.indexstatistics.flex.v19.5.fourthtradingvolumeturnoverunitflag", ftypes.STRING, nil, nil, nil, "Indicates the unit of the turnover.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.highest = ProtoField.new("Highest", "jpx.tseequities.indexstatistics.flex.v19.5.highest", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.index = ProtoField.new("Index", "jpx.tseequities.indexstatistics.flex.v19.5.index", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.index_day_on_day_comparison = ProtoField.new("Index Day On Day Comparison", "jpx.tseequities.indexstatistics.flex.v19.5.indexdayondaycomparison", ftypes.STRING, nil, nil, nil, "Index Day-on-day comparison")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.index_medium_classification = ProtoField.new("Index Medium Classification", "jpx.tseequities.indexstatistics.flex.v19.5.indexmediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of a Index Message. Indicates details and other information.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.index_type = ProtoField.new("Index Type", "jpx.tseequities.indexstatistics.flex.v19.5.indextype", ftypes.STRING, nil, nil, nil, "Indicates the type of index.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.index_value = ProtoField.new("Index Value", "jpx.tseequities.indexstatistics.flex.v19.5.indexvalue", ftypes.DOUBLE, nil, nil, nil, "Indicates the opening price of the index. Unit used for computation: 1/100 (the second decimal places will be set)")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.industry_code = ProtoField.new("Industry Code", "jpx.tseequities.indexstatistics.flex.v19.5.industrycode", ftypes.STRING, nil, nil, nil, "This tag will also be sent for industries without issues.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.issue_basic_medium_classification = ProtoField.new("Issue Basic Medium Classification", "jpx.tseequities.indexstatistics.flex.v19.5.issuebasicmediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of a Issue Basic Message. Indicates details and other information.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.issue_classification = ProtoField.new("Issue Classification", "jpx.tseequities.indexstatistics.flex.v19.5.issueclassification", ftypes.STRING, nil, nil, nil, "Set in issue realtime message and issue basic message. In the case of Control, Index and Statistics Message, space is set.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.issue_classification_code = ProtoField.new("Issue Classification Code", "jpx.tseequities.indexstatistics.flex.v19.5.issueclassificationcode", ftypes.STRING, nil, nil, nil, "Indicates the issue classification code.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.issue_classification_large_classification = ProtoField.new("Issue Classification Large Classification", "jpx.tseequities.indexstatistics.flex.v19.5.issueclassificationlargeclassification", ftypes.STRING, nil, nil, nil, "Large Classification of the Issue Classification Code.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.issue_classification_medium_classification = ProtoField.new("Issue Classification Medium Classification", "jpx.tseequities.indexstatistics.flex.v19.5.issueclassificationmediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of the Issue Classification Code. Its meaning depends on the Large Classification: under 01 Stock-Related, 11 Prime Market (Domestic Stock) through 23 TOKYO PRO Market (Foreign Stock); under 02 CB-Related, 11 CB / 13 SW / 14 Exchangeable Bond.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.issue_realtime_medium_classification = ProtoField.new("Issue Realtime Medium Classification", "jpx.tseequities.indexstatistics.flex.v19.5.issuerealtimemediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of a Issue Realtime Message. Indicates details and other information.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.lowest = ProtoField.new("Lowest", "jpx.tseequities.indexstatistics.flex.v19.5.lowest", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.market_value_day_on_day_comparison = ProtoField.new("Market Value Day On Day Comparison", "jpx.tseequities.indexstatistics.flex.v19.5.marketvaluedayondaycomparison", ftypes.STRING, nil, nil, nil, "Market value Day-on-day comparison")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.message_length = ProtoField.new("Message Length", "jpx.tseequities.indexstatistics.flex.v19.5.messagelength", ftypes.STRING, nil, nil, nil, "Total Length: Control Code (DC1 and DC2) + Service Header Section + User Data Section (including DC3). Right-align the data, suppress space in the leading space.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.message_serial_no = ProtoField.new("Message Serial No", "jpx.tseequities.indexstatistics.flex.v19.5.messageserialno", ftypes.STRING, nil, nil, nil, "Numbered from 1 on each Multicast Group, with the multicast group number in the first to third byte")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.message_type = ProtoField.new("Message Type", "jpx.tseequities.indexstatistics.flex.v19.5.messagetype", ftypes.STRING, nil, nil, nil, "Large Classification indicates Message Type, and Medium Classification indicates details and other information")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.message_type_large_classification = ProtoField.new("Message Type Large Classification", "jpx.tseequities.indexstatistics.flex.v19.5.messagetypelargeclassification", ftypes.STRING, nil, nil, nil, "Large Classification indicates Message Type.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.multicast_group_number = ProtoField.new("Multicast Group Number", "jpx.tseequities.indexstatistics.flex.v19.5.multicastgroupnumber", ftypes.STRING, nil, nil, nil, "Multicast group number, set in the first to third byte of the Message Serial No.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.net_change = ProtoField.new("Net Change", "jpx.tseequities.indexstatistics.flex.v19.5.netchange", ftypes.DOUBLE, nil, nil, nil, "Indicates the net change.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.net_change_distinction = ProtoField.new("Net Change Distinction", "jpx.tseequities.indexstatistics.flex.v19.5.netchangedistinction", ftypes.STRING, nil, nil, nil, "Indicates the distinction between net change.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.net_change_rate = ProtoField.new("Net Change Rate", "jpx.tseequities.indexstatistics.flex.v19.5.netchangerate", ftypes.DOUBLE, nil, nil, nil, "Indicates net change rate. The unit will be 1/100%.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_active_issues = ProtoField.new("Number Of Active Issues", "jpx.tseequities.indexstatistics.flex.v19.5.numberofactiveissues", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_decliners = ProtoField.new("Number Of Decliners", "jpx.tseequities.indexstatistics.flex.v19.5.numberofdecliners", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_gainers = ProtoField.new("Number Of Gainers", "jpx.tseequities.indexstatistics.flex.v19.5.numberofgainers", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_inactive_issues = ProtoField.new("Number Of Inactive Issues", "jpx.tseequities.indexstatistics.flex.v19.5.numberofinactiveissues", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_issues = ProtoField.new("Number Of Issues", "jpx.tseequities.indexstatistics.flex.v19.5.numberofissues", ftypes.STRING, nil, nil, nil, "Unit: issue")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_issues_with_no_change = ProtoField.new("Number Of Issues With No Change", "jpx.tseequities.indexstatistics.flex.v19.5.numberofissueswithnochange", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_issues_with_no_comparison = ProtoField.new("Number Of Issues With No Comparison", "jpx.tseequities.indexstatistics.flex.v19.5.numberofissueswithnocomparison", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_listed_companies = ProtoField.new("Number Of Listed Companies", "jpx.tseequities.indexstatistics.flex.v19.5.numberoflistedcompanies", ftypes.STRING, nil, nil, nil, "Indicates the number of listed companies. Unit: company")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_listed_issues = ProtoField.new("Number Of Listed Issues", "jpx.tseequities.indexstatistics.flex.v19.5.numberoflistedissues", ftypes.STRING, nil, nil, nil, "Indicates the number of listed issues. Unit: issue")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_transactions = ProtoField.new("Number Of Transactions", "jpx.tseequities.indexstatistics.flex.v19.5.numberoftransactions", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.open = ProtoField.new("Open", "jpx.tseequities.indexstatistics.flex.v19.5.open", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.other_classification_code = ProtoField.new("Other Classification Code", "jpx.tseequities.indexstatistics.flex.v19.5.otherclassificationcode", ftypes.STRING, nil, nil, nil, "Identifies the classifications that are not included in the issue classification codes.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.other_classification_flag = ProtoField.new("Other Classification Flag", "jpx.tseequities.indexstatistics.flex.v19.5.otherclassificationflag", ftypes.STRING, nil, nil, nil, "Identifies the classifications that are not included in the issue classification codes.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.output_time = ProtoField.new("Output Time", "jpx.tseequities.indexstatistics.flex.v19.5.outputtime", ftypes.STRING, nil, nil, nil, "Indicates the time of computation.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.overall = ProtoField.new("Overall", "jpx.tseequities.indexstatistics.flex.v19.5.overall", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.overall_direct_yield_average = ProtoField.new("Overall Direct Yield Average", "jpx.tseequities.indexstatistics.flex.v19.5.overalldirectyieldaverage", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.overall_divergence_average = ProtoField.new("Overall Divergence Average", "jpx.tseequities.indexstatistics.flex.v19.5.overalldivergenceaverage", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.overall_parity_average = ProtoField.new("Overall Parity Average", "jpx.tseequities.indexstatistics.flex.v19.5.overallparityaverage", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.overall_simple_average = ProtoField.new("Overall Simple Average", "jpx.tseequities.indexstatistics.flex.v19.5.overallsimpleaverage", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.parity_100_or_higher = ProtoField.new("Parity 100 Or Higher", "jpx.tseequities.indexstatistics.flex.v19.5.parity100orhigher", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.parity_average = ProtoField.new("Parity Average", "jpx.tseequities.indexstatistics.flex.v19.5.parityaverage", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.parity_average_c_14 = ProtoField.new("Parity Average C 14", "jpx.tseequities.indexstatistics.flex.v19.5.parityaveragec14", ftypes.DOUBLE, nil, nil, nil, "Indicates the parity average. The unit used for the computation is 1/100 points.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.parity_less_than_100 = ProtoField.new("Parity Less Than 100", "jpx.tseequities.indexstatistics.flex.v19.5.paritylessthan100", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.rank = ProtoField.new("Rank", "jpx.tseequities.indexstatistics.flex.v19.5.rank", ftypes.STRING, nil, nil, nil, "Indicates the rank.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.ranked_issue_code = ProtoField.new("Ranked Issue Code", "jpx.tseequities.indexstatistics.flex.v19.5.rankedissuecode", ftypes.STRING, nil, nil, nil, "Indicates the issue code.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.ratio = ProtoField.new("Ratio", "jpx.tseequities.indexstatistics.flex.v19.5.ratio", ftypes.DOUBLE, nil, nil, nil, "Unit: 1/100%")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.reserved_1 = ProtoField.new("Reserved 1", "jpx.tseequities.indexstatistics.flex.v19.5.reserved1", ftypes.STRING, nil, nil, nil, "This item is reserved for future use.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.reserved_2 = ProtoField.new("Reserved 2", "jpx.tseequities.indexstatistics.flex.v19.5.reserved2", ftypes.STRING, nil, nil, nil, "This item is reserved.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.second_sign = ProtoField.new("Second Sign", "jpx.tseequities.indexstatistics.flex.v19.5.secondsign", ftypes.STRING, nil, nil, nil, "Indicates the sign of Day-on-day comparison.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.second_trading_volumeturnover_unit_flag = ProtoField.new("Second Trading Volume/Turnover Unit Flag", "jpx.tseequities.indexstatistics.flex.v19.5.secondtradingvolumeturnoverunitflag", ftypes.STRING, nil, nil, nil, "Indicates the unit of the turnover.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.second_unit_flag = ProtoField.new("Second Unit Flag", "jpx.tseequities.indexstatistics.flex.v19.5.secondunitflag", ftypes.STRING, nil, nil, nil, "Indicates that this is the unit flag.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.separation_between_service_header_and_data_section = ProtoField.new("Separation Between Service Header And Data Section", "jpx.tseequities.indexstatistics.flex.v19.5.separationbetweenserviceheaderanddatasection", ftypes.UINT8, nil, nil, nil, "Control Code DC2 (0x12), Separation between Service Header and Data Section")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.separation_of_tag = ProtoField.new("Separation Of Tag", "jpx.tseequities.indexstatistics.flex.v19.5.separationoftag", ftypes.UINT8, nil, nil, nil, "Control Code DC3 (0x13) between tags, or DC1 (0x11) on the tag that ends the message")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.sequence_number = ProtoField.new("Sequence Number", "jpx.tseequities.indexstatistics.flex.v19.5.sequencenumber", ftypes.STRING, nil, nil, nil, "Numbered in sequence, beginning with 00000001. Space is set in the case of Backup Information, All-Day Information or Issue Basic Information, and the requested serial number which was used for the UDP message is set in Retransmission.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.session_distinction = ProtoField.new("Session Distinction", "jpx.tseequities.indexstatistics.flex.v19.5.sessiondistinction", ftypes.STRING, nil, nil, nil, "Indicates the session in which the new information is generated. Set in Issue Real-time Message (FLEX Standard, ToSTNeT) and Index Message; for Issue Basic Message, Statistics Message and Control Message, spaces is set.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.sign = ProtoField.new("Sign", "jpx.tseequities.indexstatistics.flex.v19.5.sign", ftypes.STRING, nil, nil, nil, "Indicates the sign of Day-on-day comparison.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_average = ProtoField.new("Simple Average", "jpx.tseequities.indexstatistics.flex.v19.5.simpleaverage", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_average_c_14 = ProtoField.new("Simple Average C 14", "jpx.tseequities.indexstatistics.flex.v19.5.simpleaveragec14", ftypes.DOUBLE, nil, nil, nil, "Indicates the simple average. The unit used for the computation is 1/100 yen (i.e., sen).")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_stock_price_average = ProtoField.new("Simple Stock Price Average", "jpx.tseequities.indexstatistics.flex.v19.5.simplestockpriceaverage", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_stock_price_average_c_14 = ProtoField.new("Simple Stock Price Average C 14", "jpx.tseequities.indexstatistics.flex.v19.5.simplestockpriceaveragec14", ftypes.DOUBLE, nil, nil, nil, "Indicates the simple stock price average. The unit used for the computation is 1/100 yen (i.e., sen).")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_yield = ProtoField.new("Simple Yield", "jpx.tseequities.indexstatistics.flex.v19.5.simpleyield", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_yield_c_8 = ProtoField.new("Simple Yield C 8", "jpx.tseequities.indexstatistics.flex.v19.5.simpleyieldc8", ftypes.DOUBLE, nil, nil, nil, "Indicates the simple yield. Unit: 1/100%")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.single_issue_transaction_c_14 = ProtoField.new("Single Issue Transaction C 14", "jpx.tseequities.indexstatistics.flex.v19.5.singleissuetransactionc14", ftypes.STRING, nil, nil, nil, "Indicates the total of trading volumes for single-issue transactions.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.single_issue_transaction_c_8 = ProtoField.new("Single Issue Transaction C 8", "jpx.tseequities.indexstatistics.flex.v19.5.singleissuetransactionc8", ftypes.STRING, nil, nil, nil, "Indicates the number of single-issue transactions. Unit: transaction")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.sq_type = ProtoField.new("Sq Type", "jpx.tseequities.indexstatistics.flex.v19.5.sqtype", ftypes.STRING, nil, nil, nil, "Indicates the type of S.Q.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.start_of_message = ProtoField.new("Start Of Message", "jpx.tseequities.indexstatistics.flex.v19.5.startofmessage", ftypes.UINT8, nil, nil, nil, "Control Code DC1 (0x11), Start of a message")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.startend_flag = ProtoField.new("Startend Flag", "jpx.tseequities.indexstatistics.flex.v19.5.startendflag", ftypes.STRING, nil, nil, nil, "Indicates the flag for identifying the distinction between start and end.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.state_sign = ProtoField.new("State Sign", "jpx.tseequities.indexstatistics.flex.v19.5.statesign", ftypes.STRING, nil, nil, nil, "Indicates the state of the current price.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.statistics_medium_classification = ProtoField.new("Statistics Medium Classification", "jpx.tseequities.indexstatistics.flex.v19.5.statisticsmediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of a Statistics Message. Indicates details and other information.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.stock_issue_code = ProtoField.new("Stock Issue Code", "jpx.tseequities.indexstatistics.flex.v19.5.stockissuecode", ftypes.STRING, nil, nil, nil, "Issue Code layout a. Stocks, used when Issue Classification Large Classification is 01 Stock-Related. FLEX Issue Code is set with right-align.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.stock_price_average_day_on_day_comparison = ProtoField.new("Stock Price Average Day On Day Comparison", "jpx.tseequities.indexstatistics.flex.v19.5.stockpriceaveragedayondaycomparison", ftypes.STRING, nil, nil, nil, "Stock price average Day-on-day comparison")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.stock_proper_name_code = ProtoField.new("Stock Proper Name Code", "jpx.tseequities.indexstatistics.flex.v19.5.stockpropernamecode", ftypes.STRING, nil, nil, nil, "Proper Name Code.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.stock_reserved_code = ProtoField.new("Stock Reserved Code", "jpx.tseequities.indexstatistics.flex.v19.5.stockreservedcode", ftypes.STRING, nil, nil, nil, "Reserved Code. Space is set on the reserved code of a Mother Stock.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.stock_space = ProtoField.new("Stock Space", "jpx.tseequities.indexstatistics.flex.v19.5.stockspace", ftypes.STRING, nil, nil, nil, "Space.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.tag_id = ProtoField.new("Tag ID", "jpx.tseequities.indexstatistics.flex.v19.5.tagid", ftypes.STRING, nil, nil, nil, "Tag ID is numbered using 1 to 9 and A to Z. Different tags are used for different information classifications.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.tag_information = ProtoField.new("Tag Information", "jpx.tseequities.indexstatistics.flex.v19.5.taginformation", ftypes.STRING, nil, nil, nil, "One tag: its two character Tag ID, its data, and the control code that closes it (DC3 between tags, DC1 at the end of the message)")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.test_mode_flag = ProtoField.new("Test Mode Flag", "jpx.tseequities.indexstatistics.flex.v19.5.testmodeflag", ftypes.STRING, nil, nil, nil, "Indicates the flag for identifying the distinction between real and test operation.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.third_trading_volumeturnover_unit_flag = ProtoField.new("Third Trading Volume/Turnover Unit Flag", "jpx.tseequities.indexstatistics.flex.v19.5.thirdtradingvolumeturnoverunitflag", ftypes.STRING, nil, nil, nil, "Indicates the unit of the turnover.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.time_c_6_hhmm = ProtoField.new("Time C 6 Hhmm", "jpx.tseequities.indexstatistics.flex.v19.5.timec6hhmm", ftypes.STRING, nil, nil, nil, "Indicates the time of computation.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.time_c_6_hhmmss = ProtoField.new("Time C 6 Hhmmss", "jpx.tseequities.indexstatistics.flex.v19.5.timec6hhmmss", ftypes.STRING, nil, nil, nil, "Indicates the time at which the opening price was computed.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.time_symbol = ProtoField.new("Time Symbol", "jpx.tseequities.indexstatistics.flex.v19.5.timesymbol", ftypes.STRING, nil, nil, nil, "Time Symbol.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.top_rank_by_net_change = ProtoField.new("Top Rank By Net Change", "jpx.tseequities.indexstatistics.flex.v19.5.toprankbynetchange", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.top_rank_by_net_change_rate = ProtoField.new("Top Rank By Net Change Rate", "jpx.tseequities.indexstatistics.flex.v19.5.toprankbynetchangerate", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.top_rank_by_trading_volume = ProtoField.new("Top Rank By Trading Volume", "jpx.tseequities.indexstatistics.flex.v19.5.toprankbytradingvolume", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.top_rank_by_turnover = ProtoField.new("Top Rank By Turnover", "jpx.tseequities.indexstatistics.flex.v19.5.toprankbyturnover", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.total_market_value = ProtoField.new("Total Market Value", "jpx.tseequities.indexstatistics.flex.v19.5.totalmarketvalue", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.total_market_value_c_14 = ProtoField.new("Total Market Value C 14", "jpx.tseequities.indexstatistics.flex.v19.5.totalmarketvaluec14", ftypes.DOUBLE, nil, nil, nil, "Indicates the total market value. The unit used for the computation is 1 million yen.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.trading_volume = ProtoField.new("Trading Volume", "jpx.tseequities.indexstatistics.flex.v19.5.tradingvolume", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.trading_volume_c_14 = ProtoField.new("Trading Volume C 14", "jpx.tseequities.indexstatistics.flex.v19.5.tradingvolumec14", ftypes.STRING, nil, nil, nil, "Indicates the trading volume.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.trading_volume_turnover_unit_flag = ProtoField.new("Trading Volume Turnover Unit Flag", "jpx.tseequities.indexstatistics.flex.v19.5.tradingvolumeturnoverunitflag", ftypes.STRING, nil, nil, nil, "Indicates the unit of the turnover.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.turnover = ProtoField.new("Turnover", "jpx.tseequities.indexstatistics.flex.v19.5.turnover", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.turnover_c_14 = ProtoField.new("Turnover C 14", "jpx.tseequities.indexstatistics.flex.v19.5.turnoverc14", ftypes.STRING, nil, nil, nil, "Indicates the turnover.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.unit_flag = ProtoField.new("Unit Flag", "jpx.tseequities.indexstatistics.flex.v19.5.unitflag", ftypes.STRING, nil, nil, nil, "Indicates that this is the unit flag.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.vwap_by_market = ProtoField.new("Vwap By Market", "jpx.tseequities.indexstatistics.flex.v19.5.vwapbymarket", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.vwap_by_market_c_14 = ProtoField.new("Vwap By Market C 14", "jpx.tseequities.indexstatistics.flex.v19.5.vwapbymarketc14", ftypes.DOUBLE, nil, nil, nil, "Indicates the VWAP by market. Unit used for computation: 1/100 yen")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.weighted_stock_price_average = ProtoField.new("Weighted Stock Price Average", "jpx.tseequities.indexstatistics.flex.v19.5.weightedstockpriceaverage", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.weighted_stock_price_average_c_14 = ProtoField.new("Weighted Stock Price Average C 14", "jpx.tseequities.indexstatistics.flex.v19.5.weightedstockpriceaveragec14", ftypes.DOUBLE, nil, nil, nil, "Indicates the weighted stock price average. The unit used for the computation is 1/100 yen (i.e., sen).")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.weighted_yield = ProtoField.new("Weighted Yield", "jpx.tseequities.indexstatistics.flex.v19.5.weightedyield", ftypes.STRING)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.weighted_yield_c_8 = ProtoField.new("Weighted Yield C 8", "jpx.tseequities.indexstatistics.flex.v19.5.weightedyieldc8", ftypes.DOUBLE, nil, nil, nil, "Indicates the weighted yield. Unit: 1/100%")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.yield_day_on_day_comparison = ProtoField.new("Yield Day On Day Comparison", "jpx.tseequities.indexstatistics.flex.v19.5.yielddayondaycomparison", ftypes.STRING, nil, nil, nil, "Yield Day-on-day comparison")

-- Jpx TseEquities IndexStatistics Flex 19.5 Framing
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.service_header = ProtoField.new("Service Header", "jpx.tseequities.indexstatistics.flex.v19.5.serviceheader", ftypes.STRING, nil, nil, nil, "Jpx Flex 39 byte service header, common to all message types")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.udp_packet = ProtoField.new("Udp Packet", "jpx.tseequities.indexstatistics.flex.v19.5.udppacket", ftypes.STRING, nil, nil, nil, "One Flex user message per datagram: DC1, Service Header, DC2, then the tags")

-- Jpx TseEquities IndexStatistics 19.5 Application Messages
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.control_message = ProtoField.new("Control Message", "jpx.tseequities.indexstatistics.flex.v19.5.controlmessage", ftypes.STRING, nil, nil, nil, "In this tag, the test mode flag and the start/end flag that are used in a control message will be set. This tag will be edited into a control message (communication control and health check control) for output.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.estimated_total_trading_volume_message = ProtoField.new("Estimated Total Trading Volume Message", "jpx.tseequities.indexstatistics.flex.v19.5.estimatedtotaltradingvolumemessage", ftypes.STRING, nil, nil, nil, "In this tag, estimated total trading volume information for each market (issue classification) will be set. This data appears as part of a statistics message.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.estimated_total_turnover_message = ProtoField.new("Estimated Total Turnover Message", "jpx.tseequities.indexstatistics.flex.v19.5.estimatedtotalturnovermessage", ftypes.STRING, nil, nil, nil, "In this tag, estimated total turnover information for each market (issue classification) will be set. This data appears as part of a statistics message.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.index_open_high_low_and_closing_prices_message = ProtoField.new("Index Open High Low And Closing Prices Message", "jpx.tseequities.indexstatistics.flex.v19.5.indexopenhighlowandclosingpricesmessage", ftypes.STRING, nil, nil, nil, "In this tag, index information will be set. This data is appeared as one of index data.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.japanese_yen_cb_indicator_message = ProtoField.new("Japanese Yen Cb Indicator Message", "jpx.tseequities.indexstatistics.flex.v19.5.japaneseyencbindicatormessage", ftypes.STRING, nil, nil, nil, "In this tag, CB indicator (overall, parity 100 or higher, and parity less than 100) information will be set. This data appears as part of a statistics message.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.market_value_message = ProtoField.new("Market Value Message", "jpx.tseequities.indexstatistics.flex.v19.5.marketvaluemessage", ftypes.STRING, nil, nil, nil, "In this tag, total market value information for each market (issue classification) will be set. This data appears as part of a statistics message.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_gainers_decliners_message = ProtoField.new("Number Of Gainers Decliners Message", "jpx.tseequities.indexstatistics.flex.v19.5.numberofgainersdeclinersmessage", ftypes.STRING, nil, nil, nil, "In this tag, number of listed issues and number of gainers/decliners information by market (issue classification) will be set. This data appears as part of a statistics message.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.ranking_by_net_change_message = ProtoField.new("Ranking By Net Change Message", "jpx.tseequities.indexstatistics.flex.v19.5.rankingbynetchangemessage", ftypes.STRING, nil, nil, nil, "In this tag, information concerning top 30 issues by net change for each market (issue classification) will be set. This data appears as part of a statistics message.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.ranking_by_net_change_rate_message = ProtoField.new("Ranking By Net Change Rate Message", "jpx.tseequities.indexstatistics.flex.v19.5.rankingbynetchangeratemessage", ftypes.STRING, nil, nil, nil, "In this tag, information concerning top 30 issues in net change rate for each market (issue classification) will be set. This data appears as part of a statistics message.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.ranking_by_trading_volume_message = ProtoField.new("Ranking By Trading Volume Message", "jpx.tseequities.indexstatistics.flex.v19.5.rankingbytradingvolumemessage", ftypes.STRING, nil, nil, nil, "In this tag, information concerning top 30 issues by trading volume for each market (issue classification) will be set. This data appears as part of a statistics message.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.ranking_by_turnover_message = ProtoField.new("Ranking By Turnover Message", "jpx.tseequities.indexstatistics.flex.v19.5.rankingbyturnovermessage", ftypes.STRING, nil, nil, nil, "In this tag, information concerning top 30 issues by turnover for each market (issue classification) will be set. This data appears as part of a statistics message.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_stock_price_average_by_industry_message = ProtoField.new("Simple Stock Price Average By Industry Message", "jpx.tseequities.indexstatistics.flex.v19.5.simplestockpriceaveragebyindustrymessage", ftypes.STRING, nil, nil, nil, "In this tag, simple stock price average information by industry classification will be set. This data appears as part of a statistics message.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_stock_price_average_message = ProtoField.new("Simple Stock Price Average Message", "jpx.tseequities.indexstatistics.flex.v19.5.simplestockpriceaveragemessage", ftypes.STRING, nil, nil, nil, "In this tag, simple stock price average information for each market (issue classification) will be set. This data appears as part of a statistics message.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_yield_message = ProtoField.new("Simple Yield Message", "jpx.tseequities.indexstatistics.flex.v19.5.simpleyieldmessage", ftypes.STRING, nil, nil, nil, "In this tag, simple yield information for each market (issue classification) will be set. This data appears as part of a statistics message.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.special_quotation_message = ProtoField.new("Special Quotation Message", "jpx.tseequities.indexstatistics.flex.v19.5.specialquotationmessage", ftypes.STRING, nil, nil, nil, "In this tag, special quotation (S.Q.) information will be set. This data appears as part of index data.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.tostnet_statistics_message = ProtoField.new("ToSTNeT Statistics Message", "jpx.tseequities.indexstatistics.flex.v19.5.tostnetstatisticsmessage", ftypes.STRING, nil, nil, nil, "In this tag, the quantities traded on the ToSTNeT and other information will be set. This data appears as part of a statistics message.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.vwap_by_market_message = ProtoField.new("Vwap By Market Message", "jpx.tseequities.indexstatistics.flex.v19.5.vwapbymarketmessage", ftypes.STRING, nil, nil, nil, "In this tag, volume weighted average price (VWAP) information for each market (issue classification) will be set. This data appears as part of a statistics message.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.weighted_stock_price_average_message = ProtoField.new("Weighted Stock Price Average Message", "jpx.tseequities.indexstatistics.flex.v19.5.weightedstockpriceaveragemessage", ftypes.STRING, nil, nil, nil, "In this tag, weighted stock price average information for each market (issue classification) will be set. This data appears as part of a statistics message.")
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.weighted_yield_message = ProtoField.new("Weighted Yield Message", "jpx.tseequities.indexstatistics.flex.v19.5.weightedyieldmessage", ftypes.STRING, nil, nil, nil, "In this tag, weighted yield information for each market (issue classification) will be set. This data appears as part of a statistics message.")

-- Jpx TseEquities IndexStatistics Flex 19.5 Generated Fields
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.top_rank_by_net_change_index = ProtoField.new("Top Rank By Net Change Index", "jpx.tseequities.indexstatistics.flex.v19.5.toprankbynetchangeindex", ftypes.UINT16)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.top_rank_by_net_change_rate_index = ProtoField.new("Top Rank By Net Change Rate Index", "jpx.tseequities.indexstatistics.flex.v19.5.toprankbynetchangerateindex", ftypes.UINT16)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.top_rank_by_trading_volume_index = ProtoField.new("Top Rank By Trading Volume Index", "jpx.tseequities.indexstatistics.flex.v19.5.toprankbytradingvolumeindex", ftypes.UINT16)
omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.top_rank_by_turnover_index = ProtoField.new("Top Rank By Turnover Index", "jpx.tseequities.indexstatistics.flex.v19.5.toprankbyturnoverindex", ftypes.UINT16)

-- Jpx TseEquities IndexStatistics Flex 19.5 Expert Info
jpx_tseequities_indexstatistics_flex_v19_5.experts = {}
jpx_tseequities_indexstatistics_flex_v19_5.experts.not_a_number = ProtoExpert.new("jpx.tseequities.indexstatistics.flex.v19.5.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_jpx_tseequities_indexstatistics_flex_v19_5.experts = { jpx_tseequities_indexstatistics_flex_v19_5.experts.not_a_number }

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Jpx TseEquities IndexStatistics Flex 19.5 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.indexes = true

-- Register Jpx TseEquities IndexStatistics Flex 19.5 Show Options
omi_jpx_tseequities_indexstatistics_flex_v19_5.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_jpx_tseequities_indexstatistics_flex_v19_5.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_jpx_tseequities_indexstatistics_flex_v19_5.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_jpx_tseequities_indexstatistics_flex_v19_5.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_jpx_tseequities_indexstatistics_flex_v19_5.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_jpx_tseequities_indexstatistics_flex_v19_5.prefs.show_application_messages then
    show.application_messages = omi_jpx_tseequities_indexstatistics_flex_v19_5.prefs.show_application_messages
  end
  if show.headers ~= omi_jpx_tseequities_indexstatistics_flex_v19_5.prefs.show_headers then
    show.headers = omi_jpx_tseequities_indexstatistics_flex_v19_5.prefs.show_headers
  end
  if show.structs ~= omi_jpx_tseequities_indexstatistics_flex_v19_5.prefs.show_structs then
    show.structs = omi_jpx_tseequities_indexstatistics_flex_v19_5.prefs.show_structs
  end
  if show.indexes ~= omi_jpx_tseequities_indexstatistics_flex_v19_5.prefs.show_indexes then
    show.indexes = omi_jpx_tseequities_indexstatistics_flex_v19_5.prefs.show_indexes
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


-----------------------------------------------------------------------
-- Jpx TseEquities IndexStatistics Flex 19.5 Fields
-----------------------------------------------------------------------

-- Aggregate Trading Volume
jpx_tseequities_indexstatistics_flex_v19_5.aggregate_trading_volume = {}

-- Size: Aggregate Trading Volume
jpx_tseequities_indexstatistics_flex_v19_5.aggregate_trading_volume.size = 14

-- Display: Aggregate Trading Volume
jpx_tseequities_indexstatistics_flex_v19_5.aggregate_trading_volume.display = function(value)
  return "Aggregate Trading Volume: "..value
end

-- Dissect: Aggregate Trading Volume
jpx_tseequities_indexstatistics_flex_v19_5.aggregate_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.aggregate_trading_volume.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.aggregate_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.aggregate_trading_volume, range, value, display)

  return offset + length, value
end

-- Aggregate Turnover
jpx_tseequities_indexstatistics_flex_v19_5.aggregate_turnover = {}

-- Size: Aggregate Turnover
jpx_tseequities_indexstatistics_flex_v19_5.aggregate_turnover.size = 14

-- Display: Aggregate Turnover
jpx_tseequities_indexstatistics_flex_v19_5.aggregate_turnover.display = function(value)
  return "Aggregate Turnover: "..value
end

-- Dissect: Aggregate Turnover
jpx_tseequities_indexstatistics_flex_v19_5.aggregate_turnover.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.aggregate_turnover.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.aggregate_turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.aggregate_turnover, range, value, display)

  return offset + length, value
end

-- Basket Transaction C 14
jpx_tseequities_indexstatistics_flex_v19_5.basket_transaction_c_14 = {}

-- Size: Basket Transaction C 14
jpx_tseequities_indexstatistics_flex_v19_5.basket_transaction_c_14.size = 14

-- Display: Basket Transaction C 14
jpx_tseequities_indexstatistics_flex_v19_5.basket_transaction_c_14.display = function(value)
  return "Basket Transaction C 14: "..value
end

-- Dissect: Basket Transaction C 14
jpx_tseequities_indexstatistics_flex_v19_5.basket_transaction_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.basket_transaction_c_14.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.basket_transaction_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.basket_transaction_c_14, range, value, display)

  return offset + length, value
end

-- Basket Transaction C 8
jpx_tseequities_indexstatistics_flex_v19_5.basket_transaction_c_8 = {}

-- Size: Basket Transaction C 8
jpx_tseequities_indexstatistics_flex_v19_5.basket_transaction_c_8.size = 8

-- Display: Basket Transaction C 8
jpx_tseequities_indexstatistics_flex_v19_5.basket_transaction_c_8.display = function(value)
  return "Basket Transaction C 8: "..value
end

-- Dissect: Basket Transaction C 8
jpx_tseequities_indexstatistics_flex_v19_5.basket_transaction_c_8.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.basket_transaction_c_8.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.basket_transaction_c_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.basket_transaction_c_8, range, value, display)

  return offset + length, value
end

-- Blank Issue Code
jpx_tseequities_indexstatistics_flex_v19_5.blank_issue_code = {}

-- Size: Blank Issue Code
jpx_tseequities_indexstatistics_flex_v19_5.blank_issue_code.size = 12

-- Display: Blank Issue Code
jpx_tseequities_indexstatistics_flex_v19_5.blank_issue_code.display = function(value)
  return "Blank Issue Code: "..value
end

-- Dissect: Blank Issue Code
jpx_tseequities_indexstatistics_flex_v19_5.blank_issue_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.blank_issue_code.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.blank_issue_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.blank_issue_code, range, value, display)

  return offset + length, value
end

-- CB Proper Name Code
jpx_tseequities_indexstatistics_flex_v19_5.cb_proper_name_code = {}

-- Size: CB Proper Name Code
jpx_tseequities_indexstatistics_flex_v19_5.cb_proper_name_code.size = 4

-- Display: CB Proper Name Code
jpx_tseequities_indexstatistics_flex_v19_5.cb_proper_name_code.display = function(value)
  return "CB Proper Name Code: "..value
end

-- Dissect: CB Proper Name Code
jpx_tseequities_indexstatistics_flex_v19_5.cb_proper_name_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.cb_proper_name_code.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.cb_proper_name_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.cb_proper_name_code, range, value, display)

  return offset + length, value
end

-- CB Reserved Code
jpx_tseequities_indexstatistics_flex_v19_5.cb_reserved_code = {}

-- Size: CB Reserved Code
jpx_tseequities_indexstatistics_flex_v19_5.cb_reserved_code.size = 1

-- Display: CB Reserved Code
jpx_tseequities_indexstatistics_flex_v19_5.cb_reserved_code.display = function(value)
  if value == "4" then
    return "CB Reserved Code: SW (4)"
  end
  if value == "8" then
    return "CB Reserved Code: Exchangeable Bond (8)"
  end
  if value == "9" then
    return "CB Reserved Code: CB (9)"
  end
  if value == " " then
    return "CB Reserved Code: Other Bond (<whitespace>)"
  end

  return "CB Reserved Code: Unknown("..value..")"
end

-- Dissect: CB Reserved Code
jpx_tseequities_indexstatistics_flex_v19_5.cb_reserved_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.cb_reserved_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.cb_reserved_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.cb_reserved_code, range, value, display)

  return offset + length, value
end

-- CB Space
jpx_tseequities_indexstatistics_flex_v19_5.cb_space = {}

-- Size: CB Space
jpx_tseequities_indexstatistics_flex_v19_5.cb_space.size = 3

-- Display: CB Space
jpx_tseequities_indexstatistics_flex_v19_5.cb_space.display = function(value)
  return "CB Space: "..value
end

-- Dissect: CB Space
jpx_tseequities_indexstatistics_flex_v19_5.cb_space.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.cb_space.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.cb_space.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.cb_space, range, value, display)

  return offset + length, value
end

-- Closing Price Transaction
jpx_tseequities_indexstatistics_flex_v19_5.closing_price_transaction = {}

-- Size: Closing Price Transaction
jpx_tseequities_indexstatistics_flex_v19_5.closing_price_transaction.size = 14

-- Display: Closing Price Transaction
jpx_tseequities_indexstatistics_flex_v19_5.closing_price_transaction.display = function(value)
  return "Closing Price Transaction: "..value
end

-- Dissect: Closing Price Transaction
jpx_tseequities_indexstatistics_flex_v19_5.closing_price_transaction.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.closing_price_transaction.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.closing_price_transaction.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.closing_price_transaction, range, value, display)

  return offset + length, value
end

-- Comparison Type
jpx_tseequities_indexstatistics_flex_v19_5.comparison_type = {}

-- Size: Comparison Type
jpx_tseequities_indexstatistics_flex_v19_5.comparison_type.size = 1

-- Display: Comparison Type
jpx_tseequities_indexstatistics_flex_v19_5.comparison_type.display = function(value)
  if value == "1" then
    return "Comparison Type: Change From Base Price For The Day (1)"
  end
  if value == " " then
    return "Comparison Type: Change From The Last Price From The Previous Day (<whitespace>)"
  end

  return "Comparison Type: Unknown("..value..")"
end

-- Dissect: Comparison Type
jpx_tseequities_indexstatistics_flex_v19_5.comparison_type.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.comparison_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.comparison_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.comparison_type, range, value, display)

  return offset + length, value
end

-- Control Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.control_medium_classification = {}

-- Size: Control Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.control_medium_classification.size = 2

-- Display: Control Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.control_medium_classification.labels = {
  ["00"] = "Control Medium Classification: Communication Control (00)",
  ["02"] = "Control Medium Classification: Issue Information Control (02)",
  ["04"] = "Control Medium Classification: Allday Information Control (04)",
  ["05"] = "Control Medium Classification: Health Check Control (05)",
  ["06"] = "Control Medium Classification: Stock Base Price Information Control (06)",
  ["07"] = "Control Medium Classification: CB Base Price Information Control (07)",
  ["08"] = "Control Medium Classification: Multicast Group Number Information Control (08)",
  ["09"] = "Control Medium Classification: Backup Information Control (09)",
  ["90"] = "Control Medium Classification: TCP Transmission Control (90)",
}

jpx_tseequities_indexstatistics_flex_v19_5.control_medium_classification.display = function(value)
  return jpx_tseequities_indexstatistics_flex_v19_5.control_medium_classification.labels[value] or "Control Medium Classification: Unknown("..value..")"
end

-- Dissect: Control Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.control_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.control_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.control_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.control_medium_classification, range, value, display)

  return offset + length, value
end

-- Current Price C 14
jpx_tseequities_indexstatistics_flex_v19_5.current_price_c_14 = {}

-- Size: Current Price C 14
jpx_tseequities_indexstatistics_flex_v19_5.current_price_c_14.size = 14

-- Display: Current Price C 14
jpx_tseequities_indexstatistics_flex_v19_5.current_price_c_14.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_tseequities_indexstatistics_flex_v19_5.current_price_c_14.size):string(), 4)

  if text == nil then
    return "Current Price C 14: "..tostring(value)
  end

  return "Current Price C 14: "..text
end

-- Dissect: Current Price C 14
jpx_tseequities_indexstatistics_flex_v19_5.current_price_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.current_price_c_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.current_price_c_14, range, value, "Current Price C 14: Not Applicable")
    item:add_proto_expert_info(jpx_tseequities_indexstatistics_flex_v19_5.experts.not_a_number, "Current Price C 14 is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = jpx_tseequities_indexstatistics_flex_v19_5.current_price_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.current_price_c_14, range, value, display)

  return offset + length, value
end

-- Day On Day Comparison C 14
jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_14 = {}

-- Size: Day On Day Comparison C 14
jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_14.size = 14

-- Display: Day On Day Comparison C 14
jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_14.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_14.size):string(), 4)

  if text == nil then
    return "Day On Day Comparison C 14: "..tostring(value)
  end

  return "Day On Day Comparison C 14: "..text
end

-- Dissect: Day On Day Comparison C 14
jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.day_on_day_comparison_c_14, range, value, "Day On Day Comparison C 14: Not Applicable")
    item:add_proto_expert_info(jpx_tseequities_indexstatistics_flex_v19_5.experts.not_a_number, "Day On Day Comparison C 14 is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.day_on_day_comparison_c_14, range, value, display)

  return offset + length, value
end

-- Day On Day Comparison C 8
jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_8 = {}

-- Size: Day On Day Comparison C 8
jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_8.size = 8

-- Display: Day On Day Comparison C 8
jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_8.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_8.size):string(), 2)

  if text == nil then
    return "Day On Day Comparison C 8: "..tostring(value)
  end

  return "Day On Day Comparison C 8: "..text
end

-- Dissect: Day On Day Comparison C 8
jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_8.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_8.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.day_on_day_comparison_c_8, range, value, "Day On Day Comparison C 8: Not Applicable")
    item:add_proto_expert_info(jpx_tseequities_indexstatistics_flex_v19_5.experts.not_a_number, "Day On Day Comparison C 8 is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.day_on_day_comparison_c_8, range, value, display)

  return offset + length, value
end

-- Direct Yield Average C 8
jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average_c_8 = {}

-- Size: Direct Yield Average C 8
jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average_c_8.size = 8

-- Display: Direct Yield Average C 8
jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average_c_8.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average_c_8.size):string(), 2)

  if text == nil then
    return "Direct Yield Average C 8: "..tostring(value)
  end

  return "Direct Yield Average C 8: "..text
end

-- Dissect: Direct Yield Average C 8
jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average_c_8.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average_c_8.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.direct_yield_average_c_8, range, value, "Direct Yield Average C 8: Not Applicable")
    item:add_proto_expert_info(jpx_tseequities_indexstatistics_flex_v19_5.experts.not_a_number, "Direct Yield Average C 8 is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average_c_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.direct_yield_average_c_8, range, value, display)

  return offset + length, value
end

-- Divergence Average C 8
jpx_tseequities_indexstatistics_flex_v19_5.divergence_average_c_8 = {}

-- Size: Divergence Average C 8
jpx_tseequities_indexstatistics_flex_v19_5.divergence_average_c_8.size = 8

-- Display: Divergence Average C 8
jpx_tseequities_indexstatistics_flex_v19_5.divergence_average_c_8.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_tseequities_indexstatistics_flex_v19_5.divergence_average_c_8.size):string(), 2)

  if text == nil then
    return "Divergence Average C 8: "..tostring(value)
  end

  return "Divergence Average C 8: "..text
end

-- Dissect: Divergence Average C 8
jpx_tseequities_indexstatistics_flex_v19_5.divergence_average_c_8.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.divergence_average_c_8.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.divergence_average_c_8, range, value, "Divergence Average C 8: Not Applicable")
    item:add_proto_expert_info(jpx_tseequities_indexstatistics_flex_v19_5.experts.not_a_number, "Divergence Average C 8 is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = jpx_tseequities_indexstatistics_flex_v19_5.divergence_average_c_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.divergence_average_c_8, range, value, display)

  return offset + length, value
end

-- Estimated Total Trading Volume C 14
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume_c_14 = {}

-- Size: Estimated Total Trading Volume C 14
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume_c_14.size = 14

-- Display: Estimated Total Trading Volume C 14
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume_c_14.display = function(value)
  return "Estimated Total Trading Volume C 14: "..value
end

-- Dissect: Estimated Total Trading Volume C 14
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume_c_14.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.estimated_total_trading_volume_c_14, range, value, display)

  return offset + length, value
end

-- Estimated Total Turnover C 14
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover_c_14 = {}

-- Size: Estimated Total Turnover C 14
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover_c_14.size = 14

-- Display: Estimated Total Turnover C 14
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover_c_14.display = function(value)
  return "Estimated Total Turnover C 14: "..value
end

-- Dissect: Estimated Total Turnover C 14
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover_c_14.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.estimated_total_turnover_c_14, range, value, display)

  return offset + length, value
end

-- Exchange Code
jpx_tseequities_indexstatistics_flex_v19_5.exchange_code = {}

-- Size: Exchange Code
jpx_tseequities_indexstatistics_flex_v19_5.exchange_code.size = 1

-- Display: Exchange Code
jpx_tseequities_indexstatistics_flex_v19_5.exchange_code.display = function(value)
  if value == "1" then
    return "Exchange Code: Tokyo Stock Exchange (1)"
  end
  if value == "3" then
    return "Exchange Code: Nagoya Stock Exchange (3)"
  end
  if value == "6" then
    return "Exchange Code: Fukuoka Stock Exchange (6)"
  end
  if value == "8" then
    return "Exchange Code: Sapporo Securities Exchange (8)"
  end
  if value == "0" then
    return "Exchange Code: Other (0)"
  end
  if value == " " then
    return "Exchange Code: Control Message (<whitespace>)"
  end

  return "Exchange Code: Unknown("..value..")"
end

-- Dissect: Exchange Code
jpx_tseequities_indexstatistics_flex_v19_5.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Flag
jpx_tseequities_indexstatistics_flex_v19_5.flag = {}

-- Size: Flag
jpx_tseequities_indexstatistics_flex_v19_5.flag.size = 1

-- Display: Flag
jpx_tseequities_indexstatistics_flex_v19_5.flag.display = function(value)
  if value == "1" then
    return "Flag: Final Index Flag (1)"
  end
  if value == "3" then
    return "Flag: Final Index Correction Flag (3)"
  end
  if value == " " then
    return "Flag: Other Than The Above (<whitespace>)"
  end

  return "Flag: Unknown("..value..")"
end

-- Dissect: Flag
jpx_tseequities_indexstatistics_flex_v19_5.flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.flag, range, value, display)

  return offset + length, value
end

-- Fourth Trading Volume/Turnover Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.fourth_trading_volumeturnover_unit_flag = {}

-- Size: Fourth Trading Volume/Turnover Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.fourth_trading_volumeturnover_unit_flag.size = 1

-- Display: Fourth Trading Volume/Turnover Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.fourth_trading_volumeturnover_unit_flag.display = function(value)
  if value == "0" then
    return "Fourth Trading Volume/Turnover Unit Flag: One (0)"
  end
  if value == "1" then
    return "Fourth Trading Volume/Turnover Unit Flag: Ten (1)"
  end
  if value == "2" then
    return "Fourth Trading Volume/Turnover Unit Flag: Hundred (2)"
  end
  if value == "3" then
    return "Fourth Trading Volume/Turnover Unit Flag: Thousand (3)"
  end
  if value == "4" then
    return "Fourth Trading Volume/Turnover Unit Flag: Ten Thousand (4)"
  end
  if value == "5" then
    return "Fourth Trading Volume/Turnover Unit Flag: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Fourth Trading Volume/Turnover Unit Flag: Million (6)"
  end
  if value == "7" then
    return "Fourth Trading Volume/Turnover Unit Flag: Ten Million (7)"
  end
  if value == "8" then
    return "Fourth Trading Volume/Turnover Unit Flag: Hundred Million (8)"
  end
  if value == "9" then
    return "Fourth Trading Volume/Turnover Unit Flag: Billion (9)"
  end
  if value == " " then
    return "Fourth Trading Volume/Turnover Unit Flag: No Numerical Value (<whitespace>)"
  end

  return "Fourth Trading Volume/Turnover Unit Flag: Unknown("..value..")"
end

-- Dissect: Fourth Trading Volume/Turnover Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.fourth_trading_volumeturnover_unit_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.fourth_trading_volumeturnover_unit_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.fourth_trading_volumeturnover_unit_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.fourth_trading_volumeturnover_unit_flag, range, value, display)

  return offset + length, value
end

-- Index Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.index_medium_classification = {}

-- Size: Index Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.index_medium_classification.size = 2

-- Display: Index Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.index_medium_classification.labels = {
  ["00"] = "Index Medium Classification: Index Message (00)",
}

jpx_tseequities_indexstatistics_flex_v19_5.index_medium_classification.display = function(value)
  return jpx_tseequities_indexstatistics_flex_v19_5.index_medium_classification.labels[value] or "Index Medium Classification: Unknown("..value..")"
end

-- Dissect: Index Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.index_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.index_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.index_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.index_medium_classification, range, value, display)

  return offset + length, value
end

-- Index Type
jpx_tseequities_indexstatistics_flex_v19_5.index_type = {}

-- Size: Index Type
jpx_tseequities_indexstatistics_flex_v19_5.index_type.size = 4

-- Display: Index Type
jpx_tseequities_indexstatistics_flex_v19_5.index_type.labels = {
  ["0000"] = "Index Type: Tokyo Stock Price Index Topix (0000)",
  ["0002"] = "Index Type: Large Type (0002)",
  ["0003"] = "Index Type: Medium Type (0003)",
  ["0004"] = "Index Type: Small Type (0004)",
  ["0028"] = "Index Type: Topix Core 30 (0028)",
  ["0029"] = "Index Type: Topix Large 70 (0029)",
  ["002A"] = "Index Type: Topix 100 (002A)",
  ["002B"] = "Index Type: Topix Mid 400 (002B)",
  ["002C"] = "Index Type: Topix 500 (002C)",
  ["002D"] = "Index Type: Topix Small (002D)",
  ["002E"] = "Index Type: Topix 1000 (002E)",
  ["002F"] = "Index Type: Topix Small 500 (002F)",
  ["0040"] = "Index Type: Fishery Agriculture Forestry (0040)",
  ["0041"] = "Index Type: Mining (0041)",
  ["0042"] = "Index Type: Construction (0042)",
  ["0043"] = "Index Type: Foods (0043)",
  ["0044"] = "Index Type: Textiles Apparels (0044)",
  ["0045"] = "Index Type: Pulp Paper (0045)",
  ["0046"] = "Index Type: Chemicals (0046)",
  ["0047"] = "Index Type: Pharmaceutical (0047)",
  ["0048"] = "Index Type: Oil Coal Products (0048)",
  ["0049"] = "Index Type: Rubber Products (0049)",
  ["004A"] = "Index Type: Glass Ceramics Products (004A)",
  ["004B"] = "Index Type: Iron Steel (004B)",
  ["004C"] = "Index Type: Nonferrous Metals (004C)",
  ["004D"] = "Index Type: Metal Products (004D)",
  ["004E"] = "Index Type: Machinery (004E)",
  ["004F"] = "Index Type: Electric Appliances (004F)",
  ["0050"] = "Index Type: Transportation Equipment (0050)",
  ["0051"] = "Index Type: Precision Instruments (0051)",
  ["0052"] = "Index Type: Other Products (0052)",
  ["0053"] = "Index Type: Electric Power Gas (0053)",
  ["0054"] = "Index Type: Land Transportation (0054)",
  ["0055"] = "Index Type: Marine Transportation (0055)",
  ["0056"] = "Index Type: Air Transportation (0056)",
  ["0057"] = "Index Type: Warehousing Harbor Transportation Services (0057)",
  ["0058"] = "Index Type: Information Communication (0058)",
  ["0059"] = "Index Type: Wholesale Trade (0059)",
  ["005A"] = "Index Type: Retail Trade (005A)",
  ["005B"] = "Index Type: Banks (005B)",
  ["005C"] = "Index Type: Securities Commodity Futures (005C)",
  ["005D"] = "Index Type: Insurance (005D)",
  ["005E"] = "Index Type: Other Financing Business (005E)",
  ["005F"] = "Index Type: Real Estate (005F)",
  ["0060"] = "Index Type: Services (0060)",
  ["0070"] = "Index Type: Tse Growth Market 250 Index (0070)",
  ["0075"] = "Index Type: Reit General (0075)",
  ["0080"] = "Index Type: Topix 17 Foods (0080)",
  ["0081"] = "Index Type: Topix 17 Energy Resources (0081)",
  ["0082"] = "Index Type: Topix 17 Construction Materials (0082)",
  ["0083"] = "Index Type: Topix 17 Raw Materials Chemicals (0083)",
  ["0084"] = "Index Type: Topix 17 Pharmaceutical (0084)",
  ["0085"] = "Index Type: Topix 17 Automobiles Transportation Equipment (0085)",
  ["0086"] = "Index Type: Topix 17 Steel Nonferrous Metals (0086)",
  ["0087"] = "Index Type: Topix 17 Machinery (0087)",
  ["0088"] = "Index Type: Topix 17 Electric Appliances Precision Instruments (0088)",
  ["0089"] = "Index Type: Topix 17 It Services Others (0089)",
  ["008A"] = "Index Type: Topix 17 Electric Power Gas (008A)",
  ["008B"] = "Index Type: Topix 17 Transportation Logistics (008B)",
  ["008C"] = "Index Type: Topix 17 Commercial Wholesale Trade (008C)",
  ["008D"] = "Index Type: Topix 17 Retail Trade (008D)",
  ["008E"] = "Index Type: Topix 17 Banks (008E)",
  ["008F"] = "Index Type: Topix 17 Financials Ex Banks (008F)",
  ["0090"] = "Index Type: Topix 17 Real Estate (0090)",
  ["0099"] = "Index Type: Tokyo Stock Exchange Infrastructure Funds Index (0099)",
  ["0500"] = "Index Type: Tokyo Stock Exchange Prime Market Index (0500)",
  ["0501"] = "Index Type: Tokyo Stock Exchange Standard Market Index (0501)",
  ["0502"] = "Index Type: Tokyo Stock Exchange Growth Market Index (0502)",
  ["0503"] = "Index Type: Jpx Prime 150 Index (0503)",
  ["0504"] = "Index Type: Jpx Start Up Acceleration 100 Index (0504)",
  ["8000"] = "Index Type: Ex Topix (8000)",
  ["8100"] = "Index Type: Topix Value (8100)",
  ["812C"] = "Index Type: Topix 500 Value (812C)",
  ["812D"] = "Index Type: Topix Small Value (812D)",
  ["8200"] = "Index Type: Topix Growth (8200)",
  ["822C"] = "Index Type: Topix 500 Growth (822C)",
  ["822D"] = "Index Type: Topix Small Growth (822D)",
  ["8500"] = "Index Type: Tokyo Stock Exchange Dividend Focus 100 Index (8500)",
  ["8501"] = "Index Type: Tokyo Stock Exchange Reit Office Index (8501)",
  ["8502"] = "Index Type: Tokyo Stock Exchange Reit Residential Index (8502)",
  ["8503"] = "Index Type: Tokyo Stock Exchange Reit Retail Logistics Others Index (8503)",
  ["8506"] = "Index Type: Topix Ex Financials (8506)",
  ["8507"] = "Index Type: Jpx Nikkei Index 400 (8507)",
  ["8508"] = "Index Type: Jpx Nikkei Mid And Small Cap Index (8508)",
  ["8509"] = "Index Type: Jpx Nikkei Index Human Capital 100 (8509)",
  ["8801"] = "Index Type: Tse Growth Market Core Index (8801)",
  ["8802"] = "Index Type: Tse Standard Market Top 20 Index (8802)",
  ["1000"] = "Index Type: Topix Leveraged 2 X Index (1000)",
  ["1001"] = "Index Type: Topix Inverse 1 X Index (1001)",
  ["1002"] = "Index Type: Topix Double Inverse 2 X Index (1002)",
  ["1003"] = "Index Type: Jpx Nikkei 400 Leveraged 2 X Index (1003)",
  ["1004"] = "Index Type: Jpx Nikkei 400 Inverse 1 X Index (1004)",
  ["1005"] = "Index Type: Jpx Nikkei 400 Double Inverse 2 X Index (1005)",
  ["1006"] = "Index Type: Tokyo Stock Exchange Reit Inverse 1 X Index (1006)",
  ["1007"] = "Index Type: Tokyo Stock Exchange Reit Leveraged 2 X Index (1007)",
  ["1008"] = "Index Type: Tokyo Stock Exchange Reit Double Inverse 2 X Index (1008)",
}

jpx_tseequities_indexstatistics_flex_v19_5.index_type.display = function(value)
  return jpx_tseequities_indexstatistics_flex_v19_5.index_type.labels[value] or "Index Type: Unknown("..value..")"
end

-- Dissect: Index Type
jpx_tseequities_indexstatistics_flex_v19_5.index_type.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.index_type.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.index_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.index_type, range, value, display)

  return offset + length, value
end

-- Index Value
jpx_tseequities_indexstatistics_flex_v19_5.index_value = {}

-- Size: Index Value
jpx_tseequities_indexstatistics_flex_v19_5.index_value.size = 14

-- Display: Index Value
jpx_tseequities_indexstatistics_flex_v19_5.index_value.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_tseequities_indexstatistics_flex_v19_5.index_value.size):string(), 4)

  if text == nil then
    return "Index Value: "..tostring(value)
  end

  return "Index Value: "..text
end

-- Dissect: Index Value
jpx_tseequities_indexstatistics_flex_v19_5.index_value.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.index_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.index_value, range, value, "Index Value: Not Applicable")
    item:add_proto_expert_info(jpx_tseequities_indexstatistics_flex_v19_5.experts.not_a_number, "Index Value is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = jpx_tseequities_indexstatistics_flex_v19_5.index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.index_value, range, value, display)

  return offset + length, value
end

-- Industry Code
jpx_tseequities_indexstatistics_flex_v19_5.industry_code = {}

-- Size: Industry Code
jpx_tseequities_indexstatistics_flex_v19_5.industry_code.size = 4

-- Display: Industry Code
jpx_tseequities_indexstatistics_flex_v19_5.industry_code.labels = {
  ["0050"] = "Industry Code: Fishery Agriculture Forestry (0050)",
  ["1050"] = "Industry Code: Mining (1050)",
  ["2050"] = "Industry Code: Construction (2050)",
  ["3050"] = "Industry Code: Foods (3050)",
  ["3100"] = "Industry Code: Textiles Apparels (3100)",
  ["3150"] = "Industry Code: Pulp Paper (3150)",
  ["3200"] = "Industry Code: Chemicals (3200)",
  ["3250"] = "Industry Code: Pharmaceuticals (3250)",
  ["3300"] = "Industry Code: Oil Coal Products (3300)",
  ["3350"] = "Industry Code: Rubber Products (3350)",
  ["3400"] = "Industry Code: Glass Ceramics Products (3400)",
  ["3450"] = "Industry Code: Iron Steel (3450)",
  ["3500"] = "Industry Code: Nonferrous Metals (3500)",
  ["3550"] = "Industry Code: Metal Products (3550)",
  ["3600"] = "Industry Code: Machinery (3600)",
  ["3650"] = "Industry Code: Electric Appliances (3650)",
  ["3700"] = "Industry Code: Transportation Equipment (3700)",
  ["3750"] = "Industry Code: Precision Instruments (3750)",
  ["3800"] = "Industry Code: Other Products (3800)",
  ["4050"] = "Industry Code: Electric Power Gas (4050)",
  ["5050"] = "Industry Code: Land Transportation (5050)",
  ["5100"] = "Industry Code: Marine Transportation (5100)",
  ["5150"] = "Industry Code: Air Transportation (5150)",
  ["5200"] = "Industry Code: Warehouse Harbor Transportation Services (5200)",
  ["5250"] = "Industry Code: Information Communication (5250)",
  ["6050"] = "Industry Code: Wholesale Trade (6050)",
  ["6100"] = "Industry Code: Retail Trade (6100)",
  ["7050"] = "Industry Code: Banks (7050)",
  ["7100"] = "Industry Code: Securities Commodity Futures (7100)",
  ["7150"] = "Industry Code: Insurance (7150)",
  ["7200"] = "Industry Code: Other Financing Business (7200)",
  ["8050"] = "Industry Code: Real Estate (8050)",
  ["9050"] = "Industry Code: Services (9050)",
  ["9999"] = "Industry Code: Others (9999)",
}

jpx_tseequities_indexstatistics_flex_v19_5.industry_code.display = function(value)
  return jpx_tseequities_indexstatistics_flex_v19_5.industry_code.labels[value] or "Industry Code: Unknown("..value..")"
end

-- Dissect: Industry Code
jpx_tseequities_indexstatistics_flex_v19_5.industry_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.industry_code.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.industry_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.industry_code, range, value, display)

  return offset + length, value
end

-- Issue Basic Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_basic_medium_classification = {}

-- Size: Issue Basic Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_basic_medium_classification.size = 2

-- Display: Issue Basic Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_basic_medium_classification.labels = {
  ["00"] = "Issue Basic Medium Classification: Regular (00)",
  ["01"] = "Issue Basic Medium Classification: Special (01)",
}

jpx_tseequities_indexstatistics_flex_v19_5.issue_basic_medium_classification.display = function(value)
  return jpx_tseequities_indexstatistics_flex_v19_5.issue_basic_medium_classification.labels[value] or "Issue Basic Medium Classification: Unknown("..value..")"
end

-- Dissect: Issue Basic Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_basic_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.issue_basic_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.issue_basic_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.issue_basic_medium_classification, range, value, display)

  return offset + length, value
end

-- Issue Classification Code
jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code = {}

-- Size: Issue Classification Code
jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.size = 4

-- Display: Issue Classification Code
jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.labels = {
  ["0111"] = "Issue Classification Code: Prime Market Domestic Stock (0111)",
  ["0112"] = "Issue Classification Code: Standard Market Domestic Stock (0112)",
  ["0113"] = "Issue Classification Code: Foreign Stock (0113)",
  ["0114"] = "Issue Classification Code: Growth Market Domestic Stock (0114)",
  ["0122"] = "Issue Classification Code: Tokyo Pro Market Domestic Stock (0122)",
  ["0211"] = "Issue Classification Code: Cb (0211)",
  ["0214"] = "Issue Classification Code: Exchangeable Bond (0214)",
}

jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.display = function(value)
  return jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.labels[value] or "Issue Classification Code: Unknown("..value..")"
end

-- Dissect: Issue Classification Code
jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.issue_classification_code, range, value, display)

  return offset + length, value
end

-- Issue Classification Large Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_large_classification = {}

-- Size: Issue Classification Large Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_large_classification.size = 2

-- Display: Issue Classification Large Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_large_classification.labels = {
  ["01"] = "Issue Classification Large Classification: Stockrelated (01)",
  ["02"] = "Issue Classification Large Classification: Cbrelated (02)",
}

jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_large_classification.display = function(value)
  return jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_large_classification.labels[value] or "Issue Classification Large Classification: Unknown("..value..")"
end

-- Dissect: Issue Classification Large Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_large_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_large_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_large_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.issue_classification_large_classification, range, value, display)

  return offset + length, value
end

-- Issue Classification Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_medium_classification = {}

-- Size: Issue Classification Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_medium_classification.size = 2

-- Display: Issue Classification Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_medium_classification.display = function(value)
  return "Issue Classification Medium Classification: "..value
end

-- Dissect: Issue Classification Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.issue_classification_medium_classification, range, value, display)

  return offset + length, value
end

-- Issue Realtime Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_realtime_medium_classification = {}

-- Size: Issue Realtime Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_realtime_medium_classification.size = 2

-- Display: Issue Realtime Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_realtime_medium_classification.labels = {
  ["00"] = "Issue Realtime Medium Classification: New (00)",
  ["01"] = "Issue Realtime Medium Classification: Backup (01)",
  ["02"] = "Issue Realtime Medium Classification: Allday (02)",
}

jpx_tseequities_indexstatistics_flex_v19_5.issue_realtime_medium_classification.display = function(value)
  return jpx_tseequities_indexstatistics_flex_v19_5.issue_realtime_medium_classification.labels[value] or "Issue Realtime Medium Classification: Unknown("..value..")"
end

-- Dissect: Issue Realtime Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_realtime_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.issue_realtime_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.issue_realtime_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.issue_realtime_medium_classification, range, value, display)

  return offset + length, value
end

-- Message Length
jpx_tseequities_indexstatistics_flex_v19_5.message_length = {}

-- Size: Message Length
jpx_tseequities_indexstatistics_flex_v19_5.message_length.size = 6

-- Display: Message Length
jpx_tseequities_indexstatistics_flex_v19_5.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
jpx_tseequities_indexstatistics_flex_v19_5.message_length.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.message_length.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type Large Classification
jpx_tseequities_indexstatistics_flex_v19_5.message_type_large_classification = {}

-- Size: Message Type Large Classification
jpx_tseequities_indexstatistics_flex_v19_5.message_type_large_classification.size = 1

-- Display: Message Type Large Classification
jpx_tseequities_indexstatistics_flex_v19_5.message_type_large_classification.labels = {
  ["1"] = "Message Type Large Classification: Issue Realtime Message (1)",
  ["2"] = "Message Type Large Classification: Statistics Message (2)",
  ["3"] = "Message Type Large Classification: Index Message (3)",
  ["4"] = "Message Type Large Classification: Issue Basic Message (4)",
  ["9"] = "Message Type Large Classification: Control Message (9)",
}

jpx_tseequities_indexstatistics_flex_v19_5.message_type_large_classification.display = function(value)
  return jpx_tseequities_indexstatistics_flex_v19_5.message_type_large_classification.labels[value] or "Message Type Large Classification: Unknown("..value..")"
end

-- Dissect: Message Type Large Classification
jpx_tseequities_indexstatistics_flex_v19_5.message_type_large_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.message_type_large_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.message_type_large_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.message_type_large_classification, range, value, display)

  return offset + length, value
end

-- Multicast Group Number
jpx_tseequities_indexstatistics_flex_v19_5.multicast_group_number = {}

-- Size: Multicast Group Number
jpx_tseequities_indexstatistics_flex_v19_5.multicast_group_number.size = 3

-- Display: Multicast Group Number
jpx_tseequities_indexstatistics_flex_v19_5.multicast_group_number.display = function(value)
  return "Multicast Group Number: "..value
end

-- Dissect: Multicast Group Number
jpx_tseequities_indexstatistics_flex_v19_5.multicast_group_number.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.multicast_group_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.multicast_group_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.multicast_group_number, range, value, display)

  return offset + length, value
end

-- Net Change
jpx_tseequities_indexstatistics_flex_v19_5.net_change = {}

-- Size: Net Change
jpx_tseequities_indexstatistics_flex_v19_5.net_change.size = 14

-- Display: Net Change
jpx_tseequities_indexstatistics_flex_v19_5.net_change.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_tseequities_indexstatistics_flex_v19_5.net_change.size):string(), 4)

  if text == nil then
    return "Net Change: "..tostring(value)
  end

  return "Net Change: "..text
end

-- Dissect: Net Change
jpx_tseequities_indexstatistics_flex_v19_5.net_change.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.net_change.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.net_change, range, value, "Net Change: Not Applicable")
    item:add_proto_expert_info(jpx_tseequities_indexstatistics_flex_v19_5.experts.not_a_number, "Net Change is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = jpx_tseequities_indexstatistics_flex_v19_5.net_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.net_change, range, value, display)

  return offset + length, value
end

-- Net Change Distinction
jpx_tseequities_indexstatistics_flex_v19_5.net_change_distinction = {}

-- Size: Net Change Distinction
jpx_tseequities_indexstatistics_flex_v19_5.net_change_distinction.size = 1

-- Display: Net Change Distinction
jpx_tseequities_indexstatistics_flex_v19_5.net_change_distinction.labels = {
  ["1"] = "Net Change Distinction: Up (1)",
  ["2"] = "Net Change Distinction: Down (2)",
}

jpx_tseequities_indexstatistics_flex_v19_5.net_change_distinction.display = function(value)
  return jpx_tseequities_indexstatistics_flex_v19_5.net_change_distinction.labels[value] or "Net Change Distinction: Unknown("..value..")"
end

-- Dissect: Net Change Distinction
jpx_tseequities_indexstatistics_flex_v19_5.net_change_distinction.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.net_change_distinction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.net_change_distinction.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.net_change_distinction, range, value, display)

  return offset + length, value
end

-- Net Change Rate
jpx_tseequities_indexstatistics_flex_v19_5.net_change_rate = {}

-- Size: Net Change Rate
jpx_tseequities_indexstatistics_flex_v19_5.net_change_rate.size = 8

-- Display: Net Change Rate
jpx_tseequities_indexstatistics_flex_v19_5.net_change_rate.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_tseequities_indexstatistics_flex_v19_5.net_change_rate.size):string(), 2)

  if text == nil then
    return "Net Change Rate: "..tostring(value)
  end

  return "Net Change Rate: "..text
end

-- Dissect: Net Change Rate
jpx_tseequities_indexstatistics_flex_v19_5.net_change_rate.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.net_change_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.net_change_rate, range, value, "Net Change Rate: Not Applicable")
    item:add_proto_expert_info(jpx_tseequities_indexstatistics_flex_v19_5.experts.not_a_number, "Net Change Rate is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = jpx_tseequities_indexstatistics_flex_v19_5.net_change_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.net_change_rate, range, value, display)

  return offset + length, value
end

-- Number Of Issues
jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues = {}

-- Size: Number Of Issues
jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues.size = 5

-- Display: Number Of Issues
jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues.display = function(value)
  return "Number Of Issues: "..value
end

-- Dissect: Number Of Issues
jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_issues, range, value, display)

  return offset + length, value
end

-- Number Of Listed Companies
jpx_tseequities_indexstatistics_flex_v19_5.number_of_listed_companies = {}

-- Size: Number Of Listed Companies
jpx_tseequities_indexstatistics_flex_v19_5.number_of_listed_companies.size = 5

-- Display: Number Of Listed Companies
jpx_tseequities_indexstatistics_flex_v19_5.number_of_listed_companies.display = function(value)
  return "Number Of Listed Companies: "..value
end

-- Dissect: Number Of Listed Companies
jpx_tseequities_indexstatistics_flex_v19_5.number_of_listed_companies.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.number_of_listed_companies.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.number_of_listed_companies.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_listed_companies, range, value, display)

  return offset + length, value
end

-- Number Of Listed Issues
jpx_tseequities_indexstatistics_flex_v19_5.number_of_listed_issues = {}

-- Size: Number Of Listed Issues
jpx_tseequities_indexstatistics_flex_v19_5.number_of_listed_issues.size = 5

-- Display: Number Of Listed Issues
jpx_tseequities_indexstatistics_flex_v19_5.number_of_listed_issues.display = function(value)
  return "Number Of Listed Issues: "..value
end

-- Dissect: Number Of Listed Issues
jpx_tseequities_indexstatistics_flex_v19_5.number_of_listed_issues.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.number_of_listed_issues.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.number_of_listed_issues.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_listed_issues, range, value, display)

  return offset + length, value
end

-- Other Classification Code
jpx_tseequities_indexstatistics_flex_v19_5.other_classification_code = {}

-- Size: Other Classification Code
jpx_tseequities_indexstatistics_flex_v19_5.other_classification_code.size = 2

-- Display: Other Classification Code
jpx_tseequities_indexstatistics_flex_v19_5.other_classification_code.display = function(value)
  if value == "11" then
    return "Other Classification Code: Total Of Stock (11)"
  end
  if value == "21" then
    return "Other Classification Code: Total Of Cb (21)"
  end
  if value == "  " then
    return "Other Classification Code: Not Applicable (<whitespace>)"
  end

  return "Other Classification Code: Unknown("..value..")"
end

-- Dissect: Other Classification Code
jpx_tseequities_indexstatistics_flex_v19_5.other_classification_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.other_classification_code.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.other_classification_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.other_classification_code, range, value, display)

  return offset + length, value
end

-- Other Classification Flag
jpx_tseequities_indexstatistics_flex_v19_5.other_classification_flag = {}

-- Size: Other Classification Flag
jpx_tseequities_indexstatistics_flex_v19_5.other_classification_flag.size = 2

-- Display: Other Classification Flag
jpx_tseequities_indexstatistics_flex_v19_5.other_classification_flag.display = function(value)
  if value == "11" then
    return "Other Classification Flag: Stock Total (11)"
  end
  if value == "21" then
    return "Other Classification Flag: Cb Total (21)"
  end
  if value == "12" then
    return "Other Classification Flag: ToSTNeT stock (12)"
  end
  if value == "22" then
    return "Other Classification Flag: ToSTNeT CB (22)"
  end
  if value == "  " then
    return "Other Classification Flag: Not Applicable (<whitespace>)"
  end

  return "Other Classification Flag: Unknown("..value..")"
end

-- Dissect: Other Classification Flag
jpx_tseequities_indexstatistics_flex_v19_5.other_classification_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.other_classification_flag.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.other_classification_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.other_classification_flag, range, value, display)

  return offset + length, value
end

-- Output Time
jpx_tseequities_indexstatistics_flex_v19_5.output_time = {}

-- Size: Output Time
jpx_tseequities_indexstatistics_flex_v19_5.output_time.size = 6

-- Display: Output Time
jpx_tseequities_indexstatistics_flex_v19_5.output_time.display = function(value)
  if #value < 4 then
    return "Output Time: "..value
  end

  local hour = value:sub(1, 2)
  local minute = value:sub(3, 4)

  if minute:match("^%s*$") then
    return "Output Time: "..hour
  end

  return "Output Time: "..hour..":"..minute
end

-- Dissect: Output Time
jpx_tseequities_indexstatistics_flex_v19_5.output_time.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.output_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.output_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.output_time, range, value, display)

  return offset + length, value
end

-- Parity Average C 14
jpx_tseequities_indexstatistics_flex_v19_5.parity_average_c_14 = {}

-- Size: Parity Average C 14
jpx_tseequities_indexstatistics_flex_v19_5.parity_average_c_14.size = 14

-- Display: Parity Average C 14
jpx_tseequities_indexstatistics_flex_v19_5.parity_average_c_14.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_tseequities_indexstatistics_flex_v19_5.parity_average_c_14.size):string(), 4)

  if text == nil then
    return "Parity Average C 14: "..tostring(value)
  end

  return "Parity Average C 14: "..text
end

-- Dissect: Parity Average C 14
jpx_tseequities_indexstatistics_flex_v19_5.parity_average_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.parity_average_c_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.parity_average_c_14, range, value, "Parity Average C 14: Not Applicable")
    item:add_proto_expert_info(jpx_tseequities_indexstatistics_flex_v19_5.experts.not_a_number, "Parity Average C 14 is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = jpx_tseequities_indexstatistics_flex_v19_5.parity_average_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.parity_average_c_14, range, value, display)

  return offset + length, value
end

-- Rank
jpx_tseequities_indexstatistics_flex_v19_5.rank = {}

-- Size: Rank
jpx_tseequities_indexstatistics_flex_v19_5.rank.size = 2

-- Display: Rank
jpx_tseequities_indexstatistics_flex_v19_5.rank.display = function(value)
  return "Rank: "..value
end

-- Dissect: Rank
jpx_tseequities_indexstatistics_flex_v19_5.rank.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.rank.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.rank.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.rank, range, value, display)

  return offset + length, value
end

-- Ranked Issue Code
jpx_tseequities_indexstatistics_flex_v19_5.ranked_issue_code = {}

-- Size: Ranked Issue Code
jpx_tseequities_indexstatistics_flex_v19_5.ranked_issue_code.size = 12

-- Display: Ranked Issue Code
jpx_tseequities_indexstatistics_flex_v19_5.ranked_issue_code.display = function(value)
  return "Ranked Issue Code: "..value
end

-- Dissect: Ranked Issue Code
jpx_tseequities_indexstatistics_flex_v19_5.ranked_issue_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.ranked_issue_code.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.ranked_issue_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.ranked_issue_code, range, value, display)

  return offset + length, value
end

-- Ratio
jpx_tseequities_indexstatistics_flex_v19_5.ratio = {}

-- Size: Ratio
jpx_tseequities_indexstatistics_flex_v19_5.ratio.size = 5

-- Display: Ratio
jpx_tseequities_indexstatistics_flex_v19_5.ratio.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_tseequities_indexstatistics_flex_v19_5.ratio.size):string(), 2)

  if text == nil then
    return "Ratio: "..tostring(value)
  end

  return "Ratio: "..text
end

-- Dissect: Ratio
jpx_tseequities_indexstatistics_flex_v19_5.ratio.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.ratio.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.ratio, range, value, "Ratio: Not Applicable")
    item:add_proto_expert_info(jpx_tseequities_indexstatistics_flex_v19_5.experts.not_a_number, "Ratio is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = jpx_tseequities_indexstatistics_flex_v19_5.ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.ratio, range, value, display)

  return offset + length, value
end

-- Reserved 1
jpx_tseequities_indexstatistics_flex_v19_5.reserved_1 = {}

-- Size: Reserved 1
jpx_tseequities_indexstatistics_flex_v19_5.reserved_1.size = 1

-- Display: Reserved 1
jpx_tseequities_indexstatistics_flex_v19_5.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
jpx_tseequities_indexstatistics_flex_v19_5.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
jpx_tseequities_indexstatistics_flex_v19_5.reserved_2 = {}

-- Size: Reserved 2
jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size = 2

-- Display: Reserved 2
jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Second Sign
jpx_tseequities_indexstatistics_flex_v19_5.second_sign = {}

-- Size: Second Sign
jpx_tseequities_indexstatistics_flex_v19_5.second_sign.size = 1

-- Display: Second Sign
jpx_tseequities_indexstatistics_flex_v19_5.second_sign.display = function(value)
  if value == "+" then
    return "Second Sign: Positive (+)"
  end
  if value == "-" then
    return "Second Sign: Negative (-)"
  end
  if value == " " then
    return "Second Sign: No Sign (<whitespace>)"
  end

  return "Second Sign: Unknown("..value..")"
end

-- Dissect: Second Sign
jpx_tseequities_indexstatistics_flex_v19_5.second_sign.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.second_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.second_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.second_sign, range, value, display)

  return offset + length, value
end

-- Second Trading Volume/Turnover Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.second_trading_volumeturnover_unit_flag = {}

-- Size: Second Trading Volume/Turnover Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.second_trading_volumeturnover_unit_flag.size = 1

-- Display: Second Trading Volume/Turnover Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.second_trading_volumeturnover_unit_flag.display = function(value)
  if value == "0" then
    return "Second Trading Volume/Turnover Unit Flag: One (0)"
  end
  if value == "1" then
    return "Second Trading Volume/Turnover Unit Flag: Ten (1)"
  end
  if value == "2" then
    return "Second Trading Volume/Turnover Unit Flag: Hundred (2)"
  end
  if value == "3" then
    return "Second Trading Volume/Turnover Unit Flag: Thousand (3)"
  end
  if value == "4" then
    return "Second Trading Volume/Turnover Unit Flag: Ten Thousand (4)"
  end
  if value == "5" then
    return "Second Trading Volume/Turnover Unit Flag: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Second Trading Volume/Turnover Unit Flag: Million (6)"
  end
  if value == "7" then
    return "Second Trading Volume/Turnover Unit Flag: Ten Million (7)"
  end
  if value == "8" then
    return "Second Trading Volume/Turnover Unit Flag: Hundred Million (8)"
  end
  if value == "9" then
    return "Second Trading Volume/Turnover Unit Flag: Billion (9)"
  end
  if value == " " then
    return "Second Trading Volume/Turnover Unit Flag: No Numerical Value (<whitespace>)"
  end

  return "Second Trading Volume/Turnover Unit Flag: Unknown("..value..")"
end

-- Dissect: Second Trading Volume/Turnover Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.second_trading_volumeturnover_unit_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.second_trading_volumeturnover_unit_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.second_trading_volumeturnover_unit_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.second_trading_volumeturnover_unit_flag, range, value, display)

  return offset + length, value
end

-- Second Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.second_unit_flag = {}

-- Size: Second Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.second_unit_flag.size = 1

-- Display: Second Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.second_unit_flag.display = function(value)
  if value == "0" then
    return "Second Unit Flag: To The Fourth Decimal Place (0)"
  end
  if value == "1" then
    return "Second Unit Flag: To The Third Decimal Place (1)"
  end
  if value == "2" then
    return "Second Unit Flag: To The Second Decimal Place (2)"
  end
  if value == "3" then
    return "Second Unit Flag: To The First Decimal Place (3)"
  end
  if value == "4" then
    return "Second Unit Flag: No Decimal Places (4)"
  end
  if value == " " then
    return "Second Unit Flag: No Numerical Value (<whitespace>)"
  end

  return "Second Unit Flag: Unknown("..value..")"
end

-- Dissect: Second Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.second_unit_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.second_unit_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.second_unit_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.second_unit_flag, range, value, display)

  return offset + length, value
end

-- Separation Between Service Header And Data Section
jpx_tseequities_indexstatistics_flex_v19_5.separation_between_service_header_and_data_section = {}

-- Size: Separation Between Service Header And Data Section
jpx_tseequities_indexstatistics_flex_v19_5.separation_between_service_header_and_data_section.size = 1

-- Display: Separation Between Service Header And Data Section
jpx_tseequities_indexstatistics_flex_v19_5.separation_between_service_header_and_data_section.display = function(value)
  return "Separation Between Service Header And Data Section: "..value
end

-- Dissect: Separation Between Service Header And Data Section
jpx_tseequities_indexstatistics_flex_v19_5.separation_between_service_header_and_data_section.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.separation_between_service_header_and_data_section.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.separation_between_service_header_and_data_section.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.separation_between_service_header_and_data_section, range, value, display)

  return offset + length, value
end

-- Separation Of Tag
jpx_tseequities_indexstatistics_flex_v19_5.separation_of_tag = {}

-- Size: Separation Of Tag
jpx_tseequities_indexstatistics_flex_v19_5.separation_of_tag.size = 1

-- Display: Separation Of Tag
jpx_tseequities_indexstatistics_flex_v19_5.separation_of_tag.labels = {
  [19] = "Separation Of Tag: Separation Between Tag (19)",
  [17] = "Separation Of Tag: End Of Message (17)",
}

jpx_tseequities_indexstatistics_flex_v19_5.separation_of_tag.display = function(value)
  return jpx_tseequities_indexstatistics_flex_v19_5.separation_of_tag.labels[value] or "Separation Of Tag: Unknown("..value..")"
end

-- Dissect: Separation Of Tag
jpx_tseequities_indexstatistics_flex_v19_5.separation_of_tag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.separation_of_tag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.separation_of_tag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.separation_of_tag, range, value, display)

  return offset + length, value
end

-- Sequence Number
jpx_tseequities_indexstatistics_flex_v19_5.sequence_number = {}

-- Size: Sequence Number
jpx_tseequities_indexstatistics_flex_v19_5.sequence_number.size = 8

-- Display: Sequence Number
jpx_tseequities_indexstatistics_flex_v19_5.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
jpx_tseequities_indexstatistics_flex_v19_5.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Distinction
jpx_tseequities_indexstatistics_flex_v19_5.session_distinction = {}

-- Size: Session Distinction
jpx_tseequities_indexstatistics_flex_v19_5.session_distinction.size = 2

-- Display: Session Distinction
jpx_tseequities_indexstatistics_flex_v19_5.session_distinction.display = function(value)
  if value == "01" then
    return "Session Distinction: Morning Session (01)"
  end
  if value == "02" then
    return "Session Distinction: Afternoon Session (02)"
  end
  if value == "00" then
    return "Session Distinction: Out Of Service (00)"
  end
  if value == "  " then
    return "Session Distinction: Not Applicable (<whitespace>)"
  end

  return "Session Distinction: Unknown("..value..")"
end

-- Dissect: Session Distinction
jpx_tseequities_indexstatistics_flex_v19_5.session_distinction.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.session_distinction.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.session_distinction.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.session_distinction, range, value, display)

  return offset + length, value
end

-- Sign
jpx_tseequities_indexstatistics_flex_v19_5.sign = {}

-- Size: Sign
jpx_tseequities_indexstatistics_flex_v19_5.sign.size = 1

-- Display: Sign
jpx_tseequities_indexstatistics_flex_v19_5.sign.display = function(value)
  if value == "+" then
    return "Sign: Positive (+)"
  end
  if value == "-" then
    return "Sign: Negative (-)"
  end
  if value == " " then
    return "Sign: No Sign (<whitespace>)"
  end

  return "Sign: Unknown("..value..")"
end

-- Dissect: Sign
jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.sign, range, value, display)

  return offset + length, value
end

-- Simple Average C 14
jpx_tseequities_indexstatistics_flex_v19_5.simple_average_c_14 = {}

-- Size: Simple Average C 14
jpx_tseequities_indexstatistics_flex_v19_5.simple_average_c_14.size = 14

-- Display: Simple Average C 14
jpx_tseequities_indexstatistics_flex_v19_5.simple_average_c_14.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_tseequities_indexstatistics_flex_v19_5.simple_average_c_14.size):string(), 4)

  if text == nil then
    return "Simple Average C 14: "..tostring(value)
  end

  return "Simple Average C 14: "..text
end

-- Dissect: Simple Average C 14
jpx_tseequities_indexstatistics_flex_v19_5.simple_average_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.simple_average_c_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_average_c_14, range, value, "Simple Average C 14: Not Applicable")
    item:add_proto_expert_info(jpx_tseequities_indexstatistics_flex_v19_5.experts.not_a_number, "Simple Average C 14 is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = jpx_tseequities_indexstatistics_flex_v19_5.simple_average_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_average_c_14, range, value, display)

  return offset + length, value
end

-- Simple Stock Price Average C 14
jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_c_14 = {}

-- Size: Simple Stock Price Average C 14
jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_c_14.size = 14

-- Display: Simple Stock Price Average C 14
jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_c_14.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_c_14.size):string(), 4)

  if text == nil then
    return "Simple Stock Price Average C 14: "..tostring(value)
  end

  return "Simple Stock Price Average C 14: "..text
end

-- Dissect: Simple Stock Price Average C 14
jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_c_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_stock_price_average_c_14, range, value, "Simple Stock Price Average C 14: Not Applicable")
    item:add_proto_expert_info(jpx_tseequities_indexstatistics_flex_v19_5.experts.not_a_number, "Simple Stock Price Average C 14 is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_stock_price_average_c_14, range, value, display)

  return offset + length, value
end

-- Simple Yield C 8
jpx_tseequities_indexstatistics_flex_v19_5.simple_yield_c_8 = {}

-- Size: Simple Yield C 8
jpx_tseequities_indexstatistics_flex_v19_5.simple_yield_c_8.size = 8

-- Display: Simple Yield C 8
jpx_tseequities_indexstatistics_flex_v19_5.simple_yield_c_8.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_tseequities_indexstatistics_flex_v19_5.simple_yield_c_8.size):string(), 2)

  if text == nil then
    return "Simple Yield C 8: "..tostring(value)
  end

  return "Simple Yield C 8: "..text
end

-- Dissect: Simple Yield C 8
jpx_tseequities_indexstatistics_flex_v19_5.simple_yield_c_8.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.simple_yield_c_8.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_yield_c_8, range, value, "Simple Yield C 8: Not Applicable")
    item:add_proto_expert_info(jpx_tseequities_indexstatistics_flex_v19_5.experts.not_a_number, "Simple Yield C 8 is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = jpx_tseequities_indexstatistics_flex_v19_5.simple_yield_c_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_yield_c_8, range, value, display)

  return offset + length, value
end

-- Single Issue Transaction C 14
jpx_tseequities_indexstatistics_flex_v19_5.single_issue_transaction_c_14 = {}

-- Size: Single Issue Transaction C 14
jpx_tseequities_indexstatistics_flex_v19_5.single_issue_transaction_c_14.size = 14

-- Display: Single Issue Transaction C 14
jpx_tseequities_indexstatistics_flex_v19_5.single_issue_transaction_c_14.display = function(value)
  return "Single Issue Transaction C 14: "..value
end

-- Dissect: Single Issue Transaction C 14
jpx_tseequities_indexstatistics_flex_v19_5.single_issue_transaction_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.single_issue_transaction_c_14.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.single_issue_transaction_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.single_issue_transaction_c_14, range, value, display)

  return offset + length, value
end

-- Single Issue Transaction C 8
jpx_tseequities_indexstatistics_flex_v19_5.single_issue_transaction_c_8 = {}

-- Size: Single Issue Transaction C 8
jpx_tseequities_indexstatistics_flex_v19_5.single_issue_transaction_c_8.size = 8

-- Display: Single Issue Transaction C 8
jpx_tseequities_indexstatistics_flex_v19_5.single_issue_transaction_c_8.display = function(value)
  return "Single Issue Transaction C 8: "..value
end

-- Dissect: Single Issue Transaction C 8
jpx_tseequities_indexstatistics_flex_v19_5.single_issue_transaction_c_8.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.single_issue_transaction_c_8.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.single_issue_transaction_c_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.single_issue_transaction_c_8, range, value, display)

  return offset + length, value
end

-- Sq Type
jpx_tseequities_indexstatistics_flex_v19_5.sq_type = {}

-- Size: Sq Type
jpx_tseequities_indexstatistics_flex_v19_5.sq_type.size = 4

-- Display: Sq Type
jpx_tseequities_indexstatistics_flex_v19_5.sq_type.labels = {
  ["0000"] = "Sq Type: Tse Stock Index Topix (0000)",
  ["0028"] = "Sq Type: Topix Core 30 (0028)",
  ["005B"] = "Sq Type: Banking (005B)",
  ["0070"] = "Sq Type: Tse Growth Market 250 Index (0070)",
  ["0075"] = "Sq Type: Tse Reit Index (0075)",
  ["0503"] = "Sq Type: Jpx Prime 150 Index (0503)",
  ["8507"] = "Sq Type: Jpx Nikkei Index 400 (8507)",
}

jpx_tseequities_indexstatistics_flex_v19_5.sq_type.display = function(value)
  return jpx_tseequities_indexstatistics_flex_v19_5.sq_type.labels[value] or "Sq Type: Unknown("..value..")"
end

-- Dissect: Sq Type
jpx_tseequities_indexstatistics_flex_v19_5.sq_type.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.sq_type.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.sq_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.sq_type, range, value, display)

  return offset + length, value
end

-- Start Of Message
jpx_tseequities_indexstatistics_flex_v19_5.start_of_message = {}

-- Size: Start Of Message
jpx_tseequities_indexstatistics_flex_v19_5.start_of_message.size = 1

-- Display: Start Of Message
jpx_tseequities_indexstatistics_flex_v19_5.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
jpx_tseequities_indexstatistics_flex_v19_5.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.start_of_message.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Startend Flag
jpx_tseequities_indexstatistics_flex_v19_5.startend_flag = {}

-- Size: Startend Flag
jpx_tseequities_indexstatistics_flex_v19_5.startend_flag.size = 1

-- Display: Startend Flag
jpx_tseequities_indexstatistics_flex_v19_5.startend_flag.display = function(value)
  if value == "1" then
    return "Startend Flag: Start (1)"
  end
  if value == "2" then
    return "Startend Flag: End (2)"
  end
  if value == " " then
    return "Startend Flag: Not Applicable (<whitespace>)"
  end

  return "Startend Flag: Unknown("..value..")"
end

-- Dissect: Startend Flag
jpx_tseequities_indexstatistics_flex_v19_5.startend_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.startend_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.startend_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.startend_flag, range, value, display)

  return offset + length, value
end

-- State Sign
jpx_tseequities_indexstatistics_flex_v19_5.state_sign = {}

-- Size: State Sign
jpx_tseequities_indexstatistics_flex_v19_5.state_sign.size = 1

-- Display: State Sign
jpx_tseequities_indexstatistics_flex_v19_5.state_sign.display = function(value)
  if value == "1" then
    return "State Sign: Ask Special Quote (1)"
  end
  if value == "2" then
    return "State Sign: Bid Special Quote (2)"
  end
  if value == "3" then
    return "State Sign: Ask Continuous Execution Quote (3)"
  end
  if value == "4" then
    return "State Sign: Bid Continuous Execution Quote (4)"
  end
  if value == " " then
    return "State Sign: Other Than The Above (<whitespace>)"
  end

  return "State Sign: Unknown("..value..")"
end

-- Dissect: State Sign
jpx_tseequities_indexstatistics_flex_v19_5.state_sign.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.state_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.state_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.state_sign, range, value, display)

  return offset + length, value
end

-- Statistics Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.statistics_medium_classification = {}

-- Size: Statistics Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.statistics_medium_classification.size = 2

-- Display: Statistics Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.statistics_medium_classification.labels = {
  ["00"] = "Statistics Medium Classification: Statistics Message (00)",
}

jpx_tseequities_indexstatistics_flex_v19_5.statistics_medium_classification.display = function(value)
  return jpx_tseequities_indexstatistics_flex_v19_5.statistics_medium_classification.labels[value] or "Statistics Medium Classification: Unknown("..value..")"
end

-- Dissect: Statistics Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.statistics_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.statistics_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.statistics_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.statistics_medium_classification, range, value, display)

  return offset + length, value
end

-- Stock Proper Name Code
jpx_tseequities_indexstatistics_flex_v19_5.stock_proper_name_code = {}

-- Size: Stock Proper Name Code
jpx_tseequities_indexstatistics_flex_v19_5.stock_proper_name_code.size = 4

-- Display: Stock Proper Name Code
jpx_tseequities_indexstatistics_flex_v19_5.stock_proper_name_code.display = function(value)
  return "Stock Proper Name Code: "..value
end

-- Dissect: Stock Proper Name Code
jpx_tseequities_indexstatistics_flex_v19_5.stock_proper_name_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.stock_proper_name_code.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.stock_proper_name_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.stock_proper_name_code, range, value, display)

  return offset + length, value
end

-- Stock Reserved Code
jpx_tseequities_indexstatistics_flex_v19_5.stock_reserved_code = {}

-- Size: Stock Reserved Code
jpx_tseequities_indexstatistics_flex_v19_5.stock_reserved_code.size = 1

-- Display: Stock Reserved Code
jpx_tseequities_indexstatistics_flex_v19_5.stock_reserved_code.display = function(value)
  return "Stock Reserved Code: "..value
end

-- Dissect: Stock Reserved Code
jpx_tseequities_indexstatistics_flex_v19_5.stock_reserved_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.stock_reserved_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.stock_reserved_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.stock_reserved_code, range, value, display)

  return offset + length, value
end

-- Stock Space
jpx_tseequities_indexstatistics_flex_v19_5.stock_space = {}

-- Size: Stock Space
jpx_tseequities_indexstatistics_flex_v19_5.stock_space.size = 7

-- Display: Stock Space
jpx_tseequities_indexstatistics_flex_v19_5.stock_space.display = function(value)
  return "Stock Space: "..value
end

-- Dissect: Stock Space
jpx_tseequities_indexstatistics_flex_v19_5.stock_space.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.stock_space.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.stock_space.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.stock_space, range, value, display)

  return offset + length, value
end

-- Tag ID
jpx_tseequities_indexstatistics_flex_v19_5.tag_id = {}

-- Size: Tag ID
jpx_tseequities_indexstatistics_flex_v19_5.tag_id.size = 2

-- Display: Tag ID
jpx_tseequities_indexstatistics_flex_v19_5.tag_id.labels = {
  ["MV"] = "Tag ID: Market Value Message (MV)",
  ["YS"] = "Tag ID: Simple Yield Message (YS)",
  ["YW"] = "Tag ID: Weighted Yield Message (YW)",
  ["AP"] = "Tag ID: Simple Stock Price Average Message (AP)",
  ["AW"] = "Tag ID: Weighted Stock Price Average Message (AW)",
  ["AT"] = "Tag ID: Simple Stock Price Average By Industry Message (AT)",
  ["IY"] = "Tag ID: Japanese Yen Cb Indicator Message (IY)",
  ["NC"] = "Tag ID: Number Of Gainers Decliners Message (NC)",
  ["TV"] = "Tag ID: Estimated Total Trading Volume Message (TV)",
  ["TA"] = "Tag ID: Estimated Total Turnover Message (TA)",
  ["VS"] = "Tag ID: Vwap By Market Message (VS)",
  ["RO"] = "Tag ID: Ranking By Trading Volume Message (RO)",
  ["RA"] = "Tag ID: Ranking By Turnover Message (RA)",
  ["RC"] = "Tag ID: Ranking By Net Change Message (RC)",
  ["RP"] = "Tag ID: Ranking By Net Change Rate Message (RP)",
  ["TS"] = "Tag ID: ToSTNeT Statistics Message (TS)",
  ["4I"] = "Tag ID: Index Open High Low And Closing Prices Message (4I)",
  ["SQ"] = "Tag ID: Special Quotation Message (SQ)",
  ["LC"] = "Tag ID: Control Message (LC)",
}

jpx_tseequities_indexstatistics_flex_v19_5.tag_id.display = function(value)
  return jpx_tseequities_indexstatistics_flex_v19_5.tag_id.labels[value] or "Tag ID: Unknown("..value..")"
end

-- Dissect: Tag ID
jpx_tseequities_indexstatistics_flex_v19_5.tag_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.tag_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.tag_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.tag_id, range, value, display)

  return offset + length, value
end

-- Test Mode Flag
jpx_tseequities_indexstatistics_flex_v19_5.test_mode_flag = {}

-- Size: Test Mode Flag
jpx_tseequities_indexstatistics_flex_v19_5.test_mode_flag.size = 1

-- Display: Test Mode Flag
jpx_tseequities_indexstatistics_flex_v19_5.test_mode_flag.labels = {
  ["1"] = "Test Mode Flag: Real Operation (1)",
  ["2"] = "Test Mode Flag: Test Operation (2)",
}

jpx_tseequities_indexstatistics_flex_v19_5.test_mode_flag.display = function(value)
  return jpx_tseequities_indexstatistics_flex_v19_5.test_mode_flag.labels[value] or "Test Mode Flag: Unknown("..value..")"
end

-- Dissect: Test Mode Flag
jpx_tseequities_indexstatistics_flex_v19_5.test_mode_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.test_mode_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.test_mode_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.test_mode_flag, range, value, display)

  return offset + length, value
end

-- Third Trading Volume/Turnover Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.third_trading_volumeturnover_unit_flag = {}

-- Size: Third Trading Volume/Turnover Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.third_trading_volumeturnover_unit_flag.size = 1

-- Display: Third Trading Volume/Turnover Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.third_trading_volumeturnover_unit_flag.display = function(value)
  if value == "0" then
    return "Third Trading Volume/Turnover Unit Flag: One (0)"
  end
  if value == "1" then
    return "Third Trading Volume/Turnover Unit Flag: Ten (1)"
  end
  if value == "2" then
    return "Third Trading Volume/Turnover Unit Flag: Hundred (2)"
  end
  if value == "3" then
    return "Third Trading Volume/Turnover Unit Flag: Thousand (3)"
  end
  if value == "4" then
    return "Third Trading Volume/Turnover Unit Flag: Ten Thousand (4)"
  end
  if value == "5" then
    return "Third Trading Volume/Turnover Unit Flag: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Third Trading Volume/Turnover Unit Flag: Million (6)"
  end
  if value == "7" then
    return "Third Trading Volume/Turnover Unit Flag: Ten Million (7)"
  end
  if value == "8" then
    return "Third Trading Volume/Turnover Unit Flag: Hundred Million (8)"
  end
  if value == "9" then
    return "Third Trading Volume/Turnover Unit Flag: Billion (9)"
  end
  if value == " " then
    return "Third Trading Volume/Turnover Unit Flag: No Numerical Value (<whitespace>)"
  end

  return "Third Trading Volume/Turnover Unit Flag: Unknown("..value..")"
end

-- Dissect: Third Trading Volume/Turnover Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.third_trading_volumeturnover_unit_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.third_trading_volumeturnover_unit_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.third_trading_volumeturnover_unit_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.third_trading_volumeturnover_unit_flag, range, value, display)

  return offset + length, value
end

-- Time C 6 Hhmm
jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmm = {}

-- Size: Time C 6 Hhmm
jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmm.size = 6

-- Display: Time C 6 Hhmm
jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmm.display = function(value)
  if #value < 4 then
    return "Time C 6 Hhmm: "..value
  end

  local hour = value:sub(1, 2)
  local minute = value:sub(3, 4)

  if minute:match("^%s*$") then
    return "Time C 6 Hhmm: "..hour
  end

  return "Time C 6 Hhmm: "..hour..":"..minute
end

-- Dissect: Time C 6 Hhmm
jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmm.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmm.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.time_c_6_hhmm, range, value, display)

  return offset + length, value
end

-- Time C 6 Hhmmss
jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmmss = {}

-- Size: Time C 6 Hhmmss
jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmmss.size = 6

-- Display: Time C 6 Hhmmss
jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmmss.display = function(value)
  if #value < 6 then
    return "Time C 6 Hhmmss: "..value
  end

  return "Time C 6 Hhmmss: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Time C 6 Hhmmss
jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmmss.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmmss.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmmss.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.time_c_6_hhmmss, range, value, display)

  return offset + length, value
end

-- Time Symbol
jpx_tseequities_indexstatistics_flex_v19_5.time_symbol = {}

-- Size: Time Symbol
jpx_tseequities_indexstatistics_flex_v19_5.time_symbol.size = 4

-- Display: Time Symbol
jpx_tseequities_indexstatistics_flex_v19_5.time_symbol.display = function(value)
  return "Time Symbol: "..value
end

-- Dissect: Time Symbol
jpx_tseequities_indexstatistics_flex_v19_5.time_symbol.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.time_symbol.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.time_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.time_symbol, range, value, display)

  return offset + length, value
end

-- Total Market Value C 14
jpx_tseequities_indexstatistics_flex_v19_5.total_market_value_c_14 = {}

-- Size: Total Market Value C 14
jpx_tseequities_indexstatistics_flex_v19_5.total_market_value_c_14.size = 14

-- Display: Total Market Value C 14
jpx_tseequities_indexstatistics_flex_v19_5.total_market_value_c_14.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_tseequities_indexstatistics_flex_v19_5.total_market_value_c_14.size):string(), 4)

  if text == nil then
    return "Total Market Value C 14: "..tostring(value)
  end

  return "Total Market Value C 14: "..text
end

-- Dissect: Total Market Value C 14
jpx_tseequities_indexstatistics_flex_v19_5.total_market_value_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.total_market_value_c_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.total_market_value_c_14, range, value, "Total Market Value C 14: Not Applicable")
    item:add_proto_expert_info(jpx_tseequities_indexstatistics_flex_v19_5.experts.not_a_number, "Total Market Value C 14 is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = jpx_tseequities_indexstatistics_flex_v19_5.total_market_value_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.total_market_value_c_14, range, value, display)

  return offset + length, value
end

-- Trading Volume C 14
jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_c_14 = {}

-- Size: Trading Volume C 14
jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_c_14.size = 14

-- Display: Trading Volume C 14
jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_c_14.display = function(value)
  return "Trading Volume C 14: "..value
end

-- Dissect: Trading Volume C 14
jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_c_14.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.trading_volume_c_14, range, value, display)

  return offset + length, value
end

-- Trading Volume Turnover Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag = {}

-- Size: Trading Volume Turnover Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.size = 1

-- Display: Trading Volume Turnover Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.display = function(value)
  if value == "0" then
    return "Trading Volume Turnover Unit Flag: One (0)"
  end
  if value == "1" then
    return "Trading Volume Turnover Unit Flag: Ten (1)"
  end
  if value == "2" then
    return "Trading Volume Turnover Unit Flag: Hundred (2)"
  end
  if value == "3" then
    return "Trading Volume Turnover Unit Flag: Thousand (3)"
  end
  if value == "4" then
    return "Trading Volume Turnover Unit Flag: Ten Thousand (4)"
  end
  if value == "5" then
    return "Trading Volume Turnover Unit Flag: Hundred Thousand (5)"
  end
  if value == "6" then
    return "Trading Volume Turnover Unit Flag: Million (6)"
  end
  if value == "7" then
    return "Trading Volume Turnover Unit Flag: Ten Million (7)"
  end
  if value == "8" then
    return "Trading Volume Turnover Unit Flag: Hundred Million (8)"
  end
  if value == "9" then
    return "Trading Volume Turnover Unit Flag: Billion (9)"
  end
  if value == " " then
    return "Trading Volume Turnover Unit Flag: No Numerical Value (<whitespace>)"
  end

  return "Trading Volume Turnover Unit Flag: Unknown("..value..")"
end

-- Dissect: Trading Volume Turnover Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.trading_volume_turnover_unit_flag, range, value, display)

  return offset + length, value
end

-- Turnover C 14
jpx_tseequities_indexstatistics_flex_v19_5.turnover_c_14 = {}

-- Size: Turnover C 14
jpx_tseequities_indexstatistics_flex_v19_5.turnover_c_14.size = 14

-- Display: Turnover C 14
jpx_tseequities_indexstatistics_flex_v19_5.turnover_c_14.display = function(value)
  return "Turnover C 14: "..value
end

-- Dissect: Turnover C 14
jpx_tseequities_indexstatistics_flex_v19_5.turnover_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.turnover_c_14.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_indexstatistics_flex_v19_5.turnover_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.turnover_c_14, range, value, display)

  return offset + length, value
end

-- Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.unit_flag = {}

-- Size: Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.size = 1

-- Display: Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.display = function(value)
  if value == "0" then
    return "Unit Flag: To The Fourth Decimal Place (0)"
  end
  if value == "1" then
    return "Unit Flag: To The Third Decimal Place (1)"
  end
  if value == "2" then
    return "Unit Flag: To The Second Decimal Place (2)"
  end
  if value == "3" then
    return "Unit Flag: To The First Decimal Place (3)"
  end
  if value == "4" then
    return "Unit Flag: No Decimal Places (4)"
  end
  if value == " " then
    return "Unit Flag: No Numerical Value (<whitespace>)"
  end

  return "Unit Flag: Unknown("..value..")"
end

-- Dissect: Unit Flag
jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.unit_flag, range, value, display)

  return offset + length, value
end

-- Vwap By Market C 14
jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market_c_14 = {}

-- Size: Vwap By Market C 14
jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market_c_14.size = 14

-- Display: Vwap By Market C 14
jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market_c_14.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market_c_14.size):string(), 4)

  if text == nil then
    return "Vwap By Market C 14: "..tostring(value)
  end

  return "Vwap By Market C 14: "..text
end

-- Dissect: Vwap By Market C 14
jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market_c_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.vwap_by_market_c_14, range, value, "Vwap By Market C 14: Not Applicable")
    item:add_proto_expert_info(jpx_tseequities_indexstatistics_flex_v19_5.experts.not_a_number, "Vwap By Market C 14 is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.vwap_by_market_c_14, range, value, display)

  return offset + length, value
end

-- Weighted Stock Price Average C 14
jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average_c_14 = {}

-- Size: Weighted Stock Price Average C 14
jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average_c_14.size = 14

-- Display: Weighted Stock Price Average C 14
jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average_c_14.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average_c_14.size):string(), 4)

  if text == nil then
    return "Weighted Stock Price Average C 14: "..tostring(value)
  end

  return "Weighted Stock Price Average C 14: "..text
end

-- Dissect: Weighted Stock Price Average C 14
jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average_c_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.weighted_stock_price_average_c_14, range, value, "Weighted Stock Price Average C 14: Not Applicable")
    item:add_proto_expert_info(jpx_tseequities_indexstatistics_flex_v19_5.experts.not_a_number, "Weighted Stock Price Average C 14 is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.weighted_stock_price_average_c_14, range, value, display)

  return offset + length, value
end

-- Weighted Yield C 8
jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield_c_8 = {}

-- Size: Weighted Yield C 8
jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield_c_8.size = 8

-- Display: Weighted Yield C 8
jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield_c_8.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield_c_8.size):string(), 2)

  if text == nil then
    return "Weighted Yield C 8: "..tostring(value)
  end

  return "Weighted Yield C 8: "..text
end

-- Dissect: Weighted Yield C 8
jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield_c_8.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield_c_8.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.weighted_yield_c_8, range, value, "Weighted Yield C 8: Not Applicable")
    item:add_proto_expert_info(jpx_tseequities_indexstatistics_flex_v19_5.experts.not_a_number, "Weighted Yield C 8 is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield_c_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.weighted_yield_c_8, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Jpx TseEquities IndexStatistics Flex 19.5
-----------------------------------------------------------------------

-- Control Message
jpx_tseequities_indexstatistics_flex_v19_5.control_message = {}

-- Size: Control Message
jpx_tseequities_indexstatistics_flex_v19_5.control_message.size =
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.test_mode_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.startend_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmm.size

-- Display: Control Message
jpx_tseequities_indexstatistics_flex_v19_5.control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message
jpx_tseequities_indexstatistics_flex_v19_5.control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Test Mode Flag: C
  index, test_mode_flag = jpx_tseequities_indexstatistics_flex_v19_5.test_mode_flag.dissect(buffer, index, packet, parent)

  -- Startend Flag: C
  index, startend_flag = jpx_tseequities_indexstatistics_flex_v19_5.startend_flag.dissect(buffer, index, packet, parent)

  -- Time C 6 Hhmm: C
  index, time_c_6_hhmm = jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmm.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Control Message
jpx_tseequities_indexstatistics_flex_v19_5.control_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.control_message, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.control_message.fields(buffer, offset, packet, parent)
  end
end

-- Index
jpx_tseequities_indexstatistics_flex_v19_5.index = {}

-- Size: Index
jpx_tseequities_indexstatistics_flex_v19_5.index.size =
  jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.index_value.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmmss.size

-- Display: Index
jpx_tseequities_indexstatistics_flex_v19_5.index.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index
jpx_tseequities_indexstatistics_flex_v19_5.index.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Flag: C
  index, unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Index Value: C
  index, index_value = jpx_tseequities_indexstatistics_flex_v19_5.index_value.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  -- Time C 6 Hhmmss: C
  index, time_c_6_hhmmss = jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmmss.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index
jpx_tseequities_indexstatistics_flex_v19_5.index.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.index, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.index.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.index.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.index.fields(buffer, offset, packet, parent)
  end
end

-- Special Quotation Message
jpx_tseequities_indexstatistics_flex_v19_5.special_quotation_message = {}

-- Size: Special Quotation Message
jpx_tseequities_indexstatistics_flex_v19_5.special_quotation_message.size =
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sq_type.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.index.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_1.size

-- Display: Special Quotation Message
jpx_tseequities_indexstatistics_flex_v19_5.special_quotation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Special Quotation Message
jpx_tseequities_indexstatistics_flex_v19_5.special_quotation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Sq Type: C
  index, sq_type = jpx_tseequities_indexstatistics_flex_v19_5.sq_type.dissect(buffer, index, packet, parent)

  -- Index: Struct of 4 fields
  index, index = jpx_tseequities_indexstatistics_flex_v19_5.index.dissect(buffer, index, packet, parent)

  -- Reserved 1: C
  index, reserved_1 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Special Quotation Message
jpx_tseequities_indexstatistics_flex_v19_5.special_quotation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.special_quotation_message, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.special_quotation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.special_quotation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.special_quotation_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Day On Day Comparison
jpx_tseequities_indexstatistics_flex_v19_5.index_day_on_day_comparison = {}

-- Size: Index Day On Day Comparison
jpx_tseequities_indexstatistics_flex_v19_5.index_day_on_day_comparison.size =
  jpx_tseequities_indexstatistics_flex_v19_5.net_change_rate.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.net_change.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.second_sign.size

-- Display: Index Day On Day Comparison
jpx_tseequities_indexstatistics_flex_v19_5.index_day_on_day_comparison.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Day On Day Comparison
jpx_tseequities_indexstatistics_flex_v19_5.index_day_on_day_comparison.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Net Change Rate: C
  index, net_change_rate = jpx_tseequities_indexstatistics_flex_v19_5.net_change_rate.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  -- Unit Flag: C
  index, unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Net Change: C
  index, net_change = jpx_tseequities_indexstatistics_flex_v19_5.net_change.dissect(buffer, index, packet, parent)

  -- Second Sign: C
  index, second_sign = jpx_tseequities_indexstatistics_flex_v19_5.second_sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Day On Day Comparison
jpx_tseequities_indexstatistics_flex_v19_5.index_day_on_day_comparison.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.index_day_on_day_comparison, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.index_day_on_day_comparison.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.index_day_on_day_comparison.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.index_day_on_day_comparison.fields(buffer, offset, packet, parent)
  end
end

-- Current Price
jpx_tseequities_indexstatistics_flex_v19_5.current_price = {}

-- Size: Current Price
jpx_tseequities_indexstatistics_flex_v19_5.current_price.size =
  jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.index_value.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmmss.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.flag.size

-- Display: Current Price
jpx_tseequities_indexstatistics_flex_v19_5.current_price.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Current Price
jpx_tseequities_indexstatistics_flex_v19_5.current_price.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Flag: C
  index, unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Index Value: C
  index, index_value = jpx_tseequities_indexstatistics_flex_v19_5.index_value.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  -- Time C 6 Hhmmss: C
  index, time_c_6_hhmmss = jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmmss.dissect(buffer, index, packet, parent)

  -- Flag: C
  index, flag = jpx_tseequities_indexstatistics_flex_v19_5.flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Current Price
jpx_tseequities_indexstatistics_flex_v19_5.current_price.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.current_price, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.current_price.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.current_price.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.current_price.fields(buffer, offset, packet, parent)
  end
end

-- Lowest
jpx_tseequities_indexstatistics_flex_v19_5.lowest = {}

-- Size: Lowest
jpx_tseequities_indexstatistics_flex_v19_5.lowest.size =
  jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.index_value.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmmss.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.flag.size

-- Display: Lowest
jpx_tseequities_indexstatistics_flex_v19_5.lowest.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Lowest
jpx_tseequities_indexstatistics_flex_v19_5.lowest.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Flag: C
  index, unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Index Value: C
  index, index_value = jpx_tseequities_indexstatistics_flex_v19_5.index_value.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  -- Time C 6 Hhmmss: C
  index, time_c_6_hhmmss = jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmmss.dissect(buffer, index, packet, parent)

  -- Flag: C
  index, flag = jpx_tseequities_indexstatistics_flex_v19_5.flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Lowest
jpx_tseequities_indexstatistics_flex_v19_5.lowest.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.lowest, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.lowest.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.lowest.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.lowest.fields(buffer, offset, packet, parent)
  end
end

-- Highest
jpx_tseequities_indexstatistics_flex_v19_5.highest = {}

-- Size: Highest
jpx_tseequities_indexstatistics_flex_v19_5.highest.size =
  jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.index_value.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmmss.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.flag.size

-- Display: Highest
jpx_tseequities_indexstatistics_flex_v19_5.highest.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Highest
jpx_tseequities_indexstatistics_flex_v19_5.highest.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Flag: C
  index, unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Index Value: C
  index, index_value = jpx_tseequities_indexstatistics_flex_v19_5.index_value.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  -- Time C 6 Hhmmss: C
  index, time_c_6_hhmmss = jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmmss.dissect(buffer, index, packet, parent)

  -- Flag: C
  index, flag = jpx_tseequities_indexstatistics_flex_v19_5.flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Highest
jpx_tseequities_indexstatistics_flex_v19_5.highest.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.highest, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.highest.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.highest.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.highest.fields(buffer, offset, packet, parent)
  end
end

-- Open
jpx_tseequities_indexstatistics_flex_v19_5.open = {}

-- Size: Open
jpx_tseequities_indexstatistics_flex_v19_5.open.size =
  jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.index_value.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmmss.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.flag.size

-- Display: Open
jpx_tseequities_indexstatistics_flex_v19_5.open.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open
jpx_tseequities_indexstatistics_flex_v19_5.open.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Flag: C
  index, unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Index Value: C
  index, index_value = jpx_tseequities_indexstatistics_flex_v19_5.index_value.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  -- Time C 6 Hhmmss: C
  index, time_c_6_hhmmss = jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmmss.dissect(buffer, index, packet, parent)

  -- Flag: C
  index, flag = jpx_tseequities_indexstatistics_flex_v19_5.flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open
jpx_tseequities_indexstatistics_flex_v19_5.open.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.open, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.open.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.open.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.open.fields(buffer, offset, packet, parent)
  end
end

-- Index Open High Low And Closing Prices Message
jpx_tseequities_indexstatistics_flex_v19_5.index_open_high_low_and_closing_prices_message = {}

-- Size: Index Open High Low And Closing Prices Message
jpx_tseequities_indexstatistics_flex_v19_5.index_open_high_low_and_closing_prices_message.size =
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.index_type.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.open.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.highest.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.lowest.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.current_price.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.index_day_on_day_comparison.size

-- Display: Index Open High Low And Closing Prices Message
jpx_tseequities_indexstatistics_flex_v19_5.index_open_high_low_and_closing_prices_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Open High Low And Closing Prices Message
jpx_tseequities_indexstatistics_flex_v19_5.index_open_high_low_and_closing_prices_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Index Type: C
  index, index_type = jpx_tseequities_indexstatistics_flex_v19_5.index_type.dissect(buffer, index, packet, parent)

  -- Open: Struct of 5 fields
  index, open = jpx_tseequities_indexstatistics_flex_v19_5.open.dissect(buffer, index, packet, parent)

  -- Highest: Struct of 5 fields
  index, highest = jpx_tseequities_indexstatistics_flex_v19_5.highest.dissect(buffer, index, packet, parent)

  -- Lowest: Struct of 5 fields
  index, lowest = jpx_tseequities_indexstatistics_flex_v19_5.lowest.dissect(buffer, index, packet, parent)

  -- Current Price: Struct of 5 fields
  index, current_price = jpx_tseequities_indexstatistics_flex_v19_5.current_price.dissect(buffer, index, packet, parent)

  -- Index Day On Day Comparison: Struct of 5 fields
  index, index_day_on_day_comparison = jpx_tseequities_indexstatistics_flex_v19_5.index_day_on_day_comparison.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Open High Low And Closing Prices Message
jpx_tseequities_indexstatistics_flex_v19_5.index_open_high_low_and_closing_prices_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.index_open_high_low_and_closing_prices_message, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.index_open_high_low_and_closing_prices_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.index_open_high_low_and_closing_prices_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.index_open_high_low_and_closing_prices_message.fields(buffer, offset, packet, parent)
  end
end

-- Number Of Transactions
jpx_tseequities_indexstatistics_flex_v19_5.number_of_transactions = {}

-- Size: Number Of Transactions
jpx_tseequities_indexstatistics_flex_v19_5.number_of_transactions.size =
  jpx_tseequities_indexstatistics_flex_v19_5.single_issue_transaction_c_8.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.basket_transaction_c_8.size

-- Display: Number Of Transactions
jpx_tseequities_indexstatistics_flex_v19_5.number_of_transactions.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Number Of Transactions
jpx_tseequities_indexstatistics_flex_v19_5.number_of_transactions.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Single Issue Transaction C 8: C
  index, single_issue_transaction_c_8 = jpx_tseequities_indexstatistics_flex_v19_5.single_issue_transaction_c_8.dissect(buffer, index, packet, parent)

  -- Basket Transaction C 8: C
  index, basket_transaction_c_8 = jpx_tseequities_indexstatistics_flex_v19_5.basket_transaction_c_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Number Of Transactions
jpx_tseequities_indexstatistics_flex_v19_5.number_of_transactions.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_transactions, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.number_of_transactions.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.number_of_transactions.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.number_of_transactions.fields(buffer, offset, packet, parent)
  end
end

-- Turnover
jpx_tseequities_indexstatistics_flex_v19_5.turnover = {}

-- Size: Turnover
jpx_tseequities_indexstatistics_flex_v19_5.turnover.size =
  jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.single_issue_transaction_c_14.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.second_trading_volumeturnover_unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.closing_price_transaction.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.third_trading_volumeturnover_unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.basket_transaction_c_14.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.fourth_trading_volumeturnover_unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.aggregate_turnover.size

-- Display: Turnover
jpx_tseequities_indexstatistics_flex_v19_5.turnover.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Turnover
jpx_tseequities_indexstatistics_flex_v19_5.turnover.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Volume Turnover Unit Flag: C
  index, trading_volume_turnover_unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.dissect(buffer, index, packet, parent)

  -- Single Issue Transaction C 14: C
  index, single_issue_transaction_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.single_issue_transaction_c_14.dissect(buffer, index, packet, parent)

  -- Second Trading Volume/Turnover Unit Flag: C
  index, second_trading_volumeturnover_unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.second_trading_volumeturnover_unit_flag.dissect(buffer, index, packet, parent)

  -- Closing Price Transaction: C
  index, closing_price_transaction = jpx_tseequities_indexstatistics_flex_v19_5.closing_price_transaction.dissect(buffer, index, packet, parent)

  -- Third Trading Volume/Turnover Unit Flag: C
  index, third_trading_volumeturnover_unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.third_trading_volumeturnover_unit_flag.dissect(buffer, index, packet, parent)

  -- Basket Transaction C 14: C
  index, basket_transaction_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.basket_transaction_c_14.dissect(buffer, index, packet, parent)

  -- Fourth Trading Volume/Turnover Unit Flag: C
  index, fourth_trading_volumeturnover_unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.fourth_trading_volumeturnover_unit_flag.dissect(buffer, index, packet, parent)

  -- Aggregate Turnover: C
  index, aggregate_turnover = jpx_tseequities_indexstatistics_flex_v19_5.aggregate_turnover.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Turnover
jpx_tseequities_indexstatistics_flex_v19_5.turnover.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.turnover, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.turnover.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.turnover.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.turnover.fields(buffer, offset, packet, parent)
  end
end

-- Trading Volume
jpx_tseequities_indexstatistics_flex_v19_5.trading_volume = {}

-- Size: Trading Volume
jpx_tseequities_indexstatistics_flex_v19_5.trading_volume.size =
  jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.single_issue_transaction_c_14.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.second_trading_volumeturnover_unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.closing_price_transaction.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.third_trading_volumeturnover_unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.basket_transaction_c_14.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.fourth_trading_volumeturnover_unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.aggregate_trading_volume.size

-- Display: Trading Volume
jpx_tseequities_indexstatistics_flex_v19_5.trading_volume.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Volume
jpx_tseequities_indexstatistics_flex_v19_5.trading_volume.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Volume Turnover Unit Flag: C
  index, trading_volume_turnover_unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.dissect(buffer, index, packet, parent)

  -- Single Issue Transaction C 14: C
  index, single_issue_transaction_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.single_issue_transaction_c_14.dissect(buffer, index, packet, parent)

  -- Second Trading Volume/Turnover Unit Flag: C
  index, second_trading_volumeturnover_unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.second_trading_volumeturnover_unit_flag.dissect(buffer, index, packet, parent)

  -- Closing Price Transaction: C
  index, closing_price_transaction = jpx_tseequities_indexstatistics_flex_v19_5.closing_price_transaction.dissect(buffer, index, packet, parent)

  -- Third Trading Volume/Turnover Unit Flag: C
  index, third_trading_volumeturnover_unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.third_trading_volumeturnover_unit_flag.dissect(buffer, index, packet, parent)

  -- Basket Transaction C 14: C
  index, basket_transaction_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.basket_transaction_c_14.dissect(buffer, index, packet, parent)

  -- Fourth Trading Volume/Turnover Unit Flag: C
  index, fourth_trading_volumeturnover_unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.fourth_trading_volumeturnover_unit_flag.dissect(buffer, index, packet, parent)

  -- Aggregate Trading Volume: C
  index, aggregate_trading_volume = jpx_tseequities_indexstatistics_flex_v19_5.aggregate_trading_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Volume
jpx_tseequities_indexstatistics_flex_v19_5.trading_volume.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.trading_volume, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.trading_volume.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.trading_volume.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.trading_volume.fields(buffer, offset, packet, parent)
  end
end

-- ToSTNeT Statistics Message
jpx_tseequities_indexstatistics_flex_v19_5.tostnet_statistics_message = {}

-- Size: ToSTNeT Statistics Message
jpx_tseequities_indexstatistics_flex_v19_5.tostnet_statistics_message.size =
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.output_time.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.other_classification_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.trading_volume.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.turnover.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.number_of_transactions.size

-- Display: ToSTNeT Statistics Message
jpx_tseequities_indexstatistics_flex_v19_5.tostnet_statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: ToSTNeT Statistics Message
jpx_tseequities_indexstatistics_flex_v19_5.tostnet_statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Output Time: C
  index, output_time = jpx_tseequities_indexstatistics_flex_v19_5.output_time.dissect(buffer, index, packet, parent)

  -- Other Classification Flag: C
  index, other_classification_flag = jpx_tseequities_indexstatistics_flex_v19_5.other_classification_flag.dissect(buffer, index, packet, parent)

  -- Trading Volume: Struct of 8 fields
  index, trading_volume = jpx_tseequities_indexstatistics_flex_v19_5.trading_volume.dissect(buffer, index, packet, parent)

  -- Turnover: Struct of 8 fields
  index, turnover = jpx_tseequities_indexstatistics_flex_v19_5.turnover.dissect(buffer, index, packet, parent)

  -- Number Of Transactions: Struct of 2 fields
  index, number_of_transactions = jpx_tseequities_indexstatistics_flex_v19_5.number_of_transactions.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: ToSTNeT Statistics Message
jpx_tseequities_indexstatistics_flex_v19_5.tostnet_statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.tostnet_statistics_message, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.tostnet_statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.tostnet_statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.tostnet_statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Rank By Net Change Rate
jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_net_change_rate = {}

-- Size: Top Rank By Net Change Rate
jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_net_change_rate.size =
  jpx_tseequities_indexstatistics_flex_v19_5.rank.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.ranked_issue_code.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.state_sign.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.current_price_c_14.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.comparison_type.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.net_change_rate.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.second_sign.size

-- Display: Top Rank By Net Change Rate
jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_net_change_rate.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Rank By Net Change Rate
jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_net_change_rate.fields = function(buffer, offset, packet, parent, top_rank_by_net_change_rate_index)
  local index = offset

  -- Implicit Top Rank By Net Change Rate Index
  if top_rank_by_net_change_rate_index ~= nil and show.indexes then
    local iteration = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.top_rank_by_net_change_rate_index, top_rank_by_net_change_rate_index)
    iteration:set_generated()
  end

  -- Rank: C
  index, rank = jpx_tseequities_indexstatistics_flex_v19_5.rank.dissect(buffer, index, packet, parent)

  -- Ranked Issue Code: C
  index, ranked_issue_code = jpx_tseequities_indexstatistics_flex_v19_5.ranked_issue_code.dissect(buffer, index, packet, parent)

  -- State Sign: C
  index, state_sign = jpx_tseequities_indexstatistics_flex_v19_5.state_sign.dissect(buffer, index, packet, parent)

  -- Unit Flag: C
  index, unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Current Price C 14: C
  index, current_price_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.current_price_c_14.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  -- Comparison Type: C
  index, comparison_type = jpx_tseequities_indexstatistics_flex_v19_5.comparison_type.dissect(buffer, index, packet, parent)

  -- Net Change Rate: C
  index, net_change_rate = jpx_tseequities_indexstatistics_flex_v19_5.net_change_rate.dissect(buffer, index, packet, parent)

  -- Second Sign: C
  index, second_sign = jpx_tseequities_indexstatistics_flex_v19_5.second_sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Rank By Net Change Rate
jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_net_change_rate.dissect = function(buffer, offset, packet, parent, top_rank_by_net_change_rate_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.top_rank_by_net_change_rate, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_net_change_rate.fields(buffer, offset, packet, parent, top_rank_by_net_change_rate_index)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_net_change_rate.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_net_change_rate.fields(buffer, offset, packet, parent, top_rank_by_net_change_rate_index)
  end
end

-- Ranking By Net Change Rate Message
jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_net_change_rate_message = {}

-- Size: Ranking By Net Change Rate Message
jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_net_change_rate_message.size =
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.output_time.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.net_change_distinction.size + 
  30 * jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_net_change_rate.size

-- Display: Ranking By Net Change Rate Message
jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_net_change_rate_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ranking By Net Change Rate Message
jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_net_change_rate_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Output Time: C
  index, output_time = jpx_tseequities_indexstatistics_flex_v19_5.output_time.dissect(buffer, index, packet, parent)

  -- Issue Classification Code: C
  index, issue_classification_code = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.dissect(buffer, index, packet, parent)

  -- Net Change Distinction: C
  index, net_change_distinction = jpx_tseequities_indexstatistics_flex_v19_5.net_change_distinction.dissect(buffer, index, packet, parent)

  -- Array Of: Top Rank By Net Change Rate
  for top_rank_by_net_change_rate_index = 1, 30 do
    index, top_rank_by_net_change_rate = jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_net_change_rate.dissect(buffer, index, packet, parent, top_rank_by_net_change_rate_index)
  end

  return index
end

-- Dissect: Ranking By Net Change Rate Message
jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_net_change_rate_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.ranking_by_net_change_rate_message, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_net_change_rate_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_net_change_rate_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_net_change_rate_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Rank By Net Change
jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_net_change = {}

-- Size: Top Rank By Net Change
jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_net_change.size =
  jpx_tseequities_indexstatistics_flex_v19_5.rank.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.ranked_issue_code.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.state_sign.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.current_price_c_14.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.comparison_type.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.second_unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.net_change.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.second_sign.size

-- Display: Top Rank By Net Change
jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_net_change.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Rank By Net Change
jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_net_change.fields = function(buffer, offset, packet, parent, top_rank_by_net_change_index)
  local index = offset

  -- Implicit Top Rank By Net Change Index
  if top_rank_by_net_change_index ~= nil and show.indexes then
    local iteration = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.top_rank_by_net_change_index, top_rank_by_net_change_index)
    iteration:set_generated()
  end

  -- Rank: C
  index, rank = jpx_tseequities_indexstatistics_flex_v19_5.rank.dissect(buffer, index, packet, parent)

  -- Ranked Issue Code: C
  index, ranked_issue_code = jpx_tseequities_indexstatistics_flex_v19_5.ranked_issue_code.dissect(buffer, index, packet, parent)

  -- State Sign: C
  index, state_sign = jpx_tseequities_indexstatistics_flex_v19_5.state_sign.dissect(buffer, index, packet, parent)

  -- Unit Flag: C
  index, unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Current Price C 14: C
  index, current_price_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.current_price_c_14.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  -- Comparison Type: C
  index, comparison_type = jpx_tseequities_indexstatistics_flex_v19_5.comparison_type.dissect(buffer, index, packet, parent)

  -- Second Unit Flag: C
  index, second_unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.second_unit_flag.dissect(buffer, index, packet, parent)

  -- Net Change: C
  index, net_change = jpx_tseequities_indexstatistics_flex_v19_5.net_change.dissect(buffer, index, packet, parent)

  -- Second Sign: C
  index, second_sign = jpx_tseequities_indexstatistics_flex_v19_5.second_sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Rank By Net Change
jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_net_change.dissect = function(buffer, offset, packet, parent, top_rank_by_net_change_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.top_rank_by_net_change, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_net_change.fields(buffer, offset, packet, parent, top_rank_by_net_change_index)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_net_change.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_net_change.fields(buffer, offset, packet, parent, top_rank_by_net_change_index)
  end
end

-- Ranking By Net Change Message
jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_net_change_message = {}

-- Size: Ranking By Net Change Message
jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_net_change_message.size =
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.output_time.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.net_change_distinction.size + 
  30 * jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_net_change.size

-- Display: Ranking By Net Change Message
jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_net_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ranking By Net Change Message
jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_net_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Output Time: C
  index, output_time = jpx_tseequities_indexstatistics_flex_v19_5.output_time.dissect(buffer, index, packet, parent)

  -- Issue Classification Code: C
  index, issue_classification_code = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.dissect(buffer, index, packet, parent)

  -- Net Change Distinction: C
  index, net_change_distinction = jpx_tseequities_indexstatistics_flex_v19_5.net_change_distinction.dissect(buffer, index, packet, parent)

  -- Array Of: Top Rank By Net Change
  for top_rank_by_net_change_index = 1, 30 do
    index, top_rank_by_net_change = jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_net_change.dissect(buffer, index, packet, parent, top_rank_by_net_change_index)
  end

  return index
end

-- Dissect: Ranking By Net Change Message
jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_net_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.ranking_by_net_change_message, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_net_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_net_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_net_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Rank By Turnover
jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_turnover = {}

-- Size: Top Rank By Turnover
jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_turnover.size =
  jpx_tseequities_indexstatistics_flex_v19_5.rank.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.ranked_issue_code.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_1.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.turnover_c_14.size

-- Display: Top Rank By Turnover
jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_turnover.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Rank By Turnover
jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_turnover.fields = function(buffer, offset, packet, parent, top_rank_by_turnover_index)
  local index = offset

  -- Implicit Top Rank By Turnover Index
  if top_rank_by_turnover_index ~= nil and show.indexes then
    local iteration = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.top_rank_by_turnover_index, top_rank_by_turnover_index)
    iteration:set_generated()
  end

  -- Rank: C
  index, rank = jpx_tseequities_indexstatistics_flex_v19_5.rank.dissect(buffer, index, packet, parent)

  -- Ranked Issue Code: C
  index, ranked_issue_code = jpx_tseequities_indexstatistics_flex_v19_5.ranked_issue_code.dissect(buffer, index, packet, parent)

  -- Reserved 1: C
  index, reserved_1 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_1.dissect(buffer, index, packet, parent)

  -- Trading Volume Turnover Unit Flag: C
  index, trading_volume_turnover_unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.dissect(buffer, index, packet, parent)

  -- Turnover C 14: C
  index, turnover_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.turnover_c_14.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Rank By Turnover
jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_turnover.dissect = function(buffer, offset, packet, parent, top_rank_by_turnover_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.top_rank_by_turnover, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_turnover.fields(buffer, offset, packet, parent, top_rank_by_turnover_index)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_turnover.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_turnover.fields(buffer, offset, packet, parent, top_rank_by_turnover_index)
  end
end

-- Ranking By Turnover Message
jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_turnover_message = {}

-- Size: Ranking By Turnover Message
jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_turnover_message.size =
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.output_time.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.size + 
  30 * jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_turnover.size

-- Display: Ranking By Turnover Message
jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_turnover_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ranking By Turnover Message
jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_turnover_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Output Time: C
  index, output_time = jpx_tseequities_indexstatistics_flex_v19_5.output_time.dissect(buffer, index, packet, parent)

  -- Issue Classification Code: C
  index, issue_classification_code = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.dissect(buffer, index, packet, parent)

  -- Array Of: Top Rank By Turnover
  for top_rank_by_turnover_index = 1, 30 do
    index, top_rank_by_turnover = jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_turnover.dissect(buffer, index, packet, parent, top_rank_by_turnover_index)
  end

  return index
end

-- Dissect: Ranking By Turnover Message
jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_turnover_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.ranking_by_turnover_message, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_turnover_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_turnover_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_turnover_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Rank By Trading Volume
jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_trading_volume = {}

-- Size: Top Rank By Trading Volume
jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_trading_volume.size =
  jpx_tseequities_indexstatistics_flex_v19_5.rank.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.ranked_issue_code.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_1.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_c_14.size

-- Display: Top Rank By Trading Volume
jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_trading_volume.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Rank By Trading Volume
jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_trading_volume.fields = function(buffer, offset, packet, parent, top_rank_by_trading_volume_index)
  local index = offset

  -- Implicit Top Rank By Trading Volume Index
  if top_rank_by_trading_volume_index ~= nil and show.indexes then
    local iteration = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.top_rank_by_trading_volume_index, top_rank_by_trading_volume_index)
    iteration:set_generated()
  end

  -- Rank: C
  index, rank = jpx_tseequities_indexstatistics_flex_v19_5.rank.dissect(buffer, index, packet, parent)

  -- Ranked Issue Code: C
  index, ranked_issue_code = jpx_tseequities_indexstatistics_flex_v19_5.ranked_issue_code.dissect(buffer, index, packet, parent)

  -- Reserved 1: C
  index, reserved_1 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_1.dissect(buffer, index, packet, parent)

  -- Trading Volume Turnover Unit Flag: C
  index, trading_volume_turnover_unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.dissect(buffer, index, packet, parent)

  -- Trading Volume C 14: C
  index, trading_volume_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_c_14.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Rank By Trading Volume
jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_trading_volume.dissect = function(buffer, offset, packet, parent, top_rank_by_trading_volume_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.top_rank_by_trading_volume, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_trading_volume.fields(buffer, offset, packet, parent, top_rank_by_trading_volume_index)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_trading_volume.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_trading_volume.fields(buffer, offset, packet, parent, top_rank_by_trading_volume_index)
  end
end

-- Ranking By Trading Volume Message
jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_trading_volume_message = {}

-- Size: Ranking By Trading Volume Message
jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_trading_volume_message.size =
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.output_time.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.size + 
  30 * jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_trading_volume.size

-- Display: Ranking By Trading Volume Message
jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_trading_volume_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ranking By Trading Volume Message
jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_trading_volume_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Output Time: C
  index, output_time = jpx_tseequities_indexstatistics_flex_v19_5.output_time.dissect(buffer, index, packet, parent)

  -- Issue Classification Code: C
  index, issue_classification_code = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.dissect(buffer, index, packet, parent)

  -- Array Of: Top Rank By Trading Volume
  for top_rank_by_trading_volume_index = 1, 30 do
    index, top_rank_by_trading_volume = jpx_tseequities_indexstatistics_flex_v19_5.top_rank_by_trading_volume.dissect(buffer, index, packet, parent, top_rank_by_trading_volume_index)
  end

  return index
end

-- Dissect: Ranking By Trading Volume Message
jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_trading_volume_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.ranking_by_trading_volume_message, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_trading_volume_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_trading_volume_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_trading_volume_message.fields(buffer, offset, packet, parent)
  end
end

-- Vwap By Market
jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market = {}

-- Size: Vwap By Market
jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market.size =
  jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market_c_14.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_1.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.second_unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_14.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.second_sign.size

-- Display: Vwap By Market
jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Vwap By Market
jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Flag: C
  index, unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Vwap By Market C 14: C
  index, vwap_by_market_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market_c_14.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  -- Reserved 1: C
  index, reserved_1 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_1.dissect(buffer, index, packet, parent)

  -- Second Unit Flag: C
  index, second_unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.second_unit_flag.dissect(buffer, index, packet, parent)

  -- Day On Day Comparison C 14: C
  index, day_on_day_comparison_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_14.dissect(buffer, index, packet, parent)

  -- Second Sign: C
  index, second_sign = jpx_tseequities_indexstatistics_flex_v19_5.second_sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Vwap By Market
jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.vwap_by_market, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market.fields(buffer, offset, packet, parent)
  end
end

-- Vwap By Market Message
jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market_message = {}

-- Size: Vwap By Market Message
jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market_message.size =
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.output_time.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market.size

-- Display: Vwap By Market Message
jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Vwap By Market Message
jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Output Time: C
  index, output_time = jpx_tseequities_indexstatistics_flex_v19_5.output_time.dissect(buffer, index, packet, parent)

  -- Issue Classification Code: C
  index, issue_classification_code = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.dissect(buffer, index, packet, parent)

  -- Vwap By Market: Struct of 7 fields
  index, vwap_by_market = jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Vwap By Market Message
jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.vwap_by_market_message, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market_message.fields(buffer, offset, packet, parent)
  end
end

-- Estimated Total Turnover
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover = {}

-- Size: Estimated Total Turnover
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover.size =
  jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover_c_14.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_1.size

-- Display: Estimated Total Turnover
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Estimated Total Turnover
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Volume Turnover Unit Flag: C
  index, trading_volume_turnover_unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.dissect(buffer, index, packet, parent)

  -- Estimated Total Turnover C 14: C
  index, estimated_total_turnover_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover_c_14.dissect(buffer, index, packet, parent)

  -- Reserved 1: C
  index, reserved_1 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Estimated Total Turnover
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.estimated_total_turnover, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover.fields(buffer, offset, packet, parent)
  end
end

-- Estimated Total Turnover Message
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover_message = {}

-- Size: Estimated Total Turnover Message
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover_message.size =
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.output_time.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.other_classification_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover.size

-- Display: Estimated Total Turnover Message
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Estimated Total Turnover Message
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Output Time: C
  index, output_time = jpx_tseequities_indexstatistics_flex_v19_5.output_time.dissect(buffer, index, packet, parent)

  -- Issue Classification Code: C
  index, issue_classification_code = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.dissect(buffer, index, packet, parent)

  -- Other Classification Flag: C
  index, other_classification_flag = jpx_tseequities_indexstatistics_flex_v19_5.other_classification_flag.dissect(buffer, index, packet, parent)

  -- Estimated Total Turnover: Struct of 3 fields
  index, estimated_total_turnover = jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Estimated Total Turnover Message
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.estimated_total_turnover_message, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover_message.fields(buffer, offset, packet, parent)
  end
end

-- Estimated Total Trading Volume
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume = {}

-- Size: Estimated Total Trading Volume
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume.size =
  jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume_c_14.size

-- Display: Estimated Total Trading Volume
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Estimated Total Trading Volume
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Volume Turnover Unit Flag: C
  index, trading_volume_turnover_unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.dissect(buffer, index, packet, parent)

  -- Estimated Total Trading Volume C 14: C
  index, estimated_total_trading_volume_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume_c_14.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Estimated Total Trading Volume
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.estimated_total_trading_volume, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume.fields(buffer, offset, packet, parent)
  end
end

-- Estimated Total Trading Volume Message
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume_message = {}

-- Size: Estimated Total Trading Volume Message
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume_message.size =
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.output_time.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.other_classification_code.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume.size

-- Display: Estimated Total Trading Volume Message
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Estimated Total Trading Volume Message
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Output Time: C
  index, output_time = jpx_tseequities_indexstatistics_flex_v19_5.output_time.dissect(buffer, index, packet, parent)

  -- Issue Classification Code: C
  index, issue_classification_code = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.dissect(buffer, index, packet, parent)

  -- Other Classification Code: C
  index, other_classification_code = jpx_tseequities_indexstatistics_flex_v19_5.other_classification_code.dissect(buffer, index, packet, parent)

  -- Estimated Total Trading Volume: Struct of 2 fields
  index, estimated_total_trading_volume = jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Estimated Total Trading Volume Message
jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.estimated_total_trading_volume_message, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume_message.fields(buffer, offset, packet, parent)
  end
end

-- Number Of Inactive Issues
jpx_tseequities_indexstatistics_flex_v19_5.number_of_inactive_issues = {}

-- Size: Number Of Inactive Issues
jpx_tseequities_indexstatistics_flex_v19_5.number_of_inactive_issues.size =
  jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.ratio.size

-- Display: Number Of Inactive Issues
jpx_tseequities_indexstatistics_flex_v19_5.number_of_inactive_issues.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Number Of Inactive Issues
jpx_tseequities_indexstatistics_flex_v19_5.number_of_inactive_issues.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Issues: C
  index, number_of_issues = jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues.dissect(buffer, index, packet, parent)

  -- Ratio: C
  index, ratio = jpx_tseequities_indexstatistics_flex_v19_5.ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Number Of Inactive Issues
jpx_tseequities_indexstatistics_flex_v19_5.number_of_inactive_issues.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_inactive_issues, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.number_of_inactive_issues.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.number_of_inactive_issues.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.number_of_inactive_issues.fields(buffer, offset, packet, parent)
  end
end

-- Number Of Issues With No Comparison
jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues_with_no_comparison = {}

-- Size: Number Of Issues With No Comparison
jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues_with_no_comparison.size =
  jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.ratio.size

-- Display: Number Of Issues With No Comparison
jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues_with_no_comparison.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Number Of Issues With No Comparison
jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues_with_no_comparison.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Issues: C
  index, number_of_issues = jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues.dissect(buffer, index, packet, parent)

  -- Ratio: C
  index, ratio = jpx_tseequities_indexstatistics_flex_v19_5.ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Number Of Issues With No Comparison
jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues_with_no_comparison.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_issues_with_no_comparison, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues_with_no_comparison.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues_with_no_comparison.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues_with_no_comparison.fields(buffer, offset, packet, parent)
  end
end

-- Number Of Issues With No Change
jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues_with_no_change = {}

-- Size: Number Of Issues With No Change
jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues_with_no_change.size =
  jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.ratio.size

-- Display: Number Of Issues With No Change
jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues_with_no_change.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Number Of Issues With No Change
jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues_with_no_change.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Issues: C
  index, number_of_issues = jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues.dissect(buffer, index, packet, parent)

  -- Ratio: C
  index, ratio = jpx_tseequities_indexstatistics_flex_v19_5.ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Number Of Issues With No Change
jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues_with_no_change.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_issues_with_no_change, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues_with_no_change.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues_with_no_change.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues_with_no_change.fields(buffer, offset, packet, parent)
  end
end

-- Number Of Decliners
jpx_tseequities_indexstatistics_flex_v19_5.number_of_decliners = {}

-- Size: Number Of Decliners
jpx_tseequities_indexstatistics_flex_v19_5.number_of_decliners.size =
  jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.ratio.size

-- Display: Number Of Decliners
jpx_tseequities_indexstatistics_flex_v19_5.number_of_decliners.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Number Of Decliners
jpx_tseequities_indexstatistics_flex_v19_5.number_of_decliners.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Issues: C
  index, number_of_issues = jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues.dissect(buffer, index, packet, parent)

  -- Ratio: C
  index, ratio = jpx_tseequities_indexstatistics_flex_v19_5.ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Number Of Decliners
jpx_tseequities_indexstatistics_flex_v19_5.number_of_decliners.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_decliners, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.number_of_decliners.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.number_of_decliners.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.number_of_decliners.fields(buffer, offset, packet, parent)
  end
end

-- Number Of Gainers
jpx_tseequities_indexstatistics_flex_v19_5.number_of_gainers = {}

-- Size: Number Of Gainers
jpx_tseequities_indexstatistics_flex_v19_5.number_of_gainers.size =
  jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.ratio.size

-- Display: Number Of Gainers
jpx_tseequities_indexstatistics_flex_v19_5.number_of_gainers.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Number Of Gainers
jpx_tseequities_indexstatistics_flex_v19_5.number_of_gainers.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Issues: C
  index, number_of_issues = jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues.dissect(buffer, index, packet, parent)

  -- Ratio: C
  index, ratio = jpx_tseequities_indexstatistics_flex_v19_5.ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Number Of Gainers
jpx_tseequities_indexstatistics_flex_v19_5.number_of_gainers.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_gainers, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.number_of_gainers.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.number_of_gainers.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.number_of_gainers.fields(buffer, offset, packet, parent)
  end
end

-- Number Of Active Issues
jpx_tseequities_indexstatistics_flex_v19_5.number_of_active_issues = {}

-- Size: Number Of Active Issues
jpx_tseequities_indexstatistics_flex_v19_5.number_of_active_issues.size =
  jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.ratio.size

-- Display: Number Of Active Issues
jpx_tseequities_indexstatistics_flex_v19_5.number_of_active_issues.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Number Of Active Issues
jpx_tseequities_indexstatistics_flex_v19_5.number_of_active_issues.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Issues: C
  index, number_of_issues = jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues.dissect(buffer, index, packet, parent)

  -- Ratio: C
  index, ratio = jpx_tseequities_indexstatistics_flex_v19_5.ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Number Of Active Issues
jpx_tseequities_indexstatistics_flex_v19_5.number_of_active_issues.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_active_issues, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.number_of_active_issues.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.number_of_active_issues.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.number_of_active_issues.fields(buffer, offset, packet, parent)
  end
end

-- Number Of Gainers Decliners Message
jpx_tseequities_indexstatistics_flex_v19_5.number_of_gainers_decliners_message = {}

-- Size: Number Of Gainers Decliners Message
jpx_tseequities_indexstatistics_flex_v19_5.number_of_gainers_decliners_message.size =
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.output_time.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.number_of_listed_companies.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.number_of_listed_issues.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.number_of_active_issues.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.number_of_gainers.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.number_of_decliners.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues_with_no_change.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues_with_no_comparison.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.number_of_inactive_issues.size

-- Display: Number Of Gainers Decliners Message
jpx_tseequities_indexstatistics_flex_v19_5.number_of_gainers_decliners_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Number Of Gainers Decliners Message
jpx_tseequities_indexstatistics_flex_v19_5.number_of_gainers_decliners_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Output Time: C
  index, output_time = jpx_tseequities_indexstatistics_flex_v19_5.output_time.dissect(buffer, index, packet, parent)

  -- Issue Classification Code: C
  index, issue_classification_code = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.dissect(buffer, index, packet, parent)

  -- Number Of Listed Companies: C
  index, number_of_listed_companies = jpx_tseequities_indexstatistics_flex_v19_5.number_of_listed_companies.dissect(buffer, index, packet, parent)

  -- Number Of Listed Issues: C
  index, number_of_listed_issues = jpx_tseequities_indexstatistics_flex_v19_5.number_of_listed_issues.dissect(buffer, index, packet, parent)

  -- Number Of Active Issues: Struct of 2 fields
  index, number_of_active_issues = jpx_tseequities_indexstatistics_flex_v19_5.number_of_active_issues.dissect(buffer, index, packet, parent)

  -- Number Of Gainers: Struct of 2 fields
  index, number_of_gainers = jpx_tseequities_indexstatistics_flex_v19_5.number_of_gainers.dissect(buffer, index, packet, parent)

  -- Number Of Decliners: Struct of 2 fields
  index, number_of_decliners = jpx_tseequities_indexstatistics_flex_v19_5.number_of_decliners.dissect(buffer, index, packet, parent)

  -- Number Of Issues With No Change: Struct of 2 fields
  index, number_of_issues_with_no_change = jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues_with_no_change.dissect(buffer, index, packet, parent)

  -- Number Of Issues With No Comparison: Struct of 2 fields
  index, number_of_issues_with_no_comparison = jpx_tseequities_indexstatistics_flex_v19_5.number_of_issues_with_no_comparison.dissect(buffer, index, packet, parent)

  -- Number Of Inactive Issues: Struct of 2 fields
  index, number_of_inactive_issues = jpx_tseequities_indexstatistics_flex_v19_5.number_of_inactive_issues.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Number Of Gainers Decliners Message
jpx_tseequities_indexstatistics_flex_v19_5.number_of_gainers_decliners_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.number_of_gainers_decliners_message, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.number_of_gainers_decliners_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.number_of_gainers_decliners_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.number_of_gainers_decliners_message.fields(buffer, offset, packet, parent)
  end
end

-- Direct Yield Average
jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average = {}

-- Size: Direct Yield Average
jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average.size =
  jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average_c_8.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size

-- Display: Direct Yield Average
jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Direct Yield Average
jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Direct Yield Average C 8: C
  index, direct_yield_average_c_8 = jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average_c_8.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Direct Yield Average
jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.direct_yield_average, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average.fields(buffer, offset, packet, parent)
  end
end

-- Parity Average
jpx_tseequities_indexstatistics_flex_v19_5.parity_average = {}

-- Size: Parity Average
jpx_tseequities_indexstatistics_flex_v19_5.parity_average.size =
  jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.parity_average_c_14.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size

-- Display: Parity Average
jpx_tseequities_indexstatistics_flex_v19_5.parity_average.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Parity Average
jpx_tseequities_indexstatistics_flex_v19_5.parity_average.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Flag: C
  index, unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Parity Average C 14: C
  index, parity_average_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.parity_average_c_14.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Parity Average
jpx_tseequities_indexstatistics_flex_v19_5.parity_average.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.parity_average, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.parity_average.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.parity_average.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.parity_average.fields(buffer, offset, packet, parent)
  end
end

-- Divergence Average
jpx_tseequities_indexstatistics_flex_v19_5.divergence_average = {}

-- Size: Divergence Average
jpx_tseequities_indexstatistics_flex_v19_5.divergence_average.size =
  jpx_tseequities_indexstatistics_flex_v19_5.divergence_average_c_8.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size

-- Display: Divergence Average
jpx_tseequities_indexstatistics_flex_v19_5.divergence_average.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Divergence Average
jpx_tseequities_indexstatistics_flex_v19_5.divergence_average.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Divergence Average C 8: C
  index, divergence_average_c_8 = jpx_tseequities_indexstatistics_flex_v19_5.divergence_average_c_8.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Divergence Average
jpx_tseequities_indexstatistics_flex_v19_5.divergence_average.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.divergence_average, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.divergence_average.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.divergence_average.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.divergence_average.fields(buffer, offset, packet, parent)
  end
end

-- Simple Average
jpx_tseequities_indexstatistics_flex_v19_5.simple_average = {}

-- Size: Simple Average
jpx_tseequities_indexstatistics_flex_v19_5.simple_average.size =
  jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.simple_average_c_14.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size

-- Display: Simple Average
jpx_tseequities_indexstatistics_flex_v19_5.simple_average.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Average
jpx_tseequities_indexstatistics_flex_v19_5.simple_average.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Flag: C
  index, unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Simple Average C 14: C
  index, simple_average_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.simple_average_c_14.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Average
jpx_tseequities_indexstatistics_flex_v19_5.simple_average.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_average, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.simple_average.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.simple_average.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.simple_average.fields(buffer, offset, packet, parent)
  end
end

-- Parity Less Than 100
jpx_tseequities_indexstatistics_flex_v19_5.parity_less_than_100 = {}

-- Size: Parity Less Than 100
jpx_tseequities_indexstatistics_flex_v19_5.parity_less_than_100.size =
  jpx_tseequities_indexstatistics_flex_v19_5.simple_average.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.divergence_average.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.parity_average.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average.size

-- Display: Parity Less Than 100
jpx_tseequities_indexstatistics_flex_v19_5.parity_less_than_100.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Parity Less Than 100
jpx_tseequities_indexstatistics_flex_v19_5.parity_less_than_100.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Simple Average: Struct of 3 fields
  index, simple_average = jpx_tseequities_indexstatistics_flex_v19_5.simple_average.dissect(buffer, index, packet, parent)

  -- Divergence Average: Struct of 2 fields
  index, divergence_average = jpx_tseequities_indexstatistics_flex_v19_5.divergence_average.dissect(buffer, index, packet, parent)

  -- Parity Average: Struct of 3 fields
  index, parity_average = jpx_tseequities_indexstatistics_flex_v19_5.parity_average.dissect(buffer, index, packet, parent)

  -- Direct Yield Average: Struct of 2 fields
  index, direct_yield_average = jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Parity Less Than 100
jpx_tseequities_indexstatistics_flex_v19_5.parity_less_than_100.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.parity_less_than_100, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.parity_less_than_100.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.parity_less_than_100.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.parity_less_than_100.fields(buffer, offset, packet, parent)
  end
end

-- Parity 100 Or Higher
jpx_tseequities_indexstatistics_flex_v19_5.parity_100_or_higher = {}

-- Size: Parity 100 Or Higher
jpx_tseequities_indexstatistics_flex_v19_5.parity_100_or_higher.size =
  jpx_tseequities_indexstatistics_flex_v19_5.simple_average.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.divergence_average.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.parity_average.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average.size

-- Display: Parity 100 Or Higher
jpx_tseequities_indexstatistics_flex_v19_5.parity_100_or_higher.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Parity 100 Or Higher
jpx_tseequities_indexstatistics_flex_v19_5.parity_100_or_higher.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Simple Average: Struct of 3 fields
  index, simple_average = jpx_tseequities_indexstatistics_flex_v19_5.simple_average.dissect(buffer, index, packet, parent)

  -- Divergence Average: Struct of 2 fields
  index, divergence_average = jpx_tseequities_indexstatistics_flex_v19_5.divergence_average.dissect(buffer, index, packet, parent)

  -- Parity Average: Struct of 3 fields
  index, parity_average = jpx_tseequities_indexstatistics_flex_v19_5.parity_average.dissect(buffer, index, packet, parent)

  -- Direct Yield Average: Struct of 2 fields
  index, direct_yield_average = jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Parity 100 Or Higher
jpx_tseequities_indexstatistics_flex_v19_5.parity_100_or_higher.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.parity_100_or_higher, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.parity_100_or_higher.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.parity_100_or_higher.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.parity_100_or_higher.fields(buffer, offset, packet, parent)
  end
end

-- Overall Direct Yield Average
jpx_tseequities_indexstatistics_flex_v19_5.overall_direct_yield_average = {}

-- Size: Overall Direct Yield Average
jpx_tseequities_indexstatistics_flex_v19_5.overall_direct_yield_average.size =
  jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average_c_8.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_8.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.second_sign.size

-- Display: Overall Direct Yield Average
jpx_tseequities_indexstatistics_flex_v19_5.overall_direct_yield_average.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Overall Direct Yield Average
jpx_tseequities_indexstatistics_flex_v19_5.overall_direct_yield_average.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Direct Yield Average C 8: C
  index, direct_yield_average_c_8 = jpx_tseequities_indexstatistics_flex_v19_5.direct_yield_average_c_8.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  -- Day On Day Comparison C 8: C
  index, day_on_day_comparison_c_8 = jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_8.dissect(buffer, index, packet, parent)

  -- Second Sign: C
  index, second_sign = jpx_tseequities_indexstatistics_flex_v19_5.second_sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Overall Direct Yield Average
jpx_tseequities_indexstatistics_flex_v19_5.overall_direct_yield_average.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.overall_direct_yield_average, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.overall_direct_yield_average.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.overall_direct_yield_average.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.overall_direct_yield_average.fields(buffer, offset, packet, parent)
  end
end

-- Overall Parity Average
jpx_tseequities_indexstatistics_flex_v19_5.overall_parity_average = {}

-- Size: Overall Parity Average
jpx_tseequities_indexstatistics_flex_v19_5.overall_parity_average.size =
  jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.parity_average_c_14.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.second_unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_14.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.second_sign.size

-- Display: Overall Parity Average
jpx_tseequities_indexstatistics_flex_v19_5.overall_parity_average.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Overall Parity Average
jpx_tseequities_indexstatistics_flex_v19_5.overall_parity_average.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Flag: C
  index, unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Parity Average C 14: C
  index, parity_average_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.parity_average_c_14.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  -- Second Unit Flag: C
  index, second_unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.second_unit_flag.dissect(buffer, index, packet, parent)

  -- Day On Day Comparison C 14: C
  index, day_on_day_comparison_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_14.dissect(buffer, index, packet, parent)

  -- Second Sign: C
  index, second_sign = jpx_tseequities_indexstatistics_flex_v19_5.second_sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Overall Parity Average
jpx_tseequities_indexstatistics_flex_v19_5.overall_parity_average.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.overall_parity_average, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.overall_parity_average.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.overall_parity_average.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.overall_parity_average.fields(buffer, offset, packet, parent)
  end
end

-- Overall Divergence Average
jpx_tseequities_indexstatistics_flex_v19_5.overall_divergence_average = {}

-- Size: Overall Divergence Average
jpx_tseequities_indexstatistics_flex_v19_5.overall_divergence_average.size =
  jpx_tseequities_indexstatistics_flex_v19_5.divergence_average_c_8.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_8.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.second_sign.size

-- Display: Overall Divergence Average
jpx_tseequities_indexstatistics_flex_v19_5.overall_divergence_average.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Overall Divergence Average
jpx_tseequities_indexstatistics_flex_v19_5.overall_divergence_average.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Divergence Average C 8: C
  index, divergence_average_c_8 = jpx_tseequities_indexstatistics_flex_v19_5.divergence_average_c_8.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  -- Day On Day Comparison C 8: C
  index, day_on_day_comparison_c_8 = jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_8.dissect(buffer, index, packet, parent)

  -- Second Sign: C
  index, second_sign = jpx_tseequities_indexstatistics_flex_v19_5.second_sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Overall Divergence Average
jpx_tseequities_indexstatistics_flex_v19_5.overall_divergence_average.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.overall_divergence_average, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.overall_divergence_average.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.overall_divergence_average.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.overall_divergence_average.fields(buffer, offset, packet, parent)
  end
end

-- Overall Simple Average
jpx_tseequities_indexstatistics_flex_v19_5.overall_simple_average = {}

-- Size: Overall Simple Average
jpx_tseequities_indexstatistics_flex_v19_5.overall_simple_average.size =
  jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.simple_average_c_14.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.second_unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_14.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.second_sign.size

-- Display: Overall Simple Average
jpx_tseequities_indexstatistics_flex_v19_5.overall_simple_average.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Overall Simple Average
jpx_tseequities_indexstatistics_flex_v19_5.overall_simple_average.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Flag: C
  index, unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Simple Average C 14: C
  index, simple_average_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.simple_average_c_14.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  -- Second Unit Flag: C
  index, second_unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.second_unit_flag.dissect(buffer, index, packet, parent)

  -- Day On Day Comparison C 14: C
  index, day_on_day_comparison_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_14.dissect(buffer, index, packet, parent)

  -- Second Sign: C
  index, second_sign = jpx_tseequities_indexstatistics_flex_v19_5.second_sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Overall Simple Average
jpx_tseequities_indexstatistics_flex_v19_5.overall_simple_average.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.overall_simple_average, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.overall_simple_average.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.overall_simple_average.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.overall_simple_average.fields(buffer, offset, packet, parent)
  end
end

-- Overall
jpx_tseequities_indexstatistics_flex_v19_5.overall = {}

-- Size: Overall
jpx_tseequities_indexstatistics_flex_v19_5.overall.size =
  jpx_tseequities_indexstatistics_flex_v19_5.overall_simple_average.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.overall_divergence_average.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.overall_parity_average.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.overall_direct_yield_average.size

-- Display: Overall
jpx_tseequities_indexstatistics_flex_v19_5.overall.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Overall
jpx_tseequities_indexstatistics_flex_v19_5.overall.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Overall Simple Average: Struct of 6 fields
  index, overall_simple_average = jpx_tseequities_indexstatistics_flex_v19_5.overall_simple_average.dissect(buffer, index, packet, parent)

  -- Overall Divergence Average: Struct of 4 fields
  index, overall_divergence_average = jpx_tseequities_indexstatistics_flex_v19_5.overall_divergence_average.dissect(buffer, index, packet, parent)

  -- Overall Parity Average: Struct of 6 fields
  index, overall_parity_average = jpx_tseequities_indexstatistics_flex_v19_5.overall_parity_average.dissect(buffer, index, packet, parent)

  -- Overall Direct Yield Average: Struct of 4 fields
  index, overall_direct_yield_average = jpx_tseequities_indexstatistics_flex_v19_5.overall_direct_yield_average.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Overall
jpx_tseequities_indexstatistics_flex_v19_5.overall.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.overall, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.overall.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.overall.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.overall.fields(buffer, offset, packet, parent)
  end
end

-- Japanese Yen Cb Indicator Message
jpx_tseequities_indexstatistics_flex_v19_5.japanese_yen_cb_indicator_message = {}

-- Size: Japanese Yen Cb Indicator Message
jpx_tseequities_indexstatistics_flex_v19_5.japanese_yen_cb_indicator_message.size =
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.output_time.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.overall.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.parity_100_or_higher.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.parity_less_than_100.size

-- Display: Japanese Yen Cb Indicator Message
jpx_tseequities_indexstatistics_flex_v19_5.japanese_yen_cb_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Japanese Yen Cb Indicator Message
jpx_tseequities_indexstatistics_flex_v19_5.japanese_yen_cb_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Output Time: C
  index, output_time = jpx_tseequities_indexstatistics_flex_v19_5.output_time.dissect(buffer, index, packet, parent)

  -- Overall: Struct of 4 fields
  index, overall = jpx_tseequities_indexstatistics_flex_v19_5.overall.dissect(buffer, index, packet, parent)

  -- Parity 100 Or Higher: Struct of 4 fields
  index, parity_100_or_higher = jpx_tseequities_indexstatistics_flex_v19_5.parity_100_or_higher.dissect(buffer, index, packet, parent)

  -- Parity Less Than 100: Struct of 4 fields
  index, parity_less_than_100 = jpx_tseequities_indexstatistics_flex_v19_5.parity_less_than_100.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Japanese Yen Cb Indicator Message
jpx_tseequities_indexstatistics_flex_v19_5.japanese_yen_cb_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.japanese_yen_cb_indicator_message, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.japanese_yen_cb_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.japanese_yen_cb_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.japanese_yen_cb_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Price Average Day On Day Comparison
jpx_tseequities_indexstatistics_flex_v19_5.stock_price_average_day_on_day_comparison = {}

-- Size: Stock Price Average Day On Day Comparison
jpx_tseequities_indexstatistics_flex_v19_5.stock_price_average_day_on_day_comparison.size =
  jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_14.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size

-- Display: Stock Price Average Day On Day Comparison
jpx_tseequities_indexstatistics_flex_v19_5.stock_price_average_day_on_day_comparison.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Price Average Day On Day Comparison
jpx_tseequities_indexstatistics_flex_v19_5.stock_price_average_day_on_day_comparison.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Flag: C
  index, unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Day On Day Comparison C 14: C
  index, day_on_day_comparison_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_14.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Price Average Day On Day Comparison
jpx_tseequities_indexstatistics_flex_v19_5.stock_price_average_day_on_day_comparison.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.stock_price_average_day_on_day_comparison, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.stock_price_average_day_on_day_comparison.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.stock_price_average_day_on_day_comparison.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.stock_price_average_day_on_day_comparison.fields(buffer, offset, packet, parent)
  end
end

-- Simple Stock Price Average
jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average = {}

-- Size: Simple Stock Price Average
jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average.size =
  jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_c_14.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size

-- Display: Simple Stock Price Average
jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Stock Price Average
jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Flag: C
  index, unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Simple Stock Price Average C 14: C
  index, simple_stock_price_average_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_c_14.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Stock Price Average
jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_stock_price_average, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average.fields(buffer, offset, packet, parent)
  end
end

-- Simple Stock Price Average By Industry Message
jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_by_industry_message = {}

-- Size: Simple Stock Price Average By Industry Message
jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_by_industry_message.size =
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.output_time.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.industry_code.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.stock_price_average_day_on_day_comparison.size

-- Display: Simple Stock Price Average By Industry Message
jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_by_industry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Stock Price Average By Industry Message
jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_by_industry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Output Time: C
  index, output_time = jpx_tseequities_indexstatistics_flex_v19_5.output_time.dissect(buffer, index, packet, parent)

  -- Industry Code: C
  index, industry_code = jpx_tseequities_indexstatistics_flex_v19_5.industry_code.dissect(buffer, index, packet, parent)

  -- Simple Stock Price Average: Struct of 3 fields
  index, simple_stock_price_average = jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average.dissect(buffer, index, packet, parent)

  -- Stock Price Average Day On Day Comparison: Struct of 3 fields
  index, stock_price_average_day_on_day_comparison = jpx_tseequities_indexstatistics_flex_v19_5.stock_price_average_day_on_day_comparison.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Stock Price Average By Industry Message
jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_by_industry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_stock_price_average_by_industry_message, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_by_industry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_by_industry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_by_industry_message.fields(buffer, offset, packet, parent)
  end
end

-- Weighted Stock Price Average
jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average = {}

-- Size: Weighted Stock Price Average
jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average.size =
  jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average_c_14.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size

-- Display: Weighted Stock Price Average
jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Weighted Stock Price Average
jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Flag: C
  index, unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Weighted Stock Price Average C 14: C
  index, weighted_stock_price_average_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average_c_14.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Weighted Stock Price Average
jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.weighted_stock_price_average, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average.fields(buffer, offset, packet, parent)
  end
end

-- Weighted Stock Price Average Message
jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average_message = {}

-- Size: Weighted Stock Price Average Message
jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average_message.size =
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.output_time.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.stock_price_average_day_on_day_comparison.size

-- Display: Weighted Stock Price Average Message
jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Weighted Stock Price Average Message
jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Output Time: C
  index, output_time = jpx_tseequities_indexstatistics_flex_v19_5.output_time.dissect(buffer, index, packet, parent)

  -- Issue Classification Code: C
  index, issue_classification_code = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.dissect(buffer, index, packet, parent)

  -- Weighted Stock Price Average: Struct of 3 fields
  index, weighted_stock_price_average = jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average.dissect(buffer, index, packet, parent)

  -- Stock Price Average Day On Day Comparison: Struct of 3 fields
  index, stock_price_average_day_on_day_comparison = jpx_tseequities_indexstatistics_flex_v19_5.stock_price_average_day_on_day_comparison.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Weighted Stock Price Average Message
jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.weighted_stock_price_average_message, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Stock Price Average Message
jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_message = {}

-- Size: Simple Stock Price Average Message
jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_message.size =
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.output_time.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.stock_price_average_day_on_day_comparison.size

-- Display: Simple Stock Price Average Message
jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Stock Price Average Message
jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Output Time: C
  index, output_time = jpx_tseequities_indexstatistics_flex_v19_5.output_time.dissect(buffer, index, packet, parent)

  -- Issue Classification Code: C
  index, issue_classification_code = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.dissect(buffer, index, packet, parent)

  -- Simple Stock Price Average: Struct of 3 fields
  index, simple_stock_price_average = jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average.dissect(buffer, index, packet, parent)

  -- Stock Price Average Day On Day Comparison: Struct of 3 fields
  index, stock_price_average_day_on_day_comparison = jpx_tseequities_indexstatistics_flex_v19_5.stock_price_average_day_on_day_comparison.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Stock Price Average Message
jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_stock_price_average_message, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_message.fields(buffer, offset, packet, parent)
  end
end

-- Yield Day On Day Comparison
jpx_tseequities_indexstatistics_flex_v19_5.yield_day_on_day_comparison = {}

-- Size: Yield Day On Day Comparison
jpx_tseequities_indexstatistics_flex_v19_5.yield_day_on_day_comparison.size =
  jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_8.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size

-- Display: Yield Day On Day Comparison
jpx_tseequities_indexstatistics_flex_v19_5.yield_day_on_day_comparison.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Yield Day On Day Comparison
jpx_tseequities_indexstatistics_flex_v19_5.yield_day_on_day_comparison.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Day On Day Comparison C 8: C
  index, day_on_day_comparison_c_8 = jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_8.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Yield Day On Day Comparison
jpx_tseequities_indexstatistics_flex_v19_5.yield_day_on_day_comparison.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.yield_day_on_day_comparison, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.yield_day_on_day_comparison.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.yield_day_on_day_comparison.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.yield_day_on_day_comparison.fields(buffer, offset, packet, parent)
  end
end

-- Weighted Yield
jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield = {}

-- Size: Weighted Yield
jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield.size =
  jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield_c_8.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size

-- Display: Weighted Yield
jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Weighted Yield
jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Weighted Yield C 8: C
  index, weighted_yield_c_8 = jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield_c_8.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Weighted Yield
jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.weighted_yield, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield.fields(buffer, offset, packet, parent)
  end
end

-- Weighted Yield Message
jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield_message = {}

-- Size: Weighted Yield Message
jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield_message.size =
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmm.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.yield_day_on_day_comparison.size

-- Display: Weighted Yield Message
jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Weighted Yield Message
jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Time C 6 Hhmm: C
  index, time_c_6_hhmm = jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmm.dissect(buffer, index, packet, parent)

  -- Issue Classification Code: C
  index, issue_classification_code = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.dissect(buffer, index, packet, parent)

  -- Weighted Yield: Struct of 2 fields
  index, weighted_yield = jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield.dissect(buffer, index, packet, parent)

  -- Yield Day On Day Comparison: Struct of 2 fields
  index, yield_day_on_day_comparison = jpx_tseequities_indexstatistics_flex_v19_5.yield_day_on_day_comparison.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Weighted Yield Message
jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.weighted_yield_message, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Yield
jpx_tseequities_indexstatistics_flex_v19_5.simple_yield = {}

-- Size: Simple Yield
jpx_tseequities_indexstatistics_flex_v19_5.simple_yield.size =
  jpx_tseequities_indexstatistics_flex_v19_5.simple_yield_c_8.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size

-- Display: Simple Yield
jpx_tseequities_indexstatistics_flex_v19_5.simple_yield.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Yield
jpx_tseequities_indexstatistics_flex_v19_5.simple_yield.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Simple Yield C 8: C
  index, simple_yield_c_8 = jpx_tseequities_indexstatistics_flex_v19_5.simple_yield_c_8.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Yield
jpx_tseequities_indexstatistics_flex_v19_5.simple_yield.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_yield, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.simple_yield.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.simple_yield.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.simple_yield.fields(buffer, offset, packet, parent)
  end
end

-- Simple Yield Message
jpx_tseequities_indexstatistics_flex_v19_5.simple_yield_message = {}

-- Size: Simple Yield Message
jpx_tseequities_indexstatistics_flex_v19_5.simple_yield_message.size =
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmm.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.simple_yield.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.yield_day_on_day_comparison.size

-- Display: Simple Yield Message
jpx_tseequities_indexstatistics_flex_v19_5.simple_yield_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Yield Message
jpx_tseequities_indexstatistics_flex_v19_5.simple_yield_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Time C 6 Hhmm: C
  index, time_c_6_hhmm = jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmm.dissect(buffer, index, packet, parent)

  -- Issue Classification Code: C
  index, issue_classification_code = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.dissect(buffer, index, packet, parent)

  -- Simple Yield: Struct of 2 fields
  index, simple_yield = jpx_tseequities_indexstatistics_flex_v19_5.simple_yield.dissect(buffer, index, packet, parent)

  -- Yield Day On Day Comparison: Struct of 2 fields
  index, yield_day_on_day_comparison = jpx_tseequities_indexstatistics_flex_v19_5.yield_day_on_day_comparison.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Yield Message
jpx_tseequities_indexstatistics_flex_v19_5.simple_yield_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.simple_yield_message, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.simple_yield_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.simple_yield_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.simple_yield_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Value Day On Day Comparison
jpx_tseequities_indexstatistics_flex_v19_5.market_value_day_on_day_comparison = {}

-- Size: Market Value Day On Day Comparison
jpx_tseequities_indexstatistics_flex_v19_5.market_value_day_on_day_comparison.size =
  jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_14.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sign.size

-- Display: Market Value Day On Day Comparison
jpx_tseequities_indexstatistics_flex_v19_5.market_value_day_on_day_comparison.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Value Day On Day Comparison
jpx_tseequities_indexstatistics_flex_v19_5.market_value_day_on_day_comparison.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Volume Turnover Unit Flag: C
  index, trading_volume_turnover_unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.dissect(buffer, index, packet, parent)

  -- Day On Day Comparison C 14: C
  index, day_on_day_comparison_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.day_on_day_comparison_c_14.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_indexstatistics_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Value Day On Day Comparison
jpx_tseequities_indexstatistics_flex_v19_5.market_value_day_on_day_comparison.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.market_value_day_on_day_comparison, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.market_value_day_on_day_comparison.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.market_value_day_on_day_comparison.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.market_value_day_on_day_comparison.fields(buffer, offset, packet, parent)
  end
end

-- Total Market Value
jpx_tseequities_indexstatistics_flex_v19_5.total_market_value = {}

-- Size: Total Market Value
jpx_tseequities_indexstatistics_flex_v19_5.total_market_value.size =
  jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.total_market_value_c_14.size

-- Display: Total Market Value
jpx_tseequities_indexstatistics_flex_v19_5.total_market_value.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Total Market Value
jpx_tseequities_indexstatistics_flex_v19_5.total_market_value.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Volume Turnover Unit Flag: C
  index, trading_volume_turnover_unit_flag = jpx_tseequities_indexstatistics_flex_v19_5.trading_volume_turnover_unit_flag.dissect(buffer, index, packet, parent)

  -- Total Market Value C 14: C
  index, total_market_value_c_14 = jpx_tseequities_indexstatistics_flex_v19_5.total_market_value_c_14.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Total Market Value
jpx_tseequities_indexstatistics_flex_v19_5.total_market_value.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.total_market_value, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.total_market_value.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.total_market_value.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.total_market_value.fields(buffer, offset, packet, parent)
  end
end

-- Market Value Message
jpx_tseequities_indexstatistics_flex_v19_5.market_value_message = {}

-- Size: Market Value Message
jpx_tseequities_indexstatistics_flex_v19_5.market_value_message.size =
  jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmm.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.total_market_value.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.market_value_day_on_day_comparison.size

-- Display: Market Value Message
jpx_tseequities_indexstatistics_flex_v19_5.market_value_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Value Message
jpx_tseequities_indexstatistics_flex_v19_5.market_value_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_indexstatistics_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Time C 6 Hhmm: C
  index, time_c_6_hhmm = jpx_tseequities_indexstatistics_flex_v19_5.time_c_6_hhmm.dissect(buffer, index, packet, parent)

  -- Issue Classification Code: C
  index, issue_classification_code = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_code.dissect(buffer, index, packet, parent)

  -- Total Market Value: Struct of 2 fields
  index, total_market_value = jpx_tseequities_indexstatistics_flex_v19_5.total_market_value.dissect(buffer, index, packet, parent)

  -- Market Value Day On Day Comparison: Struct of 3 fields
  index, market_value_day_on_day_comparison = jpx_tseequities_indexstatistics_flex_v19_5.market_value_day_on_day_comparison.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Value Message
jpx_tseequities_indexstatistics_flex_v19_5.market_value_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.market_value_message, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.market_value_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.market_value_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.market_value_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
jpx_tseequities_indexstatistics_flex_v19_5.payload = {}

-- Dispatch: Payload
jpx_tseequities_indexstatistics_flex_v19_5.payload.dispatch = {
  ["MV"] = jpx_tseequities_indexstatistics_flex_v19_5.market_value_message.dissect,
  ["YS"] = jpx_tseequities_indexstatistics_flex_v19_5.simple_yield_message.dissect,
  ["YW"] = jpx_tseequities_indexstatistics_flex_v19_5.weighted_yield_message.dissect,
  ["AP"] = jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_message.dissect,
  ["AW"] = jpx_tseequities_indexstatistics_flex_v19_5.weighted_stock_price_average_message.dissect,
  ["AT"] = jpx_tseequities_indexstatistics_flex_v19_5.simple_stock_price_average_by_industry_message.dissect,
  ["IY"] = jpx_tseequities_indexstatistics_flex_v19_5.japanese_yen_cb_indicator_message.dissect,
  ["NC"] = jpx_tseequities_indexstatistics_flex_v19_5.number_of_gainers_decliners_message.dissect,
  ["TV"] = jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_trading_volume_message.dissect,
  ["TA"] = jpx_tseequities_indexstatistics_flex_v19_5.estimated_total_turnover_message.dissect,
  ["VS"] = jpx_tseequities_indexstatistics_flex_v19_5.vwap_by_market_message.dissect,
  ["RO"] = jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_trading_volume_message.dissect,
  ["RA"] = jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_turnover_message.dissect,
  ["RC"] = jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_net_change_message.dissect,
  ["RP"] = jpx_tseequities_indexstatistics_flex_v19_5.ranking_by_net_change_rate_message.dissect,
  ["TS"] = jpx_tseequities_indexstatistics_flex_v19_5.tostnet_statistics_message.dissect,
  ["4I"] = jpx_tseequities_indexstatistics_flex_v19_5.index_open_high_low_and_closing_prices_message.dissect,
  ["SQ"] = jpx_tseequities_indexstatistics_flex_v19_5.special_quotation_message.dissect,
  ["LC"] = jpx_tseequities_indexstatistics_flex_v19_5.control_message.dissect,
}

-- Dissect: Payload
jpx_tseequities_indexstatistics_flex_v19_5.payload.dissect = function(buffer, offset, packet, parent, tag_id)
  local dissect = jpx_tseequities_indexstatistics_flex_v19_5.payload.dispatch[tag_id]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Tag Information
jpx_tseequities_indexstatistics_flex_v19_5.tag_information = {}

-- Calculate size of: Tag Information
jpx_tseequities_indexstatistics_flex_v19_5.tag_information.size = function(buffer, offset)
  local index = 0

  index = index + jpx_tseequities_indexstatistics_flex_v19_5.tag_id.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 2):string()
  index = index + jpx_tseequities_indexstatistics_flex_v19_5.payload.size(buffer, payload_offset, payload_type)

  index = index + jpx_tseequities_indexstatistics_flex_v19_5.separation_of_tag.size

  return index
end

-- Display: Tag Information
jpx_tseequities_indexstatistics_flex_v19_5.tag_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tag Information
jpx_tseequities_indexstatistics_flex_v19_5.tag_information.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tag ID: 2 Byte Ascii String Enum with 19 values
  index, tag_id = jpx_tseequities_indexstatistics_flex_v19_5.tag_id.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 19 branches
  index = jpx_tseequities_indexstatistics_flex_v19_5.payload.dissect(buffer, index, packet, parent, tag_id)

  -- Separation Of Tag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, separation_of_tag = jpx_tseequities_indexstatistics_flex_v19_5.separation_of_tag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tag Information
jpx_tseequities_indexstatistics_flex_v19_5.tag_information.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.tag_information, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.tag_information.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.tag_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.tag_information.fields(buffer, offset, packet, parent)
  end
end

-- CB Issue Code
jpx_tseequities_indexstatistics_flex_v19_5.cb_issue_code = {}

-- Size: CB Issue Code
jpx_tseequities_indexstatistics_flex_v19_5.cb_issue_code.size =
  jpx_tseequities_indexstatistics_flex_v19_5.cb_space.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.cb_reserved_code.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.time_symbol.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.cb_proper_name_code.size

-- Display: CB Issue Code
jpx_tseequities_indexstatistics_flex_v19_5.cb_issue_code.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: CB Issue Code
jpx_tseequities_indexstatistics_flex_v19_5.cb_issue_code.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- CB Space: 3 Byte Ascii String
  index, cb_space = jpx_tseequities_indexstatistics_flex_v19_5.cb_space.dissect(buffer, index, packet, parent)

  -- CB Reserved Code: 1 Byte Ascii String Enum with 4 values
  index, cb_reserved_code = jpx_tseequities_indexstatistics_flex_v19_5.cb_reserved_code.dissect(buffer, index, packet, parent)

  -- Time Symbol: 4 Byte Ascii String
  index, time_symbol = jpx_tseequities_indexstatistics_flex_v19_5.time_symbol.dissect(buffer, index, packet, parent)

  -- CB Proper Name Code: 4 Byte Ascii String
  index, cb_proper_name_code = jpx_tseequities_indexstatistics_flex_v19_5.cb_proper_name_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: CB Issue Code
jpx_tseequities_indexstatistics_flex_v19_5.cb_issue_code.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.cb_issue_code, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.cb_issue_code.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.cb_issue_code.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.cb_issue_code.fields(buffer, offset, packet, parent)
  end
end

-- Stock Issue Code
jpx_tseequities_indexstatistics_flex_v19_5.stock_issue_code = {}

-- Size: Stock Issue Code
jpx_tseequities_indexstatistics_flex_v19_5.stock_issue_code.size =
  jpx_tseequities_indexstatistics_flex_v19_5.stock_space.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.stock_proper_name_code.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.stock_reserved_code.size

-- Display: Stock Issue Code
jpx_tseequities_indexstatistics_flex_v19_5.stock_issue_code.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Issue Code
jpx_tseequities_indexstatistics_flex_v19_5.stock_issue_code.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Space: 7 Byte Ascii String
  index, stock_space = jpx_tseequities_indexstatistics_flex_v19_5.stock_space.dissect(buffer, index, packet, parent)

  -- Stock Proper Name Code: 4 Byte Ascii String
  index, stock_proper_name_code = jpx_tseequities_indexstatistics_flex_v19_5.stock_proper_name_code.dissect(buffer, index, packet, parent)

  -- Stock Reserved Code: 1 Byte Ascii String
  index, stock_reserved_code = jpx_tseequities_indexstatistics_flex_v19_5.stock_reserved_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Issue Code
jpx_tseequities_indexstatistics_flex_v19_5.stock_issue_code.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.stock_issue_code, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.stock_issue_code.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.stock_issue_code.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.stock_issue_code.fields(buffer, offset, packet, parent)
  end
end

-- Issue Code
jpx_tseequities_indexstatistics_flex_v19_5.issue_code = {}

-- Dissect: Issue Code
jpx_tseequities_indexstatistics_flex_v19_5.issue_code.dissect = function(buffer, offset, packet, parent, issue_classification_large_classification)
  -- Dissect Stock Issue Code
  if issue_classification_large_classification == "01" then
    return jpx_tseequities_indexstatistics_flex_v19_5.stock_issue_code.dissect(buffer, offset, packet, parent)
  end
  -- Dissect CB Issue Code
  if issue_classification_large_classification == "02" then
    return jpx_tseequities_indexstatistics_flex_v19_5.cb_issue_code.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Blank Issue Code
  if issue_classification_large_classification ~= "01" then
    return jpx_tseequities_indexstatistics_flex_v19_5.blank_issue_code.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Issue Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_classification = {}

-- Size: Issue Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_classification.size =
  jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_large_classification.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_medium_classification.size

-- Display: Issue Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_classification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_classification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Issue Classification Large Classification: 2 Byte Ascii String Enum with 2 values
  index, issue_classification_large_classification = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_large_classification.dissect(buffer, index, packet, parent)

  -- Issue Classification Medium Classification: 2 Byte Ascii String
  index, issue_classification_medium_classification = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification_medium_classification.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Classification
jpx_tseequities_indexstatistics_flex_v19_5.issue_classification.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.issue_classification, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.issue_classification.fields(buffer, offset, packet, parent)
  end
end

-- Message Type Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.message_type_medium_classification = {}

-- Dispatch: Message Type Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.message_type_medium_classification.dispatch = {
  ["1"] = jpx_tseequities_indexstatistics_flex_v19_5.issue_realtime_medium_classification.dissect,
  ["2"] = jpx_tseequities_indexstatistics_flex_v19_5.statistics_medium_classification.dissect,
  ["3"] = jpx_tseequities_indexstatistics_flex_v19_5.index_medium_classification.dissect,
  ["4"] = jpx_tseequities_indexstatistics_flex_v19_5.issue_basic_medium_classification.dissect,
  ["9"] = jpx_tseequities_indexstatistics_flex_v19_5.control_medium_classification.dissect,
}

-- Dissect: Message Type Medium Classification
jpx_tseequities_indexstatistics_flex_v19_5.message_type_medium_classification.dissect = function(buffer, offset, packet, parent, message_type_large_classification)
  local dissect = jpx_tseequities_indexstatistics_flex_v19_5.message_type_medium_classification.dispatch[message_type_large_classification]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Type
jpx_tseequities_indexstatistics_flex_v19_5.message_type = {}

-- Calculate size of: Message Type
jpx_tseequities_indexstatistics_flex_v19_5.message_type.size = function(buffer, offset)
  local index = 0

  index = index + jpx_tseequities_indexstatistics_flex_v19_5.message_type_large_classification.size

  -- Calculate runtime size of Message Type Medium Classification field
  local message_type_medium_classification_offset = offset + index
  local message_type_medium_classification_type = buffer(message_type_medium_classification_offset - 1, 1):string()
  index = index + jpx_tseequities_indexstatistics_flex_v19_5.message_type_medium_classification.size(buffer, message_type_medium_classification_offset, message_type_medium_classification_type)

  return index
end

-- Display: Message Type
jpx_tseequities_indexstatistics_flex_v19_5.message_type.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Type
jpx_tseequities_indexstatistics_flex_v19_5.message_type.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type Large Classification: 1 Byte Ascii String Enum with 5 values
  index, message_type_large_classification = jpx_tseequities_indexstatistics_flex_v19_5.message_type_large_classification.dissect(buffer, index, packet, parent)

  -- Message Type Medium Classification: Runtime Type with 5 branches
  index = jpx_tseequities_indexstatistics_flex_v19_5.message_type_medium_classification.dissect(buffer, index, packet, parent, message_type_large_classification)

  return index
end

-- Dissect: Message Type
jpx_tseequities_indexstatistics_flex_v19_5.message_type.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.message_type, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.message_type.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.message_type.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.message_type.fields(buffer, offset, packet, parent)
  end
end

-- Message Serial No
jpx_tseequities_indexstatistics_flex_v19_5.message_serial_no = {}

-- Size: Message Serial No
jpx_tseequities_indexstatistics_flex_v19_5.message_serial_no.size =
  jpx_tseequities_indexstatistics_flex_v19_5.multicast_group_number.size + 
  jpx_tseequities_indexstatistics_flex_v19_5.sequence_number.size

-- Display: Message Serial No
jpx_tseequities_indexstatistics_flex_v19_5.message_serial_no.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Serial No
jpx_tseequities_indexstatistics_flex_v19_5.message_serial_no.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Multicast Group Number: 3 Byte Ascii String
  index, multicast_group_number = jpx_tseequities_indexstatistics_flex_v19_5.multicast_group_number.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Ascii String
  index, sequence_number = jpx_tseequities_indexstatistics_flex_v19_5.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Serial No
jpx_tseequities_indexstatistics_flex_v19_5.message_serial_no.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.message_serial_no, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.message_serial_no.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.message_serial_no.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.message_serial_no.fields(buffer, offset, packet, parent)
  end
end

-- Service Header
jpx_tseequities_indexstatistics_flex_v19_5.service_header = {}

-- Calculate size of: Service Header
jpx_tseequities_indexstatistics_flex_v19_5.service_header.size = function(buffer, offset)
  local index = 0

  index = index + jpx_tseequities_indexstatistics_flex_v19_5.message_length.size

  index = index + jpx_tseequities_indexstatistics_flex_v19_5.message_serial_no.size

  index = index + jpx_tseequities_indexstatistics_flex_v19_5.message_type.size(buffer, offset + index)

  index = index + jpx_tseequities_indexstatistics_flex_v19_5.exchange_code.size

  index = index + jpx_tseequities_indexstatistics_flex_v19_5.session_distinction.size

  index = index + jpx_tseequities_indexstatistics_flex_v19_5.issue_classification.size

  -- Calculate runtime size of Issue Code field
  local issue_code_offset = offset + index
  local issue_code_type = buffer(issue_code_offset - 4, 2):string()
  index = index + jpx_tseequities_indexstatistics_flex_v19_5.issue_code.size(buffer, issue_code_offset, issue_code_type)

  return index
end

-- Display: Service Header
jpx_tseequities_indexstatistics_flex_v19_5.service_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Service Header
jpx_tseequities_indexstatistics_flex_v19_5.service_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 6 Byte Ascii String
  index, message_length = jpx_tseequities_indexstatistics_flex_v19_5.message_length.dissect(buffer, index, packet, parent)

  -- Message Serial No: Struct of 2 fields
  index, message_serial_no = jpx_tseequities_indexstatistics_flex_v19_5.message_serial_no.dissect(buffer, index, packet, parent)

  -- Message Type: Struct of 2 fields
  index, message_type = jpx_tseequities_indexstatistics_flex_v19_5.message_type.dissect(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 6 values
  index, exchange_code = jpx_tseequities_indexstatistics_flex_v19_5.exchange_code.dissect(buffer, index, packet, parent)

  -- Session Distinction: 2 Byte Ascii String Enum with 4 values
  index, session_distinction = jpx_tseequities_indexstatistics_flex_v19_5.session_distinction.dissect(buffer, index, packet, parent)

  -- Issue Classification: Struct of 2 fields
  index, issue_classification = jpx_tseequities_indexstatistics_flex_v19_5.issue_classification.dissect(buffer, index, packet, parent)

  -- Dependency element: Issue Classification Large Classification
  local issue_classification_large_classification = trim_right_spaces(buffer(index - 4, 2):string())

  -- Issue Code: Runtime Type with 3 branches
  index = jpx_tseequities_indexstatistics_flex_v19_5.issue_code.dissect(buffer, index, packet, parent, issue_classification_large_classification)

  return index
end

-- Dissect: Service Header
jpx_tseequities_indexstatistics_flex_v19_5.service_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5.fields.service_header, buffer(offset, 0))
    local index = jpx_tseequities_indexstatistics_flex_v19_5.service_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_indexstatistics_flex_v19_5.service_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_indexstatistics_flex_v19_5.service_header.fields(buffer, offset, packet, parent)
  end
end

-- Udp Packet
jpx_tseequities_indexstatistics_flex_v19_5.udp_packet = {}

-- Verify required size of Udp packet
jpx_tseequities_indexstatistics_flex_v19_5.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= jpx_tseequities_indexstatistics_flex_v19_5.start_of_message.size + jpx_tseequities_indexstatistics_flex_v19_5.message_length.size + jpx_tseequities_indexstatistics_flex_v19_5.message_serial_no.size + jpx_tseequities_indexstatistics_flex_v19_5.message_type_large_classification.size
end

-- Dissect Udp Packet
jpx_tseequities_indexstatistics_flex_v19_5.udp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Start Of Message: 1 Byte Unsigned Fixed Width Integer
  index, start_of_message = jpx_tseequities_indexstatistics_flex_v19_5.start_of_message.dissect(buffer, index, packet, parent)

  -- Service Header: Struct of 7 fields
  index, service_header = jpx_tseequities_indexstatistics_flex_v19_5.service_header.dissect(buffer, index, packet, parent)

  -- Separation Between Service Header And Data Section: 1 Byte Unsigned Fixed Width Integer
  index, separation_between_service_header_and_data_section = jpx_tseequities_indexstatistics_flex_v19_5.separation_between_service_header_and_data_section.dissect(buffer, index, packet, parent)

  -- Dependency for Tag Information
  local end_of_payload = buffer:len()

  -- Tag Information: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, tag_information = jpx_tseequities_indexstatistics_flex_v19_5.tag_information.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_jpx_tseequities_indexstatistics_flex_v19_5.init()
end

-- Dissector for Jpx TseEquities IndexStatistics Flex 19.5
function omi_jpx_tseequities_indexstatistics_flex_v19_5.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_jpx_tseequities_indexstatistics_flex_v19_5.name

  -- Dissect protocol
  local protocol = parent:add(omi_jpx_tseequities_indexstatistics_flex_v19_5, buffer(), omi_jpx_tseequities_indexstatistics_flex_v19_5.description, "("..buffer:len().." Bytes)")
  return jpx_tseequities_indexstatistics_flex_v19_5.udp_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Jpx TseEquities IndexStatistics Flex 19.5 (Udp)
local function omi_jpx_tseequities_indexstatistics_flex_v19_5_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not jpx_tseequities_indexstatistics_flex_v19_5.udp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_jpx_tseequities_indexstatistics_flex_v19_5
  omi_jpx_tseequities_indexstatistics_flex_v19_5.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Jpx TseEquities IndexStatistics Flex 19.5
omi_jpx_tseequities_indexstatistics_flex_v19_5:register_heuristic("udp", omi_jpx_tseequities_indexstatistics_flex_v19_5_udp_heuristic)

-- Register Jpx TseEquities IndexStatistics Flex 19.5 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_jpx_tseequities_indexstatistics_flex_v19_5)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Japan Exchange Group
--   Version: 19.5
--   Date: Friday, September 25, 2026
--   Specification: 03_FLEX Connection Specification Index Statistics group DS.19.0.pdf
--   Specification: 03_Attachment_01_List of Index Type_20260309.pdf
--   Specification: 01_FLEX Connection Specification Common Items DS.19.5.pdf
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
