-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Jpx NseEquities Standard Flex 19.5 Protocol
local omi_jpx_nseequities_standard_flex_v19_5 = Proto("Omi.Jpx.NseEquities.Standard.Flex.v19.5", "Jpx NseEquities Standard Flex 19.5")

-- Protocol table
local jpx_nseequities_standard_flex_v19_5 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Jpx NseEquities Standard Flex 19.5 Fields
omi_jpx_nseequities_standard_flex_v19_5.fields.all_day_vwap = ProtoField.new("All Day Vwap", "jpx.nseequities.standard.flex.v19.5.alldayvwap", ftypes.STRING, nil, nil, nil, "All-Day VWAP")
omi_jpx_nseequities_standard_flex_v19_5.fields.all_day_vwap_c_14 = ProtoField.new("All Day Vwap C 14", "jpx.nseequities.standard.flex.v19.5.alldayvwapc14", ftypes.DOUBLE, nil, nil, nil, "Indicates the All-Day VWAP.")
omi_jpx_nseequities_standard_flex_v19_5.fields.ask_quote = ProtoField.new("Ask Quote", "jpx.nseequities.standard.flex.v19.5.askquote", ftypes.STRING)
omi_jpx_nseequities_standard_flex_v19_5.fields.bid_quote = ProtoField.new("Bid Quote", "jpx.nseequities.standard.flex.v19.5.bidquote", ftypes.STRING)
omi_jpx_nseequities_standard_flex_v19_5.fields.blank_issue_code = ProtoField.new("Blank Issue Code", "jpx.nseequities.standard.flex.v19.5.blankissuecode", ftypes.STRING, nil, nil, nil, "Issue Code layout for a Control, Index or Statistics Message, which 5.3.3 (7) sets to spaces. The twelve bytes are on the wire either way, so they are read rather than skipped.")
omi_jpx_nseequities_standard_flex_v19_5.fields.buy_order = ProtoField.new("Buy Order", "jpx.nseequities.standard.flex.v19.5.buyorder", ftypes.STRING)
omi_jpx_nseequities_standard_flex_v19_5.fields.cb_issue_code = ProtoField.new("CB Issue Code", "jpx.nseequities.standard.flex.v19.5.cbissuecode", ftypes.STRING, nil, nil, nil, "Issue Code layout used when Issue Classification Large Classification is 02 CB-Related. The figure carries no label of its own in 5.3.3 (7). FLEX Issue Code is set with right-align.")
omi_jpx_nseequities_standard_flex_v19_5.fields.cb_proper_name_code = ProtoField.new("CB Proper Name Code", "jpx.nseequities.standard.flex.v19.5.cbpropernamecode", ftypes.STRING, nil, nil, nil, "Proper Name Code.")
omi_jpx_nseequities_standard_flex_v19_5.fields.cb_reserved_code = ProtoField.new("CB Reserved Code", "jpx.nseequities.standard.flex.v19.5.cbreservedcode", ftypes.STRING, nil, nil, nil, "Reserved Code.")
omi_jpx_nseequities_standard_flex_v19_5.fields.cb_space = ProtoField.new("CB Space", "jpx.nseequities.standard.flex.v19.5.cbspace", ftypes.STRING, nil, nil, nil, "Space.")
omi_jpx_nseequities_standard_flex_v19_5.fields.change_flag = ProtoField.new("Change Flag", "jpx.nseequities.standard.flex.v19.5.changeflag", ftypes.STRING, nil, nil, nil, "For issue status, status flag or short selling regulation flag, indicates whether this has changed or not.")
omi_jpx_nseequities_standard_flex_v19_5.fields.closing_price_input_flag = ProtoField.new("Closing Price Input Flag", "jpx.nseequities.standard.flex.v19.5.closingpriceinputflag", ftypes.STRING, nil, nil, nil, "Indicates whether a closing price was reached.")
omi_jpx_nseequities_standard_flex_v19_5.fields.control_medium_classification = ProtoField.new("Control Medium Classification", "jpx.nseequities.standard.flex.v19.5.controlmediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of a Control Message. Indicates details and other information.")
omi_jpx_nseequities_standard_flex_v19_5.fields.current = ProtoField.new("Current", "jpx.nseequities.standard.flex.v19.5.current", ftypes.STRING)
omi_jpx_nseequities_standard_flex_v19_5.fields.current_change_flag = ProtoField.new("Current Change Flag", "jpx.nseequities.standard.flex.v19.5.currentchangeflag", ftypes.STRING, nil, nil, nil, "Indicates whether this has changed or not.")
omi_jpx_nseequities_standard_flex_v19_5.fields.current_session_vwap = ProtoField.new("Current Session Vwap", "jpx.nseequities.standard.flex.v19.5.currentsessionvwap", ftypes.STRING, nil, nil, nil, "Current-Session VWAP")
omi_jpx_nseequities_standard_flex_v19_5.fields.current_session_vwap_c_14 = ProtoField.new("Current Session Vwap C 14", "jpx.nseequities.standard.flex.v19.5.currentsessionvwapc14", ftypes.DOUBLE, nil, nil, nil, "Indicates the Current-Session VWAP.")
omi_jpx_nseequities_standard_flex_v19_5.fields.direct_yield = ProtoField.new("Direct Yield", "jpx.nseequities.standard.flex.v19.5.directyield", ftypes.STRING)
omi_jpx_nseequities_standard_flex_v19_5.fields.direct_yield_c_8 = ProtoField.new("Direct Yield C 8", "jpx.nseequities.standard.flex.v19.5.directyieldc8", ftypes.DOUBLE, nil, nil, nil, "Indicates the Direct Yield. The unit is 1/100%.")
omi_jpx_nseequities_standard_flex_v19_5.fields.exchange_code = ProtoField.new("Exchange Code", "jpx.nseequities.standard.flex.v19.5.exchangecode", ftypes.STRING, nil, nil, nil, "Exchange the information belongs to. This section is a space in Control Message.")
omi_jpx_nseequities_standard_flex_v19_5.fields.final_yield = ProtoField.new("Final Yield", "jpx.nseequities.standard.flex.v19.5.finalyield", ftypes.STRING)
omi_jpx_nseequities_standard_flex_v19_5.fields.final_yield_c_8 = ProtoField.new("Final Yield C 8", "jpx.nseequities.standard.flex.v19.5.finalyieldc8", ftypes.DOUBLE, nil, nil, nil, "Indicates the final yield. The unit is 1/1000%.")
omi_jpx_nseequities_standard_flex_v19_5.fields.high = ProtoField.new("High", "jpx.nseequities.standard.flex.v19.5.high", ftypes.STRING)
omi_jpx_nseequities_standard_flex_v19_5.fields.index_medium_classification = ProtoField.new("Index Medium Classification", "jpx.nseequities.standard.flex.v19.5.indexmediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of a Index Message. Indicates details and other information.")
omi_jpx_nseequities_standard_flex_v19_5.fields.issue_basic_medium_classification = ProtoField.new("Issue Basic Medium Classification", "jpx.nseequities.standard.flex.v19.5.issuebasicmediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of a Issue Basic Message. Indicates details and other information.")
omi_jpx_nseequities_standard_flex_v19_5.fields.issue_classification = ProtoField.new("Issue Classification", "jpx.nseequities.standard.flex.v19.5.issueclassification", ftypes.STRING, nil, nil, nil, "Set in issue realtime message and issue basic message. In the case of Control, Index and Statistics Message, space is set.")
omi_jpx_nseequities_standard_flex_v19_5.fields.issue_classification_large_classification = ProtoField.new("Issue Classification Large Classification", "jpx.nseequities.standard.flex.v19.5.issueclassificationlargeclassification", ftypes.STRING, nil, nil, nil, "Large Classification of the Issue Classification Code.")
omi_jpx_nseequities_standard_flex_v19_5.fields.issue_classification_medium_classification = ProtoField.new("Issue Classification Medium Classification", "jpx.nseequities.standard.flex.v19.5.issueclassificationmediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of the Issue Classification Code. Its meaning depends on the Large Classification: under 01 Stock-Related, 11 Prime Market (Domestic Stock) through 23 TOKYO PRO Market (Foreign Stock); under 02 CB-Related, 11 CB / 13 SW / 14 Exchangeable Bond.")
omi_jpx_nseequities_standard_flex_v19_5.fields.issue_realtime_medium_classification = ProtoField.new("Issue Realtime Medium Classification", "jpx.nseequities.standard.flex.v19.5.issuerealtimemediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of a Issue Realtime Message. Indicates details and other information.")
omi_jpx_nseequities_standard_flex_v19_5.fields.issue_status = ProtoField.new("Issue Status", "jpx.nseequities.standard.flex.v19.5.issuestatus", ftypes.STRING, nil, nil, nil, "Indicates issue status.")
omi_jpx_nseequities_standard_flex_v19_5.fields.limit_down_flag = ProtoField.new("Limit Down Flag", "jpx.nseequities.standard.flex.v19.5.limitdownflag", ftypes.STRING, nil, nil, nil, "Indicates limit down.")
omi_jpx_nseequities_standard_flex_v19_5.fields.limit_up_flag = ProtoField.new("Limit Up Flag", "jpx.nseequities.standard.flex.v19.5.limitupflag", ftypes.STRING, nil, nil, nil, "Indicates limit up.")
omi_jpx_nseequities_standard_flex_v19_5.fields.lot_size_unit_flag = ProtoField.new("Lot Size Unit Flag", "jpx.nseequities.standard.flex.v19.5.lotsizeunitflag", ftypes.STRING, nil, nil, nil, "Indicates the lot size unit flag.")
omi_jpx_nseequities_standard_flex_v19_5.fields.low = ProtoField.new("Low", "jpx.nseequities.standard.flex.v19.5.low", ftypes.STRING)
omi_jpx_nseequities_standard_flex_v19_5.fields.message_length = ProtoField.new("Message Length", "jpx.nseequities.standard.flex.v19.5.messagelength", ftypes.STRING, nil, nil, nil, "Total Length: Control Code (DC1 and DC2) + Service Header Section + User Data Section (including DC3). Right-align the data, suppress space in the leading space.")
omi_jpx_nseequities_standard_flex_v19_5.fields.message_serial_no = ProtoField.new("Message Serial No", "jpx.nseequities.standard.flex.v19.5.messageserialno", ftypes.STRING, nil, nil, nil, "Numbered from 1 on each Multicast Group, with the multicast group number in the first to third byte")
omi_jpx_nseequities_standard_flex_v19_5.fields.message_type = ProtoField.new("Message Type", "jpx.nseequities.standard.flex.v19.5.messagetype", ftypes.STRING, nil, nil, nil, "Large Classification indicates Message Type, and Medium Classification indicates details and other information")
omi_jpx_nseequities_standard_flex_v19_5.fields.message_type_large_classification = ProtoField.new("Message Type Large Classification", "jpx.nseequities.standard.flex.v19.5.messagetypelargeclassification", ftypes.STRING, nil, nil, nil, "Large Classification indicates Message Type.")
omi_jpx_nseequities_standard_flex_v19_5.fields.multicast_group_number = ProtoField.new("Multicast Group Number", "jpx.nseequities.standard.flex.v19.5.multicastgroupnumber", ftypes.STRING, nil, nil, nil, "Multicast group number, set in the first to third byte of the Message Serial No.")
omi_jpx_nseequities_standard_flex_v19_5.fields.open = ProtoField.new("Open", "jpx.nseequities.standard.flex.v19.5.open", ftypes.STRING)
omi_jpx_nseequities_standard_flex_v19_5.fields.over_quote = ProtoField.new("Over Quote", "jpx.nseequities.standard.flex.v19.5.overquote", ftypes.STRING)
omi_jpx_nseequities_standard_flex_v19_5.fields.parity_estimated_price = ProtoField.new("Parity Estimated Price", "jpx.nseequities.standard.flex.v19.5.parityestimatedprice", ftypes.STRING, nil, nil, nil, "Parity/Estimated Price")
omi_jpx_nseequities_standard_flex_v19_5.fields.parity_estimated_price_c_14 = ProtoField.new("Parity Estimated Price C 14", "jpx.nseequities.standard.flex.v19.5.parityestimatedpricec14", ftypes.DOUBLE, nil, nil, nil, "Indicates Parity.")
omi_jpx_nseequities_standard_flex_v19_5.fields.price = ProtoField.new("Price", "jpx.nseequities.standard.flex.v19.5.price", ftypes.STRING)
omi_jpx_nseequities_standard_flex_v19_5.fields.price_c_14 = ProtoField.new("Price C 14", "jpx.nseequities.standard.flex.v19.5.pricec14", ftypes.DOUBLE, nil, nil, nil, "Numerical part: a 10 digit integral part and a 4 digit decimal part.")
omi_jpx_nseequities_standard_flex_v19_5.fields.quantity = ProtoField.new("Quantity", "jpx.nseequities.standard.flex.v19.5.quantity", ftypes.STRING, nil, nil, nil, "Numerical part: the 14 digits of an integer.")
omi_jpx_nseequities_standard_flex_v19_5.fields.quote_flag = ProtoField.new("Quote Flag", "jpx.nseequities.standard.flex.v19.5.quoteflag", ftypes.STRING, nil, nil, nil, "Indicates the type of the quote.")
omi_jpx_nseequities_standard_flex_v19_5.fields.quote_quantity = ProtoField.new("Quote Quantity", "jpx.nseequities.standard.flex.v19.5.quotequantity", ftypes.STRING)
omi_jpx_nseequities_standard_flex_v19_5.fields.reserved_1 = ProtoField.new("Reserved 1", "jpx.nseequities.standard.flex.v19.5.reserved1", ftypes.STRING, nil, nil, nil, "This item is reserved.")
omi_jpx_nseequities_standard_flex_v19_5.fields.reserved_2 = ProtoField.new("Reserved 2", "jpx.nseequities.standard.flex.v19.5.reserved2", ftypes.STRING, nil, nil, nil, "This item is reserved.")
omi_jpx_nseequities_standard_flex_v19_5.fields.reserved_4 = ProtoField.new("Reserved 4", "jpx.nseequities.standard.flex.v19.5.reserved4", ftypes.STRING, nil, nil, nil, "This item is reserved.")
omi_jpx_nseequities_standard_flex_v19_5.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "jpx.nseequities.standard.flex.v19.5.secondreserved1", ftypes.STRING, nil, nil, nil, "This item is reserved.")
omi_jpx_nseequities_standard_flex_v19_5.fields.sell_order = ProtoField.new("Sell Order", "jpx.nseequities.standard.flex.v19.5.sellorder", ftypes.STRING)
omi_jpx_nseequities_standard_flex_v19_5.fields.separation_between_service_header_and_data_section = ProtoField.new("Separation Between Service Header And Data Section", "jpx.nseequities.standard.flex.v19.5.separationbetweenserviceheaderanddatasection", ftypes.UINT8, nil, nil, nil, "Control Code DC2 (0x12), Separation between Service Header and Data Section")
omi_jpx_nseequities_standard_flex_v19_5.fields.separation_of_tag = ProtoField.new("Separation Of Tag", "jpx.nseequities.standard.flex.v19.5.separationoftag", ftypes.UINT8, nil, nil, nil, "Control Code DC3 (0x13) between tags, or DC1 (0x11) on the tag that ends the message")
omi_jpx_nseequities_standard_flex_v19_5.fields.sequence_number = ProtoField.new("Sequence Number", "jpx.nseequities.standard.flex.v19.5.sequencenumber", ftypes.STRING, nil, nil, nil, "Numbered in sequence, beginning with 00000001. Space is set in the case of Backup Information, All-Day Information or Issue Basic Information, and the requested serial number which was used for the UDP message is set in Retransmission.")
omi_jpx_nseequities_standard_flex_v19_5.fields.session_distinction = ProtoField.new("Session Distinction", "jpx.nseequities.standard.flex.v19.5.sessiondistinction", ftypes.STRING, nil, nil, nil, "Indicates the session in which the new information is generated. Set in Issue Real-time Message (FLEX Standard, ToSTNeT) and Index Message; for Issue Basic Message, Statistics Message and Control Message, spaces is set.")
omi_jpx_nseequities_standard_flex_v19_5.fields.short_selling_regulation_flag = ProtoField.new("Short Selling Regulation Flag", "jpx.nseequities.standard.flex.v19.5.shortsellingregulationflag", ftypes.STRING, nil, nil, nil, "Indicates whether short selling regulation applies or not.")
omi_jpx_nseequities_standard_flex_v19_5.fields.sign = ProtoField.new("Sign", "jpx.nseequities.standard.flex.v19.5.sign", ftypes.STRING, nil, nil, nil, "Indicates sign.")
omi_jpx_nseequities_standard_flex_v19_5.fields.start_end_flag = ProtoField.new("Start End Flag", "jpx.nseequities.standard.flex.v19.5.startendflag", ftypes.STRING, nil, nil, nil, "Indicates the flag for identifying the distinction between Start and End.")
omi_jpx_nseequities_standard_flex_v19_5.fields.start_of_message = ProtoField.new("Start Of Message", "jpx.nseequities.standard.flex.v19.5.startofmessage", ftypes.UINT8, nil, nil, nil, "Control Code DC1 (0x11), Start of a message")
omi_jpx_nseequities_standard_flex_v19_5.fields.statistics_medium_classification = ProtoField.new("Statistics Medium Classification", "jpx.nseequities.standard.flex.v19.5.statisticsmediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of a Statistics Message. Indicates details and other information.")
omi_jpx_nseequities_standard_flex_v19_5.fields.status_flag = ProtoField.new("Status Flag", "jpx.nseequities.standard.flex.v19.5.statusflag", ftypes.STRING, nil, nil, nil, "Indicates the status of the trade.")
omi_jpx_nseequities_standard_flex_v19_5.fields.status_information = ProtoField.new("Status Information", "jpx.nseequities.standard.flex.v19.5.statusinformation", ftypes.STRING)
omi_jpx_nseequities_standard_flex_v19_5.fields.stock_issue_code = ProtoField.new("Stock Issue Code", "jpx.nseequities.standard.flex.v19.5.stockissuecode", ftypes.STRING, nil, nil, nil, "Issue Code layout a. Stocks, used when Issue Classification Large Classification is 01 Stock-Related. FLEX Issue Code is set with right-align.")
omi_jpx_nseequities_standard_flex_v19_5.fields.stock_proper_name_code = ProtoField.new("Stock Proper Name Code", "jpx.nseequities.standard.flex.v19.5.stockpropernamecode", ftypes.STRING, nil, nil, nil, "Proper Name Code.")
omi_jpx_nseequities_standard_flex_v19_5.fields.stock_reserved_code = ProtoField.new("Stock Reserved Code", "jpx.nseequities.standard.flex.v19.5.stockreservedcode", ftypes.STRING, nil, nil, nil, "Reserved Code. Space is set on the reserved code of a Mother Stock.")
omi_jpx_nseequities_standard_flex_v19_5.fields.stock_space = ProtoField.new("Stock Space", "jpx.nseequities.standard.flex.v19.5.stockspace", ftypes.STRING, nil, nil, nil, "Space.")
omi_jpx_nseequities_standard_flex_v19_5.fields.stq_reference_point_flag = ProtoField.new("Stq Reference Point Flag", "jpx.nseequities.standard.flex.v19.5.stqreferencepointflag", ftypes.STRING, nil, nil, nil, "Indicates the reference execution for Sequential Trade Quote.")
omi_jpx_nseequities_standard_flex_v19_5.fields.tag_id = ProtoField.new("Tag ID", "jpx.nseequities.standard.flex.v19.5.tagid", ftypes.STRING, nil, nil, nil, "Tag ID is numbered using 1 to 9 and A to Z. Different tags are used for different information classifications.")
omi_jpx_nseequities_standard_flex_v19_5.fields.tag_information = ProtoField.new("Tag Information", "jpx.nseequities.standard.flex.v19.5.taginformation", ftypes.STRING, nil, nil, nil, "One tag: its two character Tag ID, its data, and the control code that closes it (DC3 between tags, DC1 at the end of the message)")
omi_jpx_nseequities_standard_flex_v19_5.fields.test_mode_flag = ProtoField.new("Test Mode Flag", "jpx.nseequities.standard.flex.v19.5.testmodeflag", ftypes.STRING, nil, nil, nil, "Indicates the flag for identifying the distinction between Production and Test Operation.")
omi_jpx_nseequities_standard_flex_v19_5.fields.time_c_12 = ProtoField.new("Time C 12", "jpx.nseequities.standard.flex.v19.5.timec12", ftypes.STRING, nil, nil, nil, "Indicates the changed time of Status Change Information.")
omi_jpx_nseequities_standard_flex_v19_5.fields.time_c_6 = ProtoField.new("Time C 6", "jpx.nseequities.standard.flex.v19.5.timec6", ftypes.STRING, nil, nil, nil, "Indicates the time at which the current price, Special Quote price or Sequential Trade Quote price of the relevant issue, which is subject to computation of Direct and Final yield, occurred or changed.")
omi_jpx_nseequities_standard_flex_v19_5.fields.time_symbol = ProtoField.new("Time Symbol", "jpx.nseequities.standard.flex.v19.5.timesymbol", ftypes.STRING, nil, nil, nil, "Time Symbol.")
omi_jpx_nseequities_standard_flex_v19_5.fields.trading_volume = ProtoField.new("Trading Volume", "jpx.nseequities.standard.flex.v19.5.tradingvolume", ftypes.STRING)
omi_jpx_nseequities_standard_flex_v19_5.fields.trading_volume_c_14 = ProtoField.new("Trading Volume C 14", "jpx.nseequities.standard.flex.v19.5.tradingvolumec14", ftypes.STRING, nil, nil, nil, "This item shows the cumulative Trading Volume for the morning and afternoon sessions.")
omi_jpx_nseequities_standard_flex_v19_5.fields.trading_volume_turnover_unit_flag = ProtoField.new("Trading Volume Turnover Unit Flag", "jpx.nseequities.standard.flex.v19.5.tradingvolumeturnoverunitflag", ftypes.STRING, nil, nil, nil, "The unit of the numerical value to be set in the integral part.")
omi_jpx_nseequities_standard_flex_v19_5.fields.turnover_in_yen_value = ProtoField.new("Turnover In Yen Value", "jpx.nseequities.standard.flex.v19.5.turnoverinyenvalue", ftypes.STRING)
omi_jpx_nseequities_standard_flex_v19_5.fields.turnover_value = ProtoField.new("Turnover Value", "jpx.nseequities.standard.flex.v19.5.turnovervalue", ftypes.STRING, nil, nil, nil, "This item shows the cumulative turnover for the morning and afternoon sessions.")
omi_jpx_nseequities_standard_flex_v19_5.fields.under_quote = ProtoField.new("Under Quote", "jpx.nseequities.standard.flex.v19.5.underquote", ftypes.STRING)
omi_jpx_nseequities_standard_flex_v19_5.fields.unit_flag = ProtoField.new("Unit Flag", "jpx.nseequities.standard.flex.v19.5.unitflag", ftypes.STRING, nil, nil, nil, "A numerical value from 0 to 4 indicating the number of decimal places that are set to zero.")
omi_jpx_nseequities_standard_flex_v19_5.fields.update_no = ProtoField.new("Update No", "jpx.nseequities.standard.flex.v19.5.updateno", ftypes.STRING, nil, nil, nil, "Indicates the update number. Larger update number indicates newer data.")

-- Jpx NseEquities Standard Flex 19.5 Framing
omi_jpx_nseequities_standard_flex_v19_5.fields.service_header = ProtoField.new("Service Header", "jpx.nseequities.standard.flex.v19.5.serviceheader", ftypes.STRING, nil, nil, nil, "Jpx Flex 39 byte service header, common to all message types")
omi_jpx_nseequities_standard_flex_v19_5.fields.udp_packet = ProtoField.new("Udp Packet", "jpx.nseequities.standard.flex.v19.5.udppacket", ftypes.STRING, nil, nil, nil, "One Flex user message per datagram: DC1, Service Header, DC2, then the tags")

-- Jpx NseEquities Standard 19.5 Application Messages
omi_jpx_nseequities_standard_flex_v19_5.fields.control_message = ProtoField.new("Control Message", "jpx.nseequities.standard.flex.v19.5.controlmessage", ftypes.STRING, nil, nil, nil, "In this tag, the Test Mode Flag and the Start/End Flag that are used in a Control Message are set. This tag appears as part of a Control Message.")
omi_jpx_nseequities_standard_flex_v19_5.fields.market_order_message = ProtoField.new("Market Order Message", "jpx.nseequities.standard.flex.v19.5.marketordermessage", ftypes.STRING, nil, nil, nil, "In this tag, both Ask and Bid Market Order Information is set. This tag appears as part of realtime data.")
omi_jpx_nseequities_standard_flex_v19_5.fields.open_high_low_and_current_price_message = ProtoField.new("Open High Low And Current Price Message", "jpx.nseequities.standard.flex.v19.5.openhighlowandcurrentpricemessage", ftypes.STRING, nil, nil, nil, "In this tag, Open, High, Low and Current Price and other information are set. This tag appears as part of realtime data.")
omi_jpx_nseequities_standard_flex_v19_5.fields.over_under_message = ProtoField.new("Over Under Message", "jpx.nseequities.standard.flex.v19.5.overundermessage", ftypes.STRING, nil, nil, nil, "In this tag, OVER/UNDER quote (Total of quote 11 (Ask) and above or quote 11 (Bid) and below) information is set. This tag is appeared as one of realtime data.")
omi_jpx_nseequities_standard_flex_v19_5.fields.parity_message = ProtoField.new("Parity Message", "jpx.nseequities.standard.flex.v19.5.paritymessage", ftypes.STRING, nil, nil, nil, "In this tag, estimated Price Information for parity of CB is set. This tag appears as part of realtime data.")
omi_jpx_nseequities_standard_flex_v19_5.fields.quote_1_message = ProtoField.new("Quote 1 Message", "jpx.nseequities.standard.flex.v19.5.quote1message", ftypes.STRING, nil, nil, nil, "In this tag, Quote 1 (Ask and Bid Quotes with the Highest Priority) information is set. This tag appears as part of realtime data.")
omi_jpx_nseequities_standard_flex_v19_5.fields.quote_10_message = ProtoField.new("Quote 10 Message", "jpx.nseequities.standard.flex.v19.5.quote10message", ftypes.STRING, nil, nil, nil, "In this tag, Quote 10 (ask and bid quotes with the 10th Highest Priority) information is set. This tag appears as part of realtime data.")
omi_jpx_nseequities_standard_flex_v19_5.fields.quote_2_message = ProtoField.new("Quote 2 Message", "jpx.nseequities.standard.flex.v19.5.quote2message", ftypes.STRING, nil, nil, nil, "In this tag, Quote 2 (ask and bid quotes with the 2nd Highest Priority) information is set. This tag appears as part of realtime data.")
omi_jpx_nseequities_standard_flex_v19_5.fields.quote_3_message = ProtoField.new("Quote 3 Message", "jpx.nseequities.standard.flex.v19.5.quote3message", ftypes.STRING, nil, nil, nil, "In this tag, Quote 3 (ask and bid quotes with the 3rd Highest Priority) information is set. This tag appears as part of realtime data.")
omi_jpx_nseequities_standard_flex_v19_5.fields.quote_4_message = ProtoField.new("Quote 4 Message", "jpx.nseequities.standard.flex.v19.5.quote4message", ftypes.STRING, nil, nil, nil, "In this tag, Quote 4 (ask and bid quotes with the 4th Highest Priority) information is set. This tag appears as part of realtime data.")
omi_jpx_nseequities_standard_flex_v19_5.fields.quote_5_message = ProtoField.new("Quote 5 Message", "jpx.nseequities.standard.flex.v19.5.quote5message", ftypes.STRING, nil, nil, nil, "In this tag, Quote 5 (ask and bid quotes with the 5th Highest Priority) information is set. This tag appears as part of realtime data.")
omi_jpx_nseequities_standard_flex_v19_5.fields.quote_6_message = ProtoField.new("Quote 6 Message", "jpx.nseequities.standard.flex.v19.5.quote6message", ftypes.STRING, nil, nil, nil, "In this tag, Quote 6 (ask and bid quotes with the 6th Highest Priority) information is set. This tag appears as part of realtime data.")
omi_jpx_nseequities_standard_flex_v19_5.fields.quote_7_message = ProtoField.new("Quote 7 Message", "jpx.nseequities.standard.flex.v19.5.quote7message", ftypes.STRING, nil, nil, nil, "In this tag, Quote 7 (ask and bid quotes with the 7th Highest Priority) information is set. This tag appears as part of realtime data.")
omi_jpx_nseequities_standard_flex_v19_5.fields.quote_8_message = ProtoField.new("Quote 8 Message", "jpx.nseequities.standard.flex.v19.5.quote8message", ftypes.STRING, nil, nil, nil, "In this tag, Quote 8 (ask and bid quotes with the 8th Highest Priority) information is set. This tag appears as part of realtime data.")
omi_jpx_nseequities_standard_flex_v19_5.fields.quote_9_message = ProtoField.new("Quote 9 Message", "jpx.nseequities.standard.flex.v19.5.quote9message", ftypes.STRING, nil, nil, nil, "In this tag, Quote 9 (ask and bid quotes with the 9th Highest Priority) information is set. This tag appears as part of realtime data.")
omi_jpx_nseequities_standard_flex_v19_5.fields.status_information_message = ProtoField.new("Status Information Message", "jpx.nseequities.standard.flex.v19.5.statusinformationmessage", ftypes.STRING, nil, nil, nil, "In this tag, status information (Issue Status, Status Flag and Short Selling Regulation Flag) is set. This tag appears as part of realtime data.")
omi_jpx_nseequities_standard_flex_v19_5.fields.trading_volume_message = ProtoField.new("Trading Volume Message", "jpx.nseequities.standard.flex.v19.5.tradingvolumemessage", ftypes.STRING, nil, nil, nil, "In this tag, by-issue trading volume information is set. This tag appears as part of realtime data.")
omi_jpx_nseequities_standard_flex_v19_5.fields.turnover_message = ProtoField.new("Turnover Message", "jpx.nseequities.standard.flex.v19.5.turnovermessage", ftypes.STRING, nil, nil, nil, "In this tag, by-issue Turnover Information is set. This tag appears as part of realtime data.")
omi_jpx_nseequities_standard_flex_v19_5.fields.update_no_message = ProtoField.new("Update No Message", "jpx.nseequities.standard.flex.v19.5.updatenomessage", ftypes.STRING, nil, nil, nil, "In this tag, Update Number for each issue is set. This tag appears as part of realtime data.")
omi_jpx_nseequities_standard_flex_v19_5.fields.vwap_message = ProtoField.new("Vwap Message", "jpx.nseequities.standard.flex.v19.5.vwapmessage", ftypes.STRING, nil, nil, nil, "In this tag, by-issue Volume Weighted Stock Price average (VWAP) Information is set. This tag appears as part of realtime data.")
omi_jpx_nseequities_standard_flex_v19_5.fields.yield_message = ProtoField.new("Yield Message", "jpx.nseequities.standard.flex.v19.5.yieldmessage", ftypes.STRING, nil, nil, nil, "In this tag, Direct and Final Yield Information for CB is set. This tag appears as part of realtime data.")

-- Jpx NseEquities Standard Flex 19.5 Expert Info
jpx_nseequities_standard_flex_v19_5.experts = {}
jpx_nseequities_standard_flex_v19_5.experts.not_a_number = ProtoExpert.new("jpx.nseequities.standard.flex.v19.5.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_jpx_nseequities_standard_flex_v19_5.experts = { jpx_nseequities_standard_flex_v19_5.experts.not_a_number }

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Jpx NseEquities Standard Flex 19.5 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true

-- Register Jpx NseEquities Standard Flex 19.5 Show Options
omi_jpx_nseequities_standard_flex_v19_5.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_jpx_nseequities_standard_flex_v19_5.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_jpx_nseequities_standard_flex_v19_5.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_jpx_nseequities_standard_flex_v19_5.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_jpx_nseequities_standard_flex_v19_5.prefs.show_application_messages then
    show.application_messages = omi_jpx_nseequities_standard_flex_v19_5.prefs.show_application_messages
  end
  if show.headers ~= omi_jpx_nseequities_standard_flex_v19_5.prefs.show_headers then
    show.headers = omi_jpx_nseequities_standard_flex_v19_5.prefs.show_headers
  end
  if show.structs ~= omi_jpx_nseequities_standard_flex_v19_5.prefs.show_structs then
    show.structs = omi_jpx_nseequities_standard_flex_v19_5.prefs.show_structs
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
-- Jpx NseEquities Standard Flex 19.5 Fields
-----------------------------------------------------------------------

-- All Day Vwap C 14
jpx_nseequities_standard_flex_v19_5.all_day_vwap_c_14 = {}

-- Size: All Day Vwap C 14
jpx_nseequities_standard_flex_v19_5.all_day_vwap_c_14.size = 14

-- Display: All Day Vwap C 14
jpx_nseequities_standard_flex_v19_5.all_day_vwap_c_14.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_nseequities_standard_flex_v19_5.all_day_vwap_c_14.size):string(), 4)

  if text == nil then
    return "All Day Vwap C 14: "..tostring(value)
  end

  return "All Day Vwap C 14: "..text
end

-- Dissect: All Day Vwap C 14
jpx_nseequities_standard_flex_v19_5.all_day_vwap_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.all_day_vwap_c_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.all_day_vwap_c_14, range, value, "All Day Vwap C 14: Not Applicable")
    item:add_proto_expert_info(jpx_nseequities_standard_flex_v19_5.experts.not_a_number, "All Day Vwap C 14 is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = jpx_nseequities_standard_flex_v19_5.all_day_vwap_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.all_day_vwap_c_14, range, value, display)

  return offset + length, value
end

-- Blank Issue Code
jpx_nseequities_standard_flex_v19_5.blank_issue_code = {}

-- Size: Blank Issue Code
jpx_nseequities_standard_flex_v19_5.blank_issue_code.size = 12

-- Display: Blank Issue Code
jpx_nseequities_standard_flex_v19_5.blank_issue_code.display = function(value)
  return "Blank Issue Code: "..value
end

-- Dissect: Blank Issue Code
jpx_nseequities_standard_flex_v19_5.blank_issue_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.blank_issue_code.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.blank_issue_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.blank_issue_code, range, value, display)

  return offset + length, value
end

-- CB Proper Name Code
jpx_nseequities_standard_flex_v19_5.cb_proper_name_code = {}

-- Size: CB Proper Name Code
jpx_nseequities_standard_flex_v19_5.cb_proper_name_code.size = 4

-- Display: CB Proper Name Code
jpx_nseequities_standard_flex_v19_5.cb_proper_name_code.display = function(value)
  return "CB Proper Name Code: "..value
end

-- Dissect: CB Proper Name Code
jpx_nseequities_standard_flex_v19_5.cb_proper_name_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.cb_proper_name_code.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.cb_proper_name_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.cb_proper_name_code, range, value, display)

  return offset + length, value
end

-- CB Reserved Code
jpx_nseequities_standard_flex_v19_5.cb_reserved_code = {}

-- Size: CB Reserved Code
jpx_nseequities_standard_flex_v19_5.cb_reserved_code.size = 1

-- Display: CB Reserved Code
jpx_nseequities_standard_flex_v19_5.cb_reserved_code.display = function(value)
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
jpx_nseequities_standard_flex_v19_5.cb_reserved_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.cb_reserved_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_standard_flex_v19_5.cb_reserved_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.cb_reserved_code, range, value, display)

  return offset + length, value
end

-- CB Space
jpx_nseequities_standard_flex_v19_5.cb_space = {}

-- Size: CB Space
jpx_nseequities_standard_flex_v19_5.cb_space.size = 3

-- Display: CB Space
jpx_nseequities_standard_flex_v19_5.cb_space.display = function(value)
  return "CB Space: "..value
end

-- Dissect: CB Space
jpx_nseequities_standard_flex_v19_5.cb_space.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.cb_space.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.cb_space.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.cb_space, range, value, display)

  return offset + length, value
end

-- Change Flag
jpx_nseequities_standard_flex_v19_5.change_flag = {}

-- Size: Change Flag
jpx_nseequities_standard_flex_v19_5.change_flag.size = 1

-- Display: Change Flag
jpx_nseequities_standard_flex_v19_5.change_flag.display = function(value)
  if value == "1" then
    return "Change Flag: Changed (1)"
  end
  if value == " " then
    return "Change Flag: Not Changed (<whitespace>)"
  end

  return "Change Flag: Unknown("..value..")"
end

-- Dissect: Change Flag
jpx_nseequities_standard_flex_v19_5.change_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.change_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_standard_flex_v19_5.change_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.change_flag, range, value, display)

  return offset + length, value
end

-- Closing Price Input Flag
jpx_nseequities_standard_flex_v19_5.closing_price_input_flag = {}

-- Size: Closing Price Input Flag
jpx_nseequities_standard_flex_v19_5.closing_price_input_flag.size = 1

-- Display: Closing Price Input Flag
jpx_nseequities_standard_flex_v19_5.closing_price_input_flag.display = function(value)
  if value == "1" then
    return "Closing Price Input Flag: Trade Not Established At Closing (1)"
  end
  if value == "2" then
    return "Closing Price Input Flag: Trade Established With Closing (2)"
  end
  if value == " " then
    return "Closing Price Input Flag: Other Than The Above (<whitespace>)"
  end

  return "Closing Price Input Flag: Unknown("..value..")"
end

-- Dissect: Closing Price Input Flag
jpx_nseequities_standard_flex_v19_5.closing_price_input_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.closing_price_input_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_standard_flex_v19_5.closing_price_input_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.closing_price_input_flag, range, value, display)

  return offset + length, value
end

-- Control Medium Classification
jpx_nseequities_standard_flex_v19_5.control_medium_classification = {}

-- Size: Control Medium Classification
jpx_nseequities_standard_flex_v19_5.control_medium_classification.size = 2

-- Display: Control Medium Classification
jpx_nseequities_standard_flex_v19_5.control_medium_classification.labels = {
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

jpx_nseequities_standard_flex_v19_5.control_medium_classification.display = function(value)
  return jpx_nseequities_standard_flex_v19_5.control_medium_classification.labels[value] or "Control Medium Classification: Unknown("..value..")"
end

-- Dissect: Control Medium Classification
jpx_nseequities_standard_flex_v19_5.control_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.control_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.control_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.control_medium_classification, range, value, display)

  return offset + length, value
end

-- Current Change Flag
jpx_nseequities_standard_flex_v19_5.current_change_flag = {}

-- Size: Current Change Flag
jpx_nseequities_standard_flex_v19_5.current_change_flag.size = 1

-- Display: Current Change Flag
jpx_nseequities_standard_flex_v19_5.current_change_flag.display = function(value)
  if value == "1" then
    return "Current Change Flag: Changed Going Up (1)"
  end
  if value == "2" then
    return "Current Change Flag: Changed Going Down (2)"
  end
  if value == "3" then
    return "Current Change Flag: Changed Same (3)"
  end
  if value == "4" then
    return "Current Change Flag: Changed Other Than Above (4)"
  end
  if value == " " then
    return "Current Change Flag: Other Than The Above (<whitespace>)"
  end

  return "Current Change Flag: Unknown("..value..")"
end

-- Dissect: Current Change Flag
jpx_nseequities_standard_flex_v19_5.current_change_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.current_change_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_standard_flex_v19_5.current_change_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.current_change_flag, range, value, display)

  return offset + length, value
end

-- Current Session Vwap C 14
jpx_nseequities_standard_flex_v19_5.current_session_vwap_c_14 = {}

-- Size: Current Session Vwap C 14
jpx_nseequities_standard_flex_v19_5.current_session_vwap_c_14.size = 14

-- Display: Current Session Vwap C 14
jpx_nseequities_standard_flex_v19_5.current_session_vwap_c_14.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_nseequities_standard_flex_v19_5.current_session_vwap_c_14.size):string(), 4)

  if text == nil then
    return "Current Session Vwap C 14: "..tostring(value)
  end

  return "Current Session Vwap C 14: "..text
end

-- Dissect: Current Session Vwap C 14
jpx_nseequities_standard_flex_v19_5.current_session_vwap_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.current_session_vwap_c_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.current_session_vwap_c_14, range, value, "Current Session Vwap C 14: Not Applicable")
    item:add_proto_expert_info(jpx_nseequities_standard_flex_v19_5.experts.not_a_number, "Current Session Vwap C 14 is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = jpx_nseequities_standard_flex_v19_5.current_session_vwap_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.current_session_vwap_c_14, range, value, display)

  return offset + length, value
end

-- Direct Yield C 8
jpx_nseequities_standard_flex_v19_5.direct_yield_c_8 = {}

-- Size: Direct Yield C 8
jpx_nseequities_standard_flex_v19_5.direct_yield_c_8.size = 8

-- Display: Direct Yield C 8
jpx_nseequities_standard_flex_v19_5.direct_yield_c_8.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_nseequities_standard_flex_v19_5.direct_yield_c_8.size):string(), 2)

  if text == nil then
    return "Direct Yield C 8: "..tostring(value)
  end

  return "Direct Yield C 8: "..text
end

-- Dissect: Direct Yield C 8
jpx_nseequities_standard_flex_v19_5.direct_yield_c_8.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.direct_yield_c_8.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.direct_yield_c_8, range, value, "Direct Yield C 8: Not Applicable")
    item:add_proto_expert_info(jpx_nseequities_standard_flex_v19_5.experts.not_a_number, "Direct Yield C 8 is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = jpx_nseequities_standard_flex_v19_5.direct_yield_c_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.direct_yield_c_8, range, value, display)

  return offset + length, value
end

-- Exchange Code
jpx_nseequities_standard_flex_v19_5.exchange_code = {}

-- Size: Exchange Code
jpx_nseequities_standard_flex_v19_5.exchange_code.size = 1

-- Display: Exchange Code
jpx_nseequities_standard_flex_v19_5.exchange_code.display = function(value)
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
jpx_nseequities_standard_flex_v19_5.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_standard_flex_v19_5.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Final Yield C 8
jpx_nseequities_standard_flex_v19_5.final_yield_c_8 = {}

-- Size: Final Yield C 8
jpx_nseequities_standard_flex_v19_5.final_yield_c_8.size = 8

-- Display: Final Yield C 8
jpx_nseequities_standard_flex_v19_5.final_yield_c_8.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_nseequities_standard_flex_v19_5.final_yield_c_8.size):string(), 3)

  if text == nil then
    return "Final Yield C 8: "..tostring(value)
  end

  return "Final Yield C 8: "..text
end

-- Dissect: Final Yield C 8
jpx_nseequities_standard_flex_v19_5.final_yield_c_8.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.final_yield_c_8.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.final_yield_c_8, range, value, "Final Yield C 8: Not Applicable")
    item:add_proto_expert_info(jpx_nseequities_standard_flex_v19_5.experts.not_a_number, "Final Yield C 8 is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000

  local display = jpx_nseequities_standard_flex_v19_5.final_yield_c_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.final_yield_c_8, range, value, display)

  return offset + length, value
end

-- Index Medium Classification
jpx_nseequities_standard_flex_v19_5.index_medium_classification = {}

-- Size: Index Medium Classification
jpx_nseequities_standard_flex_v19_5.index_medium_classification.size = 2

-- Display: Index Medium Classification
jpx_nseequities_standard_flex_v19_5.index_medium_classification.labels = {
  ["00"] = "Index Medium Classification: Index Message (00)",
}

jpx_nseequities_standard_flex_v19_5.index_medium_classification.display = function(value)
  return jpx_nseequities_standard_flex_v19_5.index_medium_classification.labels[value] or "Index Medium Classification: Unknown("..value..")"
end

-- Dissect: Index Medium Classification
jpx_nseequities_standard_flex_v19_5.index_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.index_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.index_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.index_medium_classification, range, value, display)

  return offset + length, value
end

-- Issue Basic Medium Classification
jpx_nseequities_standard_flex_v19_5.issue_basic_medium_classification = {}

-- Size: Issue Basic Medium Classification
jpx_nseequities_standard_flex_v19_5.issue_basic_medium_classification.size = 2

-- Display: Issue Basic Medium Classification
jpx_nseequities_standard_flex_v19_5.issue_basic_medium_classification.labels = {
  ["00"] = "Issue Basic Medium Classification: Regular (00)",
  ["01"] = "Issue Basic Medium Classification: Special (01)",
}

jpx_nseequities_standard_flex_v19_5.issue_basic_medium_classification.display = function(value)
  return jpx_nseequities_standard_flex_v19_5.issue_basic_medium_classification.labels[value] or "Issue Basic Medium Classification: Unknown("..value..")"
end

-- Dissect: Issue Basic Medium Classification
jpx_nseequities_standard_flex_v19_5.issue_basic_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.issue_basic_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.issue_basic_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.issue_basic_medium_classification, range, value, display)

  return offset + length, value
end

-- Issue Classification Large Classification
jpx_nseequities_standard_flex_v19_5.issue_classification_large_classification = {}

-- Size: Issue Classification Large Classification
jpx_nseequities_standard_flex_v19_5.issue_classification_large_classification.size = 2

-- Display: Issue Classification Large Classification
jpx_nseequities_standard_flex_v19_5.issue_classification_large_classification.labels = {
  ["01"] = "Issue Classification Large Classification: Stockrelated (01)",
  ["02"] = "Issue Classification Large Classification: Cbrelated (02)",
}

jpx_nseequities_standard_flex_v19_5.issue_classification_large_classification.display = function(value)
  return jpx_nseequities_standard_flex_v19_5.issue_classification_large_classification.labels[value] or "Issue Classification Large Classification: Unknown("..value..")"
end

-- Dissect: Issue Classification Large Classification
jpx_nseequities_standard_flex_v19_5.issue_classification_large_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.issue_classification_large_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.issue_classification_large_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.issue_classification_large_classification, range, value, display)

  return offset + length, value
end

-- Issue Classification Medium Classification
jpx_nseequities_standard_flex_v19_5.issue_classification_medium_classification = {}

-- Size: Issue Classification Medium Classification
jpx_nseequities_standard_flex_v19_5.issue_classification_medium_classification.size = 2

-- Display: Issue Classification Medium Classification
jpx_nseequities_standard_flex_v19_5.issue_classification_medium_classification.display = function(value)
  return "Issue Classification Medium Classification: "..value
end

-- Dissect: Issue Classification Medium Classification
jpx_nseequities_standard_flex_v19_5.issue_classification_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.issue_classification_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.issue_classification_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.issue_classification_medium_classification, range, value, display)

  return offset + length, value
end

-- Issue Realtime Medium Classification
jpx_nseequities_standard_flex_v19_5.issue_realtime_medium_classification = {}

-- Size: Issue Realtime Medium Classification
jpx_nseequities_standard_flex_v19_5.issue_realtime_medium_classification.size = 2

-- Display: Issue Realtime Medium Classification
jpx_nseequities_standard_flex_v19_5.issue_realtime_medium_classification.labels = {
  ["00"] = "Issue Realtime Medium Classification: New (00)",
  ["01"] = "Issue Realtime Medium Classification: Backup (01)",
  ["02"] = "Issue Realtime Medium Classification: Allday (02)",
}

jpx_nseequities_standard_flex_v19_5.issue_realtime_medium_classification.display = function(value)
  return jpx_nseequities_standard_flex_v19_5.issue_realtime_medium_classification.labels[value] or "Issue Realtime Medium Classification: Unknown("..value..")"
end

-- Dissect: Issue Realtime Medium Classification
jpx_nseequities_standard_flex_v19_5.issue_realtime_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.issue_realtime_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.issue_realtime_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.issue_realtime_medium_classification, range, value, display)

  return offset + length, value
end

-- Issue Status
jpx_nseequities_standard_flex_v19_5.issue_status = {}

-- Size: Issue Status
jpx_nseequities_standard_flex_v19_5.issue_status.size = 2

-- Display: Issue Status
jpx_nseequities_standard_flex_v19_5.issue_status.labels = {
  ["00"] = "Issue Status: Out Of Session (00)",
  ["10"] = "Issue Status: Accepting Order Input (10)",
  ["20"] = "Issue Status: During Trading Session (20)",
  ["30"] = "Issue Status: Not Accepting Order Input (30)",
  ["35"] = "Issue Status: Pre Closing (35)",
  ["40"] = "Issue Status: Close Of Session (40)",
}

jpx_nseequities_standard_flex_v19_5.issue_status.display = function(value)
  return jpx_nseequities_standard_flex_v19_5.issue_status.labels[value] or "Issue Status: Unknown("..value..")"
end

-- Dissect: Issue Status
jpx_nseequities_standard_flex_v19_5.issue_status.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.issue_status.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.issue_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.issue_status, range, value, display)

  return offset + length, value
end

-- Limit Down Flag
jpx_nseequities_standard_flex_v19_5.limit_down_flag = {}

-- Size: Limit Down Flag
jpx_nseequities_standard_flex_v19_5.limit_down_flag.size = 1

-- Display: Limit Down Flag
jpx_nseequities_standard_flex_v19_5.limit_down_flag.display = function(value)
  if value == "1" then
    return "Limit Down Flag: Limit Down (1)"
  end
  if value == " " then
    return "Limit Down Flag: Other Than The Above (<whitespace>)"
  end

  return "Limit Down Flag: Unknown("..value..")"
end

-- Dissect: Limit Down Flag
jpx_nseequities_standard_flex_v19_5.limit_down_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.limit_down_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_standard_flex_v19_5.limit_down_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.limit_down_flag, range, value, display)

  return offset + length, value
end

-- Limit Up Flag
jpx_nseequities_standard_flex_v19_5.limit_up_flag = {}

-- Size: Limit Up Flag
jpx_nseequities_standard_flex_v19_5.limit_up_flag.size = 1

-- Display: Limit Up Flag
jpx_nseequities_standard_flex_v19_5.limit_up_flag.display = function(value)
  if value == "1" then
    return "Limit Up Flag: Limit Up (1)"
  end
  if value == " " then
    return "Limit Up Flag: Other Than The Above (<whitespace>)"
  end

  return "Limit Up Flag: Unknown("..value..")"
end

-- Dissect: Limit Up Flag
jpx_nseequities_standard_flex_v19_5.limit_up_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.limit_up_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_standard_flex_v19_5.limit_up_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.limit_up_flag, range, value, display)

  return offset + length, value
end

-- Lot Size Unit Flag
jpx_nseequities_standard_flex_v19_5.lot_size_unit_flag = {}

-- Size: Lot Size Unit Flag
jpx_nseequities_standard_flex_v19_5.lot_size_unit_flag.size = 1

-- Display: Lot Size Unit Flag
jpx_nseequities_standard_flex_v19_5.lot_size_unit_flag.display = function(value)
  if value == "0" then
    return "Lot Size Unit Flag: To The Fourth Decimal Place (0)"
  end
  if value == "1" then
    return "Lot Size Unit Flag: To The Third Decimal Place (1)"
  end
  if value == "2" then
    return "Lot Size Unit Flag: To The Second Decimal Place (2)"
  end
  if value == "3" then
    return "Lot Size Unit Flag: To The First Decimal Place (3)"
  end
  if value == "4" then
    return "Lot Size Unit Flag: No Decimal Places (4)"
  end
  if value == " " then
    return "Lot Size Unit Flag: No Numerical Value (<whitespace>)"
  end

  return "Lot Size Unit Flag: Unknown("..value..")"
end

-- Dissect: Lot Size Unit Flag
jpx_nseequities_standard_flex_v19_5.lot_size_unit_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.lot_size_unit_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_standard_flex_v19_5.lot_size_unit_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.lot_size_unit_flag, range, value, display)

  return offset + length, value
end

-- Message Length
jpx_nseequities_standard_flex_v19_5.message_length = {}

-- Size: Message Length
jpx_nseequities_standard_flex_v19_5.message_length.size = 6

-- Display: Message Length
jpx_nseequities_standard_flex_v19_5.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
jpx_nseequities_standard_flex_v19_5.message_length.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.message_length.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type Large Classification
jpx_nseequities_standard_flex_v19_5.message_type_large_classification = {}

-- Size: Message Type Large Classification
jpx_nseequities_standard_flex_v19_5.message_type_large_classification.size = 1

-- Display: Message Type Large Classification
jpx_nseequities_standard_flex_v19_5.message_type_large_classification.labels = {
  ["1"] = "Message Type Large Classification: Issue Realtime Message (1)",
  ["2"] = "Message Type Large Classification: Statistics Message (2)",
  ["3"] = "Message Type Large Classification: Index Message (3)",
  ["4"] = "Message Type Large Classification: Issue Basic Message (4)",
  ["9"] = "Message Type Large Classification: Control Message (9)",
}

jpx_nseequities_standard_flex_v19_5.message_type_large_classification.display = function(value)
  return jpx_nseequities_standard_flex_v19_5.message_type_large_classification.labels[value] or "Message Type Large Classification: Unknown("..value..")"
end

-- Dissect: Message Type Large Classification
jpx_nseequities_standard_flex_v19_5.message_type_large_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.message_type_large_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_standard_flex_v19_5.message_type_large_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.message_type_large_classification, range, value, display)

  return offset + length, value
end

-- Multicast Group Number
jpx_nseequities_standard_flex_v19_5.multicast_group_number = {}

-- Size: Multicast Group Number
jpx_nseequities_standard_flex_v19_5.multicast_group_number.size = 3

-- Display: Multicast Group Number
jpx_nseequities_standard_flex_v19_5.multicast_group_number.display = function(value)
  return "Multicast Group Number: "..value
end

-- Dissect: Multicast Group Number
jpx_nseequities_standard_flex_v19_5.multicast_group_number.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.multicast_group_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.multicast_group_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.multicast_group_number, range, value, display)

  return offset + length, value
end

-- Parity Estimated Price C 14
jpx_nseequities_standard_flex_v19_5.parity_estimated_price_c_14 = {}

-- Size: Parity Estimated Price C 14
jpx_nseequities_standard_flex_v19_5.parity_estimated_price_c_14.size = 14

-- Display: Parity Estimated Price C 14
jpx_nseequities_standard_flex_v19_5.parity_estimated_price_c_14.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_nseequities_standard_flex_v19_5.parity_estimated_price_c_14.size):string(), 4)

  if text == nil then
    return "Parity Estimated Price C 14: "..tostring(value)
  end

  return "Parity Estimated Price C 14: "..text
end

-- Dissect: Parity Estimated Price C 14
jpx_nseequities_standard_flex_v19_5.parity_estimated_price_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.parity_estimated_price_c_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.parity_estimated_price_c_14, range, value, "Parity Estimated Price C 14: Not Applicable")
    item:add_proto_expert_info(jpx_nseequities_standard_flex_v19_5.experts.not_a_number, "Parity Estimated Price C 14 is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = jpx_nseequities_standard_flex_v19_5.parity_estimated_price_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.parity_estimated_price_c_14, range, value, display)

  return offset + length, value
end

-- Price C 14
jpx_nseequities_standard_flex_v19_5.price_c_14 = {}

-- Size: Price C 14
jpx_nseequities_standard_flex_v19_5.price_c_14.size = 14

-- Display: Price C 14
jpx_nseequities_standard_flex_v19_5.price_c_14.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_nseequities_standard_flex_v19_5.price_c_14.size):string(), 4)

  if text == nil then
    return "Price C 14: "..tostring(value)
  end

  return "Price C 14: "..text
end

-- Dissect: Price C 14
jpx_nseequities_standard_flex_v19_5.price_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.price_c_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.price_c_14, range, value, "Price C 14: Not Applicable")
    item:add_proto_expert_info(jpx_nseequities_standard_flex_v19_5.experts.not_a_number, "Price C 14 is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = jpx_nseequities_standard_flex_v19_5.price_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.price_c_14, range, value, display)

  return offset + length, value
end

-- Quantity
jpx_nseequities_standard_flex_v19_5.quantity = {}

-- Size: Quantity
jpx_nseequities_standard_flex_v19_5.quantity.size = 14

-- Display: Quantity
jpx_nseequities_standard_flex_v19_5.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
jpx_nseequities_standard_flex_v19_5.quantity.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.quantity.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quote Flag
jpx_nseequities_standard_flex_v19_5.quote_flag = {}

-- Size: Quote Flag
jpx_nseequities_standard_flex_v19_5.quote_flag.size = 1

-- Display: Quote Flag
jpx_nseequities_standard_flex_v19_5.quote_flag.display = function(value)
  if value == "0" then
    return "Quote Flag: Quote Before Opening (0)"
  end
  if value == "1" then
    return "Quote Flag: General Quote (1)"
  end
  if value == "2" then
    return "Quote Flag: General Quote Under Transaction (2)"
  end
  if value == "3" then
    return "Quote Flag: Special Quote (3)"
  end
  if value == "4" then
    return "Quote Flag: Sequential Trade Quote (4)"
  end
  if value == "5" then
    return "Quote Flag: Temporary Quote At The Beginning Of Pre Closing (5)"
  end
  if value == "6" then
    return "Quote Flag: Quote After Special Execution (6)"
  end
  if value == "7" then
    return "Quote Flag: Special Quote Before Trading Halt (7)"
  end
  if value == "8" then
    return "Quote Flag: Sequential Trade Quote Before Trading Halt (8)"
  end
  if value == " " then
    return "Quote Flag: No Quotes Or All Quotes Are Cancelled (<whitespace>)"
  end

  return "Quote Flag: Unknown("..value..")"
end

-- Dissect: Quote Flag
jpx_nseequities_standard_flex_v19_5.quote_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.quote_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_standard_flex_v19_5.quote_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.quote_flag, range, value, display)

  return offset + length, value
end

-- Reserved 1
jpx_nseequities_standard_flex_v19_5.reserved_1 = {}

-- Size: Reserved 1
jpx_nseequities_standard_flex_v19_5.reserved_1.size = 1

-- Display: Reserved 1
jpx_nseequities_standard_flex_v19_5.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
jpx_nseequities_standard_flex_v19_5.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_standard_flex_v19_5.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
jpx_nseequities_standard_flex_v19_5.reserved_2 = {}

-- Size: Reserved 2
jpx_nseequities_standard_flex_v19_5.reserved_2.size = 2

-- Display: Reserved 2
jpx_nseequities_standard_flex_v19_5.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
jpx_nseequities_standard_flex_v19_5.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.reserved_2.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 4
jpx_nseequities_standard_flex_v19_5.reserved_4 = {}

-- Size: Reserved 4
jpx_nseequities_standard_flex_v19_5.reserved_4.size = 4

-- Display: Reserved 4
jpx_nseequities_standard_flex_v19_5.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
jpx_nseequities_standard_flex_v19_5.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.reserved_4.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Second Reserved 1
jpx_nseequities_standard_flex_v19_5.second_reserved_1 = {}

-- Size: Second Reserved 1
jpx_nseequities_standard_flex_v19_5.second_reserved_1.size = 1

-- Display: Second Reserved 1
jpx_nseequities_standard_flex_v19_5.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
jpx_nseequities_standard_flex_v19_5.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_standard_flex_v19_5.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.second_reserved_1, range, value, display)

  return offset + length, value
end

-- Separation Between Service Header And Data Section
jpx_nseequities_standard_flex_v19_5.separation_between_service_header_and_data_section = {}

-- Size: Separation Between Service Header And Data Section
jpx_nseequities_standard_flex_v19_5.separation_between_service_header_and_data_section.size = 1

-- Display: Separation Between Service Header And Data Section
jpx_nseequities_standard_flex_v19_5.separation_between_service_header_and_data_section.display = function(value)
  return "Separation Between Service Header And Data Section: "..value
end

-- Dissect: Separation Between Service Header And Data Section
jpx_nseequities_standard_flex_v19_5.separation_between_service_header_and_data_section.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.separation_between_service_header_and_data_section.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_standard_flex_v19_5.separation_between_service_header_and_data_section.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.separation_between_service_header_and_data_section, range, value, display)

  return offset + length, value
end

-- Separation Of Tag
jpx_nseequities_standard_flex_v19_5.separation_of_tag = {}

-- Size: Separation Of Tag
jpx_nseequities_standard_flex_v19_5.separation_of_tag.size = 1

-- Display: Separation Of Tag
jpx_nseequities_standard_flex_v19_5.separation_of_tag.labels = {
  [19] = "Separation Of Tag: Separation Between Tag (19)",
  [17] = "Separation Of Tag: End Of Message (17)",
}

jpx_nseequities_standard_flex_v19_5.separation_of_tag.display = function(value)
  return jpx_nseequities_standard_flex_v19_5.separation_of_tag.labels[value] or "Separation Of Tag: Unknown("..value..")"
end

-- Dissect: Separation Of Tag
jpx_nseequities_standard_flex_v19_5.separation_of_tag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.separation_of_tag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_standard_flex_v19_5.separation_of_tag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.separation_of_tag, range, value, display)

  return offset + length, value
end

-- Sequence Number
jpx_nseequities_standard_flex_v19_5.sequence_number = {}

-- Size: Sequence Number
jpx_nseequities_standard_flex_v19_5.sequence_number.size = 8

-- Display: Sequence Number
jpx_nseequities_standard_flex_v19_5.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
jpx_nseequities_standard_flex_v19_5.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Distinction
jpx_nseequities_standard_flex_v19_5.session_distinction = {}

-- Size: Session Distinction
jpx_nseequities_standard_flex_v19_5.session_distinction.size = 2

-- Display: Session Distinction
jpx_nseequities_standard_flex_v19_5.session_distinction.display = function(value)
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
jpx_nseequities_standard_flex_v19_5.session_distinction.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.session_distinction.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.session_distinction.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.session_distinction, range, value, display)

  return offset + length, value
end

-- Short Selling Regulation Flag
jpx_nseequities_standard_flex_v19_5.short_selling_regulation_flag = {}

-- Size: Short Selling Regulation Flag
jpx_nseequities_standard_flex_v19_5.short_selling_regulation_flag.size = 1

-- Display: Short Selling Regulation Flag
jpx_nseequities_standard_flex_v19_5.short_selling_regulation_flag.labels = {
  ["0"] = "Short Selling Regulation Flag: Short Selling Regulation Does Not Apply (0)",
  ["1"] = "Short Selling Regulation Flag: Short Selling Regulation Is Applied (1)",
}

jpx_nseequities_standard_flex_v19_5.short_selling_regulation_flag.display = function(value)
  return jpx_nseequities_standard_flex_v19_5.short_selling_regulation_flag.labels[value] or "Short Selling Regulation Flag: Unknown("..value..")"
end

-- Dissect: Short Selling Regulation Flag
jpx_nseequities_standard_flex_v19_5.short_selling_regulation_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.short_selling_regulation_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_standard_flex_v19_5.short_selling_regulation_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.short_selling_regulation_flag, range, value, display)

  return offset + length, value
end

-- Sign
jpx_nseequities_standard_flex_v19_5.sign = {}

-- Size: Sign
jpx_nseequities_standard_flex_v19_5.sign.size = 1

-- Display: Sign
jpx_nseequities_standard_flex_v19_5.sign.display = function(value)
  if value == "+" then
    return "Sign: Positive (+)"
  end
  if value == " " then
    return "Sign: No Sign (<whitespace>)"
  end

  return "Sign: Unknown("..value..")"
end

-- Dissect: Sign
jpx_nseequities_standard_flex_v19_5.sign.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_standard_flex_v19_5.sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.sign, range, value, display)

  return offset + length, value
end

-- Start End Flag
jpx_nseequities_standard_flex_v19_5.start_end_flag = {}

-- Size: Start End Flag
jpx_nseequities_standard_flex_v19_5.start_end_flag.size = 1

-- Display: Start End Flag
jpx_nseequities_standard_flex_v19_5.start_end_flag.display = function(value)
  if value == "1" then
    return "Start End Flag: Start (1)"
  end
  if value == "2" then
    return "Start End Flag: End (2)"
  end
  if value == " " then
    return "Start End Flag: Health Check Control (<whitespace>)"
  end

  return "Start End Flag: Unknown("..value..")"
end

-- Dissect: Start End Flag
jpx_nseequities_standard_flex_v19_5.start_end_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.start_end_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_standard_flex_v19_5.start_end_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.start_end_flag, range, value, display)

  return offset + length, value
end

-- Start Of Message
jpx_nseequities_standard_flex_v19_5.start_of_message = {}

-- Size: Start Of Message
jpx_nseequities_standard_flex_v19_5.start_of_message.size = 1

-- Display: Start Of Message
jpx_nseequities_standard_flex_v19_5.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
jpx_nseequities_standard_flex_v19_5.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.start_of_message.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_standard_flex_v19_5.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Statistics Medium Classification
jpx_nseequities_standard_flex_v19_5.statistics_medium_classification = {}

-- Size: Statistics Medium Classification
jpx_nseequities_standard_flex_v19_5.statistics_medium_classification.size = 2

-- Display: Statistics Medium Classification
jpx_nseequities_standard_flex_v19_5.statistics_medium_classification.labels = {
  ["00"] = "Statistics Medium Classification: Statistics Message (00)",
}

jpx_nseequities_standard_flex_v19_5.statistics_medium_classification.display = function(value)
  return jpx_nseequities_standard_flex_v19_5.statistics_medium_classification.labels[value] or "Statistics Medium Classification: Unknown("..value..")"
end

-- Dissect: Statistics Medium Classification
jpx_nseequities_standard_flex_v19_5.statistics_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.statistics_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.statistics_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.statistics_medium_classification, range, value, display)

  return offset + length, value
end

-- Status Flag
jpx_nseequities_standard_flex_v19_5.status_flag = {}

-- Size: Status Flag
jpx_nseequities_standard_flex_v19_5.status_flag.size = 2

-- Display: Status Flag
jpx_nseequities_standard_flex_v19_5.status_flag.display = function(value)
  if value == "A0" then
    return "Status Flag: Trading Halt Accepting Order Input (A0)"
  end
  if value == "A1" then
    return "Status Flag: Release Of Trading Halt (A1)"
  end
  if value == "B0" then
    return "Status Flag: Itayose (B0)"
  end
  if value == "B1" then
    return "Status Flag: Release Of Itayose (B1)"
  end
  if value == "C0" then
    return "Status Flag: Trading Suspension (C0)"
  end
  if value == "C1" then
    return "Status Flag: Release Of Trading Suspension (C1)"
  end
  if value == "D0" then
    return "Status Flag: Trading Halt Not Accepting Order Input (D0)"
  end
  if value == "  " then
    return "Status Flag: Other Than The Above (<whitespace>)"
  end

  return "Status Flag: Unknown("..value..")"
end

-- Dissect: Status Flag
jpx_nseequities_standard_flex_v19_5.status_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.status_flag.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.status_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.status_flag, range, value, display)

  return offset + length, value
end

-- Stock Proper Name Code
jpx_nseequities_standard_flex_v19_5.stock_proper_name_code = {}

-- Size: Stock Proper Name Code
jpx_nseequities_standard_flex_v19_5.stock_proper_name_code.size = 4

-- Display: Stock Proper Name Code
jpx_nseequities_standard_flex_v19_5.stock_proper_name_code.display = function(value)
  return "Stock Proper Name Code: "..value
end

-- Dissect: Stock Proper Name Code
jpx_nseequities_standard_flex_v19_5.stock_proper_name_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.stock_proper_name_code.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.stock_proper_name_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.stock_proper_name_code, range, value, display)

  return offset + length, value
end

-- Stock Reserved Code
jpx_nseequities_standard_flex_v19_5.stock_reserved_code = {}

-- Size: Stock Reserved Code
jpx_nseequities_standard_flex_v19_5.stock_reserved_code.size = 1

-- Display: Stock Reserved Code
jpx_nseequities_standard_flex_v19_5.stock_reserved_code.display = function(value)
  return "Stock Reserved Code: "..value
end

-- Dissect: Stock Reserved Code
jpx_nseequities_standard_flex_v19_5.stock_reserved_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.stock_reserved_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_standard_flex_v19_5.stock_reserved_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.stock_reserved_code, range, value, display)

  return offset + length, value
end

-- Stock Space
jpx_nseequities_standard_flex_v19_5.stock_space = {}

-- Size: Stock Space
jpx_nseequities_standard_flex_v19_5.stock_space.size = 7

-- Display: Stock Space
jpx_nseequities_standard_flex_v19_5.stock_space.display = function(value)
  return "Stock Space: "..value
end

-- Dissect: Stock Space
jpx_nseequities_standard_flex_v19_5.stock_space.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.stock_space.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.stock_space.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.stock_space, range, value, display)

  return offset + length, value
end

-- Stq Reference Point Flag
jpx_nseequities_standard_flex_v19_5.stq_reference_point_flag = {}

-- Size: Stq Reference Point Flag
jpx_nseequities_standard_flex_v19_5.stq_reference_point_flag.size = 1

-- Display: Stq Reference Point Flag
jpx_nseequities_standard_flex_v19_5.stq_reference_point_flag.display = function(value)
  if value == "1" then
    return "Stq Reference Point Flag: Reference Execution Set By This Trade (1)"
  end
  if value == " " then
    return "Stq Reference Point Flag: Other Than The Above (<whitespace>)"
  end

  return "Stq Reference Point Flag: Unknown("..value..")"
end

-- Dissect: Stq Reference Point Flag
jpx_nseequities_standard_flex_v19_5.stq_reference_point_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.stq_reference_point_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_standard_flex_v19_5.stq_reference_point_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.stq_reference_point_flag, range, value, display)

  return offset + length, value
end

-- Tag ID
jpx_nseequities_standard_flex_v19_5.tag_id = {}

-- Size: Tag ID
jpx_nseequities_standard_flex_v19_5.tag_id.size = 2

-- Display: Tag ID
jpx_nseequities_standard_flex_v19_5.tag_id.labels = {
  ["NO"] = "Tag ID: Update No Message (NO)",
  ["ST"] = "Tag ID: Status Information Message (ST)",
  ["4P"] = "Tag ID: Open High Low And Current Price Message (4P)",
  ["Q1"] = "Tag ID: Quote 1 Message (Q1)",
  ["Q2"] = "Tag ID: Quote 2 Message (Q2)",
  ["Q3"] = "Tag ID: Quote 3 Message (Q3)",
  ["Q4"] = "Tag ID: Quote 4 Message (Q4)",
  ["Q5"] = "Tag ID: Quote 5 Message (Q5)",
  ["Q6"] = "Tag ID: Quote 6 Message (Q6)",
  ["Q7"] = "Tag ID: Quote 7 Message (Q7)",
  ["Q8"] = "Tag ID: Quote 8 Message (Q8)",
  ["Q9"] = "Tag ID: Quote 9 Message (Q9)",
  ["QA"] = "Tag ID: Quote 10 Message (QA)",
  ["QM"] = "Tag ID: Market Order Message (QM)",
  ["QO"] = "Tag ID: Over Under Message (QO)",
  ["VL"] = "Tag ID: Trading Volume Message (VL)",
  ["VA"] = "Tag ID: Turnover Message (VA)",
  ["VW"] = "Tag ID: Vwap Message (VW)",
  ["PA"] = "Tag ID: Parity Message (PA)",
  ["YI"] = "Tag ID: Yield Message (YI)",
  ["LC"] = "Tag ID: Control Message (LC)",
}

jpx_nseequities_standard_flex_v19_5.tag_id.display = function(value)
  return jpx_nseequities_standard_flex_v19_5.tag_id.labels[value] or "Tag ID: Unknown("..value..")"
end

-- Dissect: Tag ID
jpx_nseequities_standard_flex_v19_5.tag_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.tag_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.tag_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.tag_id, range, value, display)

  return offset + length, value
end

-- Test Mode Flag
jpx_nseequities_standard_flex_v19_5.test_mode_flag = {}

-- Size: Test Mode Flag
jpx_nseequities_standard_flex_v19_5.test_mode_flag.size = 1

-- Display: Test Mode Flag
jpx_nseequities_standard_flex_v19_5.test_mode_flag.labels = {
  ["1"] = "Test Mode Flag: Production Operation (1)",
  ["2"] = "Test Mode Flag: Test Operation (2)",
}

jpx_nseequities_standard_flex_v19_5.test_mode_flag.display = function(value)
  return jpx_nseequities_standard_flex_v19_5.test_mode_flag.labels[value] or "Test Mode Flag: Unknown("..value..")"
end

-- Dissect: Test Mode Flag
jpx_nseequities_standard_flex_v19_5.test_mode_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.test_mode_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_standard_flex_v19_5.test_mode_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.test_mode_flag, range, value, display)

  return offset + length, value
end

-- Time C 12
jpx_nseequities_standard_flex_v19_5.time_c_12 = {}

-- Size: Time C 12
jpx_nseequities_standard_flex_v19_5.time_c_12.size = 12

-- Display: Time C 12
jpx_nseequities_standard_flex_v19_5.time_c_12.display = function(value)
  if #value < 12 then
    return "Time C 12: "..value
  end

  return "Time C 12: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6).."."..value:sub(7, 12)
end

-- Dissect: Time C 12
jpx_nseequities_standard_flex_v19_5.time_c_12.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.time_c_12.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.time_c_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.time_c_12, range, value, display)

  return offset + length, value
end

-- Time C 6
jpx_nseequities_standard_flex_v19_5.time_c_6 = {}

-- Size: Time C 6
jpx_nseequities_standard_flex_v19_5.time_c_6.size = 6

-- Display: Time C 6
jpx_nseequities_standard_flex_v19_5.time_c_6.display = function(value)
  if #value < 6 then
    return "Time C 6: "..value
  end

  return "Time C 6: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6)
end

-- Dissect: Time C 6
jpx_nseequities_standard_flex_v19_5.time_c_6.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.time_c_6.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.time_c_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.time_c_6, range, value, display)

  return offset + length, value
end

-- Time Symbol
jpx_nseequities_standard_flex_v19_5.time_symbol = {}

-- Size: Time Symbol
jpx_nseequities_standard_flex_v19_5.time_symbol.size = 4

-- Display: Time Symbol
jpx_nseequities_standard_flex_v19_5.time_symbol.display = function(value)
  return "Time Symbol: "..value
end

-- Dissect: Time Symbol
jpx_nseequities_standard_flex_v19_5.time_symbol.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.time_symbol.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.time_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.time_symbol, range, value, display)

  return offset + length, value
end

-- Trading Volume C 14
jpx_nseequities_standard_flex_v19_5.trading_volume_c_14 = {}

-- Size: Trading Volume C 14
jpx_nseequities_standard_flex_v19_5.trading_volume_c_14.size = 14

-- Display: Trading Volume C 14
jpx_nseequities_standard_flex_v19_5.trading_volume_c_14.display = function(value)
  return "Trading Volume C 14: "..value
end

-- Dissect: Trading Volume C 14
jpx_nseequities_standard_flex_v19_5.trading_volume_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.trading_volume_c_14.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.trading_volume_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.trading_volume_c_14, range, value, display)

  return offset + length, value
end

-- Trading Volume Turnover Unit Flag
jpx_nseequities_standard_flex_v19_5.trading_volume_turnover_unit_flag = {}

-- Size: Trading Volume Turnover Unit Flag
jpx_nseequities_standard_flex_v19_5.trading_volume_turnover_unit_flag.size = 1

-- Display: Trading Volume Turnover Unit Flag
jpx_nseequities_standard_flex_v19_5.trading_volume_turnover_unit_flag.display = function(value)
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
jpx_nseequities_standard_flex_v19_5.trading_volume_turnover_unit_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.trading_volume_turnover_unit_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_standard_flex_v19_5.trading_volume_turnover_unit_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.trading_volume_turnover_unit_flag, range, value, display)

  return offset + length, value
end

-- Turnover Value
jpx_nseequities_standard_flex_v19_5.turnover_value = {}

-- Size: Turnover Value
jpx_nseequities_standard_flex_v19_5.turnover_value.size = 14

-- Display: Turnover Value
jpx_nseequities_standard_flex_v19_5.turnover_value.display = function(value)
  return "Turnover Value: "..value
end

-- Dissect: Turnover Value
jpx_nseequities_standard_flex_v19_5.turnover_value.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.turnover_value.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.turnover_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.turnover_value, range, value, display)

  return offset + length, value
end

-- Unit Flag
jpx_nseequities_standard_flex_v19_5.unit_flag = {}

-- Size: Unit Flag
jpx_nseequities_standard_flex_v19_5.unit_flag.size = 1

-- Display: Unit Flag
jpx_nseequities_standard_flex_v19_5.unit_flag.display = function(value)
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
jpx_nseequities_standard_flex_v19_5.unit_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.unit_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_standard_flex_v19_5.unit_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.unit_flag, range, value, display)

  return offset + length, value
end

-- Update No
jpx_nseequities_standard_flex_v19_5.update_no = {}

-- Size: Update No
jpx_nseequities_standard_flex_v19_5.update_no.size = 8

-- Display: Update No
jpx_nseequities_standard_flex_v19_5.update_no.display = function(value)
  return "Update No: "..value
end

-- Dissect: Update No
jpx_nseequities_standard_flex_v19_5.update_no.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_standard_flex_v19_5.update_no.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_nseequities_standard_flex_v19_5.update_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.update_no, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Jpx NseEquities Standard Flex 19.5
-----------------------------------------------------------------------

-- Control Message
jpx_nseequities_standard_flex_v19_5.control_message = {}

-- Size: Control Message
jpx_nseequities_standard_flex_v19_5.control_message.size =
  jpx_nseequities_standard_flex_v19_5.reserved_2.size + 
  jpx_nseequities_standard_flex_v19_5.test_mode_flag.size + 
  jpx_nseequities_standard_flex_v19_5.start_end_flag.size + 
  jpx_nseequities_standard_flex_v19_5.time_c_6.size

-- Display: Control Message
jpx_nseequities_standard_flex_v19_5.control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message
jpx_nseequities_standard_flex_v19_5.control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_nseequities_standard_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Test Mode Flag: C
  index, test_mode_flag = jpx_nseequities_standard_flex_v19_5.test_mode_flag.dissect(buffer, index, packet, parent)

  -- Start End Flag: C
  index, start_end_flag = jpx_nseequities_standard_flex_v19_5.start_end_flag.dissect(buffer, index, packet, parent)

  -- Time C 6: C
  index, time_c_6 = jpx_nseequities_standard_flex_v19_5.time_c_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Control Message
jpx_nseequities_standard_flex_v19_5.control_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.control_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.control_message.fields(buffer, offset, packet, parent)
  end
end

-- Final Yield
jpx_nseequities_standard_flex_v19_5.final_yield = {}

-- Size: Final Yield
jpx_nseequities_standard_flex_v19_5.final_yield.size =
  jpx_nseequities_standard_flex_v19_5.final_yield_c_8.size + 
  jpx_nseequities_standard_flex_v19_5.sign.size

-- Display: Final Yield
jpx_nseequities_standard_flex_v19_5.final_yield.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Final Yield
jpx_nseequities_standard_flex_v19_5.final_yield.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Final Yield C 8: C
  index, final_yield_c_8 = jpx_nseequities_standard_flex_v19_5.final_yield_c_8.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_nseequities_standard_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Final Yield
jpx_nseequities_standard_flex_v19_5.final_yield.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.final_yield, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.final_yield.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.final_yield.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.final_yield.fields(buffer, offset, packet, parent)
  end
end

-- Direct Yield
jpx_nseequities_standard_flex_v19_5.direct_yield = {}

-- Size: Direct Yield
jpx_nseequities_standard_flex_v19_5.direct_yield.size =
  jpx_nseequities_standard_flex_v19_5.direct_yield_c_8.size + 
  jpx_nseequities_standard_flex_v19_5.sign.size

-- Display: Direct Yield
jpx_nseequities_standard_flex_v19_5.direct_yield.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Direct Yield
jpx_nseequities_standard_flex_v19_5.direct_yield.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Direct Yield C 8: C
  index, direct_yield_c_8 = jpx_nseequities_standard_flex_v19_5.direct_yield_c_8.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_nseequities_standard_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Direct Yield
jpx_nseequities_standard_flex_v19_5.direct_yield.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.direct_yield, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.direct_yield.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.direct_yield.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.direct_yield.fields(buffer, offset, packet, parent)
  end
end

-- Yield Message
jpx_nseequities_standard_flex_v19_5.yield_message = {}

-- Size: Yield Message
jpx_nseequities_standard_flex_v19_5.yield_message.size =
  jpx_nseequities_standard_flex_v19_5.reserved_2.size + 
  jpx_nseequities_standard_flex_v19_5.direct_yield.size + 
  jpx_nseequities_standard_flex_v19_5.final_yield.size + 
  jpx_nseequities_standard_flex_v19_5.time_c_6.size + 
  jpx_nseequities_standard_flex_v19_5.reserved_1.size

-- Display: Yield Message
jpx_nseequities_standard_flex_v19_5.yield_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Yield Message
jpx_nseequities_standard_flex_v19_5.yield_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_nseequities_standard_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Direct Yield: Struct of 2 fields
  index, direct_yield = jpx_nseequities_standard_flex_v19_5.direct_yield.dissect(buffer, index, packet, parent)

  -- Final Yield: Struct of 2 fields
  index, final_yield = jpx_nseequities_standard_flex_v19_5.final_yield.dissect(buffer, index, packet, parent)

  -- Time C 6: C
  index, time_c_6 = jpx_nseequities_standard_flex_v19_5.time_c_6.dissect(buffer, index, packet, parent)

  -- Reserved 1: C
  index, reserved_1 = jpx_nseequities_standard_flex_v19_5.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Yield Message
jpx_nseequities_standard_flex_v19_5.yield_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.yield_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.yield_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.yield_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.yield_message.fields(buffer, offset, packet, parent)
  end
end

-- Parity Estimated Price
jpx_nseequities_standard_flex_v19_5.parity_estimated_price = {}

-- Size: Parity Estimated Price
jpx_nseequities_standard_flex_v19_5.parity_estimated_price.size =
  jpx_nseequities_standard_flex_v19_5.unit_flag.size + 
  jpx_nseequities_standard_flex_v19_5.parity_estimated_price_c_14.size + 
  jpx_nseequities_standard_flex_v19_5.sign.size + 
  jpx_nseequities_standard_flex_v19_5.time_c_6.size + 
  jpx_nseequities_standard_flex_v19_5.reserved_1.size

-- Display: Parity Estimated Price
jpx_nseequities_standard_flex_v19_5.parity_estimated_price.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Parity Estimated Price
jpx_nseequities_standard_flex_v19_5.parity_estimated_price.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Flag: C
  index, unit_flag = jpx_nseequities_standard_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Parity Estimated Price C 14: C
  index, parity_estimated_price_c_14 = jpx_nseequities_standard_flex_v19_5.parity_estimated_price_c_14.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_nseequities_standard_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  -- Time C 6: C
  index, time_c_6 = jpx_nseequities_standard_flex_v19_5.time_c_6.dissect(buffer, index, packet, parent)

  -- Reserved 1: C
  index, reserved_1 = jpx_nseequities_standard_flex_v19_5.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Parity Estimated Price
jpx_nseequities_standard_flex_v19_5.parity_estimated_price.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.parity_estimated_price, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.parity_estimated_price.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.parity_estimated_price.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.parity_estimated_price.fields(buffer, offset, packet, parent)
  end
end

-- Parity Message
jpx_nseequities_standard_flex_v19_5.parity_message = {}

-- Size: Parity Message
jpx_nseequities_standard_flex_v19_5.parity_message.size =
  jpx_nseequities_standard_flex_v19_5.reserved_2.size + 
  jpx_nseequities_standard_flex_v19_5.parity_estimated_price.size

-- Display: Parity Message
jpx_nseequities_standard_flex_v19_5.parity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Parity Message
jpx_nseequities_standard_flex_v19_5.parity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_nseequities_standard_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Parity Estimated Price: Struct of 5 fields
  index, parity_estimated_price = jpx_nseequities_standard_flex_v19_5.parity_estimated_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Parity Message
jpx_nseequities_standard_flex_v19_5.parity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.parity_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.parity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.parity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.parity_message.fields(buffer, offset, packet, parent)
  end
end

-- Current Session Vwap
jpx_nseequities_standard_flex_v19_5.current_session_vwap = {}

-- Size: Current Session Vwap
jpx_nseequities_standard_flex_v19_5.current_session_vwap.size =
  jpx_nseequities_standard_flex_v19_5.reserved_1.size + 
  jpx_nseequities_standard_flex_v19_5.lot_size_unit_flag.size + 
  jpx_nseequities_standard_flex_v19_5.current_session_vwap_c_14.size + 
  jpx_nseequities_standard_flex_v19_5.sign.size + 
  jpx_nseequities_standard_flex_v19_5.time_c_6.size + 
  jpx_nseequities_standard_flex_v19_5.second_reserved_1.size

-- Display: Current Session Vwap
jpx_nseequities_standard_flex_v19_5.current_session_vwap.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Current Session Vwap
jpx_nseequities_standard_flex_v19_5.current_session_vwap.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: C
  index, reserved_1 = jpx_nseequities_standard_flex_v19_5.reserved_1.dissect(buffer, index, packet, parent)

  -- Lot Size Unit Flag: C
  index, lot_size_unit_flag = jpx_nseequities_standard_flex_v19_5.lot_size_unit_flag.dissect(buffer, index, packet, parent)

  -- Current Session Vwap C 14: C
  index, current_session_vwap_c_14 = jpx_nseequities_standard_flex_v19_5.current_session_vwap_c_14.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_nseequities_standard_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  -- Time C 6: C
  index, time_c_6 = jpx_nseequities_standard_flex_v19_5.time_c_6.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: C
  index, second_reserved_1 = jpx_nseequities_standard_flex_v19_5.second_reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Current Session Vwap
jpx_nseequities_standard_flex_v19_5.current_session_vwap.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.current_session_vwap, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.current_session_vwap.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.current_session_vwap.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.current_session_vwap.fields(buffer, offset, packet, parent)
  end
end

-- All Day Vwap
jpx_nseequities_standard_flex_v19_5.all_day_vwap = {}

-- Size: All Day Vwap
jpx_nseequities_standard_flex_v19_5.all_day_vwap.size =
  jpx_nseequities_standard_flex_v19_5.reserved_1.size + 
  jpx_nseequities_standard_flex_v19_5.lot_size_unit_flag.size + 
  jpx_nseequities_standard_flex_v19_5.all_day_vwap_c_14.size + 
  jpx_nseequities_standard_flex_v19_5.sign.size + 
  jpx_nseequities_standard_flex_v19_5.time_c_6.size + 
  jpx_nseequities_standard_flex_v19_5.second_reserved_1.size

-- Display: All Day Vwap
jpx_nseequities_standard_flex_v19_5.all_day_vwap.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: All Day Vwap
jpx_nseequities_standard_flex_v19_5.all_day_vwap.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: C
  index, reserved_1 = jpx_nseequities_standard_flex_v19_5.reserved_1.dissect(buffer, index, packet, parent)

  -- Lot Size Unit Flag: C
  index, lot_size_unit_flag = jpx_nseequities_standard_flex_v19_5.lot_size_unit_flag.dissect(buffer, index, packet, parent)

  -- All Day Vwap C 14: C
  index, all_day_vwap_c_14 = jpx_nseequities_standard_flex_v19_5.all_day_vwap_c_14.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_nseequities_standard_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  -- Time C 6: C
  index, time_c_6 = jpx_nseequities_standard_flex_v19_5.time_c_6.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: C
  index, second_reserved_1 = jpx_nseequities_standard_flex_v19_5.second_reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: All Day Vwap
jpx_nseequities_standard_flex_v19_5.all_day_vwap.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.all_day_vwap, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.all_day_vwap.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.all_day_vwap.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.all_day_vwap.fields(buffer, offset, packet, parent)
  end
end

-- Vwap Message
jpx_nseequities_standard_flex_v19_5.vwap_message = {}

-- Size: Vwap Message
jpx_nseequities_standard_flex_v19_5.vwap_message.size =
  jpx_nseequities_standard_flex_v19_5.reserved_2.size + 
  jpx_nseequities_standard_flex_v19_5.all_day_vwap.size + 
  jpx_nseequities_standard_flex_v19_5.current_session_vwap.size

-- Display: Vwap Message
jpx_nseequities_standard_flex_v19_5.vwap_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Vwap Message
jpx_nseequities_standard_flex_v19_5.vwap_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_nseequities_standard_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- All Day Vwap: Struct of 6 fields
  index, all_day_vwap = jpx_nseequities_standard_flex_v19_5.all_day_vwap.dissect(buffer, index, packet, parent)

  -- Current Session Vwap: Struct of 6 fields
  index, current_session_vwap = jpx_nseequities_standard_flex_v19_5.current_session_vwap.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Vwap Message
jpx_nseequities_standard_flex_v19_5.vwap_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.vwap_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.vwap_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.vwap_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.vwap_message.fields(buffer, offset, packet, parent)
  end
end

-- Turnover In Yen Value
jpx_nseequities_standard_flex_v19_5.turnover_in_yen_value = {}

-- Size: Turnover In Yen Value
jpx_nseequities_standard_flex_v19_5.turnover_in_yen_value.size =
  jpx_nseequities_standard_flex_v19_5.reserved_1.size + 
  jpx_nseequities_standard_flex_v19_5.trading_volume_turnover_unit_flag.size + 
  jpx_nseequities_standard_flex_v19_5.turnover_value.size + 
  jpx_nseequities_standard_flex_v19_5.time_c_6.size + 
  jpx_nseequities_standard_flex_v19_5.second_reserved_1.size

-- Display: Turnover In Yen Value
jpx_nseequities_standard_flex_v19_5.turnover_in_yen_value.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Turnover In Yen Value
jpx_nseequities_standard_flex_v19_5.turnover_in_yen_value.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: C
  index, reserved_1 = jpx_nseequities_standard_flex_v19_5.reserved_1.dissect(buffer, index, packet, parent)

  -- Trading Volume Turnover Unit Flag: C
  index, trading_volume_turnover_unit_flag = jpx_nseequities_standard_flex_v19_5.trading_volume_turnover_unit_flag.dissect(buffer, index, packet, parent)

  -- Turnover Value: C
  index, turnover_value = jpx_nseequities_standard_flex_v19_5.turnover_value.dissect(buffer, index, packet, parent)

  -- Time C 6: C
  index, time_c_6 = jpx_nseequities_standard_flex_v19_5.time_c_6.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: C
  index, second_reserved_1 = jpx_nseequities_standard_flex_v19_5.second_reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Turnover In Yen Value
jpx_nseequities_standard_flex_v19_5.turnover_in_yen_value.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.turnover_in_yen_value, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.turnover_in_yen_value.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.turnover_in_yen_value.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.turnover_in_yen_value.fields(buffer, offset, packet, parent)
  end
end

-- Turnover Message
jpx_nseequities_standard_flex_v19_5.turnover_message = {}

-- Size: Turnover Message
jpx_nseequities_standard_flex_v19_5.turnover_message.size =
  jpx_nseequities_standard_flex_v19_5.reserved_2.size + 
  jpx_nseequities_standard_flex_v19_5.turnover_in_yen_value.size

-- Display: Turnover Message
jpx_nseequities_standard_flex_v19_5.turnover_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Turnover Message
jpx_nseequities_standard_flex_v19_5.turnover_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_nseequities_standard_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Turnover In Yen Value: Struct of 5 fields
  index, turnover_in_yen_value = jpx_nseequities_standard_flex_v19_5.turnover_in_yen_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Turnover Message
jpx_nseequities_standard_flex_v19_5.turnover_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.turnover_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.turnover_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.turnover_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.turnover_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Volume
jpx_nseequities_standard_flex_v19_5.trading_volume = {}

-- Size: Trading Volume
jpx_nseequities_standard_flex_v19_5.trading_volume.size =
  jpx_nseequities_standard_flex_v19_5.reserved_1.size + 
  jpx_nseequities_standard_flex_v19_5.trading_volume_turnover_unit_flag.size + 
  jpx_nseequities_standard_flex_v19_5.trading_volume_c_14.size + 
  jpx_nseequities_standard_flex_v19_5.time_c_6.size + 
  jpx_nseequities_standard_flex_v19_5.second_reserved_1.size

-- Display: Trading Volume
jpx_nseequities_standard_flex_v19_5.trading_volume.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Volume
jpx_nseequities_standard_flex_v19_5.trading_volume.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: C
  index, reserved_1 = jpx_nseequities_standard_flex_v19_5.reserved_1.dissect(buffer, index, packet, parent)

  -- Trading Volume Turnover Unit Flag: C
  index, trading_volume_turnover_unit_flag = jpx_nseequities_standard_flex_v19_5.trading_volume_turnover_unit_flag.dissect(buffer, index, packet, parent)

  -- Trading Volume C 14: C
  index, trading_volume_c_14 = jpx_nseequities_standard_flex_v19_5.trading_volume_c_14.dissect(buffer, index, packet, parent)

  -- Time C 6: C
  index, time_c_6 = jpx_nseequities_standard_flex_v19_5.time_c_6.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: C
  index, second_reserved_1 = jpx_nseequities_standard_flex_v19_5.second_reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Volume
jpx_nseequities_standard_flex_v19_5.trading_volume.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.trading_volume, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.trading_volume.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.trading_volume.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.trading_volume.fields(buffer, offset, packet, parent)
  end
end

-- Trading Volume Message
jpx_nseequities_standard_flex_v19_5.trading_volume_message = {}

-- Size: Trading Volume Message
jpx_nseequities_standard_flex_v19_5.trading_volume_message.size =
  jpx_nseequities_standard_flex_v19_5.reserved_2.size + 
  jpx_nseequities_standard_flex_v19_5.trading_volume.size

-- Display: Trading Volume Message
jpx_nseequities_standard_flex_v19_5.trading_volume_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Volume Message
jpx_nseequities_standard_flex_v19_5.trading_volume_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_nseequities_standard_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Volume: Struct of 5 fields
  index, trading_volume = jpx_nseequities_standard_flex_v19_5.trading_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Volume Message
jpx_nseequities_standard_flex_v19_5.trading_volume_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.trading_volume_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.trading_volume_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.trading_volume_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.trading_volume_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Quantity
jpx_nseequities_standard_flex_v19_5.quote_quantity = {}

-- Size: Quote Quantity
jpx_nseequities_standard_flex_v19_5.quote_quantity.size =
  jpx_nseequities_standard_flex_v19_5.trading_volume_turnover_unit_flag.size + 
  jpx_nseequities_standard_flex_v19_5.quantity.size + 
  jpx_nseequities_standard_flex_v19_5.sign.size

-- Display: Quote Quantity
jpx_nseequities_standard_flex_v19_5.quote_quantity.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Quantity
jpx_nseequities_standard_flex_v19_5.quote_quantity.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Volume Turnover Unit Flag: C
  index, trading_volume_turnover_unit_flag = jpx_nseequities_standard_flex_v19_5.trading_volume_turnover_unit_flag.dissect(buffer, index, packet, parent)

  -- Quantity: C
  index, quantity = jpx_nseequities_standard_flex_v19_5.quantity.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_nseequities_standard_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Quantity
jpx_nseequities_standard_flex_v19_5.quote_quantity.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.quote_quantity, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.quote_quantity.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.quote_quantity.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.quote_quantity.fields(buffer, offset, packet, parent)
  end
end

-- Under Quote
jpx_nseequities_standard_flex_v19_5.under_quote = {}

-- Size: Under Quote
jpx_nseequities_standard_flex_v19_5.under_quote.size =
  jpx_nseequities_standard_flex_v19_5.change_flag.size + 
  jpx_nseequities_standard_flex_v19_5.time_c_12.size + 
  jpx_nseequities_standard_flex_v19_5.quote_quantity.size

-- Display: Under Quote
jpx_nseequities_standard_flex_v19_5.under_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Under Quote
jpx_nseequities_standard_flex_v19_5.under_quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Change Flag: C
  index, change_flag = jpx_nseequities_standard_flex_v19_5.change_flag.dissect(buffer, index, packet, parent)

  -- Time C 12: C
  index, time_c_12 = jpx_nseequities_standard_flex_v19_5.time_c_12.dissect(buffer, index, packet, parent)

  -- Quote Quantity: Struct of 3 fields
  index, quote_quantity = jpx_nseequities_standard_flex_v19_5.quote_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Under Quote
jpx_nseequities_standard_flex_v19_5.under_quote.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.under_quote, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.under_quote.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.under_quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.under_quote.fields(buffer, offset, packet, parent)
  end
end

-- Over Quote
jpx_nseequities_standard_flex_v19_5.over_quote = {}

-- Size: Over Quote
jpx_nseequities_standard_flex_v19_5.over_quote.size =
  jpx_nseequities_standard_flex_v19_5.change_flag.size + 
  jpx_nseequities_standard_flex_v19_5.time_c_12.size + 
  jpx_nseequities_standard_flex_v19_5.quote_quantity.size

-- Display: Over Quote
jpx_nseequities_standard_flex_v19_5.over_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Over Quote
jpx_nseequities_standard_flex_v19_5.over_quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Change Flag: C
  index, change_flag = jpx_nseequities_standard_flex_v19_5.change_flag.dissect(buffer, index, packet, parent)

  -- Time C 12: C
  index, time_c_12 = jpx_nseequities_standard_flex_v19_5.time_c_12.dissect(buffer, index, packet, parent)

  -- Quote Quantity: Struct of 3 fields
  index, quote_quantity = jpx_nseequities_standard_flex_v19_5.quote_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Over Quote
jpx_nseequities_standard_flex_v19_5.over_quote.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.over_quote, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.over_quote.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.over_quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.over_quote.fields(buffer, offset, packet, parent)
  end
end

-- Over Under Message
jpx_nseequities_standard_flex_v19_5.over_under_message = {}

-- Size: Over Under Message
jpx_nseequities_standard_flex_v19_5.over_under_message.size =
  jpx_nseequities_standard_flex_v19_5.reserved_2.size + 
  jpx_nseequities_standard_flex_v19_5.over_quote.size + 
  jpx_nseequities_standard_flex_v19_5.under_quote.size

-- Display: Over Under Message
jpx_nseequities_standard_flex_v19_5.over_under_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Over Under Message
jpx_nseequities_standard_flex_v19_5.over_under_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_nseequities_standard_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Over Quote: Struct of 3 fields
  index, over_quote = jpx_nseequities_standard_flex_v19_5.over_quote.dissect(buffer, index, packet, parent)

  -- Under Quote: Struct of 3 fields
  index, under_quote = jpx_nseequities_standard_flex_v19_5.under_quote.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Over Under Message
jpx_nseequities_standard_flex_v19_5.over_under_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.over_under_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.over_under_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.over_under_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.over_under_message.fields(buffer, offset, packet, parent)
  end
end

-- Buy Order
jpx_nseequities_standard_flex_v19_5.buy_order = {}

-- Size: Buy Order
jpx_nseequities_standard_flex_v19_5.buy_order.size =
  jpx_nseequities_standard_flex_v19_5.change_flag.size + 
  jpx_nseequities_standard_flex_v19_5.time_c_12.size + 
  jpx_nseequities_standard_flex_v19_5.quote_quantity.size

-- Display: Buy Order
jpx_nseequities_standard_flex_v19_5.buy_order.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Buy Order
jpx_nseequities_standard_flex_v19_5.buy_order.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Change Flag: C
  index, change_flag = jpx_nseequities_standard_flex_v19_5.change_flag.dissect(buffer, index, packet, parent)

  -- Time C 12: C
  index, time_c_12 = jpx_nseequities_standard_flex_v19_5.time_c_12.dissect(buffer, index, packet, parent)

  -- Quote Quantity: Struct of 3 fields
  index, quote_quantity = jpx_nseequities_standard_flex_v19_5.quote_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Buy Order
jpx_nseequities_standard_flex_v19_5.buy_order.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.buy_order, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.buy_order.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.buy_order.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.buy_order.fields(buffer, offset, packet, parent)
  end
end

-- Sell Order
jpx_nseequities_standard_flex_v19_5.sell_order = {}

-- Size: Sell Order
jpx_nseequities_standard_flex_v19_5.sell_order.size =
  jpx_nseequities_standard_flex_v19_5.change_flag.size + 
  jpx_nseequities_standard_flex_v19_5.time_c_12.size + 
  jpx_nseequities_standard_flex_v19_5.quote_quantity.size

-- Display: Sell Order
jpx_nseequities_standard_flex_v19_5.sell_order.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sell Order
jpx_nseequities_standard_flex_v19_5.sell_order.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Change Flag: C
  index, change_flag = jpx_nseequities_standard_flex_v19_5.change_flag.dissect(buffer, index, packet, parent)

  -- Time C 12: C
  index, time_c_12 = jpx_nseequities_standard_flex_v19_5.time_c_12.dissect(buffer, index, packet, parent)

  -- Quote Quantity: Struct of 3 fields
  index, quote_quantity = jpx_nseequities_standard_flex_v19_5.quote_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sell Order
jpx_nseequities_standard_flex_v19_5.sell_order.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.sell_order, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.sell_order.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.sell_order.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.sell_order.fields(buffer, offset, packet, parent)
  end
end

-- Market Order Message
jpx_nseequities_standard_flex_v19_5.market_order_message = {}

-- Size: Market Order Message
jpx_nseequities_standard_flex_v19_5.market_order_message.size =
  jpx_nseequities_standard_flex_v19_5.reserved_2.size + 
  jpx_nseequities_standard_flex_v19_5.sell_order.size + 
  jpx_nseequities_standard_flex_v19_5.buy_order.size

-- Display: Market Order Message
jpx_nseequities_standard_flex_v19_5.market_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Order Message
jpx_nseequities_standard_flex_v19_5.market_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_nseequities_standard_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Sell Order: Struct of 3 fields
  index, sell_order = jpx_nseequities_standard_flex_v19_5.sell_order.dissect(buffer, index, packet, parent)

  -- Buy Order: Struct of 3 fields
  index, buy_order = jpx_nseequities_standard_flex_v19_5.buy_order.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Order Message
jpx_nseequities_standard_flex_v19_5.market_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.market_order_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.market_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.market_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.market_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Price
jpx_nseequities_standard_flex_v19_5.price = {}

-- Size: Price
jpx_nseequities_standard_flex_v19_5.price.size =
  jpx_nseequities_standard_flex_v19_5.unit_flag.size + 
  jpx_nseequities_standard_flex_v19_5.price_c_14.size + 
  jpx_nseequities_standard_flex_v19_5.sign.size

-- Display: Price
jpx_nseequities_standard_flex_v19_5.price.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price
jpx_nseequities_standard_flex_v19_5.price.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Flag: C
  index, unit_flag = jpx_nseequities_standard_flex_v19_5.unit_flag.dissect(buffer, index, packet, parent)

  -- Price C 14: C
  index, price_c_14 = jpx_nseequities_standard_flex_v19_5.price_c_14.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_nseequities_standard_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price
jpx_nseequities_standard_flex_v19_5.price.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.price, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.price.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.price.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.price.fields(buffer, offset, packet, parent)
  end
end

-- Bid Quote
jpx_nseequities_standard_flex_v19_5.bid_quote = {}

-- Size: Bid Quote
jpx_nseequities_standard_flex_v19_5.bid_quote.size =
  jpx_nseequities_standard_flex_v19_5.change_flag.size + 
  jpx_nseequities_standard_flex_v19_5.price.size + 
  jpx_nseequities_standard_flex_v19_5.time_c_12.size + 
  jpx_nseequities_standard_flex_v19_5.quote_flag.size + 
  jpx_nseequities_standard_flex_v19_5.quote_quantity.size

-- Display: Bid Quote
jpx_nseequities_standard_flex_v19_5.bid_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Quote
jpx_nseequities_standard_flex_v19_5.bid_quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Change Flag: C
  index, change_flag = jpx_nseequities_standard_flex_v19_5.change_flag.dissect(buffer, index, packet, parent)

  -- Price: Struct of 3 fields
  index, price = jpx_nseequities_standard_flex_v19_5.price.dissect(buffer, index, packet, parent)

  -- Time C 12: C
  index, time_c_12 = jpx_nseequities_standard_flex_v19_5.time_c_12.dissect(buffer, index, packet, parent)

  -- Quote Flag: C
  index, quote_flag = jpx_nseequities_standard_flex_v19_5.quote_flag.dissect(buffer, index, packet, parent)

  -- Quote Quantity: Struct of 3 fields
  index, quote_quantity = jpx_nseequities_standard_flex_v19_5.quote_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Quote
jpx_nseequities_standard_flex_v19_5.bid_quote.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.bid_quote, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.bid_quote.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.bid_quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.bid_quote.fields(buffer, offset, packet, parent)
  end
end

-- Ask Quote
jpx_nseequities_standard_flex_v19_5.ask_quote = {}

-- Size: Ask Quote
jpx_nseequities_standard_flex_v19_5.ask_quote.size =
  jpx_nseequities_standard_flex_v19_5.change_flag.size + 
  jpx_nseequities_standard_flex_v19_5.price.size + 
  jpx_nseequities_standard_flex_v19_5.time_c_12.size + 
  jpx_nseequities_standard_flex_v19_5.quote_flag.size + 
  jpx_nseequities_standard_flex_v19_5.quote_quantity.size

-- Display: Ask Quote
jpx_nseequities_standard_flex_v19_5.ask_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask Quote
jpx_nseequities_standard_flex_v19_5.ask_quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Change Flag: C
  index, change_flag = jpx_nseequities_standard_flex_v19_5.change_flag.dissect(buffer, index, packet, parent)

  -- Price: Struct of 3 fields
  index, price = jpx_nseequities_standard_flex_v19_5.price.dissect(buffer, index, packet, parent)

  -- Time C 12: C
  index, time_c_12 = jpx_nseequities_standard_flex_v19_5.time_c_12.dissect(buffer, index, packet, parent)

  -- Quote Flag: C
  index, quote_flag = jpx_nseequities_standard_flex_v19_5.quote_flag.dissect(buffer, index, packet, parent)

  -- Quote Quantity: Struct of 3 fields
  index, quote_quantity = jpx_nseequities_standard_flex_v19_5.quote_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask Quote
jpx_nseequities_standard_flex_v19_5.ask_quote.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.ask_quote, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.ask_quote.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.ask_quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.ask_quote.fields(buffer, offset, packet, parent)
  end
end

-- Quote 10 Message
jpx_nseequities_standard_flex_v19_5.quote_10_message = {}

-- Size: Quote 10 Message
jpx_nseequities_standard_flex_v19_5.quote_10_message.size =
  jpx_nseequities_standard_flex_v19_5.reserved_2.size + 
  jpx_nseequities_standard_flex_v19_5.ask_quote.size + 
  jpx_nseequities_standard_flex_v19_5.bid_quote.size

-- Display: Quote 10 Message
jpx_nseequities_standard_flex_v19_5.quote_10_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote 10 Message
jpx_nseequities_standard_flex_v19_5.quote_10_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_nseequities_standard_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Ask Quote: Struct of 5 fields
  index, ask_quote = jpx_nseequities_standard_flex_v19_5.ask_quote.dissect(buffer, index, packet, parent)

  -- Bid Quote: Struct of 5 fields
  index, bid_quote = jpx_nseequities_standard_flex_v19_5.bid_quote.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote 10 Message
jpx_nseequities_standard_flex_v19_5.quote_10_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.quote_10_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.quote_10_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.quote_10_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.quote_10_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote 9 Message
jpx_nseequities_standard_flex_v19_5.quote_9_message = {}

-- Size: Quote 9 Message
jpx_nseequities_standard_flex_v19_5.quote_9_message.size =
  jpx_nseequities_standard_flex_v19_5.reserved_2.size + 
  jpx_nseequities_standard_flex_v19_5.ask_quote.size + 
  jpx_nseequities_standard_flex_v19_5.bid_quote.size

-- Display: Quote 9 Message
jpx_nseequities_standard_flex_v19_5.quote_9_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote 9 Message
jpx_nseequities_standard_flex_v19_5.quote_9_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_nseequities_standard_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Ask Quote: Struct of 5 fields
  index, ask_quote = jpx_nseequities_standard_flex_v19_5.ask_quote.dissect(buffer, index, packet, parent)

  -- Bid Quote: Struct of 5 fields
  index, bid_quote = jpx_nseequities_standard_flex_v19_5.bid_quote.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote 9 Message
jpx_nseequities_standard_flex_v19_5.quote_9_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.quote_9_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.quote_9_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.quote_9_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.quote_9_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote 8 Message
jpx_nseequities_standard_flex_v19_5.quote_8_message = {}

-- Size: Quote 8 Message
jpx_nseequities_standard_flex_v19_5.quote_8_message.size =
  jpx_nseequities_standard_flex_v19_5.reserved_2.size + 
  jpx_nseequities_standard_flex_v19_5.ask_quote.size + 
  jpx_nseequities_standard_flex_v19_5.bid_quote.size

-- Display: Quote 8 Message
jpx_nseequities_standard_flex_v19_5.quote_8_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote 8 Message
jpx_nseequities_standard_flex_v19_5.quote_8_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_nseequities_standard_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Ask Quote: Struct of 5 fields
  index, ask_quote = jpx_nseequities_standard_flex_v19_5.ask_quote.dissect(buffer, index, packet, parent)

  -- Bid Quote: Struct of 5 fields
  index, bid_quote = jpx_nseequities_standard_flex_v19_5.bid_quote.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote 8 Message
jpx_nseequities_standard_flex_v19_5.quote_8_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.quote_8_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.quote_8_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.quote_8_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.quote_8_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote 7 Message
jpx_nseequities_standard_flex_v19_5.quote_7_message = {}

-- Size: Quote 7 Message
jpx_nseequities_standard_flex_v19_5.quote_7_message.size =
  jpx_nseequities_standard_flex_v19_5.reserved_2.size + 
  jpx_nseequities_standard_flex_v19_5.ask_quote.size + 
  jpx_nseequities_standard_flex_v19_5.bid_quote.size

-- Display: Quote 7 Message
jpx_nseequities_standard_flex_v19_5.quote_7_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote 7 Message
jpx_nseequities_standard_flex_v19_5.quote_7_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_nseequities_standard_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Ask Quote: Struct of 5 fields
  index, ask_quote = jpx_nseequities_standard_flex_v19_5.ask_quote.dissect(buffer, index, packet, parent)

  -- Bid Quote: Struct of 5 fields
  index, bid_quote = jpx_nseequities_standard_flex_v19_5.bid_quote.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote 7 Message
jpx_nseequities_standard_flex_v19_5.quote_7_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.quote_7_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.quote_7_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.quote_7_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.quote_7_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote 6 Message
jpx_nseequities_standard_flex_v19_5.quote_6_message = {}

-- Size: Quote 6 Message
jpx_nseequities_standard_flex_v19_5.quote_6_message.size =
  jpx_nseequities_standard_flex_v19_5.reserved_2.size + 
  jpx_nseequities_standard_flex_v19_5.ask_quote.size + 
  jpx_nseequities_standard_flex_v19_5.bid_quote.size

-- Display: Quote 6 Message
jpx_nseequities_standard_flex_v19_5.quote_6_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote 6 Message
jpx_nseequities_standard_flex_v19_5.quote_6_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_nseequities_standard_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Ask Quote: Struct of 5 fields
  index, ask_quote = jpx_nseequities_standard_flex_v19_5.ask_quote.dissect(buffer, index, packet, parent)

  -- Bid Quote: Struct of 5 fields
  index, bid_quote = jpx_nseequities_standard_flex_v19_5.bid_quote.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote 6 Message
jpx_nseequities_standard_flex_v19_5.quote_6_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.quote_6_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.quote_6_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.quote_6_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.quote_6_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote 5 Message
jpx_nseequities_standard_flex_v19_5.quote_5_message = {}

-- Size: Quote 5 Message
jpx_nseequities_standard_flex_v19_5.quote_5_message.size =
  jpx_nseequities_standard_flex_v19_5.reserved_2.size + 
  jpx_nseequities_standard_flex_v19_5.ask_quote.size + 
  jpx_nseequities_standard_flex_v19_5.bid_quote.size

-- Display: Quote 5 Message
jpx_nseequities_standard_flex_v19_5.quote_5_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote 5 Message
jpx_nseequities_standard_flex_v19_5.quote_5_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_nseequities_standard_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Ask Quote: Struct of 5 fields
  index, ask_quote = jpx_nseequities_standard_flex_v19_5.ask_quote.dissect(buffer, index, packet, parent)

  -- Bid Quote: Struct of 5 fields
  index, bid_quote = jpx_nseequities_standard_flex_v19_5.bid_quote.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote 5 Message
jpx_nseequities_standard_flex_v19_5.quote_5_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.quote_5_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.quote_5_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.quote_5_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.quote_5_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote 4 Message
jpx_nseequities_standard_flex_v19_5.quote_4_message = {}

-- Size: Quote 4 Message
jpx_nseequities_standard_flex_v19_5.quote_4_message.size =
  jpx_nseequities_standard_flex_v19_5.reserved_2.size + 
  jpx_nseequities_standard_flex_v19_5.ask_quote.size + 
  jpx_nseequities_standard_flex_v19_5.bid_quote.size

-- Display: Quote 4 Message
jpx_nseequities_standard_flex_v19_5.quote_4_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote 4 Message
jpx_nseequities_standard_flex_v19_5.quote_4_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_nseequities_standard_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Ask Quote: Struct of 5 fields
  index, ask_quote = jpx_nseequities_standard_flex_v19_5.ask_quote.dissect(buffer, index, packet, parent)

  -- Bid Quote: Struct of 5 fields
  index, bid_quote = jpx_nseequities_standard_flex_v19_5.bid_quote.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote 4 Message
jpx_nseequities_standard_flex_v19_5.quote_4_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.quote_4_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.quote_4_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.quote_4_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.quote_4_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote 3 Message
jpx_nseequities_standard_flex_v19_5.quote_3_message = {}

-- Size: Quote 3 Message
jpx_nseequities_standard_flex_v19_5.quote_3_message.size =
  jpx_nseequities_standard_flex_v19_5.reserved_2.size + 
  jpx_nseequities_standard_flex_v19_5.ask_quote.size + 
  jpx_nseequities_standard_flex_v19_5.bid_quote.size

-- Display: Quote 3 Message
jpx_nseequities_standard_flex_v19_5.quote_3_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote 3 Message
jpx_nseequities_standard_flex_v19_5.quote_3_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_nseequities_standard_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Ask Quote: Struct of 5 fields
  index, ask_quote = jpx_nseequities_standard_flex_v19_5.ask_quote.dissect(buffer, index, packet, parent)

  -- Bid Quote: Struct of 5 fields
  index, bid_quote = jpx_nseequities_standard_flex_v19_5.bid_quote.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote 3 Message
jpx_nseequities_standard_flex_v19_5.quote_3_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.quote_3_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.quote_3_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.quote_3_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.quote_3_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote 2 Message
jpx_nseequities_standard_flex_v19_5.quote_2_message = {}

-- Size: Quote 2 Message
jpx_nseequities_standard_flex_v19_5.quote_2_message.size =
  jpx_nseequities_standard_flex_v19_5.reserved_2.size + 
  jpx_nseequities_standard_flex_v19_5.ask_quote.size + 
  jpx_nseequities_standard_flex_v19_5.bid_quote.size

-- Display: Quote 2 Message
jpx_nseequities_standard_flex_v19_5.quote_2_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote 2 Message
jpx_nseequities_standard_flex_v19_5.quote_2_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_nseequities_standard_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Ask Quote: Struct of 5 fields
  index, ask_quote = jpx_nseequities_standard_flex_v19_5.ask_quote.dissect(buffer, index, packet, parent)

  -- Bid Quote: Struct of 5 fields
  index, bid_quote = jpx_nseequities_standard_flex_v19_5.bid_quote.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote 2 Message
jpx_nseequities_standard_flex_v19_5.quote_2_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.quote_2_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.quote_2_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.quote_2_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.quote_2_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote 1 Message
jpx_nseequities_standard_flex_v19_5.quote_1_message = {}

-- Size: Quote 1 Message
jpx_nseequities_standard_flex_v19_5.quote_1_message.size =
  jpx_nseequities_standard_flex_v19_5.reserved_2.size + 
  jpx_nseequities_standard_flex_v19_5.ask_quote.size + 
  jpx_nseequities_standard_flex_v19_5.bid_quote.size

-- Display: Quote 1 Message
jpx_nseequities_standard_flex_v19_5.quote_1_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote 1 Message
jpx_nseequities_standard_flex_v19_5.quote_1_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_nseequities_standard_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Ask Quote: Struct of 5 fields
  index, ask_quote = jpx_nseequities_standard_flex_v19_5.ask_quote.dissect(buffer, index, packet, parent)

  -- Bid Quote: Struct of 5 fields
  index, bid_quote = jpx_nseequities_standard_flex_v19_5.bid_quote.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote 1 Message
jpx_nseequities_standard_flex_v19_5.quote_1_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.quote_1_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.quote_1_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.quote_1_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.quote_1_message.fields(buffer, offset, packet, parent)
  end
end

-- Current
jpx_nseequities_standard_flex_v19_5.current = {}

-- Size: Current
jpx_nseequities_standard_flex_v19_5.current.size =
  jpx_nseequities_standard_flex_v19_5.price.size + 
  jpx_nseequities_standard_flex_v19_5.time_c_12.size + 
  jpx_nseequities_standard_flex_v19_5.current_change_flag.size + 
  jpx_nseequities_standard_flex_v19_5.stq_reference_point_flag.size + 
  jpx_nseequities_standard_flex_v19_5.reserved_1.size + 
  jpx_nseequities_standard_flex_v19_5.closing_price_input_flag.size

-- Display: Current
jpx_nseequities_standard_flex_v19_5.current.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Current
jpx_nseequities_standard_flex_v19_5.current.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price: Struct of 3 fields
  index, price = jpx_nseequities_standard_flex_v19_5.price.dissect(buffer, index, packet, parent)

  -- Time C 12: C
  index, time_c_12 = jpx_nseequities_standard_flex_v19_5.time_c_12.dissect(buffer, index, packet, parent)

  -- Current Change Flag: C
  index, current_change_flag = jpx_nseequities_standard_flex_v19_5.current_change_flag.dissect(buffer, index, packet, parent)

  -- Stq Reference Point Flag: C
  index, stq_reference_point_flag = jpx_nseequities_standard_flex_v19_5.stq_reference_point_flag.dissect(buffer, index, packet, parent)

  -- Reserved 1: C
  index, reserved_1 = jpx_nseequities_standard_flex_v19_5.reserved_1.dissect(buffer, index, packet, parent)

  -- Closing Price Input Flag: C
  index, closing_price_input_flag = jpx_nseequities_standard_flex_v19_5.closing_price_input_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Current
jpx_nseequities_standard_flex_v19_5.current.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.current, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.current.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.current.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.current.fields(buffer, offset, packet, parent)
  end
end

-- Low
jpx_nseequities_standard_flex_v19_5.low = {}

-- Size: Low
jpx_nseequities_standard_flex_v19_5.low.size =
  jpx_nseequities_standard_flex_v19_5.limit_down_flag.size + 
  jpx_nseequities_standard_flex_v19_5.price.size + 
  jpx_nseequities_standard_flex_v19_5.time_c_6.size + 
  jpx_nseequities_standard_flex_v19_5.change_flag.size

-- Display: Low
jpx_nseequities_standard_flex_v19_5.low.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Low
jpx_nseequities_standard_flex_v19_5.low.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Limit Down Flag: C
  index, limit_down_flag = jpx_nseequities_standard_flex_v19_5.limit_down_flag.dissect(buffer, index, packet, parent)

  -- Price: Struct of 3 fields
  index, price = jpx_nseequities_standard_flex_v19_5.price.dissect(buffer, index, packet, parent)

  -- Time C 6: C
  index, time_c_6 = jpx_nseequities_standard_flex_v19_5.time_c_6.dissect(buffer, index, packet, parent)

  -- Change Flag: C
  index, change_flag = jpx_nseequities_standard_flex_v19_5.change_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Low
jpx_nseequities_standard_flex_v19_5.low.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.low, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.low.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.low.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.low.fields(buffer, offset, packet, parent)
  end
end

-- High
jpx_nseequities_standard_flex_v19_5.high = {}

-- Size: High
jpx_nseequities_standard_flex_v19_5.high.size =
  jpx_nseequities_standard_flex_v19_5.limit_up_flag.size + 
  jpx_nseequities_standard_flex_v19_5.price.size + 
  jpx_nseequities_standard_flex_v19_5.time_c_6.size + 
  jpx_nseequities_standard_flex_v19_5.change_flag.size

-- Display: High
jpx_nseequities_standard_flex_v19_5.high.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: High
jpx_nseequities_standard_flex_v19_5.high.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Limit Up Flag: C
  index, limit_up_flag = jpx_nseequities_standard_flex_v19_5.limit_up_flag.dissect(buffer, index, packet, parent)

  -- Price: Struct of 3 fields
  index, price = jpx_nseequities_standard_flex_v19_5.price.dissect(buffer, index, packet, parent)

  -- Time C 6: C
  index, time_c_6 = jpx_nseequities_standard_flex_v19_5.time_c_6.dissect(buffer, index, packet, parent)

  -- Change Flag: C
  index, change_flag = jpx_nseequities_standard_flex_v19_5.change_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: High
jpx_nseequities_standard_flex_v19_5.high.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.high, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.high.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.high.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.high.fields(buffer, offset, packet, parent)
  end
end

-- Open
jpx_nseequities_standard_flex_v19_5.open = {}

-- Size: Open
jpx_nseequities_standard_flex_v19_5.open.size =
  jpx_nseequities_standard_flex_v19_5.price.size + 
  jpx_nseequities_standard_flex_v19_5.time_c_6.size + 
  jpx_nseequities_standard_flex_v19_5.change_flag.size

-- Display: Open
jpx_nseequities_standard_flex_v19_5.open.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open
jpx_nseequities_standard_flex_v19_5.open.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price: Struct of 3 fields
  index, price = jpx_nseequities_standard_flex_v19_5.price.dissect(buffer, index, packet, parent)

  -- Time C 6: C
  index, time_c_6 = jpx_nseequities_standard_flex_v19_5.time_c_6.dissect(buffer, index, packet, parent)

  -- Change Flag: C
  index, change_flag = jpx_nseequities_standard_flex_v19_5.change_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open
jpx_nseequities_standard_flex_v19_5.open.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.open, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.open.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.open.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.open.fields(buffer, offset, packet, parent)
  end
end

-- Open High Low And Current Price Message
jpx_nseequities_standard_flex_v19_5.open_high_low_and_current_price_message = {}

-- Size: Open High Low And Current Price Message
jpx_nseequities_standard_flex_v19_5.open_high_low_and_current_price_message.size =
  jpx_nseequities_standard_flex_v19_5.reserved_2.size + 
  jpx_nseequities_standard_flex_v19_5.open.size + 
  jpx_nseequities_standard_flex_v19_5.high.size + 
  jpx_nseequities_standard_flex_v19_5.low.size + 
  jpx_nseequities_standard_flex_v19_5.current.size

-- Display: Open High Low And Current Price Message
jpx_nseequities_standard_flex_v19_5.open_high_low_and_current_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open High Low And Current Price Message
jpx_nseequities_standard_flex_v19_5.open_high_low_and_current_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_nseequities_standard_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Open: Struct of 3 fields
  index, open = jpx_nseequities_standard_flex_v19_5.open.dissect(buffer, index, packet, parent)

  -- High: Struct of 4 fields
  index, high = jpx_nseequities_standard_flex_v19_5.high.dissect(buffer, index, packet, parent)

  -- Low: Struct of 4 fields
  index, low = jpx_nseequities_standard_flex_v19_5.low.dissect(buffer, index, packet, parent)

  -- Current: Struct of 6 fields
  index, current = jpx_nseequities_standard_flex_v19_5.current.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open High Low And Current Price Message
jpx_nseequities_standard_flex_v19_5.open_high_low_and_current_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.open_high_low_and_current_price_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.open_high_low_and_current_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.open_high_low_and_current_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.open_high_low_and_current_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Status Information
jpx_nseequities_standard_flex_v19_5.status_information = {}

-- Size: Status Information
jpx_nseequities_standard_flex_v19_5.status_information.size =
  jpx_nseequities_standard_flex_v19_5.issue_status.size + 
  jpx_nseequities_standard_flex_v19_5.status_flag.size + 
  jpx_nseequities_standard_flex_v19_5.short_selling_regulation_flag.size

-- Display: Status Information
jpx_nseequities_standard_flex_v19_5.status_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Status Information
jpx_nseequities_standard_flex_v19_5.status_information.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Issue Status: C
  index, issue_status = jpx_nseequities_standard_flex_v19_5.issue_status.dissect(buffer, index, packet, parent)

  -- Status Flag: C
  index, status_flag = jpx_nseequities_standard_flex_v19_5.status_flag.dissect(buffer, index, packet, parent)

  -- Short Selling Regulation Flag: C
  index, short_selling_regulation_flag = jpx_nseequities_standard_flex_v19_5.short_selling_regulation_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Status Information
jpx_nseequities_standard_flex_v19_5.status_information.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.status_information, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.status_information.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.status_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.status_information.fields(buffer, offset, packet, parent)
  end
end

-- Status Information Message
jpx_nseequities_standard_flex_v19_5.status_information_message = {}

-- Size: Status Information Message
jpx_nseequities_standard_flex_v19_5.status_information_message.size =
  jpx_nseequities_standard_flex_v19_5.reserved_2.size + 
  jpx_nseequities_standard_flex_v19_5.change_flag.size + 
  jpx_nseequities_standard_flex_v19_5.status_information.size + 
  jpx_nseequities_standard_flex_v19_5.time_c_12.size + 
  jpx_nseequities_standard_flex_v19_5.reserved_4.size

-- Display: Status Information Message
jpx_nseequities_standard_flex_v19_5.status_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Status Information Message
jpx_nseequities_standard_flex_v19_5.status_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_nseequities_standard_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Change Flag: C
  index, change_flag = jpx_nseequities_standard_flex_v19_5.change_flag.dissect(buffer, index, packet, parent)

  -- Status Information: Struct of 3 fields
  index, status_information = jpx_nseequities_standard_flex_v19_5.status_information.dissect(buffer, index, packet, parent)

  -- Time C 12: C
  index, time_c_12 = jpx_nseequities_standard_flex_v19_5.time_c_12.dissect(buffer, index, packet, parent)

  -- Reserved 4: C
  index, reserved_4 = jpx_nseequities_standard_flex_v19_5.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Status Information Message
jpx_nseequities_standard_flex_v19_5.status_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.status_information_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.status_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.status_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.status_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Update No Message
jpx_nseequities_standard_flex_v19_5.update_no_message = {}

-- Size: Update No Message
jpx_nseequities_standard_flex_v19_5.update_no_message.size =
  jpx_nseequities_standard_flex_v19_5.update_no.size

-- Display: Update No Message
jpx_nseequities_standard_flex_v19_5.update_no_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Update No Message
jpx_nseequities_standard_flex_v19_5.update_no_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Update No: C
  index, update_no = jpx_nseequities_standard_flex_v19_5.update_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Update No Message
jpx_nseequities_standard_flex_v19_5.update_no_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.update_no_message, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.update_no_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.update_no_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.update_no_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
jpx_nseequities_standard_flex_v19_5.payload = {}

-- Dispatch: Payload
jpx_nseequities_standard_flex_v19_5.payload.dispatch = {
  ["NO"] = jpx_nseequities_standard_flex_v19_5.update_no_message.dissect,
  ["ST"] = jpx_nseequities_standard_flex_v19_5.status_information_message.dissect,
  ["4P"] = jpx_nseequities_standard_flex_v19_5.open_high_low_and_current_price_message.dissect,
  ["Q1"] = jpx_nseequities_standard_flex_v19_5.quote_1_message.dissect,
  ["Q2"] = jpx_nseequities_standard_flex_v19_5.quote_2_message.dissect,
  ["Q3"] = jpx_nseequities_standard_flex_v19_5.quote_3_message.dissect,
  ["Q4"] = jpx_nseequities_standard_flex_v19_5.quote_4_message.dissect,
  ["Q5"] = jpx_nseequities_standard_flex_v19_5.quote_5_message.dissect,
  ["Q6"] = jpx_nseequities_standard_flex_v19_5.quote_6_message.dissect,
  ["Q7"] = jpx_nseequities_standard_flex_v19_5.quote_7_message.dissect,
  ["Q8"] = jpx_nseequities_standard_flex_v19_5.quote_8_message.dissect,
  ["Q9"] = jpx_nseequities_standard_flex_v19_5.quote_9_message.dissect,
  ["QA"] = jpx_nseequities_standard_flex_v19_5.quote_10_message.dissect,
  ["QM"] = jpx_nseequities_standard_flex_v19_5.market_order_message.dissect,
  ["QO"] = jpx_nseequities_standard_flex_v19_5.over_under_message.dissect,
  ["VL"] = jpx_nseequities_standard_flex_v19_5.trading_volume_message.dissect,
  ["VA"] = jpx_nseequities_standard_flex_v19_5.turnover_message.dissect,
  ["VW"] = jpx_nseequities_standard_flex_v19_5.vwap_message.dissect,
  ["PA"] = jpx_nseequities_standard_flex_v19_5.parity_message.dissect,
  ["YI"] = jpx_nseequities_standard_flex_v19_5.yield_message.dissect,
  ["LC"] = jpx_nseequities_standard_flex_v19_5.control_message.dissect,
}

-- Dissect: Payload
jpx_nseequities_standard_flex_v19_5.payload.dissect = function(buffer, offset, packet, parent, tag_id)
  local dissect = jpx_nseequities_standard_flex_v19_5.payload.dispatch[tag_id]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Tag Information
jpx_nseequities_standard_flex_v19_5.tag_information = {}

-- Calculate size of: Tag Information
jpx_nseequities_standard_flex_v19_5.tag_information.size = function(buffer, offset)
  local index = 0

  index = index + jpx_nseequities_standard_flex_v19_5.tag_id.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 2):string()
  index = index + jpx_nseequities_standard_flex_v19_5.payload.size(buffer, payload_offset, payload_type)

  index = index + jpx_nseequities_standard_flex_v19_5.separation_of_tag.size

  return index
end

-- Display: Tag Information
jpx_nseequities_standard_flex_v19_5.tag_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tag Information
jpx_nseequities_standard_flex_v19_5.tag_information.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tag ID: 2 Byte Ascii String Enum with 21 values
  index, tag_id = jpx_nseequities_standard_flex_v19_5.tag_id.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 21 branches
  index = jpx_nseequities_standard_flex_v19_5.payload.dissect(buffer, index, packet, parent, tag_id)

  -- Separation Of Tag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, separation_of_tag = jpx_nseequities_standard_flex_v19_5.separation_of_tag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tag Information
jpx_nseequities_standard_flex_v19_5.tag_information.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.tag_information, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.tag_information.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.tag_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.tag_information.fields(buffer, offset, packet, parent)
  end
end

-- CB Issue Code
jpx_nseequities_standard_flex_v19_5.cb_issue_code = {}

-- Size: CB Issue Code
jpx_nseequities_standard_flex_v19_5.cb_issue_code.size =
  jpx_nseequities_standard_flex_v19_5.cb_space.size + 
  jpx_nseequities_standard_flex_v19_5.cb_reserved_code.size + 
  jpx_nseequities_standard_flex_v19_5.time_symbol.size + 
  jpx_nseequities_standard_flex_v19_5.cb_proper_name_code.size

-- Display: CB Issue Code
jpx_nseequities_standard_flex_v19_5.cb_issue_code.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: CB Issue Code
jpx_nseequities_standard_flex_v19_5.cb_issue_code.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- CB Space: 3 Byte Ascii String
  index, cb_space = jpx_nseequities_standard_flex_v19_5.cb_space.dissect(buffer, index, packet, parent)

  -- CB Reserved Code: 1 Byte Ascii String Enum with 4 values
  index, cb_reserved_code = jpx_nseequities_standard_flex_v19_5.cb_reserved_code.dissect(buffer, index, packet, parent)

  -- Time Symbol: 4 Byte Ascii String
  index, time_symbol = jpx_nseequities_standard_flex_v19_5.time_symbol.dissect(buffer, index, packet, parent)

  -- CB Proper Name Code: 4 Byte Ascii String
  index, cb_proper_name_code = jpx_nseequities_standard_flex_v19_5.cb_proper_name_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: CB Issue Code
jpx_nseequities_standard_flex_v19_5.cb_issue_code.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.cb_issue_code, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.cb_issue_code.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.cb_issue_code.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.cb_issue_code.fields(buffer, offset, packet, parent)
  end
end

-- Stock Issue Code
jpx_nseequities_standard_flex_v19_5.stock_issue_code = {}

-- Size: Stock Issue Code
jpx_nseequities_standard_flex_v19_5.stock_issue_code.size =
  jpx_nseequities_standard_flex_v19_5.stock_space.size + 
  jpx_nseequities_standard_flex_v19_5.stock_proper_name_code.size + 
  jpx_nseequities_standard_flex_v19_5.stock_reserved_code.size

-- Display: Stock Issue Code
jpx_nseequities_standard_flex_v19_5.stock_issue_code.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Issue Code
jpx_nseequities_standard_flex_v19_5.stock_issue_code.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Space: 7 Byte Ascii String
  index, stock_space = jpx_nseequities_standard_flex_v19_5.stock_space.dissect(buffer, index, packet, parent)

  -- Stock Proper Name Code: 4 Byte Ascii String
  index, stock_proper_name_code = jpx_nseequities_standard_flex_v19_5.stock_proper_name_code.dissect(buffer, index, packet, parent)

  -- Stock Reserved Code: 1 Byte Ascii String
  index, stock_reserved_code = jpx_nseequities_standard_flex_v19_5.stock_reserved_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Issue Code
jpx_nseequities_standard_flex_v19_5.stock_issue_code.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.stock_issue_code, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.stock_issue_code.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.stock_issue_code.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.stock_issue_code.fields(buffer, offset, packet, parent)
  end
end

-- Issue Code
jpx_nseequities_standard_flex_v19_5.issue_code = {}

-- Dissect: Issue Code
jpx_nseequities_standard_flex_v19_5.issue_code.dissect = function(buffer, offset, packet, parent, issue_classification_large_classification)
  -- Dissect Stock Issue Code
  if issue_classification_large_classification == "01" then
    return jpx_nseequities_standard_flex_v19_5.stock_issue_code.dissect(buffer, offset, packet, parent)
  end
  -- Dissect CB Issue Code
  if issue_classification_large_classification == "02" then
    return jpx_nseequities_standard_flex_v19_5.cb_issue_code.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Blank Issue Code
  if issue_classification_large_classification ~= "01" then
    return jpx_nseequities_standard_flex_v19_5.blank_issue_code.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Issue Classification
jpx_nseequities_standard_flex_v19_5.issue_classification = {}

-- Size: Issue Classification
jpx_nseequities_standard_flex_v19_5.issue_classification.size =
  jpx_nseequities_standard_flex_v19_5.issue_classification_large_classification.size + 
  jpx_nseequities_standard_flex_v19_5.issue_classification_medium_classification.size

-- Display: Issue Classification
jpx_nseequities_standard_flex_v19_5.issue_classification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Classification
jpx_nseequities_standard_flex_v19_5.issue_classification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Issue Classification Large Classification: 2 Byte Ascii String Enum with 2 values
  index, issue_classification_large_classification = jpx_nseequities_standard_flex_v19_5.issue_classification_large_classification.dissect(buffer, index, packet, parent)

  -- Issue Classification Medium Classification: 2 Byte Ascii String
  index, issue_classification_medium_classification = jpx_nseequities_standard_flex_v19_5.issue_classification_medium_classification.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Classification
jpx_nseequities_standard_flex_v19_5.issue_classification.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.issue_classification, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.issue_classification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.issue_classification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.issue_classification.fields(buffer, offset, packet, parent)
  end
end

-- Message Type Medium Classification
jpx_nseequities_standard_flex_v19_5.message_type_medium_classification = {}

-- Dispatch: Message Type Medium Classification
jpx_nseequities_standard_flex_v19_5.message_type_medium_classification.dispatch = {
  ["1"] = jpx_nseequities_standard_flex_v19_5.issue_realtime_medium_classification.dissect,
  ["2"] = jpx_nseequities_standard_flex_v19_5.statistics_medium_classification.dissect,
  ["3"] = jpx_nseequities_standard_flex_v19_5.index_medium_classification.dissect,
  ["4"] = jpx_nseequities_standard_flex_v19_5.issue_basic_medium_classification.dissect,
  ["9"] = jpx_nseequities_standard_flex_v19_5.control_medium_classification.dissect,
}

-- Dissect: Message Type Medium Classification
jpx_nseequities_standard_flex_v19_5.message_type_medium_classification.dissect = function(buffer, offset, packet, parent, message_type_large_classification)
  local dissect = jpx_nseequities_standard_flex_v19_5.message_type_medium_classification.dispatch[message_type_large_classification]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Type
jpx_nseequities_standard_flex_v19_5.message_type = {}

-- Calculate size of: Message Type
jpx_nseequities_standard_flex_v19_5.message_type.size = function(buffer, offset)
  local index = 0

  index = index + jpx_nseequities_standard_flex_v19_5.message_type_large_classification.size

  -- Calculate runtime size of Message Type Medium Classification field
  local message_type_medium_classification_offset = offset + index
  local message_type_medium_classification_type = buffer(message_type_medium_classification_offset - 1, 1):string()
  index = index + jpx_nseequities_standard_flex_v19_5.message_type_medium_classification.size(buffer, message_type_medium_classification_offset, message_type_medium_classification_type)

  return index
end

-- Display: Message Type
jpx_nseequities_standard_flex_v19_5.message_type.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Type
jpx_nseequities_standard_flex_v19_5.message_type.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type Large Classification: 1 Byte Ascii String Enum with 5 values
  index, message_type_large_classification = jpx_nseequities_standard_flex_v19_5.message_type_large_classification.dissect(buffer, index, packet, parent)

  -- Message Type Medium Classification: Runtime Type with 5 branches
  index = jpx_nseequities_standard_flex_v19_5.message_type_medium_classification.dissect(buffer, index, packet, parent, message_type_large_classification)

  return index
end

-- Dissect: Message Type
jpx_nseequities_standard_flex_v19_5.message_type.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.message_type, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.message_type.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.message_type.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.message_type.fields(buffer, offset, packet, parent)
  end
end

-- Message Serial No
jpx_nseequities_standard_flex_v19_5.message_serial_no = {}

-- Size: Message Serial No
jpx_nseequities_standard_flex_v19_5.message_serial_no.size =
  jpx_nseequities_standard_flex_v19_5.multicast_group_number.size + 
  jpx_nseequities_standard_flex_v19_5.sequence_number.size

-- Display: Message Serial No
jpx_nseequities_standard_flex_v19_5.message_serial_no.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Serial No
jpx_nseequities_standard_flex_v19_5.message_serial_no.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Multicast Group Number: 3 Byte Ascii String
  index, multicast_group_number = jpx_nseequities_standard_flex_v19_5.multicast_group_number.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Ascii String
  index, sequence_number = jpx_nseequities_standard_flex_v19_5.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Serial No
jpx_nseequities_standard_flex_v19_5.message_serial_no.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.message_serial_no, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.message_serial_no.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.message_serial_no.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.message_serial_no.fields(buffer, offset, packet, parent)
  end
end

-- Service Header
jpx_nseequities_standard_flex_v19_5.service_header = {}

-- Calculate size of: Service Header
jpx_nseequities_standard_flex_v19_5.service_header.size = function(buffer, offset)
  local index = 0

  index = index + jpx_nseequities_standard_flex_v19_5.message_length.size

  index = index + jpx_nseequities_standard_flex_v19_5.message_serial_no.size

  index = index + jpx_nseequities_standard_flex_v19_5.message_type.size(buffer, offset + index)

  index = index + jpx_nseequities_standard_flex_v19_5.exchange_code.size

  index = index + jpx_nseequities_standard_flex_v19_5.session_distinction.size

  index = index + jpx_nseequities_standard_flex_v19_5.issue_classification.size

  -- Calculate runtime size of Issue Code field
  local issue_code_offset = offset + index
  local issue_code_type = buffer(issue_code_offset - 4, 2):string()
  index = index + jpx_nseequities_standard_flex_v19_5.issue_code.size(buffer, issue_code_offset, issue_code_type)

  return index
end

-- Display: Service Header
jpx_nseequities_standard_flex_v19_5.service_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Service Header
jpx_nseequities_standard_flex_v19_5.service_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 6 Byte Ascii String
  index, message_length = jpx_nseequities_standard_flex_v19_5.message_length.dissect(buffer, index, packet, parent)

  -- Message Serial No: Struct of 2 fields
  index, message_serial_no = jpx_nseequities_standard_flex_v19_5.message_serial_no.dissect(buffer, index, packet, parent)

  -- Message Type: Struct of 2 fields
  index, message_type = jpx_nseequities_standard_flex_v19_5.message_type.dissect(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 6 values
  index, exchange_code = jpx_nseequities_standard_flex_v19_5.exchange_code.dissect(buffer, index, packet, parent)

  -- Session Distinction: 2 Byte Ascii String Enum with 4 values
  index, session_distinction = jpx_nseequities_standard_flex_v19_5.session_distinction.dissect(buffer, index, packet, parent)

  -- Issue Classification: Struct of 2 fields
  index, issue_classification = jpx_nseequities_standard_flex_v19_5.issue_classification.dissect(buffer, index, packet, parent)

  -- Dependency element: Issue Classification Large Classification
  local issue_classification_large_classification = trim_right_spaces(buffer(index - 4, 2):string())

  -- Issue Code: Runtime Type with 3 branches
  index = jpx_nseequities_standard_flex_v19_5.issue_code.dissect(buffer, index, packet, parent, issue_classification_large_classification)

  return index
end

-- Dissect: Service Header
jpx_nseequities_standard_flex_v19_5.service_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_standard_flex_v19_5.fields.service_header, buffer(offset, 0))
    local index = jpx_nseequities_standard_flex_v19_5.service_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_standard_flex_v19_5.service_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_standard_flex_v19_5.service_header.fields(buffer, offset, packet, parent)
  end
end

-- Udp Packet
jpx_nseequities_standard_flex_v19_5.udp_packet = {}

-- Verify required size of Udp packet
jpx_nseequities_standard_flex_v19_5.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= jpx_nseequities_standard_flex_v19_5.start_of_message.size + jpx_nseequities_standard_flex_v19_5.message_length.size + jpx_nseequities_standard_flex_v19_5.message_serial_no.size + jpx_nseequities_standard_flex_v19_5.message_type_large_classification.size
end

-- Dissect Udp Packet
jpx_nseequities_standard_flex_v19_5.udp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Start Of Message: 1 Byte Unsigned Fixed Width Integer
  index, start_of_message = jpx_nseequities_standard_flex_v19_5.start_of_message.dissect(buffer, index, packet, parent)

  -- Service Header: Struct of 7 fields
  index, service_header = jpx_nseequities_standard_flex_v19_5.service_header.dissect(buffer, index, packet, parent)

  -- Separation Between Service Header And Data Section: 1 Byte Unsigned Fixed Width Integer
  index, separation_between_service_header_and_data_section = jpx_nseequities_standard_flex_v19_5.separation_between_service_header_and_data_section.dissect(buffer, index, packet, parent)

  -- Dependency for Tag Information
  local end_of_payload = buffer:len()

  -- Tag Information: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, tag_information = jpx_nseequities_standard_flex_v19_5.tag_information.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_jpx_nseequities_standard_flex_v19_5.init()
end

-- Dissector for Jpx NseEquities Standard Flex 19.5
function omi_jpx_nseequities_standard_flex_v19_5.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_jpx_nseequities_standard_flex_v19_5.name

  -- Dissect protocol
  local protocol = parent:add(omi_jpx_nseequities_standard_flex_v19_5, buffer(), omi_jpx_nseequities_standard_flex_v19_5.description, "("..buffer:len().." Bytes)")
  return jpx_nseequities_standard_flex_v19_5.udp_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Jpx NseEquities Standard Flex 19.5 (Udp)
local function omi_jpx_nseequities_standard_flex_v19_5_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not jpx_nseequities_standard_flex_v19_5.udp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_jpx_nseequities_standard_flex_v19_5
  omi_jpx_nseequities_standard_flex_v19_5.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Jpx NseEquities Standard Flex 19.5
omi_jpx_nseequities_standard_flex_v19_5:register_heuristic("udp", omi_jpx_nseequities_standard_flex_v19_5_udp_heuristic)

-- Register Jpx NseEquities Standard Flex 19.5 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_jpx_nseequities_standard_flex_v19_5)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Japan Exchange Group
--   Version: 19.5
--   Date: Friday, September 25, 2026
--   Specification: 02_FLEX Connection Specification Realtime Message (Standard) DS.19.3.pdf
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
