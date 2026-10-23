-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Jpx TseEquities ToSTNeT Flex 19.5 Protocol
local omi_jpx_tseequities_tostnet_flex_v19_5 = Proto("Omi.Jpx.TseEquities.ToSTNeT.Flex.v19.5", "Jpx TseEquities ToSTNeT Flex 19.5")

-- Protocol table
local jpx_tseequities_tostnet_flex_v19_5 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Jpx TseEquities ToSTNeT Flex 19.5 Fields
omi_jpx_tseequities_tostnet_flex_v19_5.fields.blank_issue_code = ProtoField.new("Blank Issue Code", "jpx.tseequities.tostnet.flex.v19.5.blankissuecode", ftypes.STRING, nil, nil, nil, "Issue Code layout for a Control, Index or Statistics Message, which 5.3.3 (7) sets to spaces. The twelve bytes are on the wire either way, so they are read rather than skipped.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.cb_issue_code = ProtoField.new("CB Issue Code", "jpx.tseequities.tostnet.flex.v19.5.cbissuecode", ftypes.STRING, nil, nil, nil, "Issue Code layout used when Issue Classification Large Classification is 02 CB-Related. The figure carries no label of its own in 5.3.3 (7). FLEX Issue Code is set with right-align.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.cb_proper_name_code = ProtoField.new("CB Proper Name Code", "jpx.tseequities.tostnet.flex.v19.5.cbpropernamecode", ftypes.STRING, nil, nil, nil, "Proper Name Code.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.cb_reserved_code = ProtoField.new("CB Reserved Code", "jpx.tseequities.tostnet.flex.v19.5.cbreservedcode", ftypes.STRING, nil, nil, nil, "Reserved Code.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.cb_space = ProtoField.new("CB Space", "jpx.tseequities.tostnet.flex.v19.5.cbspace", ftypes.STRING, nil, nil, nil, "Space.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.control_medium_classification = ProtoField.new("Control Medium Classification", "jpx.tseequities.tostnet.flex.v19.5.controlmediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of a Control Message. Indicates details and other information.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.exchange_code = ProtoField.new("Exchange Code", "jpx.tseequities.tostnet.flex.v19.5.exchangecode", ftypes.STRING, nil, nil, nil, "Exchange the information belongs to. This section is a space in Control Message.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.index_medium_classification = ProtoField.new("Index Medium Classification", "jpx.tseequities.tostnet.flex.v19.5.indexmediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of a Index Message. Indicates details and other information.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.issue_basic_medium_classification = ProtoField.new("Issue Basic Medium Classification", "jpx.tseequities.tostnet.flex.v19.5.issuebasicmediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of a Issue Basic Message. Indicates details and other information.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.issue_classification = ProtoField.new("Issue Classification", "jpx.tseequities.tostnet.flex.v19.5.issueclassification", ftypes.STRING, nil, nil, nil, "Set in issue realtime message and issue basic message. In the case of Control, Index and Statistics Message, space is set.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.issue_classification_large_classification = ProtoField.new("Issue Classification Large Classification", "jpx.tseequities.tostnet.flex.v19.5.issueclassificationlargeclassification", ftypes.STRING, nil, nil, nil, "Large Classification of the Issue Classification Code.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.issue_classification_medium_classification = ProtoField.new("Issue Classification Medium Classification", "jpx.tseequities.tostnet.flex.v19.5.issueclassificationmediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of the Issue Classification Code. Its meaning depends on the Large Classification: under 01 Stock-Related, 11 Prime Market (Domestic Stock) through 23 TOKYO PRO Market (Foreign Stock); under 02 CB-Related, 11 CB / 13 SW / 14 Exchangeable Bond.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.issue_realtime_medium_classification = ProtoField.new("Issue Realtime Medium Classification", "jpx.tseequities.tostnet.flex.v19.5.issuerealtimemediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of a Issue Realtime Message. Indicates details and other information.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.lot_size_unit_flag = ProtoField.new("Lot Size Unit Flag", "jpx.tseequities.tostnet.flex.v19.5.lotsizeunitflag", ftypes.STRING, nil, nil, nil, "Indicates that this is the lot size unit flag.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.market_identification_flag = ProtoField.new("Market Identification Flag", "jpx.tseequities.tostnet.flex.v19.5.marketidentificationflag", ftypes.STRING, nil, nil, nil, "Indicates the flag for identifying ToSTNeT market.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.market_state_flag = ProtoField.new("Market State Flag", "jpx.tseequities.tostnet.flex.v19.5.marketstateflag", ftypes.STRING, nil, nil, nil, "Indicates the state of trading halt for the issue on the ToSTNeT.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.message_length = ProtoField.new("Message Length", "jpx.tseequities.tostnet.flex.v19.5.messagelength", ftypes.STRING, nil, nil, nil, "Total Length: Control Code (DC1 and DC2) + Service Header Section + User Data Section (including DC3). Right-align the data, suppress space in the leading space.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.message_serial_no = ProtoField.new("Message Serial No", "jpx.tseequities.tostnet.flex.v19.5.messageserialno", ftypes.STRING, nil, nil, nil, "Numbered from 1 on each Multicast Group, with the multicast group number in the first to third byte")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.message_type = ProtoField.new("Message Type", "jpx.tseequities.tostnet.flex.v19.5.messagetype", ftypes.STRING, nil, nil, nil, "Large Classification indicates Message Type, and Medium Classification indicates details and other information")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.message_type_large_classification = ProtoField.new("Message Type Large Classification", "jpx.tseequities.tostnet.flex.v19.5.messagetypelargeclassification", ftypes.STRING, nil, nil, nil, "Large Classification indicates Message Type.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.multicast_group_number = ProtoField.new("Multicast Group Number", "jpx.tseequities.tostnet.flex.v19.5.multicastgroupnumber", ftypes.STRING, nil, nil, nil, "Multicast group number, set in the first to third byte of the Message Serial No.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.price = ProtoField.new("Price", "jpx.tseequities.tostnet.flex.v19.5.price", ftypes.STRING)
omi_jpx_tseequities_tostnet_flex_v19_5.fields.price_c_14 = ProtoField.new("Price C 14", "jpx.tseequities.tostnet.flex.v19.5.pricec14", ftypes.DOUBLE, nil, nil, nil, "Indicates that this is the trade price.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.price_code = ProtoField.new("Price Code", "jpx.tseequities.tostnet.flex.v19.5.pricecode", ftypes.STRING, nil, nil, nil, "Indicates the price code for the transaction.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.reserved_2 = ProtoField.new("Reserved 2", "jpx.tseequities.tostnet.flex.v19.5.reserved2", ftypes.STRING, nil, nil, nil, "This item is reserved.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.separation_between_service_header_and_data_section = ProtoField.new("Separation Between Service Header And Data Section", "jpx.tseequities.tostnet.flex.v19.5.separationbetweenserviceheaderanddatasection", ftypes.UINT8, nil, nil, nil, "Control Code DC2 (0x12), Separation between Service Header and Data Section")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.separation_of_tag = ProtoField.new("Separation Of Tag", "jpx.tseequities.tostnet.flex.v19.5.separationoftag", ftypes.UINT8, nil, nil, nil, "Control Code DC3 (0x13) between tags, or DC1 (0x11) on the tag that ends the message")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.sequence_number = ProtoField.new("Sequence Number", "jpx.tseequities.tostnet.flex.v19.5.sequencenumber", ftypes.STRING, nil, nil, nil, "Numbered in sequence, beginning with 00000001. Space is set in the case of Backup Information, All-Day Information or Issue Basic Information, and the requested serial number which was used for the UDP message is set in Retransmission.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.session_distinction = ProtoField.new("Session Distinction", "jpx.tseequities.tostnet.flex.v19.5.sessiondistinction", ftypes.STRING, nil, nil, nil, "Indicates the session in which the new information is generated. Set in Issue Real-time Message (FLEX Standard, ToSTNeT) and Index Message; for Issue Basic Message, Statistics Message and Control Message, spaces is set.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.sign = ProtoField.new("Sign", "jpx.tseequities.tostnet.flex.v19.5.sign", ftypes.STRING, nil, nil, nil, "Indicates Sign of Price.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.start_end_flag = ProtoField.new("Start End Flag", "jpx.tseequities.tostnet.flex.v19.5.startendflag", ftypes.STRING, nil, nil, nil, "Indicates the flag for identifying the distinction between start and end.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.start_of_message = ProtoField.new("Start Of Message", "jpx.tseequities.tostnet.flex.v19.5.startofmessage", ftypes.UINT8, nil, nil, nil, "Control Code DC1 (0x11), Start of a message")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.state = ProtoField.new("State", "jpx.tseequities.tostnet.flex.v19.5.state", ftypes.STRING)
omi_jpx_tseequities_tostnet_flex_v19_5.fields.state_flag = ProtoField.new("State Flag", "jpx.tseequities.tostnet.flex.v19.5.stateflag", ftypes.STRING, nil, nil, nil, "Indicates the state of trading halt for the issue on the ToSTNeT.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.statistics_medium_classification = ProtoField.new("Statistics Medium Classification", "jpx.tseequities.tostnet.flex.v19.5.statisticsmediumclassification", ftypes.STRING, nil, nil, nil, "Medium Classification of a Statistics Message. Indicates details and other information.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.stock_issue_code = ProtoField.new("Stock Issue Code", "jpx.tseequities.tostnet.flex.v19.5.stockissuecode", ftypes.STRING, nil, nil, nil, "Issue Code layout a. Stocks, used when Issue Classification Large Classification is 01 Stock-Related. FLEX Issue Code is set with right-align.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.stock_proper_name_code = ProtoField.new("Stock Proper Name Code", "jpx.tseequities.tostnet.flex.v19.5.stockpropernamecode", ftypes.STRING, nil, nil, nil, "Proper Name Code.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.stock_reserved_code = ProtoField.new("Stock Reserved Code", "jpx.tseequities.tostnet.flex.v19.5.stockreservedcode", ftypes.STRING, nil, nil, nil, "Reserved Code. Space is set on the reserved code of a Mother Stock.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.stock_space = ProtoField.new("Stock Space", "jpx.tseequities.tostnet.flex.v19.5.stockspace", ftypes.STRING, nil, nil, nil, "Space.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.tag_id = ProtoField.new("Tag ID", "jpx.tseequities.tostnet.flex.v19.5.tagid", ftypes.STRING, nil, nil, nil, "Tag ID is numbered using 1 to 9 and A to Z. Different tags are used for different information classifications.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.tag_information = ProtoField.new("Tag Information", "jpx.tseequities.tostnet.flex.v19.5.taginformation", ftypes.STRING, nil, nil, nil, "One tag: its two character Tag ID, its data, and the control code that closes it (DC3 between tags, DC1 at the end of the message)")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.test_mode_flag = ProtoField.new("Test Mode Flag", "jpx.tseequities.tostnet.flex.v19.5.testmodeflag", ftypes.STRING, nil, nil, nil, "Indicates the flag for identifying the distinction between real and test operation.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.time_c_12 = ProtoField.new("Time C 12", "jpx.tseequities.tostnet.flex.v19.5.timec12", ftypes.STRING, nil, nil, nil, "Indicates the time at which the trade was established.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.time_c_6 = ProtoField.new("Time C 6", "jpx.tseequities.tostnet.flex.v19.5.timec6", ftypes.STRING, nil, nil, nil, "Indicates time.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.time_symbol = ProtoField.new("Time Symbol", "jpx.tseequities.tostnet.flex.v19.5.timesymbol", ftypes.STRING, nil, nil, nil, "Time Symbol.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.trading_halt = ProtoField.new("Trading Halt", "jpx.tseequities.tostnet.flex.v19.5.tradinghalt", ftypes.STRING)
omi_jpx_tseequities_tostnet_flex_v19_5.fields.trading_volume = ProtoField.new("Trading Volume", "jpx.tseequities.tostnet.flex.v19.5.tradingvolume", ftypes.STRING)
omi_jpx_tseequities_tostnet_flex_v19_5.fields.trading_volume_c_14 = ProtoField.new("Trading Volume C 14", "jpx.tseequities.tostnet.flex.v19.5.tradingvolumec14", ftypes.STRING, nil, nil, nil, "Indicatds the trading volume.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.trading_volume_turnover_unit_flag = ProtoField.new("Trading Volume Turnover Unit Flag", "jpx.tseequities.tostnet.flex.v19.5.tradingvolumeturnoverunitflag", ftypes.STRING, nil, nil, nil, "Indicates the trading volume/turnover unit flag.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.transaction_identification_flag = ProtoField.new("Transaction Identification Flag", "jpx.tseequities.tostnet.flex.v19.5.transactionidentificationflag", ftypes.STRING, nil, nil, nil, "Indicates the identification of the transaction.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.turnover = ProtoField.new("Turnover", "jpx.tseequities.tostnet.flex.v19.5.turnover", ftypes.STRING)
omi_jpx_tseequities_tostnet_flex_v19_5.fields.turnover_c_14 = ProtoField.new("Turnover C 14", "jpx.tseequities.tostnet.flex.v19.5.turnoverc14", ftypes.STRING, nil, nil, nil, "Indiactes the turnover.")

-- Jpx TseEquities ToSTNeT Flex 19.5 Framing
omi_jpx_tseequities_tostnet_flex_v19_5.fields.service_header = ProtoField.new("Service Header", "jpx.tseequities.tostnet.flex.v19.5.serviceheader", ftypes.STRING, nil, nil, nil, "Jpx Flex 39 byte service header, common to all message types")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.udp_packet = ProtoField.new("Udp Packet", "jpx.tseequities.tostnet.flex.v19.5.udppacket", ftypes.STRING, nil, nil, nil, "One Flex user message per datagram: DC1, Service Header, DC2, then the tags")

-- Jpx TseEquities ToSTNeT 19.5 Application Messages
omi_jpx_tseequities_tostnet_flex_v19_5.fields.control_message = ProtoField.new("Control Message", "jpx.tseequities.tostnet.flex.v19.5.controlmessage", ftypes.STRING, nil, nil, nil, "In this tag, the test mode flag and the start/end flag that are used in a control message will be set. This tag will be edited into a control message (communication control and health check control) for output.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.tostnet_byissue_information_message = ProtoField.new("ToSTNeT By-Issue Information Message", "jpx.tseequities.tostnet.flex.v19.5.tostnetbyissueinformationmessage", ftypes.STRING, nil, nil, nil, "In this tag, information concerning trade and trading halt for an issue (single-issue transaction, basket transaction, or closing price transaction) on the ToSTNeT is set. This data appears as part of realtime data.")
omi_jpx_tseequities_tostnet_flex_v19_5.fields.tostnet_market_information_message = ProtoField.new("ToSTNeT Market Information Message", "jpx.tseequities.tostnet.flex.v19.5.tostnetmarketinformationmessage", ftypes.STRING, nil, nil, nil, "In this tag, state information on the ToSTNeT will be set. This data appears as part of realtime data.")

-- Jpx TseEquities ToSTNeT Flex 19.5 Expert Info
jpx_tseequities_tostnet_flex_v19_5.experts = {}
jpx_tseequities_tostnet_flex_v19_5.experts.not_a_number = ProtoExpert.new("jpx.tseequities.tostnet.flex.v19.5.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_jpx_tseequities_tostnet_flex_v19_5.experts = { jpx_tseequities_tostnet_flex_v19_5.experts.not_a_number }

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Jpx TseEquities ToSTNeT Flex 19.5 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true

-- Register Jpx TseEquities ToSTNeT Flex 19.5 Show Options
omi_jpx_tseequities_tostnet_flex_v19_5.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_jpx_tseequities_tostnet_flex_v19_5.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_jpx_tseequities_tostnet_flex_v19_5.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_jpx_tseequities_tostnet_flex_v19_5.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_jpx_tseequities_tostnet_flex_v19_5.prefs.show_application_messages then
    show.application_messages = omi_jpx_tseequities_tostnet_flex_v19_5.prefs.show_application_messages
  end
  if show.headers ~= omi_jpx_tseequities_tostnet_flex_v19_5.prefs.show_headers then
    show.headers = omi_jpx_tseequities_tostnet_flex_v19_5.prefs.show_headers
  end
  if show.structs ~= omi_jpx_tseequities_tostnet_flex_v19_5.prefs.show_structs then
    show.structs = omi_jpx_tseequities_tostnet_flex_v19_5.prefs.show_structs
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
-- Jpx TseEquities ToSTNeT Flex 19.5 Fields
-----------------------------------------------------------------------

-- Blank Issue Code
jpx_tseequities_tostnet_flex_v19_5.blank_issue_code = {}

-- Size: Blank Issue Code
jpx_tseequities_tostnet_flex_v19_5.blank_issue_code.size = 12

-- Display: Blank Issue Code
jpx_tseequities_tostnet_flex_v19_5.blank_issue_code.display = function(value)
  return "Blank Issue Code: "..value
end

-- Dissect: Blank Issue Code
jpx_tseequities_tostnet_flex_v19_5.blank_issue_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.blank_issue_code.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.blank_issue_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.blank_issue_code, range, value, display)

  return offset + length, value
end

-- CB Proper Name Code
jpx_tseequities_tostnet_flex_v19_5.cb_proper_name_code = {}

-- Size: CB Proper Name Code
jpx_tseequities_tostnet_flex_v19_5.cb_proper_name_code.size = 4

-- Display: CB Proper Name Code
jpx_tseequities_tostnet_flex_v19_5.cb_proper_name_code.display = function(value)
  return "CB Proper Name Code: "..value
end

-- Dissect: CB Proper Name Code
jpx_tseequities_tostnet_flex_v19_5.cb_proper_name_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.cb_proper_name_code.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.cb_proper_name_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.cb_proper_name_code, range, value, display)

  return offset + length, value
end

-- CB Reserved Code
jpx_tseequities_tostnet_flex_v19_5.cb_reserved_code = {}

-- Size: CB Reserved Code
jpx_tseequities_tostnet_flex_v19_5.cb_reserved_code.size = 1

-- Display: CB Reserved Code
jpx_tseequities_tostnet_flex_v19_5.cb_reserved_code.display = function(value)
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
jpx_tseequities_tostnet_flex_v19_5.cb_reserved_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.cb_reserved_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_tostnet_flex_v19_5.cb_reserved_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.cb_reserved_code, range, value, display)

  return offset + length, value
end

-- CB Space
jpx_tseequities_tostnet_flex_v19_5.cb_space = {}

-- Size: CB Space
jpx_tseequities_tostnet_flex_v19_5.cb_space.size = 3

-- Display: CB Space
jpx_tseequities_tostnet_flex_v19_5.cb_space.display = function(value)
  return "CB Space: "..value
end

-- Dissect: CB Space
jpx_tseequities_tostnet_flex_v19_5.cb_space.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.cb_space.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.cb_space.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.cb_space, range, value, display)

  return offset + length, value
end

-- Control Medium Classification
jpx_tseequities_tostnet_flex_v19_5.control_medium_classification = {}

-- Size: Control Medium Classification
jpx_tseequities_tostnet_flex_v19_5.control_medium_classification.size = 2

-- Display: Control Medium Classification
jpx_tseequities_tostnet_flex_v19_5.control_medium_classification.display = function(value)
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
jpx_tseequities_tostnet_flex_v19_5.control_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.control_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.control_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.control_medium_classification, range, value, display)

  return offset + length, value
end

-- Exchange Code
jpx_tseequities_tostnet_flex_v19_5.exchange_code = {}

-- Size: Exchange Code
jpx_tseequities_tostnet_flex_v19_5.exchange_code.size = 1

-- Display: Exchange Code
jpx_tseequities_tostnet_flex_v19_5.exchange_code.display = function(value)
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
jpx_tseequities_tostnet_flex_v19_5.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_tostnet_flex_v19_5.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Index Medium Classification
jpx_tseequities_tostnet_flex_v19_5.index_medium_classification = {}

-- Size: Index Medium Classification
jpx_tseequities_tostnet_flex_v19_5.index_medium_classification.size = 2

-- Display: Index Medium Classification
jpx_tseequities_tostnet_flex_v19_5.index_medium_classification.display = function(value)
  if value == "00" then
    return "Index Medium Classification: Index Message (00)"
  end

  return "Index Medium Classification: Unknown("..value..")"
end

-- Dissect: Index Medium Classification
jpx_tseequities_tostnet_flex_v19_5.index_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.index_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.index_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.index_medium_classification, range, value, display)

  return offset + length, value
end

-- Issue Basic Medium Classification
jpx_tseequities_tostnet_flex_v19_5.issue_basic_medium_classification = {}

-- Size: Issue Basic Medium Classification
jpx_tseequities_tostnet_flex_v19_5.issue_basic_medium_classification.size = 2

-- Display: Issue Basic Medium Classification
jpx_tseequities_tostnet_flex_v19_5.issue_basic_medium_classification.display = function(value)
  if value == "00" then
    return "Issue Basic Medium Classification: Regular (00)"
  end
  if value == "01" then
    return "Issue Basic Medium Classification: Special (01)"
  end

  return "Issue Basic Medium Classification: Unknown("..value..")"
end

-- Dissect: Issue Basic Medium Classification
jpx_tseequities_tostnet_flex_v19_5.issue_basic_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.issue_basic_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.issue_basic_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.issue_basic_medium_classification, range, value, display)

  return offset + length, value
end

-- Issue Classification Large Classification
jpx_tseequities_tostnet_flex_v19_5.issue_classification_large_classification = {}

-- Size: Issue Classification Large Classification
jpx_tseequities_tostnet_flex_v19_5.issue_classification_large_classification.size = 2

-- Display: Issue Classification Large Classification
jpx_tseequities_tostnet_flex_v19_5.issue_classification_large_classification.display = function(value)
  if value == "01" then
    return "Issue Classification Large Classification: Stockrelated (01)"
  end
  if value == "02" then
    return "Issue Classification Large Classification: Cbrelated (02)"
  end

  return "Issue Classification Large Classification: Unknown("..value..")"
end

-- Dissect: Issue Classification Large Classification
jpx_tseequities_tostnet_flex_v19_5.issue_classification_large_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.issue_classification_large_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.issue_classification_large_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.issue_classification_large_classification, range, value, display)

  return offset + length, value
end

-- Issue Classification Medium Classification
jpx_tseequities_tostnet_flex_v19_5.issue_classification_medium_classification = {}

-- Size: Issue Classification Medium Classification
jpx_tseequities_tostnet_flex_v19_5.issue_classification_medium_classification.size = 2

-- Display: Issue Classification Medium Classification
jpx_tseequities_tostnet_flex_v19_5.issue_classification_medium_classification.display = function(value)
  return "Issue Classification Medium Classification: "..value
end

-- Dissect: Issue Classification Medium Classification
jpx_tseequities_tostnet_flex_v19_5.issue_classification_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.issue_classification_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.issue_classification_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.issue_classification_medium_classification, range, value, display)

  return offset + length, value
end

-- Issue Realtime Medium Classification
jpx_tseequities_tostnet_flex_v19_5.issue_realtime_medium_classification = {}

-- Size: Issue Realtime Medium Classification
jpx_tseequities_tostnet_flex_v19_5.issue_realtime_medium_classification.size = 2

-- Display: Issue Realtime Medium Classification
jpx_tseequities_tostnet_flex_v19_5.issue_realtime_medium_classification.display = function(value)
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
jpx_tseequities_tostnet_flex_v19_5.issue_realtime_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.issue_realtime_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.issue_realtime_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.issue_realtime_medium_classification, range, value, display)

  return offset + length, value
end

-- Lot Size Unit Flag
jpx_tseequities_tostnet_flex_v19_5.lot_size_unit_flag = {}

-- Size: Lot Size Unit Flag
jpx_tseequities_tostnet_flex_v19_5.lot_size_unit_flag.size = 1

-- Display: Lot Size Unit Flag
jpx_tseequities_tostnet_flex_v19_5.lot_size_unit_flag.display = function(value)
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
jpx_tseequities_tostnet_flex_v19_5.lot_size_unit_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.lot_size_unit_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_tostnet_flex_v19_5.lot_size_unit_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.lot_size_unit_flag, range, value, display)

  return offset + length, value
end

-- Market Identification Flag
jpx_tseequities_tostnet_flex_v19_5.market_identification_flag = {}

-- Size: Market Identification Flag
jpx_tseequities_tostnet_flex_v19_5.market_identification_flag.size = 1

-- Display: Market Identification Flag
jpx_tseequities_tostnet_flex_v19_5.market_identification_flag.display = function(value)
  if value == "1" then
    return "Market Identification Flag: Singleissue Transaction (1)"
  end
  if value == "2" then
    return "Market Identification Flag: Basket Transaction (2)"
  end
  if value == "3" then
    return "Market Identification Flag: Closing Price Transaction (3)"
  end

  return "Market Identification Flag: Unknown("..value..")"
end

-- Dissect: Market Identification Flag
jpx_tseequities_tostnet_flex_v19_5.market_identification_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.market_identification_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_tostnet_flex_v19_5.market_identification_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.market_identification_flag, range, value, display)

  return offset + length, value
end

-- Market State Flag
jpx_tseequities_tostnet_flex_v19_5.market_state_flag = {}

-- Size: Market State Flag
jpx_tseequities_tostnet_flex_v19_5.market_state_flag.size = 2

-- Display: Market State Flag
jpx_tseequities_tostnet_flex_v19_5.market_state_flag.display = function(value)
  if value == "D0" then
    return "Market State Flag: Market Suspension (D0)"
  end
  if value == "D1" then
    return "Market State Flag: Release From Market Suspension (D1)"
  end

  return "Market State Flag: Unknown("..value..")"
end

-- Dissect: Market State Flag
jpx_tseequities_tostnet_flex_v19_5.market_state_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.market_state_flag.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.market_state_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.market_state_flag, range, value, display)

  return offset + length, value
end

-- Message Length
jpx_tseequities_tostnet_flex_v19_5.message_length = {}

-- Size: Message Length
jpx_tseequities_tostnet_flex_v19_5.message_length.size = 6

-- Display: Message Length
jpx_tseequities_tostnet_flex_v19_5.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
jpx_tseequities_tostnet_flex_v19_5.message_length.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.message_length.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type Large Classification
jpx_tseequities_tostnet_flex_v19_5.message_type_large_classification = {}

-- Size: Message Type Large Classification
jpx_tseequities_tostnet_flex_v19_5.message_type_large_classification.size = 1

-- Display: Message Type Large Classification
jpx_tseequities_tostnet_flex_v19_5.message_type_large_classification.display = function(value)
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
jpx_tseequities_tostnet_flex_v19_5.message_type_large_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.message_type_large_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_tostnet_flex_v19_5.message_type_large_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.message_type_large_classification, range, value, display)

  return offset + length, value
end

-- Multicast Group Number
jpx_tseequities_tostnet_flex_v19_5.multicast_group_number = {}

-- Size: Multicast Group Number
jpx_tseequities_tostnet_flex_v19_5.multicast_group_number.size = 3

-- Display: Multicast Group Number
jpx_tseequities_tostnet_flex_v19_5.multicast_group_number.display = function(value)
  return "Multicast Group Number: "..value
end

-- Dissect: Multicast Group Number
jpx_tseequities_tostnet_flex_v19_5.multicast_group_number.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.multicast_group_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.multicast_group_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.multicast_group_number, range, value, display)

  return offset + length, value
end

-- Price C 14
jpx_tseequities_tostnet_flex_v19_5.price_c_14 = {}

-- Size: Price C 14
jpx_tseequities_tostnet_flex_v19_5.price_c_14.size = 14

-- Display: Price C 14
jpx_tseequities_tostnet_flex_v19_5.price_c_14.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, jpx_tseequities_tostnet_flex_v19_5.price_c_14.size):string(), 4)

  if text == nil then
    return "Price C 14: "..tostring(value)
  end

  return "Price C 14: "..text
end

-- Dissect: Price C 14
jpx_tseequities_tostnet_flex_v19_5.price_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.price_c_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.price_c_14, range, value, "Price C 14: Not Applicable")
    item:add_proto_expert_info(jpx_tseequities_tostnet_flex_v19_5.experts.not_a_number, "Price C 14 is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = jpx_tseequities_tostnet_flex_v19_5.price_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.price_c_14, range, value, display)

  return offset + length, value
end

-- Price Code
jpx_tseequities_tostnet_flex_v19_5.price_code = {}

-- Size: Price Code
jpx_tseequities_tostnet_flex_v19_5.price_code.size = 2

-- Display: Price Code
jpx_tseequities_tostnet_flex_v19_5.price_code.display = function(value)
  if value == "01" then
    return "Price Code: Previousday Closing Price (01)"
  end
  if value == "05" then
    return "Price Code: Previousday Vwap (05)"
  end
  if value == "11" then
    return "Price Code: Morningsession Closing Price (11)"
  end
  if value == "15" then
    return "Price Code: Morningsession Vwap (15)"
  end
  if value == "31" then
    return "Price Code: Todays Closing Price (31)"
  end
  if value == "25" then
    return "Price Code: Afternoonsession Vwap (25)"
  end
  if value == "35" then
    return "Price Code: Allday Vwap (35)"
  end
  if value == "  " then
    return "Price Code: No Price Code (<whitespace>)"
  end

  return "Price Code: Unknown("..value..")"
end

-- Dissect: Price Code
jpx_tseequities_tostnet_flex_v19_5.price_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.price_code.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.price_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.price_code, range, value, display)

  return offset + length, value
end

-- Reserved 2
jpx_tseequities_tostnet_flex_v19_5.reserved_2 = {}

-- Size: Reserved 2
jpx_tseequities_tostnet_flex_v19_5.reserved_2.size = 2

-- Display: Reserved 2
jpx_tseequities_tostnet_flex_v19_5.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
jpx_tseequities_tostnet_flex_v19_5.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.reserved_2.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Separation Between Service Header And Data Section
jpx_tseequities_tostnet_flex_v19_5.separation_between_service_header_and_data_section = {}

-- Size: Separation Between Service Header And Data Section
jpx_tseequities_tostnet_flex_v19_5.separation_between_service_header_and_data_section.size = 1

-- Display: Separation Between Service Header And Data Section
jpx_tseequities_tostnet_flex_v19_5.separation_between_service_header_and_data_section.display = function(value)
  return "Separation Between Service Header And Data Section: "..value
end

-- Dissect: Separation Between Service Header And Data Section
jpx_tseequities_tostnet_flex_v19_5.separation_between_service_header_and_data_section.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.separation_between_service_header_and_data_section.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_tseequities_tostnet_flex_v19_5.separation_between_service_header_and_data_section.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.separation_between_service_header_and_data_section, range, value, display)

  return offset + length, value
end

-- Separation Of Tag
jpx_tseequities_tostnet_flex_v19_5.separation_of_tag = {}

-- Size: Separation Of Tag
jpx_tseequities_tostnet_flex_v19_5.separation_of_tag.size = 1

-- Display: Separation Of Tag
jpx_tseequities_tostnet_flex_v19_5.separation_of_tag.display = function(value)
  if value == 19 then
    return "Separation Of Tag: Separation Between Tag (19)"
  end
  if value == 17 then
    return "Separation Of Tag: End Of Message (17)"
  end

  return "Separation Of Tag: Unknown("..value..")"
end

-- Dissect: Separation Of Tag
jpx_tseequities_tostnet_flex_v19_5.separation_of_tag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.separation_of_tag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_tseequities_tostnet_flex_v19_5.separation_of_tag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.separation_of_tag, range, value, display)

  return offset + length, value
end

-- Sequence Number
jpx_tseequities_tostnet_flex_v19_5.sequence_number = {}

-- Size: Sequence Number
jpx_tseequities_tostnet_flex_v19_5.sequence_number.size = 8

-- Display: Sequence Number
jpx_tseequities_tostnet_flex_v19_5.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
jpx_tseequities_tostnet_flex_v19_5.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Distinction
jpx_tseequities_tostnet_flex_v19_5.session_distinction = {}

-- Size: Session Distinction
jpx_tseequities_tostnet_flex_v19_5.session_distinction.size = 2

-- Display: Session Distinction
jpx_tseequities_tostnet_flex_v19_5.session_distinction.display = function(value)
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
jpx_tseequities_tostnet_flex_v19_5.session_distinction.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.session_distinction.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.session_distinction.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.session_distinction, range, value, display)

  return offset + length, value
end

-- Sign
jpx_tseequities_tostnet_flex_v19_5.sign = {}

-- Size: Sign
jpx_tseequities_tostnet_flex_v19_5.sign.size = 1

-- Display: Sign
jpx_tseequities_tostnet_flex_v19_5.sign.display = function(value)
  if value == "+" then
    return "Sign: Positive (+)"
  end
  if value == " " then
    return "Sign: No Sign (<whitespace>)"
  end

  return "Sign: Unknown("..value..")"
end

-- Dissect: Sign
jpx_tseequities_tostnet_flex_v19_5.sign.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_tostnet_flex_v19_5.sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.sign, range, value, display)

  return offset + length, value
end

-- Start End Flag
jpx_tseequities_tostnet_flex_v19_5.start_end_flag = {}

-- Size: Start End Flag
jpx_tseequities_tostnet_flex_v19_5.start_end_flag.size = 1

-- Display: Start End Flag
jpx_tseequities_tostnet_flex_v19_5.start_end_flag.display = function(value)
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
jpx_tseequities_tostnet_flex_v19_5.start_end_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.start_end_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_tostnet_flex_v19_5.start_end_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.start_end_flag, range, value, display)

  return offset + length, value
end

-- Start Of Message
jpx_tseequities_tostnet_flex_v19_5.start_of_message = {}

-- Size: Start Of Message
jpx_tseequities_tostnet_flex_v19_5.start_of_message.size = 1

-- Display: Start Of Message
jpx_tseequities_tostnet_flex_v19_5.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
jpx_tseequities_tostnet_flex_v19_5.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.start_of_message.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_tseequities_tostnet_flex_v19_5.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- State Flag
jpx_tseequities_tostnet_flex_v19_5.state_flag = {}

-- Size: State Flag
jpx_tseequities_tostnet_flex_v19_5.state_flag.size = 2

-- Display: State Flag
jpx_tseequities_tostnet_flex_v19_5.state_flag.display = function(value)
  if value == "A0" then
    return "State Flag: Trading Halt (A0)"
  end
  if value == "A1" then
    return "State Flag: Release From Trading Halt (A1)"
  end
  if value == "  " then
    return "State Flag: Other Than The Above (<whitespace>)"
  end

  return "State Flag: Unknown("..value..")"
end

-- Dissect: State Flag
jpx_tseequities_tostnet_flex_v19_5.state_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.state_flag.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.state_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.state_flag, range, value, display)

  return offset + length, value
end

-- Statistics Medium Classification
jpx_tseequities_tostnet_flex_v19_5.statistics_medium_classification = {}

-- Size: Statistics Medium Classification
jpx_tseequities_tostnet_flex_v19_5.statistics_medium_classification.size = 2

-- Display: Statistics Medium Classification
jpx_tseequities_tostnet_flex_v19_5.statistics_medium_classification.display = function(value)
  if value == "00" then
    return "Statistics Medium Classification: Statistics Message (00)"
  end

  return "Statistics Medium Classification: Unknown("..value..")"
end

-- Dissect: Statistics Medium Classification
jpx_tseequities_tostnet_flex_v19_5.statistics_medium_classification.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.statistics_medium_classification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.statistics_medium_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.statistics_medium_classification, range, value, display)

  return offset + length, value
end

-- Stock Proper Name Code
jpx_tseequities_tostnet_flex_v19_5.stock_proper_name_code = {}

-- Size: Stock Proper Name Code
jpx_tseequities_tostnet_flex_v19_5.stock_proper_name_code.size = 4

-- Display: Stock Proper Name Code
jpx_tseequities_tostnet_flex_v19_5.stock_proper_name_code.display = function(value)
  return "Stock Proper Name Code: "..value
end

-- Dissect: Stock Proper Name Code
jpx_tseequities_tostnet_flex_v19_5.stock_proper_name_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.stock_proper_name_code.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.stock_proper_name_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.stock_proper_name_code, range, value, display)

  return offset + length, value
end

-- Stock Reserved Code
jpx_tseequities_tostnet_flex_v19_5.stock_reserved_code = {}

-- Size: Stock Reserved Code
jpx_tseequities_tostnet_flex_v19_5.stock_reserved_code.size = 1

-- Display: Stock Reserved Code
jpx_tseequities_tostnet_flex_v19_5.stock_reserved_code.display = function(value)
  return "Stock Reserved Code: "..value
end

-- Dissect: Stock Reserved Code
jpx_tseequities_tostnet_flex_v19_5.stock_reserved_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.stock_reserved_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_tostnet_flex_v19_5.stock_reserved_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.stock_reserved_code, range, value, display)

  return offset + length, value
end

-- Stock Space
jpx_tseequities_tostnet_flex_v19_5.stock_space = {}

-- Size: Stock Space
jpx_tseequities_tostnet_flex_v19_5.stock_space.size = 7

-- Display: Stock Space
jpx_tseequities_tostnet_flex_v19_5.stock_space.display = function(value)
  return "Stock Space: "..value
end

-- Dissect: Stock Space
jpx_tseequities_tostnet_flex_v19_5.stock_space.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.stock_space.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.stock_space.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.stock_space, range, value, display)

  return offset + length, value
end

-- Tag ID
jpx_tseequities_tostnet_flex_v19_5.tag_id = {}

-- Size: Tag ID
jpx_tseequities_tostnet_flex_v19_5.tag_id.size = 2

-- Display: Tag ID
jpx_tseequities_tostnet_flex_v19_5.tag_id.display = function(value)
  if value == "TI" then
    return "Tag ID: ToSTNeT By-Issue Information Message (TI)"
  end
  if value == "TM" then
    return "Tag ID: ToSTNeT Market Information Message (TM)"
  end
  if value == "LC" then
    return "Tag ID: Control Message (LC)"
  end

  return "Tag ID: Unknown("..value..")"
end

-- Dissect: Tag ID
jpx_tseequities_tostnet_flex_v19_5.tag_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.tag_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.tag_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.tag_id, range, value, display)

  return offset + length, value
end

-- Test Mode Flag
jpx_tseequities_tostnet_flex_v19_5.test_mode_flag = {}

-- Size: Test Mode Flag
jpx_tseequities_tostnet_flex_v19_5.test_mode_flag.size = 1

-- Display: Test Mode Flag
jpx_tseequities_tostnet_flex_v19_5.test_mode_flag.display = function(value)
  if value == "1" then
    return "Test Mode Flag: Real Operation (1)"
  end
  if value == "2" then
    return "Test Mode Flag: Test Operation (2)"
  end

  return "Test Mode Flag: Unknown("..value..")"
end

-- Dissect: Test Mode Flag
jpx_tseequities_tostnet_flex_v19_5.test_mode_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.test_mode_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_tostnet_flex_v19_5.test_mode_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.test_mode_flag, range, value, display)

  return offset + length, value
end

-- Time C 12
jpx_tseequities_tostnet_flex_v19_5.time_c_12 = {}

-- Size: Time C 12
jpx_tseequities_tostnet_flex_v19_5.time_c_12.size = 12

-- Display: Time C 12
jpx_tseequities_tostnet_flex_v19_5.time_c_12.display = function(value)
  if #value < 8 then
    return "Time C 12: "..value
  end

  return "Time C 12: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6).."."..value:sub(7, 8)
end

-- Dissect: Time C 12
jpx_tseequities_tostnet_flex_v19_5.time_c_12.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.time_c_12.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.time_c_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.time_c_12, range, value, display)

  return offset + length, value
end

-- Time C 6
jpx_tseequities_tostnet_flex_v19_5.time_c_6 = {}

-- Size: Time C 6
jpx_tseequities_tostnet_flex_v19_5.time_c_6.size = 6

-- Display: Time C 6
jpx_tseequities_tostnet_flex_v19_5.time_c_6.display = function(value)
  if #value < 4 then
    return "Time C 6: "..value
  end

  local hour = value:sub(1, 2)
  local minute = value:sub(3, 4)

  if minute:match("^%s*$") then
    return "Time C 6: "..hour
  end

  return "Time C 6: "..hour..":"..minute
end

-- Dissect: Time C 6
jpx_tseequities_tostnet_flex_v19_5.time_c_6.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.time_c_6.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.time_c_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.time_c_6, range, value, display)

  return offset + length, value
end

-- Time Symbol
jpx_tseequities_tostnet_flex_v19_5.time_symbol = {}

-- Size: Time Symbol
jpx_tseequities_tostnet_flex_v19_5.time_symbol.size = 4

-- Display: Time Symbol
jpx_tseequities_tostnet_flex_v19_5.time_symbol.display = function(value)
  return "Time Symbol: "..value
end

-- Dissect: Time Symbol
jpx_tseequities_tostnet_flex_v19_5.time_symbol.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.time_symbol.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.time_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.time_symbol, range, value, display)

  return offset + length, value
end

-- Trading Volume C 14
jpx_tseequities_tostnet_flex_v19_5.trading_volume_c_14 = {}

-- Size: Trading Volume C 14
jpx_tseequities_tostnet_flex_v19_5.trading_volume_c_14.size = 14

-- Display: Trading Volume C 14
jpx_tseequities_tostnet_flex_v19_5.trading_volume_c_14.display = function(value)
  return "Trading Volume C 14: "..value
end

-- Dissect: Trading Volume C 14
jpx_tseequities_tostnet_flex_v19_5.trading_volume_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.trading_volume_c_14.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.trading_volume_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.trading_volume_c_14, range, value, display)

  return offset + length, value
end

-- Trading Volume Turnover Unit Flag
jpx_tseequities_tostnet_flex_v19_5.trading_volume_turnover_unit_flag = {}

-- Size: Trading Volume Turnover Unit Flag
jpx_tseequities_tostnet_flex_v19_5.trading_volume_turnover_unit_flag.size = 1

-- Display: Trading Volume Turnover Unit Flag
jpx_tseequities_tostnet_flex_v19_5.trading_volume_turnover_unit_flag.display = function(value)
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
jpx_tseequities_tostnet_flex_v19_5.trading_volume_turnover_unit_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.trading_volume_turnover_unit_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_tostnet_flex_v19_5.trading_volume_turnover_unit_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.trading_volume_turnover_unit_flag, range, value, display)

  return offset + length, value
end

-- Transaction Identification Flag
jpx_tseequities_tostnet_flex_v19_5.transaction_identification_flag = {}

-- Size: Transaction Identification Flag
jpx_tseequities_tostnet_flex_v19_5.transaction_identification_flag.size = 1

-- Display: Transaction Identification Flag
jpx_tseequities_tostnet_flex_v19_5.transaction_identification_flag.display = function(value)
  if value == "1" then
    return "Transaction Identification Flag: Day Transaction (1)"
  end
  if value == "2" then
    return "Transaction Identification Flag: Ordinary Transaction T 2 Vwap Transaction (2)"
  end
  if value == "3" then
    return "Transaction Identification Flag: Day Transaction Vwap Transaction (3)"
  end
  if value == " " then
    return "Transaction Identification Flag: Ordinary Transaction T 2 (<whitespace>)"
  end
  if value == "A" then
    return "Transaction Identification Flag: Ordinary Transaction T 1 (A)"
  end
  if value == "B" then
    return "Transaction Identification Flag: Ordinary Transaction T 1 Vwap Transaction (B)"
  end
  if value == "C" then
    return "Transaction Identification Flag: Ordinary Transaction T 3 (C)"
  end
  if value == "D" then
    return "Transaction Identification Flag: Ordinary Transaction T 3 Vwap Transaction (D)"
  end
  if value == "E" then
    return "Transaction Identification Flag: Ordinary Transaction T 4 (E)"
  end
  if value == "F" then
    return "Transaction Identification Flag: Ordinary Transaction T 4 Vwap Transaction (F)"
  end
  if value == "G" then
    return "Transaction Identification Flag: Ordinary Transaction T 5 (G)"
  end
  if value == "H" then
    return "Transaction Identification Flag: Ordinary Transaction T 5 Vwap Transaction (H)"
  end
  if value == "I" then
    return "Transaction Identification Flag: Ordinary Transaction T 6 (I)"
  end
  if value == "J" then
    return "Transaction Identification Flag: Ordinary Transaction T 6 Vwap Transaction (J)"
  end
  if value == "K" then
    return "Transaction Identification Flag: Ordinary Transaction T 7 (K)"
  end
  if value == "L" then
    return "Transaction Identification Flag: Ordinary Transaction T 7 Vwap Transaction (L)"
  end
  if value == "M" then
    return "Transaction Identification Flag: Ordinary Transaction T 8 (M)"
  end
  if value == "N" then
    return "Transaction Identification Flag: Ordinary Transaction T 8 Vwap Transaction (N)"
  end
  if value == "O" then
    return "Transaction Identification Flag: Ordinary Transaction T 9 (O)"
  end
  if value == "P" then
    return "Transaction Identification Flag: Ordinary Transaction T 9 Vwap Transaction (P)"
  end

  return "Transaction Identification Flag: Unknown("..value..")"
end

-- Dissect: Transaction Identification Flag
jpx_tseequities_tostnet_flex_v19_5.transaction_identification_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.transaction_identification_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_tseequities_tostnet_flex_v19_5.transaction_identification_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.transaction_identification_flag, range, value, display)

  return offset + length, value
end

-- Turnover C 14
jpx_tseequities_tostnet_flex_v19_5.turnover_c_14 = {}

-- Size: Turnover C 14
jpx_tseequities_tostnet_flex_v19_5.turnover_c_14.size = 14

-- Display: Turnover C 14
jpx_tseequities_tostnet_flex_v19_5.turnover_c_14.display = function(value)
  return "Turnover C 14: "..value
end

-- Dissect: Turnover C 14
jpx_tseequities_tostnet_flex_v19_5.turnover_c_14.dissect = function(buffer, offset, packet, parent)
  local length = jpx_tseequities_tostnet_flex_v19_5.turnover_c_14.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = jpx_tseequities_tostnet_flex_v19_5.turnover_c_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.turnover_c_14, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Jpx TseEquities ToSTNeT Flex 19.5
-----------------------------------------------------------------------

-- Control Message
jpx_tseequities_tostnet_flex_v19_5.control_message = {}

-- Size: Control Message
jpx_tseequities_tostnet_flex_v19_5.control_message.size =
  jpx_tseequities_tostnet_flex_v19_5.reserved_2.size + 
  jpx_tseequities_tostnet_flex_v19_5.test_mode_flag.size + 
  jpx_tseequities_tostnet_flex_v19_5.start_end_flag.size + 
  jpx_tseequities_tostnet_flex_v19_5.time_c_6.size

-- Display: Control Message
jpx_tseequities_tostnet_flex_v19_5.control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message
jpx_tseequities_tostnet_flex_v19_5.control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_tostnet_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Test Mode Flag: C
  index, test_mode_flag = jpx_tseequities_tostnet_flex_v19_5.test_mode_flag.dissect(buffer, index, packet, parent)

  -- Start End Flag: C
  index, start_end_flag = jpx_tseequities_tostnet_flex_v19_5.start_end_flag.dissect(buffer, index, packet, parent)

  -- Time C 6: C
  index, time_c_6 = jpx_tseequities_tostnet_flex_v19_5.time_c_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Control Message
jpx_tseequities_tostnet_flex_v19_5.control_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.control_message, buffer(offset, 0))
    local index = jpx_tseequities_tostnet_flex_v19_5.control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_tostnet_flex_v19_5.control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_tostnet_flex_v19_5.control_message.fields(buffer, offset, packet, parent)
  end
end

-- State
jpx_tseequities_tostnet_flex_v19_5.state = {}

-- Size: State
jpx_tseequities_tostnet_flex_v19_5.state.size =
  jpx_tseequities_tostnet_flex_v19_5.market_state_flag.size + 
  jpx_tseequities_tostnet_flex_v19_5.time_c_6.size

-- Display: State
jpx_tseequities_tostnet_flex_v19_5.state.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: State
jpx_tseequities_tostnet_flex_v19_5.state.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market State Flag: C
  index, market_state_flag = jpx_tseequities_tostnet_flex_v19_5.market_state_flag.dissect(buffer, index, packet, parent)

  -- Time C 6: C
  index, time_c_6 = jpx_tseequities_tostnet_flex_v19_5.time_c_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: State
jpx_tseequities_tostnet_flex_v19_5.state.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.state, buffer(offset, 0))
    local index = jpx_tseequities_tostnet_flex_v19_5.state.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_tostnet_flex_v19_5.state.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_tostnet_flex_v19_5.state.fields(buffer, offset, packet, parent)
  end
end

-- ToSTNeT Market Information Message
jpx_tseequities_tostnet_flex_v19_5.tostnet_market_information_message = {}

-- Size: ToSTNeT Market Information Message
jpx_tseequities_tostnet_flex_v19_5.tostnet_market_information_message.size =
  jpx_tseequities_tostnet_flex_v19_5.reserved_2.size + 
  jpx_tseequities_tostnet_flex_v19_5.market_identification_flag.size + 
  jpx_tseequities_tostnet_flex_v19_5.state.size

-- Display: ToSTNeT Market Information Message
jpx_tseequities_tostnet_flex_v19_5.tostnet_market_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: ToSTNeT Market Information Message
jpx_tseequities_tostnet_flex_v19_5.tostnet_market_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_tostnet_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Market Identification Flag: C
  index, market_identification_flag = jpx_tseequities_tostnet_flex_v19_5.market_identification_flag.dissect(buffer, index, packet, parent)

  -- State: Struct of 2 fields
  index, state = jpx_tseequities_tostnet_flex_v19_5.state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: ToSTNeT Market Information Message
jpx_tseequities_tostnet_flex_v19_5.tostnet_market_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.tostnet_market_information_message, buffer(offset, 0))
    local index = jpx_tseequities_tostnet_flex_v19_5.tostnet_market_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_tostnet_flex_v19_5.tostnet_market_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_tostnet_flex_v19_5.tostnet_market_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Turnover
jpx_tseequities_tostnet_flex_v19_5.turnover = {}

-- Size: Turnover
jpx_tseequities_tostnet_flex_v19_5.turnover.size =
  jpx_tseequities_tostnet_flex_v19_5.trading_volume_turnover_unit_flag.size + 
  jpx_tseequities_tostnet_flex_v19_5.turnover_c_14.size

-- Display: Turnover
jpx_tseequities_tostnet_flex_v19_5.turnover.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Turnover
jpx_tseequities_tostnet_flex_v19_5.turnover.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Volume Turnover Unit Flag: C
  index, trading_volume_turnover_unit_flag = jpx_tseequities_tostnet_flex_v19_5.trading_volume_turnover_unit_flag.dissect(buffer, index, packet, parent)

  -- Turnover C 14: C
  index, turnover_c_14 = jpx_tseequities_tostnet_flex_v19_5.turnover_c_14.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Turnover
jpx_tseequities_tostnet_flex_v19_5.turnover.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.turnover, buffer(offset, 0))
    local index = jpx_tseequities_tostnet_flex_v19_5.turnover.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_tostnet_flex_v19_5.turnover.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_tostnet_flex_v19_5.turnover.fields(buffer, offset, packet, parent)
  end
end

-- Trading Volume
jpx_tseequities_tostnet_flex_v19_5.trading_volume = {}

-- Size: Trading Volume
jpx_tseequities_tostnet_flex_v19_5.trading_volume.size =
  jpx_tseequities_tostnet_flex_v19_5.trading_volume_turnover_unit_flag.size + 
  jpx_tseequities_tostnet_flex_v19_5.trading_volume_c_14.size

-- Display: Trading Volume
jpx_tseequities_tostnet_flex_v19_5.trading_volume.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Volume
jpx_tseequities_tostnet_flex_v19_5.trading_volume.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Volume Turnover Unit Flag: C
  index, trading_volume_turnover_unit_flag = jpx_tseequities_tostnet_flex_v19_5.trading_volume_turnover_unit_flag.dissect(buffer, index, packet, parent)

  -- Trading Volume C 14: C
  index, trading_volume_c_14 = jpx_tseequities_tostnet_flex_v19_5.trading_volume_c_14.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Volume
jpx_tseequities_tostnet_flex_v19_5.trading_volume.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.trading_volume, buffer(offset, 0))
    local index = jpx_tseequities_tostnet_flex_v19_5.trading_volume.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_tostnet_flex_v19_5.trading_volume.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_tostnet_flex_v19_5.trading_volume.fields(buffer, offset, packet, parent)
  end
end

-- Price
jpx_tseequities_tostnet_flex_v19_5.price = {}

-- Size: Price
jpx_tseequities_tostnet_flex_v19_5.price.size =
  jpx_tseequities_tostnet_flex_v19_5.price_code.size + 
  jpx_tseequities_tostnet_flex_v19_5.lot_size_unit_flag.size + 
  jpx_tseequities_tostnet_flex_v19_5.price_c_14.size + 
  jpx_tseequities_tostnet_flex_v19_5.sign.size + 
  jpx_tseequities_tostnet_flex_v19_5.time_c_12.size

-- Display: Price
jpx_tseequities_tostnet_flex_v19_5.price.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price
jpx_tseequities_tostnet_flex_v19_5.price.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Code: C
  index, price_code = jpx_tseequities_tostnet_flex_v19_5.price_code.dissect(buffer, index, packet, parent)

  -- Lot Size Unit Flag: C
  index, lot_size_unit_flag = jpx_tseequities_tostnet_flex_v19_5.lot_size_unit_flag.dissect(buffer, index, packet, parent)

  -- Price C 14: C
  index, price_c_14 = jpx_tseequities_tostnet_flex_v19_5.price_c_14.dissect(buffer, index, packet, parent)

  -- Sign: C
  index, sign = jpx_tseequities_tostnet_flex_v19_5.sign.dissect(buffer, index, packet, parent)

  -- Time C 12: C
  index, time_c_12 = jpx_tseequities_tostnet_flex_v19_5.time_c_12.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price
jpx_tseequities_tostnet_flex_v19_5.price.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.price, buffer(offset, 0))
    local index = jpx_tseequities_tostnet_flex_v19_5.price.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_tostnet_flex_v19_5.price.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_tostnet_flex_v19_5.price.fields(buffer, offset, packet, parent)
  end
end

-- Trading Halt
jpx_tseequities_tostnet_flex_v19_5.trading_halt = {}

-- Size: Trading Halt
jpx_tseequities_tostnet_flex_v19_5.trading_halt.size =
  jpx_tseequities_tostnet_flex_v19_5.state_flag.size + 
  jpx_tseequities_tostnet_flex_v19_5.time_c_6.size

-- Display: Trading Halt
jpx_tseequities_tostnet_flex_v19_5.trading_halt.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Halt
jpx_tseequities_tostnet_flex_v19_5.trading_halt.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- State Flag: C
  index, state_flag = jpx_tseequities_tostnet_flex_v19_5.state_flag.dissect(buffer, index, packet, parent)

  -- Time C 6: C
  index, time_c_6 = jpx_tseequities_tostnet_flex_v19_5.time_c_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Halt
jpx_tseequities_tostnet_flex_v19_5.trading_halt.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.trading_halt, buffer(offset, 0))
    local index = jpx_tseequities_tostnet_flex_v19_5.trading_halt.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_tostnet_flex_v19_5.trading_halt.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_tostnet_flex_v19_5.trading_halt.fields(buffer, offset, packet, parent)
  end
end

-- ToSTNeT By-Issue Information Message
jpx_tseequities_tostnet_flex_v19_5.tostnet_byissue_information_message = {}

-- Size: ToSTNeT By-Issue Information Message
jpx_tseequities_tostnet_flex_v19_5.tostnet_byissue_information_message.size =
  jpx_tseequities_tostnet_flex_v19_5.reserved_2.size + 
  jpx_tseequities_tostnet_flex_v19_5.market_identification_flag.size + 
  jpx_tseequities_tostnet_flex_v19_5.trading_halt.size + 
  jpx_tseequities_tostnet_flex_v19_5.transaction_identification_flag.size + 
  jpx_tseequities_tostnet_flex_v19_5.price.size + 
  jpx_tseequities_tostnet_flex_v19_5.trading_volume.size + 
  jpx_tseequities_tostnet_flex_v19_5.turnover.size

-- Display: ToSTNeT By-Issue Information Message
jpx_tseequities_tostnet_flex_v19_5.tostnet_byissue_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: ToSTNeT By-Issue Information Message
jpx_tseequities_tostnet_flex_v19_5.tostnet_byissue_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: C
  index, reserved_2 = jpx_tseequities_tostnet_flex_v19_5.reserved_2.dissect(buffer, index, packet, parent)

  -- Market Identification Flag: C
  index, market_identification_flag = jpx_tseequities_tostnet_flex_v19_5.market_identification_flag.dissect(buffer, index, packet, parent)

  -- Trading Halt: Struct of 2 fields
  index, trading_halt = jpx_tseequities_tostnet_flex_v19_5.trading_halt.dissect(buffer, index, packet, parent)

  -- Transaction Identification Flag: C
  index, transaction_identification_flag = jpx_tseequities_tostnet_flex_v19_5.transaction_identification_flag.dissect(buffer, index, packet, parent)

  -- Price: Struct of 5 fields
  index, price = jpx_tseequities_tostnet_flex_v19_5.price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Struct of 2 fields
  index, trading_volume = jpx_tseequities_tostnet_flex_v19_5.trading_volume.dissect(buffer, index, packet, parent)

  -- Turnover: Struct of 2 fields
  index, turnover = jpx_tseequities_tostnet_flex_v19_5.turnover.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: ToSTNeT By-Issue Information Message
jpx_tseequities_tostnet_flex_v19_5.tostnet_byissue_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.tostnet_byissue_information_message, buffer(offset, 0))
    local index = jpx_tseequities_tostnet_flex_v19_5.tostnet_byissue_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_tostnet_flex_v19_5.tostnet_byissue_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_tostnet_flex_v19_5.tostnet_byissue_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
jpx_tseequities_tostnet_flex_v19_5.payload = {}

-- Dissect: Payload
jpx_tseequities_tostnet_flex_v19_5.payload.dissect = function(buffer, offset, packet, parent, tag_id)
  -- Dissect ToSTNeT By-Issue Information Message
  if tag_id == "TI" then
    return jpx_tseequities_tostnet_flex_v19_5.tostnet_byissue_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect ToSTNeT Market Information Message
  if tag_id == "TM" then
    return jpx_tseequities_tostnet_flex_v19_5.tostnet_market_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Control Message
  if tag_id == "LC" then
    return jpx_tseequities_tostnet_flex_v19_5.control_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Tag Information
jpx_tseequities_tostnet_flex_v19_5.tag_information = {}

-- Calculate size of: Tag Information
jpx_tseequities_tostnet_flex_v19_5.tag_information.size = function(buffer, offset)
  local index = 0

  index = index + jpx_tseequities_tostnet_flex_v19_5.tag_id.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 2):string()
  index = index + jpx_tseequities_tostnet_flex_v19_5.payload.size(buffer, payload_offset, payload_type)

  index = index + jpx_tseequities_tostnet_flex_v19_5.separation_of_tag.size

  return index
end

-- Display: Tag Information
jpx_tseequities_tostnet_flex_v19_5.tag_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tag Information
jpx_tseequities_tostnet_flex_v19_5.tag_information.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tag ID: 2 Byte Ascii String Enum with 3 values
  index, tag_id = jpx_tseequities_tostnet_flex_v19_5.tag_id.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 3 branches
  index = jpx_tseequities_tostnet_flex_v19_5.payload.dissect(buffer, index, packet, parent, tag_id)

  -- Separation Of Tag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, separation_of_tag = jpx_tseequities_tostnet_flex_v19_5.separation_of_tag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tag Information
jpx_tseequities_tostnet_flex_v19_5.tag_information.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.tag_information, buffer(offset, 0))
    local index = jpx_tseequities_tostnet_flex_v19_5.tag_information.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_tostnet_flex_v19_5.tag_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_tostnet_flex_v19_5.tag_information.fields(buffer, offset, packet, parent)
  end
end

-- CB Issue Code
jpx_tseequities_tostnet_flex_v19_5.cb_issue_code = {}

-- Size: CB Issue Code
jpx_tseequities_tostnet_flex_v19_5.cb_issue_code.size =
  jpx_tseequities_tostnet_flex_v19_5.cb_space.size + 
  jpx_tseequities_tostnet_flex_v19_5.cb_reserved_code.size + 
  jpx_tseequities_tostnet_flex_v19_5.time_symbol.size + 
  jpx_tseequities_tostnet_flex_v19_5.cb_proper_name_code.size

-- Display: CB Issue Code
jpx_tseequities_tostnet_flex_v19_5.cb_issue_code.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: CB Issue Code
jpx_tseequities_tostnet_flex_v19_5.cb_issue_code.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- CB Space: 3 Byte Ascii String
  index, cb_space = jpx_tseequities_tostnet_flex_v19_5.cb_space.dissect(buffer, index, packet, parent)

  -- CB Reserved Code: 1 Byte Ascii String Enum with 4 values
  index, cb_reserved_code = jpx_tseequities_tostnet_flex_v19_5.cb_reserved_code.dissect(buffer, index, packet, parent)

  -- Time Symbol: 4 Byte Ascii String
  index, time_symbol = jpx_tseequities_tostnet_flex_v19_5.time_symbol.dissect(buffer, index, packet, parent)

  -- CB Proper Name Code: 4 Byte Ascii String
  index, cb_proper_name_code = jpx_tseequities_tostnet_flex_v19_5.cb_proper_name_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: CB Issue Code
jpx_tseequities_tostnet_flex_v19_5.cb_issue_code.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.cb_issue_code, buffer(offset, 0))
    local index = jpx_tseequities_tostnet_flex_v19_5.cb_issue_code.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_tostnet_flex_v19_5.cb_issue_code.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_tostnet_flex_v19_5.cb_issue_code.fields(buffer, offset, packet, parent)
  end
end

-- Stock Issue Code
jpx_tseequities_tostnet_flex_v19_5.stock_issue_code = {}

-- Size: Stock Issue Code
jpx_tseequities_tostnet_flex_v19_5.stock_issue_code.size =
  jpx_tseequities_tostnet_flex_v19_5.stock_space.size + 
  jpx_tseequities_tostnet_flex_v19_5.stock_proper_name_code.size + 
  jpx_tseequities_tostnet_flex_v19_5.stock_reserved_code.size

-- Display: Stock Issue Code
jpx_tseequities_tostnet_flex_v19_5.stock_issue_code.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Issue Code
jpx_tseequities_tostnet_flex_v19_5.stock_issue_code.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Space: 7 Byte Ascii String
  index, stock_space = jpx_tseequities_tostnet_flex_v19_5.stock_space.dissect(buffer, index, packet, parent)

  -- Stock Proper Name Code: 4 Byte Ascii String
  index, stock_proper_name_code = jpx_tseequities_tostnet_flex_v19_5.stock_proper_name_code.dissect(buffer, index, packet, parent)

  -- Stock Reserved Code: 1 Byte Ascii String
  index, stock_reserved_code = jpx_tseequities_tostnet_flex_v19_5.stock_reserved_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Issue Code
jpx_tseequities_tostnet_flex_v19_5.stock_issue_code.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.stock_issue_code, buffer(offset, 0))
    local index = jpx_tseequities_tostnet_flex_v19_5.stock_issue_code.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_tostnet_flex_v19_5.stock_issue_code.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_tostnet_flex_v19_5.stock_issue_code.fields(buffer, offset, packet, parent)
  end
end

-- Issue Code
jpx_tseequities_tostnet_flex_v19_5.issue_code = {}

-- Dissect: Issue Code
jpx_tseequities_tostnet_flex_v19_5.issue_code.dissect = function(buffer, offset, packet, parent, issue_classification_large_classification)
  -- Dissect Stock Issue Code
  if issue_classification_large_classification == "01" then
    return jpx_tseequities_tostnet_flex_v19_5.stock_issue_code.dissect(buffer, offset, packet, parent)
  end
  -- Dissect CB Issue Code
  if issue_classification_large_classification == "02" then
    return jpx_tseequities_tostnet_flex_v19_5.cb_issue_code.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Blank Issue Code
  if issue_classification_large_classification ~= "01" then
    return jpx_tseequities_tostnet_flex_v19_5.blank_issue_code.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Issue Classification
jpx_tseequities_tostnet_flex_v19_5.issue_classification = {}

-- Size: Issue Classification
jpx_tseequities_tostnet_flex_v19_5.issue_classification.size =
  jpx_tseequities_tostnet_flex_v19_5.issue_classification_large_classification.size + 
  jpx_tseequities_tostnet_flex_v19_5.issue_classification_medium_classification.size

-- Display: Issue Classification
jpx_tseequities_tostnet_flex_v19_5.issue_classification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Classification
jpx_tseequities_tostnet_flex_v19_5.issue_classification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Issue Classification Large Classification: 2 Byte Ascii String Enum with 2 values
  index, issue_classification_large_classification = jpx_tseequities_tostnet_flex_v19_5.issue_classification_large_classification.dissect(buffer, index, packet, parent)

  -- Issue Classification Medium Classification: 2 Byte Ascii String
  index, issue_classification_medium_classification = jpx_tseequities_tostnet_flex_v19_5.issue_classification_medium_classification.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Classification
jpx_tseequities_tostnet_flex_v19_5.issue_classification.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.issue_classification, buffer(offset, 0))
    local index = jpx_tseequities_tostnet_flex_v19_5.issue_classification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_tostnet_flex_v19_5.issue_classification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_tostnet_flex_v19_5.issue_classification.fields(buffer, offset, packet, parent)
  end
end

-- Message Type Medium Classification
jpx_tseequities_tostnet_flex_v19_5.message_type_medium_classification = {}

-- Dissect: Message Type Medium Classification
jpx_tseequities_tostnet_flex_v19_5.message_type_medium_classification.dissect = function(buffer, offset, packet, parent, message_type_large_classification)
  -- Dissect Issue Realtime Medium Classification
  if message_type_large_classification == "1" then
    return jpx_tseequities_tostnet_flex_v19_5.issue_realtime_medium_classification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Medium Classification
  if message_type_large_classification == "2" then
    return jpx_tseequities_tostnet_flex_v19_5.statistics_medium_classification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Medium Classification
  if message_type_large_classification == "3" then
    return jpx_tseequities_tostnet_flex_v19_5.index_medium_classification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Basic Medium Classification
  if message_type_large_classification == "4" then
    return jpx_tseequities_tostnet_flex_v19_5.issue_basic_medium_classification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Control Medium Classification
  if message_type_large_classification == "9" then
    return jpx_tseequities_tostnet_flex_v19_5.control_medium_classification.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Type
jpx_tseequities_tostnet_flex_v19_5.message_type = {}

-- Calculate size of: Message Type
jpx_tseequities_tostnet_flex_v19_5.message_type.size = function(buffer, offset)
  local index = 0

  index = index + jpx_tseequities_tostnet_flex_v19_5.message_type_large_classification.size

  -- Calculate runtime size of Message Type Medium Classification field
  local message_type_medium_classification_offset = offset + index
  local message_type_medium_classification_type = buffer(message_type_medium_classification_offset - 1, 1):string()
  index = index + jpx_tseequities_tostnet_flex_v19_5.message_type_medium_classification.size(buffer, message_type_medium_classification_offset, message_type_medium_classification_type)

  return index
end

-- Display: Message Type
jpx_tseequities_tostnet_flex_v19_5.message_type.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Type
jpx_tseequities_tostnet_flex_v19_5.message_type.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type Large Classification: 1 Byte Ascii String Enum with 5 values
  index, message_type_large_classification = jpx_tseequities_tostnet_flex_v19_5.message_type_large_classification.dissect(buffer, index, packet, parent)

  -- Message Type Medium Classification: Runtime Type with 5 branches
  index = jpx_tseequities_tostnet_flex_v19_5.message_type_medium_classification.dissect(buffer, index, packet, parent, message_type_large_classification)

  return index
end

-- Dissect: Message Type
jpx_tseequities_tostnet_flex_v19_5.message_type.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.message_type, buffer(offset, 0))
    local index = jpx_tseequities_tostnet_flex_v19_5.message_type.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_tostnet_flex_v19_5.message_type.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_tostnet_flex_v19_5.message_type.fields(buffer, offset, packet, parent)
  end
end

-- Message Serial No
jpx_tseequities_tostnet_flex_v19_5.message_serial_no = {}

-- Size: Message Serial No
jpx_tseequities_tostnet_flex_v19_5.message_serial_no.size =
  jpx_tseequities_tostnet_flex_v19_5.multicast_group_number.size + 
  jpx_tseequities_tostnet_flex_v19_5.sequence_number.size

-- Display: Message Serial No
jpx_tseequities_tostnet_flex_v19_5.message_serial_no.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Serial No
jpx_tseequities_tostnet_flex_v19_5.message_serial_no.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Multicast Group Number: 3 Byte Ascii String
  index, multicast_group_number = jpx_tseequities_tostnet_flex_v19_5.multicast_group_number.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Ascii String
  index, sequence_number = jpx_tseequities_tostnet_flex_v19_5.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Serial No
jpx_tseequities_tostnet_flex_v19_5.message_serial_no.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.message_serial_no, buffer(offset, 0))
    local index = jpx_tseequities_tostnet_flex_v19_5.message_serial_no.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_tostnet_flex_v19_5.message_serial_no.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_tostnet_flex_v19_5.message_serial_no.fields(buffer, offset, packet, parent)
  end
end

-- Service Header
jpx_tseequities_tostnet_flex_v19_5.service_header = {}

-- Calculate size of: Service Header
jpx_tseequities_tostnet_flex_v19_5.service_header.size = function(buffer, offset)
  local index = 0

  index = index + jpx_tseequities_tostnet_flex_v19_5.message_length.size

  index = index + jpx_tseequities_tostnet_flex_v19_5.message_serial_no.size

  index = index + jpx_tseequities_tostnet_flex_v19_5.message_type.size(buffer, offset + index)

  index = index + jpx_tseequities_tostnet_flex_v19_5.exchange_code.size

  index = index + jpx_tseequities_tostnet_flex_v19_5.session_distinction.size

  index = index + jpx_tseequities_tostnet_flex_v19_5.issue_classification.size

  -- Calculate runtime size of Issue Code field
  local issue_code_offset = offset + index
  local issue_code_type = buffer(issue_code_offset - 4, 2):string()
  index = index + jpx_tseequities_tostnet_flex_v19_5.issue_code.size(buffer, issue_code_offset, issue_code_type)

  return index
end

-- Display: Service Header
jpx_tseequities_tostnet_flex_v19_5.service_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Service Header
jpx_tseequities_tostnet_flex_v19_5.service_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 6 Byte Ascii String
  index, message_length = jpx_tseequities_tostnet_flex_v19_5.message_length.dissect(buffer, index, packet, parent)

  -- Message Serial No: Struct of 2 fields
  index, message_serial_no = jpx_tseequities_tostnet_flex_v19_5.message_serial_no.dissect(buffer, index, packet, parent)

  -- Message Type: Struct of 2 fields
  index, message_type = jpx_tseequities_tostnet_flex_v19_5.message_type.dissect(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 6 values
  index, exchange_code = jpx_tseequities_tostnet_flex_v19_5.exchange_code.dissect(buffer, index, packet, parent)

  -- Session Distinction: 2 Byte Ascii String Enum with 4 values
  index, session_distinction = jpx_tseequities_tostnet_flex_v19_5.session_distinction.dissect(buffer, index, packet, parent)

  -- Issue Classification: Struct of 2 fields
  index, issue_classification = jpx_tseequities_tostnet_flex_v19_5.issue_classification.dissect(buffer, index, packet, parent)

  -- Dependency element: Issue Classification Large Classification
  local issue_classification_large_classification = trim_right_spaces(buffer(index - 4, 2):string())

  -- Issue Code: Runtime Type with 3 branches
  index = jpx_tseequities_tostnet_flex_v19_5.issue_code.dissect(buffer, index, packet, parent, issue_classification_large_classification)

  return index
end

-- Dissect: Service Header
jpx_tseequities_tostnet_flex_v19_5.service_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_tseequities_tostnet_flex_v19_5.fields.service_header, buffer(offset, 0))
    local index = jpx_tseequities_tostnet_flex_v19_5.service_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_tseequities_tostnet_flex_v19_5.service_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_tseequities_tostnet_flex_v19_5.service_header.fields(buffer, offset, packet, parent)
  end
end

-- Udp Packet
jpx_tseequities_tostnet_flex_v19_5.udp_packet = {}

-- Verify required size of Udp packet
jpx_tseequities_tostnet_flex_v19_5.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= jpx_tseequities_tostnet_flex_v19_5.start_of_message.size + jpx_tseequities_tostnet_flex_v19_5.message_length.size + jpx_tseequities_tostnet_flex_v19_5.message_serial_no.size + jpx_tseequities_tostnet_flex_v19_5.message_type_large_classification.size
end

-- Dissect Udp Packet
jpx_tseequities_tostnet_flex_v19_5.udp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Start Of Message: 1 Byte Unsigned Fixed Width Integer
  index, start_of_message = jpx_tseequities_tostnet_flex_v19_5.start_of_message.dissect(buffer, index, packet, parent)

  -- Service Header: Struct of 7 fields
  index, service_header = jpx_tseequities_tostnet_flex_v19_5.service_header.dissect(buffer, index, packet, parent)

  -- Separation Between Service Header And Data Section: 1 Byte Unsigned Fixed Width Integer
  index, separation_between_service_header_and_data_section = jpx_tseequities_tostnet_flex_v19_5.separation_between_service_header_and_data_section.dissect(buffer, index, packet, parent)

  -- Dependency for Tag Information
  local end_of_payload = buffer:len()

  -- Tag Information: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, tag_information = jpx_tseequities_tostnet_flex_v19_5.tag_information.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_jpx_tseequities_tostnet_flex_v19_5.init()
end

-- Dissector for Jpx TseEquities ToSTNeT Flex 19.5
function omi_jpx_tseequities_tostnet_flex_v19_5.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_jpx_tseequities_tostnet_flex_v19_5.name

  -- Dissect protocol
  local protocol = parent:add(omi_jpx_tseequities_tostnet_flex_v19_5, buffer(), omi_jpx_tseequities_tostnet_flex_v19_5.description, "("..buffer:len().." Bytes)")
  return jpx_tseequities_tostnet_flex_v19_5.udp_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Jpx TseEquities ToSTNeT Flex 19.5 (Udp)
local function omi_jpx_tseequities_tostnet_flex_v19_5_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not jpx_tseequities_tostnet_flex_v19_5.udp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_jpx_tseequities_tostnet_flex_v19_5
  omi_jpx_tseequities_tostnet_flex_v19_5.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Jpx TseEquities ToSTNeT Flex 19.5
omi_jpx_tseequities_tostnet_flex_v19_5:register_heuristic("udp", omi_jpx_tseequities_tostnet_flex_v19_5_udp_heuristic)

-- Register Jpx TseEquities ToSTNeT Flex 19.5 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_jpx_tseequities_tostnet_flex_v19_5)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Japan Exchange Group
--   Version: 19.5
--   Date: Friday, September 25, 2026
--   Specification: 04_FLEX Connection Specification ToSTNeT DS.19.0.pdf
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
