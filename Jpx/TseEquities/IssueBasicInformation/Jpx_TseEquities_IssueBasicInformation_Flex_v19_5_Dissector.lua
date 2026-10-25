-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Jpx TseEquities IssueBasicInformation Flex 19.5 Protocol
local omi_jpx_tseequities_issuebasicinformation_flex_v19_5 = Proto("Omi.Jpx.TseEquities.IssueBasicInformation.Flex.v19.5", "Jpx TseEquities IssueBasicInformation Flex 19.5")

-- Protocol table
local jpx_tseequities_issuebasicinformation_flex_v19_5 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Jpx TseEquities IssueBasicInformation Flex 19.5 Fields
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.all_orders_prohibition = ProtoField.new("All Orders Prohibition", "jpx.tseequities.issuebasicinformation.flex.v19.5.allordersprohibition", ftypes.STRING, nil, nil, nil, "Indicates the prohibition status for all orders including modification and cancel orders.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.applicable_business_day = ProtoField.new("Applicable Business Day", "jpx.tseequities.issuebasicinformation.flex.v19.5.applicablebusinessday", ftypes.STRING, nil, nil, nil, "Indicates the business day which the issue information applies.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_1 = ProtoField.new("Arbitrary 1", "jpx.tseequities.issuebasicinformation.flex.v19.5.arbitrary1", ftypes.STRING, nil, nil, nil, "Indicates whether this is a constituent issue of TOPIX Core30.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_11 = ProtoField.new("Arbitrary 11", "jpx.tseequities.issuebasicinformation.flex.v19.5.arbitrary11", ftypes.STRING, nil, nil, nil, "Indicates whether this is a constituent issue of TSE Growth Market 250 Index.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_12_to_15 = ProtoField.new("Arbitrary 12 To 15", "jpx.tseequities.issuebasicinformation.flex.v19.5.arbitrary12to15", ftypes.STRING, nil, nil, nil, "Unused. Space is set.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_16 = ProtoField.new("Arbitrary 16", "jpx.tseequities.issuebasicinformation.flex.v19.5.arbitrary16", ftypes.STRING, nil, nil, nil, "Indicates whether this is a constituent issue of REIT, general.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_17_to_19 = ProtoField.new("Arbitrary 17 To 19", "jpx.tseequities.issuebasicinformation.flex.v19.5.arbitrary17to19", ftypes.STRING, nil, nil, nil, "Unused. Space is set.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_2 = ProtoField.new("Arbitrary 2", "jpx.tseequities.issuebasicinformation.flex.v19.5.arbitrary2", ftypes.STRING, nil, nil, nil, "Indicates whether this is a constituent issue of TOPIX Large70.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_20 = ProtoField.new("Arbitrary 20", "jpx.tseequities.issuebasicinformation.flex.v19.5.arbitrary20", ftypes.STRING, nil, nil, nil, "Unused. Space is set.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_3 = ProtoField.new("Arbitrary 3", "jpx.tseequities.issuebasicinformation.flex.v19.5.arbitrary3", ftypes.STRING, nil, nil, nil, "Indicates whether this is a constituent issue of TOPIX 100.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_4 = ProtoField.new("Arbitrary 4", "jpx.tseequities.issuebasicinformation.flex.v19.5.arbitrary4", ftypes.STRING, nil, nil, nil, "Indicates whether this is a constituent issue of Mid400.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_5 = ProtoField.new("Arbitrary 5", "jpx.tseequities.issuebasicinformation.flex.v19.5.arbitrary5", ftypes.STRING, nil, nil, nil, "Indicates whether this is a constituent issue of TOPIX 500.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_6 = ProtoField.new("Arbitrary 6", "jpx.tseequities.issuebasicinformation.flex.v19.5.arbitrary6", ftypes.STRING, nil, nil, nil, "Indicates whether this is a constituent issue of TOPIX Small.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_7 = ProtoField.new("Arbitrary 7", "jpx.tseequities.issuebasicinformation.flex.v19.5.arbitrary7", ftypes.STRING, nil, nil, nil, "Indicates whether this is a constituent issue of TOPIX 1000.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_8_to_10 = ProtoField.new("Arbitrary 8 To 10", "jpx.tseequities.issuebasicinformation.flex.v19.5.arbitrary8to10", ftypes.STRING, nil, nil, nil, "Unused. Space is set.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.base_price = ProtoField.new("Base Price", "jpx.tseequities.issuebasicinformation.flex.v19.5.baseprice", ftypes.STRING)
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.base_price_price_of_the_middle_of_the_book = ProtoField.new("Base Price Price Of The Middle Of The Book", "jpx.tseequities.issuebasicinformation.flex.v19.5.basepricepriceofthemiddleofthebook", ftypes.STRING, nil, nil, nil, "Indicates the Base Price/Price of the Middle of the Book.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.based_business_day = ProtoField.new("Based Business Day", "jpx.tseequities.issuebasicinformation.flex.v19.5.basedbusinessday", ftypes.STRING, nil, nil, nil, "Indicates the applicable business day.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.blank_issue_code = ProtoField.new("Blank Issue Code", "jpx.tseequities.issuebasicinformation.flex.v19.5.blankissuecode", ftypes.STRING, nil, nil, nil, "Issue Code layout for a Control, Index or Statistics Message, which 5.3.3 (7) sets to spaces. The twelve bytes are on the wire either way, so they are read rather than skipped.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.cb_issue_code = ProtoField.new("CB Issue Code", "jpx.tseequities.issuebasicinformation.flex.v19.5.cbissuecode", ftypes.STRING, nil, nil, nil, "Issue Code layout used when Issue Classification Large Classification is 02 CB-Related. The figure carries no label of its own in 5.3.3 (7). FLEX Issue Code is set with right-align.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.cb_proper_name_code = ProtoField.new("CB Proper Name Code", "jpx.tseequities.issuebasicinformation.flex.v19.5.cbpropernamecode", ftypes.STRING, nil, nil, nil, "Proper Name Code.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.cb_reserved_code = ProtoField.new("CB Reserved Code", "jpx.tseequities.issuebasicinformation.flex.v19.5.cbreservedcode", ftypes.STRING, nil, nil, nil, "Reserved Code.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.cb_space = ProtoField.new("CB Space", "jpx.tseequities.issuebasicinformation.flex.v19.5.cbspace", ftypes.STRING, nil, nil, nil, "Space.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.control_medium_classification = ProtoField.new("Control Medium Classification", "jpx.tseequities.issuebasicinformation.flex.v19.5.controlmediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of a Control Message. Indicates details and other information.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.exchange_code = ProtoField.new("Exchange Code", "jpx.tseequities.issuebasicinformation.flex.v19.5.exchangecode", ftypes.STRING, nil, nil, nil, "Exchange the information belongs to. This section is a space in Control Message.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.exdividend_exright_flag = ProtoField.new("Exdividend Exright Flag", "jpx.tseequities.issuebasicinformation.flex.v19.5.exdividendexrightflag", ftypes.STRING, nil, nil, nil, "Indicates the Ex-dividend / Ex-right flag.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.index_constituent_issue = ProtoField.new("Index Constituent Issue", "jpx.tseequities.issuebasicinformation.flex.v19.5.indexconstituentissue", ftypes.STRING)
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.index_medium_classification = ProtoField.new("Index Medium Classification", "jpx.tseequities.issuebasicinformation.flex.v19.5.indexmediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of a Index Message. Indicates details and other information.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.industry_code = ProtoField.new("Industry Code", "jpx.tseequities.issuebasicinformation.flex.v19.5.industrycode", ftypes.STRING, nil, nil, nil, "Indicates the Industry code.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.isin_flag = ProtoField.new("Isin Flag", "jpx.tseequities.issuebasicinformation.flex.v19.5.isinflag", ftypes.STRING, nil, nil, nil, "Indicates the ISIN flag.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.issue_basic_medium_classification = ProtoField.new("Issue Basic Medium Classification", "jpx.tseequities.issuebasicinformation.flex.v19.5.issuebasicmediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of a Issue Basic Message. Indicates details and other information.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.issue_classification = ProtoField.new("Issue Classification", "jpx.tseequities.issuebasicinformation.flex.v19.5.issueclassification", ftypes.STRING, nil, nil, nil, "Set in issue realtime message and issue basic message. In the case of Control, Index and Statistics Message, space is set.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.issue_classification_large_classification = ProtoField.new("Issue Classification Large Classification", "jpx.tseequities.issuebasicinformation.flex.v19.5.issueclassificationlargeclassification", ftypes.STRING, nil, nil, nil, "Large Classification of the Issue Classification Code.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.issue_classification_medium_classification = ProtoField.new("Issue Classification Medium Classification", "jpx.tseequities.issuebasicinformation.flex.v19.5.issueclassificationmediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of the Issue Classification Code. Its meaning depends on the Large Classification: under 01 Stock-Related, 11 Prime Market (Domestic Stock) through 23 TOKYO PRO Market (Foreign Stock); under 02 CB-Related, 11 CB / 13 SW / 14 Exchangeable Bond.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.issue_multicast_group_number = ProtoField.new("Issue Multicast Group Number", "jpx.tseequities.issuebasicinformation.flex.v19.5.issuemulticastgroupnumber", ftypes.STRING, nil, nil, nil, "Indicates the Multicast Group Number for issues.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.issue_name = ProtoField.new("Issue Name", "jpx.tseequities.issuebasicinformation.flex.v19.5.issuename", ftypes.STRING, nil, nil, nil, "Indicates the issue name. (Chinese characters) The S-JIS code will be used.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.issue_realtime_medium_classification = ProtoField.new("Issue Realtime Medium Classification", "jpx.tseequities.issuebasicinformation.flex.v19.5.issuerealtimemediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of a Issue Realtime Message. Indicates details and other information.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.limit_price_maximum = ProtoField.new("Limit Price Maximum", "jpx.tseequities.issuebasicinformation.flex.v19.5.limitpricemaximum", ftypes.STRING, nil, nil, nil, "Limit Price (Maximum)")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.limit_price_minimum = ProtoField.new("Limit Price Minimum", "jpx.tseequities.issuebasicinformation.flex.v19.5.limitpriceminimum", ftypes.STRING, nil, nil, nil, "Limit Price (Minimum)")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.loan_margin_flag = ProtoField.new("Loan Margin Flag", "jpx.tseequities.issuebasicinformation.flex.v19.5.loanmarginflag", ftypes.STRING, nil, nil, nil, "Indicates the Loan・margin flag.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.margin_transactions_prohibition = ProtoField.new("Margin Transactions Prohibition", "jpx.tseequities.issuebasicinformation.flex.v19.5.margintransactionsprohibition", ftypes.STRING)
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.market_limit_orders = ProtoField.new("Market Limit Orders", "jpx.tseequities.issuebasicinformation.flex.v19.5.marketlimitorders", ftypes.STRING, nil, nil, nil, "Indicates the prohibited ordering for the order price of a new order.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.message_length = ProtoField.new("Message Length", "jpx.tseequities.issuebasicinformation.flex.v19.5.messagelength", ftypes.STRING, nil, nil, nil, "Total Length: Control Code (DC1 and DC2) + Service Header Section + User Data Section (including DC3). Right-align the data, suppress space in the leading space.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.message_serial_no = ProtoField.new("Message Serial No", "jpx.tseequities.issuebasicinformation.flex.v19.5.messageserialno", ftypes.STRING, nil, nil, nil, "Numbered from 1 on each Multicast Group, with the multicast group number in the first to third byte")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.message_type = ProtoField.new("Message Type", "jpx.tseequities.issuebasicinformation.flex.v19.5.messagetype", ftypes.STRING, nil, nil, nil, "Large Classification indicates Message Type, and Medium Classification indicates details and other information")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.message_type_large_classification = ProtoField.new("Message Type Large Classification", "jpx.tseequities.issuebasicinformation.flex.v19.5.messagetypelargeclassification", ftypes.STRING, nil, nil, nil, "Large Classification indicates Message Type.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.multicast_group_number = ProtoField.new("Multicast Group Number", "jpx.tseequities.issuebasicinformation.flex.v19.5.multicastgroupnumber", ftypes.STRING, nil, nil, nil, "Multicast group number, set in the first to third byte of the Message Serial No.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.new_listing_flag = ProtoField.new("New Listing Flag", "jpx.tseequities.issuebasicinformation.flex.v19.5.newlistingflag", ftypes.STRING, nil, nil, nil, "Indicates the New listing flag.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.new_orders_prohibition = ProtoField.new("New Orders Prohibition", "jpx.tseequities.issuebasicinformation.flex.v19.5.newordersprohibition", ftypes.STRING)
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.new_security_code = ProtoField.new("New Security Code", "jpx.tseequities.issuebasicinformation.flex.v19.5.newsecuritycode", ftypes.STRING, nil, nil, nil, "Indicates the New security code that is defined by the Securities Identification code committee.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.number_of_tick_size_table = ProtoField.new("Number Of Tick Size Table", "jpx.tseequities.issuebasicinformation.flex.v19.5.numberofticksizetable", ftypes.STRING, nil, nil, nil, "Indicates the Number of Tick Size Table.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.order_prohibition_status_at_the_regular_distribution = ProtoField.new("Order Prohibition Status At The Regular Distribution", "jpx.tseequities.issuebasicinformation.flex.v19.5.orderprohibitionstatusattheregulardistribution", ftypes.STRING, nil, nil, nil, "Order Prohibition Status (at the regular distribution)")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.price = ProtoField.new("Price", "jpx.tseequities.issuebasicinformation.flex.v19.5.price", ftypes.DOUBLE, nil, nil, nil, "Indicates the Base Price.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.proprietary_brokerage = ProtoField.new("Proprietary Brokerage", "jpx.tseequities.issuebasicinformation.flex.v19.5.proprietarybrokerage", ftypes.STRING, nil, nil, nil, "Indicates the prohibited ordering for the proprietary / brokerage classification of a new order.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.reserved_1 = ProtoField.new("Reserved 1", "jpx.tseequities.issuebasicinformation.flex.v19.5.reserved1", ftypes.STRING, nil, nil, nil, "This item is reserved.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.reserved_11 = ProtoField.new("Reserved 11", "jpx.tseequities.issuebasicinformation.flex.v19.5.reserved11", ftypes.STRING, nil, nil, nil, "This item will be reserved.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.reserved_2 = ProtoField.new("Reserved 2", "jpx.tseequities.issuebasicinformation.flex.v19.5.reserved2", ftypes.STRING, nil, nil, nil, "This item is reserved.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.reserved_4 = ProtoField.new("Reserved 4", "jpx.tseequities.issuebasicinformation.flex.v19.5.reserved4", ftypes.STRING, nil, nil, nil, "This item is reserved.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.reserved_5 = ProtoField.new("Reserved 5", "jpx.tseequities.issuebasicinformation.flex.v19.5.reserved5", ftypes.STRING, nil, nil, nil, "This item is reserved.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.securities_to_be_delisted_under_supervision_classification = ProtoField.new("Securities To Be Delisted Under Supervision Classification", "jpx.tseequities.issuebasicinformation.flex.v19.5.securitiestobedelistedundersupervisionclassification", ftypes.STRING, nil, nil, nil, "Indicates the Securities to be delisted / under supervision classification.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.security_type_etc_identification_code = ProtoField.new("Security Type Etc Identification Code", "jpx.tseequities.issuebasicinformation.flex.v19.5.securitytypeetcidentificationcode", ftypes.STRING, nil, nil, nil, "Indicates the security type, etc., code.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.separation_between_service_header_and_data_section = ProtoField.new("Separation Between Service Header And Data Section", "jpx.tseequities.issuebasicinformation.flex.v19.5.separationbetweenserviceheaderanddatasection", ftypes.UINT8, nil, nil, nil, "Control Code DC2 (0x12), Separation between Service Header and Data Section")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.separation_of_tag = ProtoField.new("Separation Of Tag", "jpx.tseequities.issuebasicinformation.flex.v19.5.separationoftag", ftypes.UINT8, nil, nil, nil, "Control Code DC3 (0x13) between tags, or DC1 (0x11) on the tag that ends the message")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.sequence_number = ProtoField.new("Sequence Number", "jpx.tseequities.issuebasicinformation.flex.v19.5.sequencenumber", ftypes.STRING, nil, nil, nil, "Numbered in sequence, beginning with 00000001. Space is set in the case of Backup Information, All-Day Information or Issue Basic Information, and the requested serial number which was used for the UDP message is set in Retransmission.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.serial_no = ProtoField.new("Serial No", "jpx.tseequities.issuebasicinformation.flex.v19.5.serialno", ftypes.STRING, nil, nil, nil, "Indicates the applicable serial number, which will be allocated in sequence from the first to the last issues.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.session_distinction = ProtoField.new("Session Distinction", "jpx.tseequities.issuebasicinformation.flex.v19.5.sessiondistinction", ftypes.STRING, nil, nil, nil, "Indicates the session in which the new information is generated. Set in Issue Real-time Message (FLEX Standard, ToSTNeT) and Index Message; for Issue Basic Message, Statistics Message and Control Message, spaces is set.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.short_selling_price_restriction_applied_flag_at_the_regular_distribution = ProtoField.new("Short Selling Price Restriction Applied Flag At The Regular Distribution", "jpx.tseequities.issuebasicinformation.flex.v19.5.shortsellingpricerestrictionappliedflagattheregulardistribution", ftypes.STRING, nil, nil, nil, "Indicates the issue that applied the Short Selling Price Restriction at the regular distribution on the applicable business day.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.short_selling_prohibition = ProtoField.new("Short Selling Prohibition", "jpx.tseequities.issuebasicinformation.flex.v19.5.shortsellingprohibition", ftypes.STRING)
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.side = ProtoField.new("Side", "jpx.tseequities.issuebasicinformation.flex.v19.5.side", ftypes.STRING, nil, nil, nil, "Indicates the prohibited ordering for the side of a new order.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.sign = ProtoField.new("Sign", "jpx.tseequities.issuebasicinformation.flex.v19.5.sign", ftypes.STRING, nil, nil, nil, "Indicates the Sign of the Base Price.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.start_end_flag = ProtoField.new("Start End Flag", "jpx.tseequities.issuebasicinformation.flex.v19.5.startendflag", ftypes.STRING, nil, nil, nil, "Indicates the flag for identifying the distinction between Start and End.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.start_of_message = ProtoField.new("Start Of Message", "jpx.tseequities.issuebasicinformation.flex.v19.5.startofmessage", ftypes.UINT8, nil, nil, nil, "Control Code DC1 (0x11), Start of a message")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.statistics_medium_classification = ProtoField.new("Statistics Medium Classification", "jpx.tseequities.issuebasicinformation.flex.v19.5.statisticsmediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of a Statistics Message. Indicates details and other information.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.stock_issue_code = ProtoField.new("Stock Issue Code", "jpx.tseequities.issuebasicinformation.flex.v19.5.stockissuecode", ftypes.STRING, nil, nil, nil, "Issue Code layout a. Stocks, used when Issue Classification Large Classification is 01 Stock-Related. FLEX Issue Code is set with right-align.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.stock_proper_name_code = ProtoField.new("Stock Proper Name Code", "jpx.tseequities.issuebasicinformation.flex.v19.5.stockpropernamecode", ftypes.STRING, nil, nil, nil, "Proper Name Code.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.stock_reserved_code = ProtoField.new("Stock Reserved Code", "jpx.tseequities.issuebasicinformation.flex.v19.5.stockreservedcode", ftypes.STRING, nil, nil, nil, "Reserved Code. Space is set on the reserved code of a Mother Stock.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.stock_space = ProtoField.new("Stock Space", "jpx.tseequities.issuebasicinformation.flex.v19.5.stockspace", ftypes.STRING, nil, nil, nil, "Space.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.tag_id = ProtoField.new("Tag ID", "jpx.tseequities.issuebasicinformation.flex.v19.5.tagid", ftypes.STRING, nil, nil, nil, "Tag ID is numbered using 1 to 9 and A to Z. Different tags are used for different information classifications.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.tag_information = ProtoField.new("Tag Information", "jpx.tseequities.issuebasicinformation.flex.v19.5.taginformation", ftypes.STRING, nil, nil, nil, "One tag: its two character Tag ID, its data, and the control code that closes it (DC3 between tags, DC1 at the end of the message)")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.test_mode_flag = ProtoField.new("Test Mode Flag", "jpx.tseequities.issuebasicinformation.flex.v19.5.testmodeflag", ftypes.STRING, nil, nil, nil, "Indicates the flag for identifying the distinction between Real and Test Operation.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.time = ProtoField.new("Time", "jpx.tseequities.issuebasicinformation.flex.v19.5.time", ftypes.STRING, nil, nil, nil, "Indicates the time.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.time_symbol = ProtoField.new("Time Symbol", "jpx.tseequities.issuebasicinformation.flex.v19.5.timesymbol", ftypes.STRING, nil, nil, nil, "Time Symbol.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.unit_flag = ProtoField.new("Unit Flag", "jpx.tseequities.issuebasicinformation.flex.v19.5.unitflag", ftypes.STRING, nil, nil, nil, "Indicates the Unit Flag.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.unit_of_trading = ProtoField.new("Unit Of Trading", "jpx.tseequities.issuebasicinformation.flex.v19.5.unitoftrading", ftypes.STRING, nil, nil, nil, "Indicates unit of trading.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.whenissued_transaction_flag = ProtoField.new("Whenissued Transaction Flag", "jpx.tseequities.issuebasicinformation.flex.v19.5.whenissuedtransactionflag", ftypes.STRING, nil, nil, nil, "Indicates the When-issued transaction issue.")

-- Jpx TseEquities IssueBasicInformation Flex 19.5 Framing
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.service_header = ProtoField.new("Service Header", "jpx.tseequities.issuebasicinformation.flex.v19.5.serviceheader", ftypes.STRING, nil, nil, nil, "Jpx Flex 39 byte service header, common to all message types")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.udp_packet = ProtoField.new("Udp Packet", "jpx.tseequities.issuebasicinformation.flex.v19.5.udppacket", ftypes.STRING, nil, nil, nil, "One Flex user message per datagram: DC1, Service Header, DC2, then the tags")

-- Jpx TseEquities IssueBasicInformation 19.5 Application Messages
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.base_price_information_message = ProtoField.new("Base Price Information Message", "jpx.tseequities.issuebasicinformation.flex.v19.5.basepriceinformationmessage", ftypes.STRING, nil, nil, nil, "In this Tag, the below items for the next business day or the day are set. This tag appears as part of an issue basic message.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.control_message = ProtoField.new("Control Message", "jpx.tseequities.issuebasicinformation.flex.v19.5.controlmessage", ftypes.STRING, nil, nil, nil, "In this tag, the Test Mode Flag and the Start/End Flag that are used in a Control Message will be set. This tag appears as part of a Control Message (Communication Control, Health Check Control, Stock Base Price Information Control, CB Base Price Information Control, Issue Information Control and Multicast Group Number Information Control).")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.issue_information_message = ProtoField.new("Issue Information Message", "jpx.tseequities.issuebasicinformation.flex.v19.5.issueinformationmessage", ftypes.STRING, nil, nil, nil, "In this tag, the new security code, etc., of each issue will be set. This tag appears as part of an issue basic message.")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.multicast_group_number_information_message = ProtoField.new("Multicast Group Number Information Message", "jpx.tseequities.issuebasicinformation.flex.v19.5.multicastgroupnumberinformationmessage", ftypes.STRING, nil, nil, nil, "In this tag, Multicast Group Number with which the issue is output is set. This tag appears as part of an Issue Realtime Message.")

-- Jpx TseEquities IssueBasicInformation Flex 19.5 Expert Info
jpx_tseequities_issuebasicinformation_flex_v19_5.experts = {}
jpx_tseequities_issuebasicinformation_flex_v19_5.experts.not_a_number = ProtoExpert.new("jpx.tseequities.issuebasicinformation.flex.v19.5.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.experts = { jpx_tseequities_issuebasicinformation_flex_v19_5.experts.not_a_number }

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Jpx TseEquities IssueBasicInformation Flex 19.5 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true

-- Register Jpx TseEquities IssueBasicInformation Flex 19.5 Show Options
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_jpx_tseequities_issuebasicinformation_flex_v19_5.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_jpx_tseequities_issuebasicinformation_flex_v19_5.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_jpx_tseequities_issuebasicinformation_flex_v19_5.prefs.show_application_messages then
    show.application_messages = omi_jpx_tseequities_issuebasicinformation_flex_v19_5.prefs.show_application_messages
  end
  if show.headers ~= omi_jpx_tseequities_issuebasicinformation_flex_v19_5.prefs.show_headers then
    show.headers = omi_jpx_tseequities_issuebasicinformation_flex_v19_5.prefs.show_headers
  end
  if show.structs ~= omi_jpx_tseequities_issuebasicinformation_flex_v19_5.prefs.show_structs then
    show.structs = omi_jpx_tseequities_issuebasicinformation_flex_v19_5.prefs.show_structs
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
-- Jpx TseEquities IssueBasicInformation Flex 19.5 Fields
-----------------------------------------------------------------------

-- All Orders Prohibition
jpx_tseequities_issuebasicinformation_flex_v19_5.all_orders_prohibition = {}

-- Size: All Orders Prohibition
jpx_tseequities_issuebasicinformation_flex_v19_5.all_orders_prohibition.size = 1

-- Display: All Orders Prohibition
jpx_tseequities_issuebasicinformation_flex_v19_5.all_orders_prohibition.display = function(value)
  if value == "1" then
    return "All Orders Prohibition: Prohibited For All Orders (1)"
  end
  if value == " " then
    return "All Orders Prohibition: Other Than The Above (<whitespace>)"
  end

  return "All Orders Prohibition: Unknown("..value..")"
end

-- Dissect: All Orders Prohibition
jpx_tseequities_issuebasicinformation_flex_v19_5.all_orders_prohibition.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.all_orders_prohibition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.all_orders_prohibition.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.all_orders_prohibition, range, value, display)

  return offset + length, value
end

-- Applicable Business Day
jpx_tseequities_issuebasicinformation_flex_v19_5.applicable_business_day = {}

-- Size: Applicable Business Day
jpx_tseequities_issuebasicinformation_flex_v19_5.applicable_business_day.size = 8

-- Display: Applicable Business Day
jpx_tseequities_issuebasicinformation_flex_v19_5.applicable_business_day.display = function(value)
  if #value < 8 then
    return "Applicable Business Day: "..value
  end

  return "Applicable Business Day: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Applicable Business Day
jpx_tseequities_issuebasicinformation_flex_v19_5.applicable_business_day.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.applicable_business_day.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.applicable_business_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.applicable_business_day, range, value, display)

  return offset + length, value
end

-- Arbitrary 1
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_1 = {}

-- Size: Arbitrary 1
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_1.size = 1

-- Display: Arbitrary 1
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_1.display = function(value)
  if value == "1" then
    return "Arbitrary 1: Constituent Issue Of Topix Core 30 (1)"
  end
  if value == " " then
    return "Arbitrary 1: Other Than The Above (<whitespace>)"
  end

  return "Arbitrary 1: Unknown("..value..")"
end

-- Dissect: Arbitrary 1
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_1.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_1, range, value, display)

  return offset + length, value
end

-- Arbitrary 11
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_11 = {}

-- Size: Arbitrary 11
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_11.size = 1

-- Display: Arbitrary 11
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_11.display = function(value)
  if value == "1" then
    return "Arbitrary 11: Constituent Issue Of Tse Growth Market 250 Index (1)"
  end
  if value == " " then
    return "Arbitrary 11: Other Than The Above (<whitespace>)"
  end

  return "Arbitrary 11: Unknown("..value..")"
end

-- Dissect: Arbitrary 11
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_11.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_11.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_11, range, value, display)

  return offset + length, value
end

-- Arbitrary 12 To 15
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_12_to_15 = {}

-- Size: Arbitrary 12 To 15
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_12_to_15.size = 4

-- Display: Arbitrary 12 To 15
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_12_to_15.display = function(value)
  return "Arbitrary 12 To 15: "..value
end

-- Dissect: Arbitrary 12 To 15
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_12_to_15.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_12_to_15.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_12_to_15.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_12_to_15, range, value, display)

  return offset + length, value
end

-- Arbitrary 16
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_16 = {}

-- Size: Arbitrary 16
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_16.size = 1

-- Display: Arbitrary 16
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_16.display = function(value)
  if value == "1" then
    return "Arbitrary 16: Constituent Issue Of Reit General (1)"
  end
  if value == " " then
    return "Arbitrary 16: Other Than The Above (<whitespace>)"
  end

  return "Arbitrary 16: Unknown("..value..")"
end

-- Dissect: Arbitrary 16
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_16.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_16.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_16, range, value, display)

  return offset + length, value
end

-- Arbitrary 17 To 19
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_17_to_19 = {}

-- Size: Arbitrary 17 To 19
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_17_to_19.size = 3

-- Display: Arbitrary 17 To 19
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_17_to_19.display = function(value)
  return "Arbitrary 17 To 19: "..value
end

-- Dissect: Arbitrary 17 To 19
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_17_to_19.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_17_to_19.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_17_to_19.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_17_to_19, range, value, display)

  return offset + length, value
end

-- Arbitrary 2
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_2 = {}

-- Size: Arbitrary 2
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_2.size = 1

-- Display: Arbitrary 2
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_2.display = function(value)
  if value == "1" then
    return "Arbitrary 2: Constituent Issue Of Topix Large 70 (1)"
  end
  if value == " " then
    return "Arbitrary 2: Other Than The Above (<whitespace>)"
  end

  return "Arbitrary 2: Unknown("..value..")"
end

-- Dissect: Arbitrary 2
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_2.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_2, range, value, display)

  return offset + length, value
end

-- Arbitrary 20
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_20 = {}

-- Size: Arbitrary 20
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_20.size = 1

-- Display: Arbitrary 20
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_20.display = function(value)
  return "Arbitrary 20: "..value
end

-- Dissect: Arbitrary 20
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_20.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_20.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_20.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_20, range, value, display)

  return offset + length, value
end

-- Arbitrary 3
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_3 = {}

-- Size: Arbitrary 3
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_3.size = 1

-- Display: Arbitrary 3
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_3.display = function(value)
  if value == "1" then
    return "Arbitrary 3: Constituent Issue Of Topix 100 (1)"
  end
  if value == " " then
    return "Arbitrary 3: Other Than The Above (<whitespace>)"
  end

  return "Arbitrary 3: Unknown("..value..")"
end

-- Dissect: Arbitrary 3
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_3.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_3, range, value, display)

  return offset + length, value
end

-- Arbitrary 4
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_4 = {}

-- Size: Arbitrary 4
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_4.size = 1

-- Display: Arbitrary 4
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_4.display = function(value)
  if value == "1" then
    return "Arbitrary 4: Constituent Issue Of Mid 400 (1)"
  end
  if value == " " then
    return "Arbitrary 4: Other Than The Above (<whitespace>)"
  end

  return "Arbitrary 4: Unknown("..value..")"
end

-- Dissect: Arbitrary 4
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_4.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_4, range, value, display)

  return offset + length, value
end

-- Arbitrary 5
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_5 = {}

-- Size: Arbitrary 5
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_5.size = 1

-- Display: Arbitrary 5
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_5.display = function(value)
  if value == "1" then
    return "Arbitrary 5: Constituent Issue Of Topix 500 (1)"
  end
  if value == " " then
    return "Arbitrary 5: Other Than The Above (<whitespace>)"
  end

  return "Arbitrary 5: Unknown("..value..")"
end

-- Dissect: Arbitrary 5
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_5.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_5.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_5, range, value, display)

  return offset + length, value
end

-- Arbitrary 6
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_6 = {}

-- Size: Arbitrary 6
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_6.size = 1

-- Display: Arbitrary 6
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_6.display = function(value)
  if value == "1" then
    return "Arbitrary 6: Constituent Issue Of Topix Small (1)"
  end
  if value == " " then
    return "Arbitrary 6: Other Than The Above (<whitespace>)"
  end

  return "Arbitrary 6: Unknown("..value..")"
end

-- Dissect: Arbitrary 6
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_6.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_6.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_6, range, value, display)

  return offset + length, value
end

-- Arbitrary 7
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_7 = {}

-- Size: Arbitrary 7
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_7.size = 1

-- Display: Arbitrary 7
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_7.display = function(value)
  if value == "1" then
    return "Arbitrary 7: Constituent Issue Of Topix 1000 (1)"
  end
  if value == " " then
    return "Arbitrary 7: Other Than The Above (<whitespace>)"
  end

  return "Arbitrary 7: Unknown("..value..")"
end

-- Dissect: Arbitrary 7
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_7.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_7.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_7, range, value, display)

  return offset + length, value
end

-- Arbitrary 8 To 10
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_8_to_10 = {}

-- Size: Arbitrary 8 To 10
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_8_to_10.size = 3

-- Display: Arbitrary 8 To 10
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_8_to_10.display = function(value)
  return "Arbitrary 8 To 10: "..value
end

-- Dissect: Arbitrary 8 To 10
jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_8_to_10.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_8_to_10.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_8_to_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.arbitrary_8_to_10, range, value, display)

  return offset + length, value
end

-- Base Price Price Of The Middle Of The Book
jpx_tseequities_issuebasicinformation_flex_v19_5.base_price_price_of_the_middle_of_the_book = {}

-- Size: Base Price Price Of The Middle Of The Book
jpx_tseequities_issuebasicinformation_flex_v19_5.base_price_price_of_the_middle_of_the_book.size = 1

-- Display: Base Price Price Of The Middle Of The Book
jpx_tseequities_issuebasicinformation_flex_v19_5.base_price_price_of_the_middle_of_the_book.display = function(value)
  if value == "1" then
    return "Base Price Price Of The Middle Of The Book: Base Price (1)"
  end
  if value == "2" then
    return "Base Price Price Of The Middle Of The Book: Price Of The Middle Of The Book (2)"
  end

  return "Base Price Price Of The Middle Of The Book: Unknown("..value..")"
end

-- Dissect: Base Price Price Of The Middle Of The Book
jpx_tseequities_issuebasicinformation_flex_v19_5.base_price_price_of_the_middle_of_the_book.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.base_price_price_of_the_middle_of_the_book.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.base_price_price_of_the_middle_of_the_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.base_price_price_of_the_middle_of_the_book, range, value, display)

  return offset + length, value
end

-- Based Business Day
jpx_tseequities_issuebasicinformation_flex_v19_5.based_business_day = {}

-- Size: Based Business Day
jpx_tseequities_issuebasicinformation_flex_v19_5.based_business_day.size = 8

-- Display: Based Business Day
jpx_tseequities_issuebasicinformation_flex_v19_5.based_business_day.display = function(value)
  if #value < 8 then
    return "Based Business Day: "..value
  end

  return "Based Business Day: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Based Business Day
jpx_tseequities_issuebasicinformation_flex_v19_5.based_business_day.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.based_business_day.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.based_business_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.based_business_day, range, value, display)

  return offset + length, value
end

-- Blank Issue Code
jpx_tseequities_issuebasicinformation_flex_v19_5.blank_issue_code = {}

-- Size: Blank Issue Code
jpx_tseequities_issuebasicinformation_flex_v19_5.blank_issue_code.size = 12

-- Display: Blank Issue Code
jpx_tseequities_issuebasicinformation_flex_v19_5.blank_issue_code.display = function(value)
  return "Blank Issue Code: "..value
end

-- Dissect: Blank Issue Code
jpx_tseequities_issuebasicinformation_flex_v19_5.blank_issue_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.blank_issue_code.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.blank_issue_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.blank_issue_code, range, value, display)

  return offset + length, value
end

-- CB Proper Name Code
jpx_tseequities_issuebasicinformation_flex_v19_5.cb_proper_name_code = {}

-- Size: CB Proper Name Code
jpx_tseequities_issuebasicinformation_flex_v19_5.cb_proper_name_code.size = 4

-- Display: CB Proper Name Code
jpx_tseequities_issuebasicinformation_flex_v19_5.cb_proper_name_code.display = function(value)
  return "CB Proper Name Code: "..value
end

-- Dissect: CB Proper Name Code
jpx_tseequities_issuebasicinformation_flex_v19_5.cb_proper_name_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.cb_proper_name_code.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.cb_proper_name_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.cb_proper_name_code, range, value, display)

  return offset + length, value
end

-- CB Reserved Code
jpx_tseequities_issuebasicinformation_flex_v19_5.cb_reserved_code = {}

-- Size: CB Reserved Code
jpx_tseequities_issuebasicinformation_flex_v19_5.cb_reserved_code.size = 1

-- Display: CB Reserved Code
jpx_tseequities_issuebasicinformation_flex_v19_5.cb_reserved_code.display = function(value)
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
jpx_tseequities_issuebasicinformation_flex_v19_5.cb_reserved_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.cb_reserved_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.cb_reserved_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.cb_reserved_code, range, value, display)

  return offset + length, value
end

-- CB Space
jpx_tseequities_issuebasicinformation_flex_v19_5.cb_space = {}

-- Size: CB Space
jpx_tseequities_issuebasicinformation_flex_v19_5.cb_space.size = 3

-- Display: CB Space
jpx_tseequities_issuebasicinformation_flex_v19_5.cb_space.display = function(value)
  return "CB Space: "..value
end

-- Dissect: CB Space
jpx_tseequities_issuebasicinformation_flex_v19_5.cb_space.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.cb_space.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.cb_space.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.cb_space, range, value, display)

  return offset + length, value
end

-- Control Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.control_medium_classification = {}

-- Size: Control Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.control_medium_classification.size = 2

-- Display: Control Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.control_medium_classification.display = function(value)
  if value == "00" then
    return "Control Medium Classification: Communication Control (00)"
  end
  if value == "02" then
    return "Control Medium Classification: Issue Information Control (02)"
  end
  if value == "04" then
    return "Control Medium Classification: Allday Information Control (04)"
  end
  if value == "05" then
    return "Control Medium Classification: Health Check Control (05)"
  end
  if value == "06" then
    return "Control Medium Classification: Stock Base Price Information Control (06)"
  end
  if value == "07" then
    return "Control Medium Classification: CB Base Price Information Control (07)"
  end
  if value == "08" then
    return "Control Medium Classification: Multicast Group Number Information Control (08)"
  end
  if value == "09" then
    return "Control Medium Classification: Backup Information Control (09)"
  end
  if value == "90" then
    return "Control Medium Classification: TCP Transmission Control (90)"
  end

  return "Control Medium Classification: Unknown("..value..")"
end

-- Dissect: Control Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.control_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.control_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.control_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.control_medium_classification, range, value, display)

  return offset + length, value
end

-- Exchange Code
jpx_tseequities_issuebasicinformation_flex_v19_5.exchange_code = {}

-- Size: Exchange Code
jpx_tseequities_issuebasicinformation_flex_v19_5.exchange_code.size = 1

-- Display: Exchange Code
jpx_tseequities_issuebasicinformation_flex_v19_5.exchange_code.display = function(value)
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
jpx_tseequities_issuebasicinformation_flex_v19_5.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Exdividend Exright Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.exdividend_exright_flag = {}

-- Size: Exdividend Exright Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.exdividend_exright_flag.size = 2

-- Display: Exdividend Exright Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.exdividend_exright_flag.display = function(value)
  if value == "00" then
    return "Exdividend Exright Flag: None Specified (00)"
  end
  if value == "01" then
    return "Exdividend Exright Flag: Exdividend (01)"
  end
  if value == "02" then
    return "Exdividend Exright Flag: Exnew (02)"
  end
  if value == "03" then
    return "Exdividend Exright Flag: Other Exrights (03)"
  end
  if value == "04" then
    return "Exdividend Exright Flag: Exdividendother Exrights (04)"
  end
  if value == "05" then
    return "Exdividend Exright Flag: Exnewother Exrights (05)"
  end
  if value == "06" then
    return "Exdividend Exright Flag: Exdividendexnew (06)"
  end
  if value == "07" then
    return "Exdividend Exright Flag: Exdividendexnewother Exrights (07)"
  end
  if value == "08" then
    return "Exdividend Exright Flag: Cumduebill (08)"
  end
  if value == "09" then
    return "Exdividend Exright Flag: Exduebill (09)"
  end
  if value == "10" then
    return "Exdividend Exright Flag: Cumduebill Plus One Of Exdividend Exnew Or Other Exrights Or Two Or More Of These (10)"
  end

  return "Exdividend Exright Flag: Unknown("..value..")"
end

-- Dissect: Exdividend Exright Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.exdividend_exright_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.exdividend_exright_flag.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.exdividend_exright_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.exdividend_exright_flag, range, value, display)

  return offset + length, value
end

-- Index Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.index_medium_classification = {}

-- Size: Index Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.index_medium_classification.size = 2

-- Display: Index Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.index_medium_classification.display = function(value)
  if value == "00" then
    return "Index Medium Classification: Index Message (00)"
  end

  return "Index Medium Classification: Unknown("..value..")"
end

-- Dissect: Index Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.index_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.index_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.index_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.index_medium_classification, range, value, display)

  return offset + length, value
end

-- Industry Code
jpx_tseequities_issuebasicinformation_flex_v19_5.industry_code = {}

-- Size: Industry Code
jpx_tseequities_issuebasicinformation_flex_v19_5.industry_code.size = 4

-- Display: Industry Code
jpx_tseequities_issuebasicinformation_flex_v19_5.industry_code.display = function(value)
  if value == "0050" then
    return "Industry Code: Fishery Agriculture Forestry (0050)"
  end
  if value == "1050" then
    return "Industry Code: Mining (1050)"
  end
  if value == "2050" then
    return "Industry Code: Construction (2050)"
  end
  if value == "3050" then
    return "Industry Code: Foods (3050)"
  end
  if value == "3100" then
    return "Industry Code: Textiles Apparels (3100)"
  end
  if value == "3150" then
    return "Industry Code: Pulp Paper (3150)"
  end
  if value == "3200" then
    return "Industry Code: Chemicals (3200)"
  end
  if value == "3250" then
    return "Industry Code: Pharmaceuticals (3250)"
  end
  if value == "3300" then
    return "Industry Code: Oil Coal Products (3300)"
  end
  if value == "3350" then
    return "Industry Code: Rubber Products (3350)"
  end
  if value == "3400" then
    return "Industry Code: Glass Ceramics Products (3400)"
  end
  if value == "3450" then
    return "Industry Code: Iron Steel (3450)"
  end
  if value == "3500" then
    return "Industry Code: Nonferrous Metals (3500)"
  end
  if value == "3550" then
    return "Industry Code: Metal Products (3550)"
  end
  if value == "3600" then
    return "Industry Code: Machinery (3600)"
  end
  if value == "3650" then
    return "Industry Code: Electric Appliances (3650)"
  end
  if value == "3700" then
    return "Industry Code: Transportation Equipment (3700)"
  end
  if value == "3750" then
    return "Industry Code: Precision Instruments (3750)"
  end
  if value == "3800" then
    return "Industry Code: Other Products (3800)"
  end
  if value == "4050" then
    return "Industry Code: Electric Power Gas (4050)"
  end
  if value == "5050" then
    return "Industry Code: Land Transportation (5050)"
  end
  if value == "5100" then
    return "Industry Code: Marine Transportation (5100)"
  end
  if value == "5150" then
    return "Industry Code: Air Transportation (5150)"
  end
  if value == "5200" then
    return "Industry Code: Warehouse Harbor Transportation Services (5200)"
  end
  if value == "5250" then
    return "Industry Code: Information Communication (5250)"
  end
  if value == "6050" then
    return "Industry Code: Wholesale Trade (6050)"
  end
  if value == "6100" then
    return "Industry Code: Retail Trade (6100)"
  end
  if value == "7050" then
    return "Industry Code: Banks (7050)"
  end
  if value == "7100" then
    return "Industry Code: Securities Commodity Futures (7100)"
  end
  if value == "7150" then
    return "Industry Code: Insurance (7150)"
  end
  if value == "7200" then
    return "Industry Code: Other Financing Business (7200)"
  end
  if value == "8050" then
    return "Industry Code: Real Estate (8050)"
  end
  if value == "9050" then
    return "Industry Code: Services (9050)"
  end
  if value == "9999" then
    return "Industry Code: Others (9999)"
  end

  return "Industry Code: Unknown("..value..")"
end

-- Dissect: Industry Code
jpx_tseequities_issuebasicinformation_flex_v19_5.industry_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.industry_code.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.industry_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.industry_code, range, value, display)

  return offset + length, value
end

-- Isin Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.isin_flag = {}

-- Size: Isin Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.isin_flag.size = 1

-- Display: Isin Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.isin_flag.display = function(value)
  if value == "1" then
    return "Isin Flag: Identifiable By The International Standard Code (1)"
  end
  if value == " " then
    return "Isin Flag: Other Than The Above (<whitespace>)"
  end

  return "Isin Flag: Unknown("..value..")"
end

-- Dissect: Isin Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.isin_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.isin_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.isin_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.isin_flag, range, value, display)

  return offset + length, value
end

-- Issue Basic Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_basic_medium_classification = {}

-- Size: Issue Basic Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_basic_medium_classification.size = 2

-- Display: Issue Basic Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_basic_medium_classification.display = function(value)
  if value == "00" then
    return "Issue Basic Medium Classification: Regular (00)"
  end
  if value == "01" then
    return "Issue Basic Medium Classification: Special (01)"
  end

  return "Issue Basic Medium Classification: Unknown("..value..")"
end

-- Dissect: Issue Basic Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_basic_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_basic_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_basic_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.issue_basic_medium_classification, range, value, display)

  return offset + length, value
end

-- Issue Classification Large Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification_large_classification = {}

-- Size: Issue Classification Large Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification_large_classification.size = 2

-- Display: Issue Classification Large Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification_large_classification.display = function(value)
  if value == "01" then
    return "Issue Classification Large Classification: Stockrelated (01)"
  end
  if value == "02" then
    return "Issue Classification Large Classification: Cbrelated (02)"
  end

  return "Issue Classification Large Classification: Unknown("..value..")"
end

-- Dissect: Issue Classification Large Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification_large_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification_large_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification_large_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.issue_classification_large_classification, range, value, display)

  return offset + length, value
end

-- Issue Classification Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification_medium_classification = {}

-- Size: Issue Classification Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification_medium_classification.size = 2

-- Display: Issue Classification Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification_medium_classification.display = function(value)
  return "Issue Classification Medium Classification: "..value
end

-- Dissect: Issue Classification Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.issue_classification_medium_classification, range, value, display)

  return offset + length, value
end

-- Issue Multicast Group Number
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_multicast_group_number = {}

-- Size: Issue Multicast Group Number
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_multicast_group_number.size = 3

-- Display: Issue Multicast Group Number
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_multicast_group_number.display = function(value)
  return "Issue Multicast Group Number: "..value
end

-- Dissect: Issue Multicast Group Number
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_multicast_group_number.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_multicast_group_number.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_multicast_group_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.issue_multicast_group_number, range, value, display)

  return offset + length, value
end

-- Issue Name
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_name = {}

-- Size: Issue Name
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_name.size = 20

-- Display: Issue Name
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_name.display = function(value)
  return "Issue Name: "..value
end

-- Dissect: Issue Name
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_name.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_name.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.issue_name, range, value, display)

  return offset + length, value
end

-- Issue Realtime Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_realtime_medium_classification = {}

-- Size: Issue Realtime Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_realtime_medium_classification.size = 2

-- Display: Issue Realtime Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_realtime_medium_classification.display = function(value)
  if value == "00" then
    return "Issue Realtime Medium Classification: New (00)"
  end
  if value == "01" then
    return "Issue Realtime Medium Classification: Backup (01)"
  end
  if value == "02" then
    return "Issue Realtime Medium Classification: Allday (02)"
  end

  return "Issue Realtime Medium Classification: Unknown("..value..")"
end

-- Dissect: Issue Realtime Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_realtime_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_realtime_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_realtime_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.issue_realtime_medium_classification, range, value, display)

  return offset + length, value
end

-- Loan Margin Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.loan_margin_flag = {}

-- Size: Loan Margin Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.loan_margin_flag.size = 1

-- Display: Loan Margin Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.loan_margin_flag.display = function(value)
  if value == "1" then
    return "Loan Margin Flag: Loan Issue (1)"
  end
  if value == "2" then
    return "Loan Margin Flag: Margin Transaction Issue (2)"
  end
  if value == "0" then
    return "Loan Margin Flag: Other Than The Above (0)"
  end

  return "Loan Margin Flag: Unknown("..value..")"
end

-- Dissect: Loan Margin Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.loan_margin_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.loan_margin_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.loan_margin_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.loan_margin_flag, range, value, display)

  return offset + length, value
end

-- Market Limit Orders
jpx_tseequities_issuebasicinformation_flex_v19_5.market_limit_orders = {}

-- Size: Market Limit Orders
jpx_tseequities_issuebasicinformation_flex_v19_5.market_limit_orders.size = 1

-- Display: Market Limit Orders
jpx_tseequities_issuebasicinformation_flex_v19_5.market_limit_orders.display = function(value)
  if value == "1" then
    return "Market Limit Orders: Only Market Order Is Prohibited (1)"
  end
  if value == "2" then
    return "Market Limit Orders: Both Market And Limit Orders Are Prohibited (2)"
  end
  if value == " " then
    return "Market Limit Orders: Other Than The Above (<whitespace>)"
  end

  return "Market Limit Orders: Unknown("..value..")"
end

-- Dissect: Market Limit Orders
jpx_tseequities_issuebasicinformation_flex_v19_5.market_limit_orders.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.market_limit_orders.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.market_limit_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.market_limit_orders, range, value, display)

  return offset + length, value
end

-- Message Length
jpx_tseequities_issuebasicinformation_flex_v19_5.message_length = {}

-- Size: Message Length
jpx_tseequities_issuebasicinformation_flex_v19_5.message_length.size = 6

-- Display: Message Length
jpx_tseequities_issuebasicinformation_flex_v19_5.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
jpx_tseequities_issuebasicinformation_flex_v19_5.message_length.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.message_length.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type Large Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.message_type_large_classification = {}

-- Size: Message Type Large Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.message_type_large_classification.size = 1

-- Display: Message Type Large Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.message_type_large_classification.display = function(value)
  if value == "1" then
    return "Message Type Large Classification: Issue Realtime Message (1)"
  end
  if value == "2" then
    return "Message Type Large Classification: Statistics Message (2)"
  end
  if value == "3" then
    return "Message Type Large Classification: Index Message (3)"
  end
  if value == "4" then
    return "Message Type Large Classification: Issue Basic Message (4)"
  end
  if value == "9" then
    return "Message Type Large Classification: Control Message (9)"
  end

  return "Message Type Large Classification: Unknown("..value..")"
end

-- Dissect: Message Type Large Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.message_type_large_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.message_type_large_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.message_type_large_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.message_type_large_classification, range, value, display)

  return offset + length, value
end

-- Multicast Group Number
jpx_tseequities_issuebasicinformation_flex_v19_5.multicast_group_number = {}

-- Size: Multicast Group Number
jpx_tseequities_issuebasicinformation_flex_v19_5.multicast_group_number.size = 3

-- Display: Multicast Group Number
jpx_tseequities_issuebasicinformation_flex_v19_5.multicast_group_number.display = function(value)
  return "Multicast Group Number: "..value
end

-- Dissect: Multicast Group Number
jpx_tseequities_issuebasicinformation_flex_v19_5.multicast_group_number.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.multicast_group_number.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.multicast_group_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.multicast_group_number, range, value, display)

  return offset + length, value
end

-- New Listing Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.new_listing_flag = {}

-- Size: New Listing Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.new_listing_flag.size = 1

-- Display: New Listing Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.new_listing_flag.display = function(value)
  if value == "1" then
    return "New Listing Flag: Newly Listed Issue (1)"
  end
  if value == " " then
    return "New Listing Flag: Other Than The Above (<whitespace>)"
  end

  return "New Listing Flag: Unknown("..value..")"
end

-- Dissect: New Listing Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.new_listing_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.new_listing_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.new_listing_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.new_listing_flag, range, value, display)

  return offset + length, value
end

-- New Security Code
jpx_tseequities_issuebasicinformation_flex_v19_5.new_security_code = {}

-- Size: New Security Code
jpx_tseequities_issuebasicinformation_flex_v19_5.new_security_code.size = 12

-- Display: New Security Code
jpx_tseequities_issuebasicinformation_flex_v19_5.new_security_code.display = function(value)
  return "New Security Code: "..value
end

-- Dissect: New Security Code
jpx_tseequities_issuebasicinformation_flex_v19_5.new_security_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.new_security_code.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.new_security_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.new_security_code, range, value, display)

  return offset + length, value
end

-- Number Of Tick Size Table
jpx_tseequities_issuebasicinformation_flex_v19_5.number_of_tick_size_table = {}

-- Size: Number Of Tick Size Table
jpx_tseequities_issuebasicinformation_flex_v19_5.number_of_tick_size_table.size = 2

-- Display: Number Of Tick Size Table
jpx_tseequities_issuebasicinformation_flex_v19_5.number_of_tick_size_table.display = function(value)
  return "Number Of Tick Size Table: "..value
end

-- Dissect: Number Of Tick Size Table
jpx_tseequities_issuebasicinformation_flex_v19_5.number_of_tick_size_table.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.number_of_tick_size_table.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.number_of_tick_size_table.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.number_of_tick_size_table, range, value, display)

  return offset + length, value
end

-- Price
jpx_tseequities_issuebasicinformation_flex_v19_5.price = {}

-- Size: Price
jpx_tseequities_issuebasicinformation_flex_v19_5.price.size = 14

-- Display: Price
jpx_tseequities_issuebasicinformation_flex_v19_5.price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_tseequities_issuebasicinformation_flex_v19_5.price.size):string(), 4)

  if text == nil then
    return "Price: "..tostring(value)
  end

  return "Price: "..text
end

-- Dissect: Price
jpx_tseequities_issuebasicinformation_flex_v19_5.price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.price, range, value, "Price: Not Applicable")
    item:add_proto_expert_info(jpx_tseequities_issuebasicinformation_flex_v19_5.experts.not_a_number, "Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.price, range, value, display)

  return offset + length, value
end

-- Proprietary Brokerage
jpx_tseequities_issuebasicinformation_flex_v19_5.proprietary_brokerage = {}

-- Size: Proprietary Brokerage
jpx_tseequities_issuebasicinformation_flex_v19_5.proprietary_brokerage.size = 1

-- Display: Proprietary Brokerage
jpx_tseequities_issuebasicinformation_flex_v19_5.proprietary_brokerage.display = function(value)
  if value == "1" then
    return "Proprietary Brokerage: Only Proprietary Order Is Prohibited (1)"
  end
  if value == "2" then
    return "Proprietary Brokerage: Both Proprietary And Brokerage Orders Are Prohibited (2)"
  end
  if value == " " then
    return "Proprietary Brokerage: Other Than The Above (<whitespace>)"
  end

  return "Proprietary Brokerage: Unknown("..value..")"
end

-- Dissect: Proprietary Brokerage
jpx_tseequities_issuebasicinformation_flex_v19_5.proprietary_brokerage.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.proprietary_brokerage.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.proprietary_brokerage.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.proprietary_brokerage, range, value, display)

  return offset + length, value
end

-- Reserved 1
jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_1 = {}

-- Size: Reserved 1
jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_1.size = 1

-- Display: Reserved 1
jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 11
jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_11 = {}

-- Size: Reserved 11
jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_11.size = 11

-- Display: Reserved 11
jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_11.display = function(value)
  return "Reserved 11: "..value
end

-- Dissect: Reserved 11
jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_11.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_11.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.reserved_11, range, value, display)

  return offset + length, value
end

-- Reserved 2
jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_2 = {}

-- Size: Reserved 2
jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_2.size = 2

-- Display: Reserved 2
jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_2.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 4
jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_4 = {}

-- Size: Reserved 4
jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_4.size = 4

-- Display: Reserved 4
jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_4.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 5
jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_5 = {}

-- Size: Reserved 5
jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_5.size = 5

-- Display: Reserved 5
jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_5.display = function(value)
  return "Reserved 5: "..value
end

-- Dissect: Reserved 5
jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_5.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_5.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.reserved_5, range, value, display)

  return offset + length, value
end

-- Securities To Be Delisted Under Supervision Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.securities_to_be_delisted_under_supervision_classification = {}

-- Size: Securities To Be Delisted Under Supervision Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.securities_to_be_delisted_under_supervision_classification.size = 1

-- Display: Securities To Be Delisted Under Supervision Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.securities_to_be_delisted_under_supervision_classification.display = function(value)
  if value == "1" then
    return "Securities To Be Delisted Under Supervision Classification: Under Supervision Presently Under Examination (1)"
  end
  if value == "2" then
    return "Securities To Be Delisted Under Supervision Classification: Under Supervision Presently Under Confirmation (2)"
  end
  if value == "3" then
    return "Securities To Be Delisted Under Supervision Classification: Under Supervision Presently Under Examination And Confirmation (3)"
  end
  if value == "4" then
    return "Securities To Be Delisted Under Supervision Classification: Under Supervision Presently Under Examination And On Special Alert (4)"
  end
  if value == "5" then
    return "Securities To Be Delisted Under Supervision Classification: Under Supervision Presently Under Confirmation And On Special Alert (5)"
  end
  if value == "6" then
    return "Securities To Be Delisted Under Supervision Classification: Under Supervision Presently Under Examination And Confirmation And On Special Alert (6)"
  end
  if value == "7" then
    return "Securities To Be Delisted Under Supervision Classification: To Be Delisted (7)"
  end
  if value == "8" then
    return "Securities To Be Delisted Under Supervision Classification: To Be Delisted And On Special Alert (8)"
  end
  if value == "9" then
    return "Securities To Be Delisted Under Supervision Classification: On Special Alert (9)"
  end
  if value == "0" then
    return "Securities To Be Delisted Under Supervision Classification: None Specified (0)"
  end

  return "Securities To Be Delisted Under Supervision Classification: Unknown("..value..")"
end

-- Dissect: Securities To Be Delisted Under Supervision Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.securities_to_be_delisted_under_supervision_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.securities_to_be_delisted_under_supervision_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.securities_to_be_delisted_under_supervision_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.securities_to_be_delisted_under_supervision_classification, range, value, display)

  return offset + length, value
end

-- Security Type Etc Identification Code
jpx_tseequities_issuebasicinformation_flex_v19_5.security_type_etc_identification_code = {}

-- Size: Security Type Etc Identification Code
jpx_tseequities_issuebasicinformation_flex_v19_5.security_type_etc_identification_code.size = 2

-- Display: Security Type Etc Identification Code
jpx_tseequities_issuebasicinformation_flex_v19_5.security_type_etc_identification_code.display = function(value)
  if value == "01" then
    return "Security Type Etc Identification Code: Domestic Stock Common Stock (01)"
  end
  if value == "02" then
    return "Security Type Etc Identification Code: Domestic Stock New Common Stock (02)"
  end
  if value == "03" then
    return "Security Type Etc Identification Code: Domestic Stock Preferred Stock (03)"
  end
  if value == "04" then
    return "Security Type Etc Identification Code: Domestic Stock New Preferred Stock (04)"
  end
  if value == "05" then
    return "Security Type Etc Identification Code: Domestic Stock Deferred Stock (05)"
  end
  if value == "06" then
    return "Security Type Etc Identification Code: Domestic Stock New Deferred Stock (06)"
  end
  if value == "07" then
    return "Security Type Etc Identification Code: Domestic Stock Warrant (07)"
  end
  if value == "08" then
    return "Security Type Etc Identification Code: Domestic Stock Tracking Stock (08)"
  end
  if value == "09" then
    return "Security Type Etc Identification Code: Domestic Stock Classified Stock (09)"
  end
  if value == "0A" then
    return "Security Type Etc Identification Code: Domestic Preferred Equity Investment Security (0A)"
  end
  if value == "11" then
    return "Security Type Etc Identification Code: Foreign Stock Common Stock Depositary Receipt (11)"
  end
  if value == "12" then
    return "Security Type Etc Identification Code: Foreign Stock New Common Stock (12)"
  end
  if value == "13" then
    return "Security Type Etc Identification Code: Foreign Stock Preffered Stock (13)"
  end
  if value == "17" then
    return "Security Type Etc Identification Code: Foreign Stockwarrant (17)"
  end
  if value == "21" then
    return "Security Type Etc Identification Code: Domestic Government Bond Interestbearing Treasury Notes (21)"
  end
  if value == "22" then
    return "Security Type Etc Identification Code: Domestic Government Bond Discount Treasury Notes (22)"
  end
  if value == "23" then
    return "Security Type Etc Identification Code: Domestic Government Bond Shortterm Discount Treasury Notes (23)"
  end
  if value == "24" then
    return "Security Type Etc Identification Code: Domestic Government Bond Floating Rate Treasury Notes (24)"
  end
  if value == "25" then
    return "Security Type Etc Identification Code: Domestic Government Bond Shortterm Government Securities (25)"
  end
  if value == "26" then
    return "Security Type Etc Identification Code: Domestic Government Bond Stripped Principal For Interest Bearing Govt Bd (26)"
  end
  if value == "27" then
    return "Security Type Etc Identification Code: Domestic Government Bond Stripped Coupon For Interest Bearing Govt Bd (27)"
  end
  if value == "31" then
    return "Security Type Etc Identification Code: Domestic Public And Corporate Bond Issued Domestically Local Government Bond (31)"
  end
  if value == "32" then
    return "Security Type Etc Identification Code: Domestic Public And Corporate Bond Issued Domestically Government Guarantee Bond (32)"
  end
  if value == "33" then
    return "Security Type Etc Identification Code: Domestic Public And Corporate Bond Issued Domestically Special Bond Broadcasting Bond Etc (33)"
  end
  if value == "34" then
    return "Security Type Etc Identification Code: Domestic Public And Corporate Bond Issued Domestically Interestbearing Bank Debenture (34)"
  end
  if value == "35" then
    return "Security Type Etc Identification Code: Domestic Public And Corporate Bond Issued Domestically Discount Bank Debenture (35)"
  end
  if value == "36" then
    return "Security Type Etc Identification Code: Domestic Public And Corporate Bond Issued Domestically Corporate Bond (36)"
  end
  if value == "39" then
    return "Security Type Etc Identification Code: Domestic Public And Corporate Bond Issued Domestically Private Placement Local Government Bond (39)"
  end
  if value == "3A" then
    return "Security Type Etc Identification Code: Domestic Public And Corporate Bond Issued Domestically Not Public Offering Bond (3A)"
  end
  if value == "3F" then
    return "Security Type Etc Identification Code: Subscription Warrant Security Jasdec Transfer (3F)"
  end
  if value == "51" then
    return "Security Type Etc Identification Code: Domestic Cb Issued Domestically Japanese Yen Cb (51)"
  end
  if value == "52" then
    return "Security Type Etc Identification Code: Domestic Cb Issued Domestically Foreigncurrency Cb (52)"
  end
  if value == "53" then
    return "Security Type Etc Identification Code: Domestic Cb Issued Overseas Japanese Yen Cb (53)"
  end
  if value == "54" then
    return "Security Type Etc Identification Code: Domestic Cb Issued Overseas Foreigncurrency Cb (54)"
  end
  if value == "55" then
    return "Security Type Etc Identification Code: Foreign Cb Issued Domestically Japanese Yen Cb (55)"
  end
  if value == "56" then
    return "Security Type Etc Identification Code: Foreign Cb Issued Domestically Foreigncurrency Cb (56)"
  end
  if value == "62" then
    return "Security Type Etc Identification Code: Domestic Bond With Warrant Issued Domestically Foreigncurrency Bond With Warrant Detachable (62)"
  end
  if value == "63" then
    return "Security Type Etc Identification Code: Domestic Bond With Warrant Issued Domestically Japanese Yen Bond With Warrant Nondetachable (63)"
  end
  if value == "64" then
    return "Security Type Etc Identification Code: Domestic Bond With Warrant Issued Overseas Japanese Yen Bond With Warrant Nondetachable (64)"
  end
  if value == "65" then
    return "Security Type Etc Identification Code: Domestic Bond With Warrant Issued Overseas Foreigncurrency Bond With Warrant Nondetachable (65)"
  end
  if value == "66" then
    return "Security Type Etc Identification Code: Foreign Bond With Warrant Issued Domestically Japanese Yen Bond With Warrant Nondetachable (66)"
  end
  if value == "67" then
    return "Security Type Etc Identification Code: Foreign Bond With Warrant Issued Domestically Foreigncurrency Bond With Warrant Nondetachable (67)"
  end
  if value == "71" then
    return "Security Type Etc Identification Code: Domestic Subscription Warrant Security Issued Domestically (71)"
  end
  if value == "72" then
    return "Security Type Etc Identification Code: Domestic Subscription Warrant Security Issued Overseas (72)"
  end
  if value == "73" then
    return "Security Type Etc Identification Code: Foreign Subscription Warrant Security Issued Domestically (73)"
  end
  if value == "81" then
    return "Security Type Etc Identification Code: Foreign Bond Issued Domestically Japanese Yen Foreign Bond (81)"
  end
  if value == "82" then
    return "Security Type Etc Identification Code: Foreign Bond Issued Domestically Japanese Yen Foreign Bond Special (82)"
  end
  if value == "83" then
    return "Security Type Etc Identification Code: Foreign Bond Issued Domestically Foreigncurrency Foreign Bond (83)"
  end
  if value == "84" then
    return "Security Type Etc Identification Code: Foreign Bond Issued Domestically Dualcurrency Foreign Bond (84)"
  end
  if value == "85" then
    return "Security Type Etc Identification Code: Foreign Bond Issued Domesticallynot Public Offering Bond (85)"
  end
  if value == "91" then
    return "Security Type Etc Identification Code: Domestic Exchangeable Bond Issued Domestically Japanese Yen Exchangeable Bond (91)"
  end
  if value == "92" then
    return "Security Type Etc Identification Code: Domestic Exchangeable Bond Issued Domestically Foreigncurrency Yen Exchangeable Bond (92)"
  end
  if value == "93" then
    return "Security Type Etc Identification Code: Domestic Exchangeable Bond Issued Overseas Japanese Yen Exchangeable Bond (93)"
  end
  if value == "94" then
    return "Security Type Etc Identification Code: Domestic Exchangeable Bond Issued Overseas Foreigncurrency Yen Exchangeable Bond (94)"
  end
  if value == "95" then
    return "Security Type Etc Identification Code: Foreign Exchangeable Bond Issued Domestically Japanese Yen Exchangeable Bond (95)"
  end
  if value == "96" then
    return "Security Type Etc Identification Code: Foreign Exchangeable Bond Issued Domestically Foreigncurrency Yen Exchangeable Bond (96)"
  end
  if value == "A1" then
    return "Security Type Etc Identification Code: Futures Transaction Bonds (A1)"
  end
  if value == "A2" then
    return "Security Type Etc Identification Code: Futures Transaction Stock Index (A2)"
  end
  if value == "A6" then
    return "Security Type Etc Identification Code: Option Transaction Bond (A6)"
  end
  if value == "A7" then
    return "Security Type Etc Identification Code: Option Transaction Bond Futures (A7)"
  end
  if value == "A8" then
    return "Security Type Etc Identification Code: Option Transaction Stock Index (A8)"
  end
  if value == "A9" then
    return "Security Type Etc Identification Code: Option Transaction Stock Index Futures (A9)"
  end
  if value == "AA" then
    return "Security Type Etc Identification Code: Option Transaction Individual (AA)"
  end
  if value == "B1" then
    return "Security Type Etc Identification Code: Domestic Beneficiary Certificate Of Investment Trust (B1)"
  end
  if value == "B2" then
    return "Security Type Etc Identification Code: Domestic Investment Certificate (B2)"
  end
  if value == "B3" then
    return "Security Type Etc Identification Code: Foreign Beneficiary Certificate Of Investment Trust (B3)"
  end
  if value == "B4" then
    return "Security Type Etc Identification Code: Foreign Investment Certificate (B4)"
  end
  if value == "B5" then
    return "Security Type Etc Identification Code: Domestic Beneficiary Certificate Of Investment Trust Jasdec Transfer (B5)"
  end
  if value == "BA" then
    return "Security Type Etc Identification Code: Paperless Cp (BA)"
  end
  if value == "BB" then
    return "Security Type Etc Identification Code: Covered Warrant (BB)"
  end
  if value == "C1" then
    return "Security Type Etc Identification Code: Domestic Fx Commodity Exchage (C1)"
  end

  return "Security Type Etc Identification Code: Unknown("..value..")"
end

-- Dissect: Security Type Etc Identification Code
jpx_tseequities_issuebasicinformation_flex_v19_5.security_type_etc_identification_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.security_type_etc_identification_code.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.security_type_etc_identification_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.security_type_etc_identification_code, range, value, display)

  return offset + length, value
end

-- Separation Between Service Header And Data Section
jpx_tseequities_issuebasicinformation_flex_v19_5.separation_between_service_header_and_data_section = {}

-- Size: Separation Between Service Header And Data Section
jpx_tseequities_issuebasicinformation_flex_v19_5.separation_between_service_header_and_data_section.size = 1

-- Display: Separation Between Service Header And Data Section
jpx_tseequities_issuebasicinformation_flex_v19_5.separation_between_service_header_and_data_section.display = function(value)
  return "Separation Between Service Header And Data Section: "..value
end

-- Dissect: Separation Between Service Header And Data Section
jpx_tseequities_issuebasicinformation_flex_v19_5.separation_between_service_header_and_data_section.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.separation_between_service_header_and_data_section.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.separation_between_service_header_and_data_section.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.separation_between_service_header_and_data_section, range, value, display)

  return offset + length, value
end

-- Separation Of Tag
jpx_tseequities_issuebasicinformation_flex_v19_5.separation_of_tag = {}

-- Size: Separation Of Tag
jpx_tseequities_issuebasicinformation_flex_v19_5.separation_of_tag.size = 1

-- Display: Separation Of Tag
jpx_tseequities_issuebasicinformation_flex_v19_5.separation_of_tag.display = function(value)
  if value == 19 then
    return "Separation Of Tag: Separation Between Tag (19)"
  end
  if value == 17 then
    return "Separation Of Tag: End Of Message (17)"
  end

  return "Separation Of Tag: Unknown("..value..")"
end

-- Dissect: Separation Of Tag
jpx_tseequities_issuebasicinformation_flex_v19_5.separation_of_tag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.separation_of_tag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.separation_of_tag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.separation_of_tag, range, value, display)

  return offset + length, value
end

-- Sequence Number
jpx_tseequities_issuebasicinformation_flex_v19_5.sequence_number = {}

-- Size: Sequence Number
jpx_tseequities_issuebasicinformation_flex_v19_5.sequence_number.size = 8

-- Display: Sequence Number
jpx_tseequities_issuebasicinformation_flex_v19_5.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
jpx_tseequities_issuebasicinformation_flex_v19_5.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Serial No
jpx_tseequities_issuebasicinformation_flex_v19_5.serial_no = {}

-- Size: Serial No
jpx_tseequities_issuebasicinformation_flex_v19_5.serial_no.size = 6

-- Display: Serial No
jpx_tseequities_issuebasicinformation_flex_v19_5.serial_no.display = function(value)
  return "Serial No: "..value
end

-- Dissect: Serial No
jpx_tseequities_issuebasicinformation_flex_v19_5.serial_no.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.serial_no.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.serial_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.serial_no, range, value, display)

  return offset + length, value
end

-- Session Distinction
jpx_tseequities_issuebasicinformation_flex_v19_5.session_distinction = {}

-- Size: Session Distinction
jpx_tseequities_issuebasicinformation_flex_v19_5.session_distinction.size = 2

-- Display: Session Distinction
jpx_tseequities_issuebasicinformation_flex_v19_5.session_distinction.display = function(value)
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
jpx_tseequities_issuebasicinformation_flex_v19_5.session_distinction.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.session_distinction.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.session_distinction.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.session_distinction, range, value, display)

  return offset + length, value
end

-- Short Selling Price Restriction Applied Flag At The Regular Distribution
jpx_tseequities_issuebasicinformation_flex_v19_5.short_selling_price_restriction_applied_flag_at_the_regular_distribution = {}

-- Size: Short Selling Price Restriction Applied Flag At The Regular Distribution
jpx_tseequities_issuebasicinformation_flex_v19_5.short_selling_price_restriction_applied_flag_at_the_regular_distribution.size = 1

-- Display: Short Selling Price Restriction Applied Flag At The Regular Distribution
jpx_tseequities_issuebasicinformation_flex_v19_5.short_selling_price_restriction_applied_flag_at_the_regular_distribution.display = function(value)
  if value == "1" then
    return "Short Selling Price Restriction Applied Flag At The Regular Distribution: The Issue That Short Selling Regulation Is Applied (1)"
  end
  if value == " " then
    return "Short Selling Price Restriction Applied Flag At The Regular Distribution: Other Than The Above (<whitespace>)"
  end

  return "Short Selling Price Restriction Applied Flag At The Regular Distribution: Unknown("..value..")"
end

-- Dissect: Short Selling Price Restriction Applied Flag At The Regular Distribution
jpx_tseequities_issuebasicinformation_flex_v19_5.short_selling_price_restriction_applied_flag_at_the_regular_distribution.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.short_selling_price_restriction_applied_flag_at_the_regular_distribution.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.short_selling_price_restriction_applied_flag_at_the_regular_distribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.short_selling_price_restriction_applied_flag_at_the_regular_distribution, range, value, display)

  return offset + length, value
end

-- Side
jpx_tseequities_issuebasicinformation_flex_v19_5.side = {}

-- Size: Side
jpx_tseequities_issuebasicinformation_flex_v19_5.side.size = 1

-- Display: Side
jpx_tseequities_issuebasicinformation_flex_v19_5.side.display = function(value)
  if value == "1" then
    return "Side: Both Sell And Buy Orders Are Prohibited (1)"
  end
  if value == "2" then
    return "Side: Only Sell Order Is Prohibited (2)"
  end
  if value == "3" then
    return "Side: Only Buy Order Is Prohibited (3)"
  end
  if value == " " then
    return "Side: Other Than The Above (<whitespace>)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
jpx_tseequities_issuebasicinformation_flex_v19_5.side.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.side, range, value, display)

  return offset + length, value
end

-- Sign
jpx_tseequities_issuebasicinformation_flex_v19_5.sign = {}

-- Size: Sign
jpx_tseequities_issuebasicinformation_flex_v19_5.sign.size = 1

-- Display: Sign
jpx_tseequities_issuebasicinformation_flex_v19_5.sign.display = function(value)
  if value == "+" then
    return "Sign: Positive (+)"
  end
  if value == " " then
    return "Sign: No Sign (<whitespace>)"
  end

  return "Sign: Unknown("..value..")"
end

-- Dissect: Sign
jpx_tseequities_issuebasicinformation_flex_v19_5.sign.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.sign, range, value, display)

  return offset + length, value
end

-- Start End Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.start_end_flag = {}

-- Size: Start End Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.start_end_flag.size = 1

-- Display: Start End Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.start_end_flag.display = function(value)
  if value == "1" then
    return "Start End Flag: Start (1)"
  end
  if value == "2" then
    return "Start End Flag: End (2)"
  end
  if value == " " then
    return "Start End Flag: Not Applicable (<whitespace>)"
  end

  return "Start End Flag: Unknown("..value..")"
end

-- Dissect: Start End Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.start_end_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.start_end_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.start_end_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.start_end_flag, range, value, display)

  return offset + length, value
end

-- Start Of Message
jpx_tseequities_issuebasicinformation_flex_v19_5.start_of_message = {}

-- Size: Start Of Message
jpx_tseequities_issuebasicinformation_flex_v19_5.start_of_message.size = 1

-- Display: Start Of Message
jpx_tseequities_issuebasicinformation_flex_v19_5.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
jpx_tseequities_issuebasicinformation_flex_v19_5.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.start_of_message.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Statistics Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.statistics_medium_classification = {}

-- Size: Statistics Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.statistics_medium_classification.size = 2

-- Display: Statistics Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.statistics_medium_classification.display = function(value)
  if value == "00" then
    return "Statistics Medium Classification: Statistics Message (00)"
  end

  return "Statistics Medium Classification: Unknown("..value..")"
end

-- Dissect: Statistics Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.statistics_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.statistics_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.statistics_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.statistics_medium_classification, range, value, display)

  return offset + length, value
end

-- Stock Proper Name Code
jpx_tseequities_issuebasicinformation_flex_v19_5.stock_proper_name_code = {}

-- Size: Stock Proper Name Code
jpx_tseequities_issuebasicinformation_flex_v19_5.stock_proper_name_code.size = 4

-- Display: Stock Proper Name Code
jpx_tseequities_issuebasicinformation_flex_v19_5.stock_proper_name_code.display = function(value)
  return "Stock Proper Name Code: "..value
end

-- Dissect: Stock Proper Name Code
jpx_tseequities_issuebasicinformation_flex_v19_5.stock_proper_name_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.stock_proper_name_code.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.stock_proper_name_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.stock_proper_name_code, range, value, display)

  return offset + length, value
end

-- Stock Reserved Code
jpx_tseequities_issuebasicinformation_flex_v19_5.stock_reserved_code = {}

-- Size: Stock Reserved Code
jpx_tseequities_issuebasicinformation_flex_v19_5.stock_reserved_code.size = 1

-- Display: Stock Reserved Code
jpx_tseequities_issuebasicinformation_flex_v19_5.stock_reserved_code.display = function(value)
  return "Stock Reserved Code: "..value
end

-- Dissect: Stock Reserved Code
jpx_tseequities_issuebasicinformation_flex_v19_5.stock_reserved_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.stock_reserved_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.stock_reserved_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.stock_reserved_code, range, value, display)

  return offset + length, value
end

-- Stock Space
jpx_tseequities_issuebasicinformation_flex_v19_5.stock_space = {}

-- Size: Stock Space
jpx_tseequities_issuebasicinformation_flex_v19_5.stock_space.size = 7

-- Display: Stock Space
jpx_tseequities_issuebasicinformation_flex_v19_5.stock_space.display = function(value)
  return "Stock Space: "..value
end

-- Dissect: Stock Space
jpx_tseequities_issuebasicinformation_flex_v19_5.stock_space.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.stock_space.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.stock_space.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.stock_space, range, value, display)

  return offset + length, value
end

-- Tag ID
jpx_tseequities_issuebasicinformation_flex_v19_5.tag_id = {}

-- Size: Tag ID
jpx_tseequities_issuebasicinformation_flex_v19_5.tag_id.size = 2

-- Display: Tag ID
jpx_tseequities_issuebasicinformation_flex_v19_5.tag_id.display = function(value)
  if value == "II" then
    return "Tag ID: Issue Information Message (II)"
  end
  if value == "BP" then
    return "Tag ID: Base Price Information Message (BP)"
  end
  if value == "MG" then
    return "Tag ID: Multicast Group Number Information Message (MG)"
  end
  if value == "LC" then
    return "Tag ID: Control Message (LC)"
  end

  return "Tag ID: Unknown("..value..")"
end

-- Dissect: Tag ID
jpx_tseequities_issuebasicinformation_flex_v19_5.tag_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.tag_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.tag_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.tag_id, range, value, display)

  return offset + length, value
end

-- Test Mode Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.test_mode_flag = {}

-- Size: Test Mode Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.test_mode_flag.size = 1

-- Display: Test Mode Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.test_mode_flag.display = function(value)
  if value == "1" then
    return "Test Mode Flag: Real Operation (1)"
  end
  if value == "2" then
    return "Test Mode Flag: Test Operation (2)"
  end

  return "Test Mode Flag: Unknown("..value..")"
end

-- Dissect: Test Mode Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.test_mode_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.test_mode_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.test_mode_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.test_mode_flag, range, value, display)

  return offset + length, value
end

-- Time
jpx_tseequities_issuebasicinformation_flex_v19_5.time = {}

-- Size: Time
jpx_tseequities_issuebasicinformation_flex_v19_5.time.size = 6

-- Display: Time
jpx_tseequities_issuebasicinformation_flex_v19_5.time.display = function(value)
  if #value < 4 then
    return "Time: "..value
  end

  local hour = value:sub(1, 2)
  local minute = value:sub(3, 4)

  if minute:match("^%s*$") then
    return "Time: "..hour
  end

  return "Time: "..hour..":"..minute
end

-- Dissect: Time
jpx_tseequities_issuebasicinformation_flex_v19_5.time.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.time, range, value, display)

  return offset + length, value
end

-- Time Symbol
jpx_tseequities_issuebasicinformation_flex_v19_5.time_symbol = {}

-- Size: Time Symbol
jpx_tseequities_issuebasicinformation_flex_v19_5.time_symbol.size = 4

-- Display: Time Symbol
jpx_tseequities_issuebasicinformation_flex_v19_5.time_symbol.display = function(value)
  return "Time Symbol: "..value
end

-- Dissect: Time Symbol
jpx_tseequities_issuebasicinformation_flex_v19_5.time_symbol.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.time_symbol.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.time_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.time_symbol, range, value, display)

  return offset + length, value
end

-- Unit Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.unit_flag = {}

-- Size: Unit Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.unit_flag.size = 1

-- Display: Unit Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.unit_flag.display = function(value)
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
jpx_tseequities_issuebasicinformation_flex_v19_5.unit_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.unit_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.unit_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.unit_flag, range, value, display)

  return offset + length, value
end

-- Unit Of Trading
jpx_tseequities_issuebasicinformation_flex_v19_5.unit_of_trading = {}

-- Size: Unit Of Trading
jpx_tseequities_issuebasicinformation_flex_v19_5.unit_of_trading.size = 14

-- Display: Unit Of Trading
jpx_tseequities_issuebasicinformation_flex_v19_5.unit_of_trading.display = function(value)
  return "Unit Of Trading: "..value
end

-- Dissect: Unit Of Trading
jpx_tseequities_issuebasicinformation_flex_v19_5.unit_of_trading.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.unit_of_trading.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.unit_of_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.unit_of_trading, range, value, display)

  return offset + length, value
end

-- Whenissued Transaction Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.whenissued_transaction_flag = {}

-- Size: Whenissued Transaction Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.whenissued_transaction_flag.size = 1

-- Display: Whenissued Transaction Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.whenissued_transaction_flag.display = function(value)
  if value == "1" then
    return "Whenissued Transaction Flag: Whenissued Transaction Issue (1)"
  end
  if value == " " then
    return "Whenissued Transaction Flag: Other Than The Above (<whitespace>)"
  end

  return "Whenissued Transaction Flag: Unknown("..value..")"
end

-- Dissect: Whenissued Transaction Flag
jpx_tseequities_issuebasicinformation_flex_v19_5.whenissued_transaction_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_issuebasicinformation_flex_v19_5.whenissued_transaction_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_issuebasicinformation_flex_v19_5.whenissued_transaction_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.whenissued_transaction_flag, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Jpx TseEquities IssueBasicInformation Flex 19.5
-----------------------------------------------------------------------

-- Control Message
jpx_tseequities_issuebasicinformation_flex_v19_5.control_message = {}

-- Size: Control Message
jpx_tseequities_issuebasicinformation_flex_v19_5.control_message.size =
  jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_2.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.test_mode_flag.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.start_end_flag.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.time.size

-- Display: Control Message
jpx_tseequities_issuebasicinformation_flex_v19_5.control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message
jpx_tseequities_issuebasicinformation_flex_v19_5.control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Test Mode Flag: C
  index, test_mode_flag = jpx_tseequities_issuebasicinformation_flex_v19_5.test_mode_flag.dissect(buffer, index, packet, parent)

  -- Start End Flag: C
  index, start_end_flag = jpx_tseequities_issuebasicinformation_flex_v19_5.start_end_flag.dissect(buffer, index, packet, parent)

  -- Time: C
  index, time = jpx_tseequities_issuebasicinformation_flex_v19_5.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Control Message
jpx_tseequities_issuebasicinformation_flex_v19_5.control_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.control_message, buffer(offset, 0))
    local index = jpx_tseequities_issuebasicinformation_flex_v19_5.control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_issuebasicinformation_flex_v19_5.control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_issuebasicinformation_flex_v19_5.control_message.fields(buffer, offset, packet, parent)
  end
end

-- Multicast Group Number Information Message
jpx_tseequities_issuebasicinformation_flex_v19_5.multicast_group_number_information_message = {}

-- Size: Multicast Group Number Information Message
jpx_tseequities_issuebasicinformation_flex_v19_5.multicast_group_number_information_message.size =
  jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_2.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.applicable_business_day.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.issue_multicast_group_number.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_1.size

-- Display: Multicast Group Number Information Message
jpx_tseequities_issuebasicinformation_flex_v19_5.multicast_group_number_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Multicast Group Number Information Message
jpx_tseequities_issuebasicinformation_flex_v19_5.multicast_group_number_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Applicable Business Day: C
  index, applicable_business_day = jpx_tseequities_issuebasicinformation_flex_v19_5.applicable_business_day.dissect(buffer, index, packet, parent)

  -- Issue Multicast Group Number: C
  index, issue_multicast_group_number = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_multicast_group_number.dissect(buffer, index, packet, parent)

  -- Reserved 1: C
  index, reserved_1 = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Multicast Group Number Information Message
jpx_tseequities_issuebasicinformation_flex_v19_5.multicast_group_number_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.multicast_group_number_information_message, buffer(offset, 0))
    local index = jpx_tseequities_issuebasicinformation_flex_v19_5.multicast_group_number_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_issuebasicinformation_flex_v19_5.multicast_group_number_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_issuebasicinformation_flex_v19_5.multicast_group_number_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Limit Price Minimum
jpx_tseequities_issuebasicinformation_flex_v19_5.limit_price_minimum = {}

-- Size: Limit Price Minimum
jpx_tseequities_issuebasicinformation_flex_v19_5.limit_price_minimum.size =
  jpx_tseequities_issuebasicinformation_flex_v19_5.unit_flag.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.price.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.sign.size

-- Display: Limit Price Minimum
jpx_tseequities_issuebasicinformation_flex_v19_5.limit_price_minimum.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Price Minimum
jpx_tseequities_issuebasicinformation_flex_v19_5.limit_price_minimum.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Flag: C
  index, unit_flag = jpx_tseequities_issuebasicinformation_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Price: C
  index, price = jpx_tseequities_issuebasicinformation_flex_v19_5.price.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_issuebasicinformation_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Price Minimum
jpx_tseequities_issuebasicinformation_flex_v19_5.limit_price_minimum.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.limit_price_minimum, buffer(offset, 0))
    local index = jpx_tseequities_issuebasicinformation_flex_v19_5.limit_price_minimum.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_issuebasicinformation_flex_v19_5.limit_price_minimum.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_issuebasicinformation_flex_v19_5.limit_price_minimum.fields(buffer, offset, packet, parent)
  end
end

-- Limit Price Maximum
jpx_tseequities_issuebasicinformation_flex_v19_5.limit_price_maximum = {}

-- Size: Limit Price Maximum
jpx_tseequities_issuebasicinformation_flex_v19_5.limit_price_maximum.size =
  jpx_tseequities_issuebasicinformation_flex_v19_5.unit_flag.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.price.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.sign.size

-- Display: Limit Price Maximum
jpx_tseequities_issuebasicinformation_flex_v19_5.limit_price_maximum.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Price Maximum
jpx_tseequities_issuebasicinformation_flex_v19_5.limit_price_maximum.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Flag: C
  index, unit_flag = jpx_tseequities_issuebasicinformation_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Price: C
  index, price = jpx_tseequities_issuebasicinformation_flex_v19_5.price.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_issuebasicinformation_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Price Maximum
jpx_tseequities_issuebasicinformation_flex_v19_5.limit_price_maximum.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.limit_price_maximum, buffer(offset, 0))
    local index = jpx_tseequities_issuebasicinformation_flex_v19_5.limit_price_maximum.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_issuebasicinformation_flex_v19_5.limit_price_maximum.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_issuebasicinformation_flex_v19_5.limit_price_maximum.fields(buffer, offset, packet, parent)
  end
end

-- Base Price
jpx_tseequities_issuebasicinformation_flex_v19_5.base_price = {}

-- Size: Base Price
jpx_tseequities_issuebasicinformation_flex_v19_5.base_price.size =
  jpx_tseequities_issuebasicinformation_flex_v19_5.unit_flag.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.price.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.sign.size

-- Display: Base Price
jpx_tseequities_issuebasicinformation_flex_v19_5.base_price.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Base Price
jpx_tseequities_issuebasicinformation_flex_v19_5.base_price.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Flag: C
  index, unit_flag = jpx_tseequities_issuebasicinformation_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Price: C
  index, price = jpx_tseequities_issuebasicinformation_flex_v19_5.price.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_issuebasicinformation_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Base Price
jpx_tseequities_issuebasicinformation_flex_v19_5.base_price.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.base_price, buffer(offset, 0))
    local index = jpx_tseequities_issuebasicinformation_flex_v19_5.base_price.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_issuebasicinformation_flex_v19_5.base_price.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_issuebasicinformation_flex_v19_5.base_price.fields(buffer, offset, packet, parent)
  end
end

-- Base Price Information Message
jpx_tseequities_issuebasicinformation_flex_v19_5.base_price_information_message = {}

-- Size: Base Price Information Message
jpx_tseequities_issuebasicinformation_flex_v19_5.base_price_information_message.size =
  jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_2.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.based_business_day.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.base_price.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.limit_price_maximum.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.limit_price_minimum.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.base_price_price_of_the_middle_of_the_book.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.number_of_tick_size_table.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_1.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_4.size

-- Display: Base Price Information Message
jpx_tseequities_issuebasicinformation_flex_v19_5.base_price_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Base Price Information Message
jpx_tseequities_issuebasicinformation_flex_v19_5.base_price_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Based Business Day: C
  index, based_business_day = jpx_tseequities_issuebasicinformation_flex_v19_5.based_business_day.dissect(buffer, index, packet, parent)

  -- Base Price: Struct of 3 fields
  index, base_price = jpx_tseequities_issuebasicinformation_flex_v19_5.base_price.dissect(buffer, index, packet, parent)

  -- Limit Price Maximum: Struct of 3 fields
  index, limit_price_maximum = jpx_tseequities_issuebasicinformation_flex_v19_5.limit_price_maximum.dissect(buffer, index, packet, parent)

  -- Limit Price Minimum: Struct of 3 fields
  index, limit_price_minimum = jpx_tseequities_issuebasicinformation_flex_v19_5.limit_price_minimum.dissect(buffer, index, packet, parent)

  -- Base Price Price Of The Middle Of The Book: C
  index, base_price_price_of_the_middle_of_the_book = jpx_tseequities_issuebasicinformation_flex_v19_5.base_price_price_of_the_middle_of_the_book.dissect(buffer, index, packet, parent)

  -- Number Of Tick Size Table: C
  index, number_of_tick_size_table = jpx_tseequities_issuebasicinformation_flex_v19_5.number_of_tick_size_table.dissect(buffer, index, packet, parent)

  -- Reserved 1: C
  index, reserved_1 = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 4: C
  index, reserved_4 = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Base Price Information Message
jpx_tseequities_issuebasicinformation_flex_v19_5.base_price_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.base_price_information_message, buffer(offset, 0))
    local index = jpx_tseequities_issuebasicinformation_flex_v19_5.base_price_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_issuebasicinformation_flex_v19_5.base_price_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_issuebasicinformation_flex_v19_5.base_price_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Selling Prohibition
jpx_tseequities_issuebasicinformation_flex_v19_5.short_selling_prohibition = {}

-- Size: Short Selling Prohibition
jpx_tseequities_issuebasicinformation_flex_v19_5.short_selling_prohibition.size =
  jpx_tseequities_issuebasicinformation_flex_v19_5.proprietary_brokerage.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_1.size

-- Display: Short Selling Prohibition
jpx_tseequities_issuebasicinformation_flex_v19_5.short_selling_prohibition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Selling Prohibition
jpx_tseequities_issuebasicinformation_flex_v19_5.short_selling_prohibition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Proprietary Brokerage: C
  index, proprietary_brokerage = jpx_tseequities_issuebasicinformation_flex_v19_5.proprietary_brokerage.dissect(buffer, index, packet, parent)

  -- Reserved 1: C
  index, reserved_1 = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Selling Prohibition
jpx_tseequities_issuebasicinformation_flex_v19_5.short_selling_prohibition.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.short_selling_prohibition, buffer(offset, 0))
    local index = jpx_tseequities_issuebasicinformation_flex_v19_5.short_selling_prohibition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_issuebasicinformation_flex_v19_5.short_selling_prohibition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_issuebasicinformation_flex_v19_5.short_selling_prohibition.fields(buffer, offset, packet, parent)
  end
end

-- Margin Transactions Prohibition
jpx_tseequities_issuebasicinformation_flex_v19_5.margin_transactions_prohibition = {}

-- Size: Margin Transactions Prohibition
jpx_tseequities_issuebasicinformation_flex_v19_5.margin_transactions_prohibition.size =
  jpx_tseequities_issuebasicinformation_flex_v19_5.side.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.proprietary_brokerage.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_1.size

-- Display: Margin Transactions Prohibition
jpx_tseequities_issuebasicinformation_flex_v19_5.margin_transactions_prohibition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Margin Transactions Prohibition
jpx_tseequities_issuebasicinformation_flex_v19_5.margin_transactions_prohibition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: C
  index, side = jpx_tseequities_issuebasicinformation_flex_v19_5.side.dissect(buffer, index, packet, parent)

  -- Proprietary Brokerage: C
  index, proprietary_brokerage = jpx_tseequities_issuebasicinformation_flex_v19_5.proprietary_brokerage.dissect(buffer, index, packet, parent)

  -- Reserved 1: C
  index, reserved_1 = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Margin Transactions Prohibition
jpx_tseequities_issuebasicinformation_flex_v19_5.margin_transactions_prohibition.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.margin_transactions_prohibition, buffer(offset, 0))
    local index = jpx_tseequities_issuebasicinformation_flex_v19_5.margin_transactions_prohibition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_issuebasicinformation_flex_v19_5.margin_transactions_prohibition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_issuebasicinformation_flex_v19_5.margin_transactions_prohibition.fields(buffer, offset, packet, parent)
  end
end

-- New Orders Prohibition
jpx_tseequities_issuebasicinformation_flex_v19_5.new_orders_prohibition = {}

-- Size: New Orders Prohibition
jpx_tseequities_issuebasicinformation_flex_v19_5.new_orders_prohibition.size =
  jpx_tseequities_issuebasicinformation_flex_v19_5.market_limit_orders.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.side.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.proprietary_brokerage.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_1.size

-- Display: New Orders Prohibition
jpx_tseequities_issuebasicinformation_flex_v19_5.new_orders_prohibition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Orders Prohibition
jpx_tseequities_issuebasicinformation_flex_v19_5.new_orders_prohibition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Limit Orders: C
  index, market_limit_orders = jpx_tseequities_issuebasicinformation_flex_v19_5.market_limit_orders.dissect(buffer, index, packet, parent)

  -- Side: C
  index, side = jpx_tseequities_issuebasicinformation_flex_v19_5.side.dissect(buffer, index, packet, parent)

  -- Proprietary Brokerage: C
  index, proprietary_brokerage = jpx_tseequities_issuebasicinformation_flex_v19_5.proprietary_brokerage.dissect(buffer, index, packet, parent)

  -- Reserved 1: C
  index, reserved_1 = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Orders Prohibition
jpx_tseequities_issuebasicinformation_flex_v19_5.new_orders_prohibition.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.new_orders_prohibition, buffer(offset, 0))
    local index = jpx_tseequities_issuebasicinformation_flex_v19_5.new_orders_prohibition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_issuebasicinformation_flex_v19_5.new_orders_prohibition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_issuebasicinformation_flex_v19_5.new_orders_prohibition.fields(buffer, offset, packet, parent)
  end
end

-- Order Prohibition Status At The Regular Distribution
jpx_tseequities_issuebasicinformation_flex_v19_5.order_prohibition_status_at_the_regular_distribution = {}

-- Size: Order Prohibition Status At The Regular Distribution
jpx_tseequities_issuebasicinformation_flex_v19_5.order_prohibition_status_at_the_regular_distribution.size =
  jpx_tseequities_issuebasicinformation_flex_v19_5.new_orders_prohibition.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.margin_transactions_prohibition.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.short_selling_prohibition.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.all_orders_prohibition.size

-- Display: Order Prohibition Status At The Regular Distribution
jpx_tseequities_issuebasicinformation_flex_v19_5.order_prohibition_status_at_the_regular_distribution.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Prohibition Status At The Regular Distribution
jpx_tseequities_issuebasicinformation_flex_v19_5.order_prohibition_status_at_the_regular_distribution.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Orders Prohibition: Struct of 4 fields
  index, new_orders_prohibition = jpx_tseequities_issuebasicinformation_flex_v19_5.new_orders_prohibition.dissect(buffer, index, packet, parent)

  -- Margin Transactions Prohibition: Struct of 3 fields
  index, margin_transactions_prohibition = jpx_tseequities_issuebasicinformation_flex_v19_5.margin_transactions_prohibition.dissect(buffer, index, packet, parent)

  -- Short Selling Prohibition: Struct of 2 fields
  index, short_selling_prohibition = jpx_tseequities_issuebasicinformation_flex_v19_5.short_selling_prohibition.dissect(buffer, index, packet, parent)

  -- All Orders Prohibition: C
  index, all_orders_prohibition = jpx_tseequities_issuebasicinformation_flex_v19_5.all_orders_prohibition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Prohibition Status At The Regular Distribution
jpx_tseequities_issuebasicinformation_flex_v19_5.order_prohibition_status_at_the_regular_distribution.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.order_prohibition_status_at_the_regular_distribution, buffer(offset, 0))
    local index = jpx_tseequities_issuebasicinformation_flex_v19_5.order_prohibition_status_at_the_regular_distribution.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_issuebasicinformation_flex_v19_5.order_prohibition_status_at_the_regular_distribution.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_issuebasicinformation_flex_v19_5.order_prohibition_status_at_the_regular_distribution.fields(buffer, offset, packet, parent)
  end
end

-- Index Constituent Issue
jpx_tseequities_issuebasicinformation_flex_v19_5.index_constituent_issue = {}

-- Size: Index Constituent Issue
jpx_tseequities_issuebasicinformation_flex_v19_5.index_constituent_issue.size =
  jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_1.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_2.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_3.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_4.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_5.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_6.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_7.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_8_to_10.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_11.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_12_to_15.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_16.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_17_to_19.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_20.size

-- Display: Index Constituent Issue
jpx_tseequities_issuebasicinformation_flex_v19_5.index_constituent_issue.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Constituent Issue
jpx_tseequities_issuebasicinformation_flex_v19_5.index_constituent_issue.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Arbitrary 1: C
  index, arbitrary_1 = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_1.dissect(buffer, index, packet, parent)

  -- Arbitrary 2: C
  index, arbitrary_2 = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_2.dissect(buffer, index, packet, parent)

  -- Arbitrary 3: C
  index, arbitrary_3 = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_3.dissect(buffer, index, packet, parent)

  -- Arbitrary 4: C
  index, arbitrary_4 = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_4.dissect(buffer, index, packet, parent)

  -- Arbitrary 5: C
  index, arbitrary_5 = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_5.dissect(buffer, index, packet, parent)

  -- Arbitrary 6: C
  index, arbitrary_6 = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_6.dissect(buffer, index, packet, parent)

  -- Arbitrary 7: C
  index, arbitrary_7 = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_7.dissect(buffer, index, packet, parent)

  -- Arbitrary 8 To 10: C
  index, arbitrary_8_to_10 = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_8_to_10.dissect(buffer, index, packet, parent)

  -- Arbitrary 11: C
  index, arbitrary_11 = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_11.dissect(buffer, index, packet, parent)

  -- Arbitrary 12 To 15: C
  index, arbitrary_12_to_15 = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_12_to_15.dissect(buffer, index, packet, parent)

  -- Arbitrary 16: C
  index, arbitrary_16 = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_16.dissect(buffer, index, packet, parent)

  -- Arbitrary 17 To 19: C
  index, arbitrary_17_to_19 = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_17_to_19.dissect(buffer, index, packet, parent)

  -- Arbitrary 20: C
  index, arbitrary_20 = jpx_tseequities_issuebasicinformation_flex_v19_5.arbitrary_20.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Constituent Issue
jpx_tseequities_issuebasicinformation_flex_v19_5.index_constituent_issue.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.index_constituent_issue, buffer(offset, 0))
    local index = jpx_tseequities_issuebasicinformation_flex_v19_5.index_constituent_issue.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_issuebasicinformation_flex_v19_5.index_constituent_issue.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_issuebasicinformation_flex_v19_5.index_constituent_issue.fields(buffer, offset, packet, parent)
  end
end

-- Issue Information Message
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_information_message = {}

-- Size: Issue Information Message
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_information_message.size =
  jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_2.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.serial_no.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.applicable_business_day.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_1.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.issue_name.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.security_type_etc_identification_code.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.isin_flag.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.new_security_code.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.industry_code.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.new_listing_flag.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.whenissued_transaction_flag.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.short_selling_price_restriction_applied_flag_at_the_regular_distribution.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.loan_margin_flag.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.exdividend_exright_flag.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.securities_to_be_delisted_under_supervision_classification.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_5.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.unit_of_trading.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.index_constituent_issue.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.order_prohibition_status_at_the_regular_distribution.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_11.size

-- Display: Issue Information Message
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Information Message
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Serial No: C
  index, serial_no = jpx_tseequities_issuebasicinformation_flex_v19_5.serial_no.dissect(buffer, index, packet, parent)

  -- Applicable Business Day: C
  index, applicable_business_day = jpx_tseequities_issuebasicinformation_flex_v19_5.applicable_business_day.dissect(buffer, index, packet, parent)

  -- Reserved 1: C
  index, reserved_1 = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_1.dissect(buffer, index, packet, parent)

  -- Issue Name: C
  index, issue_name = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_name.dissect(buffer, index, packet, parent)

  -- Security Type Etc Identification Code: C
  index, security_type_etc_identification_code = jpx_tseequities_issuebasicinformation_flex_v19_5.security_type_etc_identification_code.dissect(buffer, index, packet, parent)

  -- Isin Flag: C
  index, isin_flag = jpx_tseequities_issuebasicinformation_flex_v19_5.isin_flag.dissect(buffer, index, packet, parent)

  -- New Security Code: C
  index, new_security_code = jpx_tseequities_issuebasicinformation_flex_v19_5.new_security_code.dissect(buffer, index, packet, parent)

  -- Industry Code: C
  index, industry_code = jpx_tseequities_issuebasicinformation_flex_v19_5.industry_code.dissect(buffer, index, packet, parent)

  -- New Listing Flag: C
  index, new_listing_flag = jpx_tseequities_issuebasicinformation_flex_v19_5.new_listing_flag.dissect(buffer, index, packet, parent)

  -- Whenissued Transaction Flag: C
  index, whenissued_transaction_flag = jpx_tseequities_issuebasicinformation_flex_v19_5.whenissued_transaction_flag.dissect(buffer, index, packet, parent)

  -- Short Selling Price Restriction Applied Flag At The Regular Distribution: C
  index, short_selling_price_restriction_applied_flag_at_the_regular_distribution = jpx_tseequities_issuebasicinformation_flex_v19_5.short_selling_price_restriction_applied_flag_at_the_regular_distribution.dissect(buffer, index, packet, parent)

  -- Loan Margin Flag: C
  index, loan_margin_flag = jpx_tseequities_issuebasicinformation_flex_v19_5.loan_margin_flag.dissect(buffer, index, packet, parent)

  -- Exdividend Exright Flag: C
  index, exdividend_exright_flag = jpx_tseequities_issuebasicinformation_flex_v19_5.exdividend_exright_flag.dissect(buffer, index, packet, parent)

  -- Securities To Be Delisted Under Supervision Classification: C
  index, securities_to_be_delisted_under_supervision_classification = jpx_tseequities_issuebasicinformation_flex_v19_5.securities_to_be_delisted_under_supervision_classification.dissect(buffer, index, packet, parent)

  -- Reserved 5: C
  index, reserved_5 = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_5.dissect(buffer, index, packet, parent)

  -- Unit Of Trading: C
  index, unit_of_trading = jpx_tseequities_issuebasicinformation_flex_v19_5.unit_of_trading.dissect(buffer, index, packet, parent)

  -- Index Constituent Issue: Struct of 13 fields
  index, index_constituent_issue = jpx_tseequities_issuebasicinformation_flex_v19_5.index_constituent_issue.dissect(buffer, index, packet, parent)

  -- Order Prohibition Status At The Regular Distribution: Struct of 4 fields
  index, order_prohibition_status_at_the_regular_distribution = jpx_tseequities_issuebasicinformation_flex_v19_5.order_prohibition_status_at_the_regular_distribution.dissect(buffer, index, packet, parent)

  -- Reserved 11: C
  index, reserved_11 = jpx_tseequities_issuebasicinformation_flex_v19_5.reserved_11.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Information Message
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.issue_information_message, buffer(offset, 0))
    local index = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_issuebasicinformation_flex_v19_5.issue_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
jpx_tseequities_issuebasicinformation_flex_v19_5.payload = {}

-- Dissect: Payload
jpx_tseequities_issuebasicinformation_flex_v19_5.payload.dissect = function(buffer, offset, packet, parent, tag_id)
  -- Dissect Issue Information Message
  if tag_id == "II" then
    return jpx_tseequities_issuebasicinformation_flex_v19_5.issue_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Base Price Information Message
  if tag_id == "BP" then
    return jpx_tseequities_issuebasicinformation_flex_v19_5.base_price_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Multicast Group Number Information Message
  if tag_id == "MG" then
    return jpx_tseequities_issuebasicinformation_flex_v19_5.multicast_group_number_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Control Message
  if tag_id == "LC" then
    return jpx_tseequities_issuebasicinformation_flex_v19_5.control_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Tag Information
jpx_tseequities_issuebasicinformation_flex_v19_5.tag_information = {}

-- Calculate size of: Tag Information
jpx_tseequities_issuebasicinformation_flex_v19_5.tag_information.size = function(buffer, offset)
  local index = 0

  index = index + jpx_tseequities_issuebasicinformation_flex_v19_5.tag_id.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 2):string()
  index = index + jpx_tseequities_issuebasicinformation_flex_v19_5.payload.size(buffer, payload_offset, payload_type)

  index = index + jpx_tseequities_issuebasicinformation_flex_v19_5.separation_of_tag.size

  return index
end

-- Display: Tag Information
jpx_tseequities_issuebasicinformation_flex_v19_5.tag_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tag Information
jpx_tseequities_issuebasicinformation_flex_v19_5.tag_information.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tag ID: 2 Byte Ascii String Enum with 4 values
  index, tag_id = jpx_tseequities_issuebasicinformation_flex_v19_5.tag_id.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 4 branches
  index = jpx_tseequities_issuebasicinformation_flex_v19_5.payload.dissect(buffer, index, packet, parent, tag_id)

  -- Separation Of Tag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, separation_of_tag = jpx_tseequities_issuebasicinformation_flex_v19_5.separation_of_tag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tag Information
jpx_tseequities_issuebasicinformation_flex_v19_5.tag_information.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.tag_information, buffer(offset, 0))
    local index = jpx_tseequities_issuebasicinformation_flex_v19_5.tag_information.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_issuebasicinformation_flex_v19_5.tag_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_issuebasicinformation_flex_v19_5.tag_information.fields(buffer, offset, packet, parent)
  end
end

-- CB Issue Code
jpx_tseequities_issuebasicinformation_flex_v19_5.cb_issue_code = {}

-- Size: CB Issue Code
jpx_tseequities_issuebasicinformation_flex_v19_5.cb_issue_code.size =
  jpx_tseequities_issuebasicinformation_flex_v19_5.cb_space.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.cb_reserved_code.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.time_symbol.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.cb_proper_name_code.size

-- Display: CB Issue Code
jpx_tseequities_issuebasicinformation_flex_v19_5.cb_issue_code.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: CB Issue Code
jpx_tseequities_issuebasicinformation_flex_v19_5.cb_issue_code.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- CB Space: 3 Byte Ascii String
  index, cb_space = jpx_tseequities_issuebasicinformation_flex_v19_5.cb_space.dissect(buffer, index, packet, parent)

  -- CB Reserved Code: 1 Byte Ascii String Enum with 4 values
  index, cb_reserved_code = jpx_tseequities_issuebasicinformation_flex_v19_5.cb_reserved_code.dissect(buffer, index, packet, parent)

  -- Time Symbol: 4 Byte Ascii String
  index, time_symbol = jpx_tseequities_issuebasicinformation_flex_v19_5.time_symbol.dissect(buffer, index, packet, parent)

  -- CB Proper Name Code: 4 Byte Ascii String
  index, cb_proper_name_code = jpx_tseequities_issuebasicinformation_flex_v19_5.cb_proper_name_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: CB Issue Code
jpx_tseequities_issuebasicinformation_flex_v19_5.cb_issue_code.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.cb_issue_code, buffer(offset, 0))
    local index = jpx_tseequities_issuebasicinformation_flex_v19_5.cb_issue_code.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_issuebasicinformation_flex_v19_5.cb_issue_code.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_issuebasicinformation_flex_v19_5.cb_issue_code.fields(buffer, offset, packet, parent)
  end
end

-- Stock Issue Code
jpx_tseequities_issuebasicinformation_flex_v19_5.stock_issue_code = {}

-- Size: Stock Issue Code
jpx_tseequities_issuebasicinformation_flex_v19_5.stock_issue_code.size =
  jpx_tseequities_issuebasicinformation_flex_v19_5.stock_space.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.stock_proper_name_code.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.stock_reserved_code.size

-- Display: Stock Issue Code
jpx_tseequities_issuebasicinformation_flex_v19_5.stock_issue_code.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Issue Code
jpx_tseequities_issuebasicinformation_flex_v19_5.stock_issue_code.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Space: 7 Byte Ascii String
  index, stock_space = jpx_tseequities_issuebasicinformation_flex_v19_5.stock_space.dissect(buffer, index, packet, parent)

  -- Stock Proper Name Code: 4 Byte Ascii String
  index, stock_proper_name_code = jpx_tseequities_issuebasicinformation_flex_v19_5.stock_proper_name_code.dissect(buffer, index, packet, parent)

  -- Stock Reserved Code: 1 Byte Ascii String
  index, stock_reserved_code = jpx_tseequities_issuebasicinformation_flex_v19_5.stock_reserved_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Issue Code
jpx_tseequities_issuebasicinformation_flex_v19_5.stock_issue_code.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.stock_issue_code, buffer(offset, 0))
    local index = jpx_tseequities_issuebasicinformation_flex_v19_5.stock_issue_code.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_issuebasicinformation_flex_v19_5.stock_issue_code.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_issuebasicinformation_flex_v19_5.stock_issue_code.fields(buffer, offset, packet, parent)
  end
end

-- Issue Code
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_code = {}

-- Dissect: Issue Code
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_code.dissect = function(buffer, offset, packet, parent, issue_classification_large_classification)
  -- Dissect Stock Issue Code
  if issue_classification_large_classification == "01" then
    return jpx_tseequities_issuebasicinformation_flex_v19_5.stock_issue_code.dissect(buffer, offset, packet, parent)
  end
  -- Dissect CB Issue Code
  if issue_classification_large_classification == "02" then
    return jpx_tseequities_issuebasicinformation_flex_v19_5.cb_issue_code.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Blank Issue Code
  if issue_classification_large_classification ~= "01" then
    return jpx_tseequities_issuebasicinformation_flex_v19_5.blank_issue_code.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Issue Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification = {}

-- Size: Issue Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification.size =
  jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification_large_classification.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification_medium_classification.size

-- Display: Issue Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Issue Classification Large Classification: 2 Byte Ascii String Enum with 2 values
  index, issue_classification_large_classification = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification_large_classification.dissect(buffer, index, packet, parent)

  -- Issue Classification Medium Classification: 2 Byte Ascii String
  index, issue_classification_medium_classification = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification_medium_classification.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.issue_classification, buffer(offset, 0))
    local index = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification.fields(buffer, offset, packet, parent)
  end
end

-- Message Type Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.message_type_medium_classification = {}

-- Dissect: Message Type Medium Classification
jpx_tseequities_issuebasicinformation_flex_v19_5.message_type_medium_classification.dissect = function(buffer, offset, packet, parent, message_type_large_classification)
  -- Dissect Issue Realtime Medium Classification
  if message_type_large_classification == "1" then
    return jpx_tseequities_issuebasicinformation_flex_v19_5.issue_realtime_medium_classification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Medium Classification
  if message_type_large_classification == "2" then
    return jpx_tseequities_issuebasicinformation_flex_v19_5.statistics_medium_classification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Medium Classification
  if message_type_large_classification == "3" then
    return jpx_tseequities_issuebasicinformation_flex_v19_5.index_medium_classification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Basic Medium Classification
  if message_type_large_classification == "4" then
    return jpx_tseequities_issuebasicinformation_flex_v19_5.issue_basic_medium_classification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Control Medium Classification
  if message_type_large_classification == "9" then
    return jpx_tseequities_issuebasicinformation_flex_v19_5.control_medium_classification.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Type
jpx_tseequities_issuebasicinformation_flex_v19_5.message_type = {}

-- Calculate size of: Message Type
jpx_tseequities_issuebasicinformation_flex_v19_5.message_type.size = function(buffer, offset)
  local index = 0

  index = index + jpx_tseequities_issuebasicinformation_flex_v19_5.message_type_large_classification.size

  -- Calculate runtime size of Message Type Medium Classification field
  local message_type_medium_classification_offset = offset + index
  local message_type_medium_classification_type = buffer(message_type_medium_classification_offset - 1, 1):string()
  index = index + jpx_tseequities_issuebasicinformation_flex_v19_5.message_type_medium_classification.size(buffer, message_type_medium_classification_offset, message_type_medium_classification_type)

  return index
end

-- Display: Message Type
jpx_tseequities_issuebasicinformation_flex_v19_5.message_type.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Type
jpx_tseequities_issuebasicinformation_flex_v19_5.message_type.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type Large Classification: 1 Byte Ascii String Enum with 5 values
  index, message_type_large_classification = jpx_tseequities_issuebasicinformation_flex_v19_5.message_type_large_classification.dissect(buffer, index, packet, parent)

  -- Message Type Medium Classification: Runtime Type with 5 branches
  index = jpx_tseequities_issuebasicinformation_flex_v19_5.message_type_medium_classification.dissect(buffer, index, packet, parent, message_type_large_classification)

  return index
end

-- Dissect: Message Type
jpx_tseequities_issuebasicinformation_flex_v19_5.message_type.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.message_type, buffer(offset, 0))
    local index = jpx_tseequities_issuebasicinformation_flex_v19_5.message_type.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_issuebasicinformation_flex_v19_5.message_type.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_issuebasicinformation_flex_v19_5.message_type.fields(buffer, offset, packet, parent)
  end
end

-- Message Serial No
jpx_tseequities_issuebasicinformation_flex_v19_5.message_serial_no = {}

-- Size: Message Serial No
jpx_tseequities_issuebasicinformation_flex_v19_5.message_serial_no.size =
  jpx_tseequities_issuebasicinformation_flex_v19_5.multicast_group_number.size + 
  jpx_tseequities_issuebasicinformation_flex_v19_5.sequence_number.size

-- Display: Message Serial No
jpx_tseequities_issuebasicinformation_flex_v19_5.message_serial_no.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Serial No
jpx_tseequities_issuebasicinformation_flex_v19_5.message_serial_no.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Multicast Group Number: C
  index, multicast_group_number = jpx_tseequities_issuebasicinformation_flex_v19_5.multicast_group_number.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Ascii String
  index, sequence_number = jpx_tseequities_issuebasicinformation_flex_v19_5.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Serial No
jpx_tseequities_issuebasicinformation_flex_v19_5.message_serial_no.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.message_serial_no, buffer(offset, 0))
    local index = jpx_tseequities_issuebasicinformation_flex_v19_5.message_serial_no.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_issuebasicinformation_flex_v19_5.message_serial_no.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_issuebasicinformation_flex_v19_5.message_serial_no.fields(buffer, offset, packet, parent)
  end
end

-- Service Header
jpx_tseequities_issuebasicinformation_flex_v19_5.service_header = {}

-- Calculate size of: Service Header
jpx_tseequities_issuebasicinformation_flex_v19_5.service_header.size = function(buffer, offset)
  local index = 0

  index = index + jpx_tseequities_issuebasicinformation_flex_v19_5.message_length.size

  index = index + jpx_tseequities_issuebasicinformation_flex_v19_5.message_serial_no.size

  index = index + jpx_tseequities_issuebasicinformation_flex_v19_5.message_type.size(buffer, offset + index)

  index = index + jpx_tseequities_issuebasicinformation_flex_v19_5.exchange_code.size

  index = index + jpx_tseequities_issuebasicinformation_flex_v19_5.session_distinction.size

  index = index + jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification.size

  -- Calculate runtime size of Issue Code field
  local issue_code_offset = offset + index
  local issue_code_type = buffer(issue_code_offset - 4, 2):string()
  index = index + jpx_tseequities_issuebasicinformation_flex_v19_5.issue_code.size(buffer, issue_code_offset, issue_code_type)

  return index
end

-- Display: Service Header
jpx_tseequities_issuebasicinformation_flex_v19_5.service_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Service Header
jpx_tseequities_issuebasicinformation_flex_v19_5.service_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 6 Byte Ascii String
  index, message_length = jpx_tseequities_issuebasicinformation_flex_v19_5.message_length.dissect(buffer, index, packet, parent)

  -- Message Serial No: Struct of 2 fields
  index, message_serial_no = jpx_tseequities_issuebasicinformation_flex_v19_5.message_serial_no.dissect(buffer, index, packet, parent)

  -- Message Type: Struct of 2 fields
  index, message_type = jpx_tseequities_issuebasicinformation_flex_v19_5.message_type.dissect(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 6 values
  index, exchange_code = jpx_tseequities_issuebasicinformation_flex_v19_5.exchange_code.dissect(buffer, index, packet, parent)

  -- Session Distinction: 2 Byte Ascii String Enum with 4 values
  index, session_distinction = jpx_tseequities_issuebasicinformation_flex_v19_5.session_distinction.dissect(buffer, index, packet, parent)

  -- Issue Classification: Struct of 2 fields
  index, issue_classification = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_classification.dissect(buffer, index, packet, parent)

  -- Dependency element: Issue Classification Large Classification
  local issue_classification_large_classification = trim_right_spaces(buffer(index - 4, 2):string())

  -- Issue Code: Runtime Type with 3 branches
  index = jpx_tseequities_issuebasicinformation_flex_v19_5.issue_code.dissect(buffer, index, packet, parent, issue_classification_large_classification)

  return index
end

-- Dissect: Service Header
jpx_tseequities_issuebasicinformation_flex_v19_5.service_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5.fields.service_header, buffer(offset, 0))
    local index = jpx_tseequities_issuebasicinformation_flex_v19_5.service_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_issuebasicinformation_flex_v19_5.service_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_issuebasicinformation_flex_v19_5.service_header.fields(buffer, offset, packet, parent)
  end
end

-- Udp Packet
jpx_tseequities_issuebasicinformation_flex_v19_5.udp_packet = {}

-- Verify required size of Udp packet
jpx_tseequities_issuebasicinformation_flex_v19_5.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= jpx_tseequities_issuebasicinformation_flex_v19_5.start_of_message.size + jpx_tseequities_issuebasicinformation_flex_v19_5.message_length.size + jpx_tseequities_issuebasicinformation_flex_v19_5.message_serial_no.size + jpx_tseequities_issuebasicinformation_flex_v19_5.message_type_large_classification.size
end

-- Dissect Udp Packet
jpx_tseequities_issuebasicinformation_flex_v19_5.udp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Start Of Message: 1 Byte Unsigned Fixed Width Integer
  index, start_of_message = jpx_tseequities_issuebasicinformation_flex_v19_5.start_of_message.dissect(buffer, index, packet, parent)

  -- Service Header: Struct of 7 fields
  index, service_header = jpx_tseequities_issuebasicinformation_flex_v19_5.service_header.dissect(buffer, index, packet, parent)

  -- Separation Between Service Header And Data Section: 1 Byte Unsigned Fixed Width Integer
  index, separation_between_service_header_and_data_section = jpx_tseequities_issuebasicinformation_flex_v19_5.separation_between_service_header_and_data_section.dissect(buffer, index, packet, parent)

  -- Dependency for Tag Information
  local end_of_payload = buffer:len()

  -- Tag Information: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, tag_information = jpx_tseequities_issuebasicinformation_flex_v19_5.tag_information.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_jpx_tseequities_issuebasicinformation_flex_v19_5.init()
end

-- Dissector for Jpx TseEquities IssueBasicInformation Flex 19.5
function omi_jpx_tseequities_issuebasicinformation_flex_v19_5.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_jpx_tseequities_issuebasicinformation_flex_v19_5.name

  -- Dissect protocol
  local protocol = parent:add(omi_jpx_tseequities_issuebasicinformation_flex_v19_5, buffer(), omi_jpx_tseequities_issuebasicinformation_flex_v19_5.description, "("..buffer:len().." Bytes)")
  return jpx_tseequities_issuebasicinformation_flex_v19_5.udp_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Udp Packet: would its message dispatch accept this frame?
jpx_tseequities_issuebasicinformation_flex_v19_5.udp_packet.fingerprint = function(buffer)
  if buffer:len() < 19 then
    return false
  end

  local message_type_large_classification = buffer(18, 1):string()

  -- Issue Realtime Medium Classification
  if message_type_large_classification == "1" then
    return true
  end

  -- Statistics Medium Classification
  if message_type_large_classification == "2" then
    return true
  end

  -- Index Medium Classification
  if message_type_large_classification == "3" then
    return true
  end

  -- Issue Basic Medium Classification
  if message_type_large_classification == "4" then
    return true
  end

  -- Control Medium Classification
  if message_type_large_classification == "9" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Jpx TseEquities IssueBasicInformation Flex 19.5 (Udp)
local function omi_jpx_tseequities_issuebasicinformation_flex_v19_5_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not jpx_tseequities_issuebasicinformation_flex_v19_5.udp_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp udp packet message dispatch
  if not jpx_tseequities_issuebasicinformation_flex_v19_5.udp_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_jpx_tseequities_issuebasicinformation_flex_v19_5
  omi_jpx_tseequities_issuebasicinformation_flex_v19_5.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Jpx TseEquities IssueBasicInformation Flex 19.5
omi_jpx_tseequities_issuebasicinformation_flex_v19_5:register_heuristic("udp", omi_jpx_tseequities_issuebasicinformation_flex_v19_5_udp_heuristic)

-- Register Jpx TseEquities IssueBasicInformation Flex 19.5 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_jpx_tseequities_issuebasicinformation_flex_v19_5)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Japan Exchange Group
--   Version: 19.5
--   Date: Friday, September 25, 2026
--   Specification: 05_FLEX Connection Specification Issue Basic Information DS.19.5.pdf
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
