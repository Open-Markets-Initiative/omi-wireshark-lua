-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx TsxAlpha QuantumFeedLevel1 Xmt 2.1 Protocol
local omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1 = Proto("Omi.Tmx.TsxAlpha.QuantumFeedLevel1.Xmt.v2.1", "Tmx TsxAlpha QuantumFeedLevel1 Xmt 2.1")

-- Protocol table
local tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx TsxAlpha QuantumFeedLevel1 Xmt 2.1 Fields
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.ack_required_poss_dup = ProtoField.new("Ack Required Poss Dup", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.ackrequiredpossdup", ftypes.STRING)
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.admin_body = ProtoField.new("Admin Body", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.adminbody", ftypes.STRING)
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.admin_id = ProtoField.new("Admin Id", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.adminid", ftypes.UINT8, nil, nil, nil, "Admin ID for short window (1 to 255). Note: 0 is not allowed as a value.")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.ask_price = ProtoField.new("Ask Price", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.askprice", ftypes.DOUBLE, nil, nil, nil, "Contains The Ask Price For The Symbol")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.ask_size = ProtoField.new("Ask Size", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.asksize", ftypes.UINT32, nil, nil, nil, "Contains The Ask Size Volume For The Symbol")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.bid_price = ProtoField.new("Bid Price", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.bidprice", ftypes.DOUBLE, nil, nil, nil, "Contains The Bid Price For The Symbol")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.bid_size = ProtoField.new("Bid Size", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.bidsize", ftypes.UINT32, nil, nil, nil, "Contains The Bid Size Volume For The Symbol")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.board_lot = ProtoField.new("Board Lot", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.boardlot", ftypes.UINT16, nil, nil, nil, "Contains The Board Lot Size")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.business_bodies = ProtoField.new("Business Bodies", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.businessbodies", ftypes.STRING)
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.buy_broker_number = ProtoField.new("Buy Broker Number", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.buybrokernumber", ftypes.UINT16, nil, nil, nil, "An Exchangeassigned Public Number Uniquely Identifying A Participating Organization Associated With A Buy Order")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.bypass = ProtoField.new("Bypass", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.bypass", ftypes.STRING, nil, nil, nil, "An Indicator For Bypass Crosses Which Can Be Printed Outside Of The Protected Nbbo And Are Not Subject To Cross Interference")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.comment = ProtoField.new("Comment", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.comment", ftypes.STRING, nil, nil, nil, "A Text Field Corresponding To A Reason Code Entered When A Stock Is Halted Or The Initiator Of A Delayed Opening On A Stock Or When There Is A Change To The Oddlot Trader On A Stock")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.cross_type = ProtoField.new("Cross Type", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.crosstype", ftypes.STRING, nil, nil, nil, "Type Of Crosses Originating From A Participating Organization Between Managed Accounts That Have The Same Manager")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.currency = ProtoField.new("Currency", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.currency", ftypes.STRING, nil, nil, nil, "The Currency Associated With A Reported Price")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.cusip = ProtoField.new("Cusip", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.cusip", ftypes.STRING, nil, nil, nil, "Clearing And Settlement Registration Number")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.face_value = ProtoField.new("Face Value", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.facevalue", ftypes.DOUBLE, nil, nil, nil, "The Face Value Of A Debenture")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.hb_interval = ProtoField.new("Hb Interval", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.hbinterval", ftypes.UINT16, nil, nil, nil, "Heartbeat interval in milliseconds (1 to 65536).")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.is_dark = ProtoField.new("Is Dark", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.isdark", ftypes.STRING, nil, nil, nil, "Indicates At Least One Side Of The Trade Is Dark")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.last_sale = ProtoField.new("Last Sale", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.lastsale", ftypes.DOUBLE, nil, nil, nil, "Last Sale Price Of A Stock")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.listing_market = ProtoField.new("Listing Market", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.listingmarket", ftypes.STRING, nil, nil, nil, "The Market On Which A Security Is Listed")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.message_length = ProtoField.new("Message Length", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.messagelength", ftypes.UINT16, nil, nil, nil, "Length of message from Header to Body inclusive")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.min_po_qty = ProtoField.new("Min Po Qty", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.minpoqty", ftypes.UINT32, nil, nil, nil, "The Minimum Volume Required For Post Only Orders")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.msg_length = ProtoField.new("Msg Length", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.msglength", ftypes.UINT16, nil, nil, nil, "Length of this message")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.msg_type = ProtoField.new("Msg Type", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.msgtype", ftypes.STRING)
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.msg_version = ProtoField.new("Msg Version", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.msgversion", ftypes.UINT8, nil, nil, nil, "Message version number")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.num_body = ProtoField.new("Num Body", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.numbody", ftypes.UINT8)
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.opening_trade = ProtoField.new("Opening Trade", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.openingtrade", ftypes.STRING, nil, nil, nil, "Indicates Whether The Trade Occurred At The Opening Or Was The First Board Lot Trade Of The Day")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.price = ProtoField.new("Price", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.price", ftypes.DOUBLE, nil, nil, nil, "The Price In A Valid Currency")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.product_type = ProtoField.new("Product Type", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.producttype", ftypes.STRING, nil, nil, nil, "The Product Type For A Symbol")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.protocol_name = ProtoField.new("Protocol Name", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.protocolname", ftypes.STRING)
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.protocol_version = ProtoField.new("Protocol Version", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.protocolversion", ftypes.UINT8, nil, nil, nil, "Protocol major version number")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.resume_trade_time = ProtoField.new("Resume Trade Time", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.resumetradetime", ftypes.UINT32, nil, nil, nil, "The Time At Which A Halted Stock Will Resume Trading")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.sell_broker_number = ProtoField.new("Sell Broker Number", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.sellbrokernumber", ftypes.UINT16, nil, nil, nil, "An Exchangeassigned Number Uniquely Identifying A Participating Organization Associated With A Sell Order")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.sequence_0 = ProtoField.new("Sequence 0", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.sequence0", ftypes.UINT8, nil, nil, nil, "Reserved for future expansion, Value is 0")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.sequence_1 = ProtoField.new("Sequence 1", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.sequence1", ftypes.UINT32, nil, nil, nil, "Sequence per Stream Id of the Business message")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.session_id = ProtoField.new("Session Id", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.sessionid", ftypes.UINT32, nil, nil, nil, "Constant Session Id")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.settlement_terms = ProtoField.new("Settlement Terms", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.settlementterms", ftypes.STRING, nil, nil, nil, "Settlement Terms Associated With The Order")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.source_id = ProtoField.new("Source Id", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.sourceid", ftypes.STRING, nil, nil, nil, "Source Id of the Business message")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.start_of_frame = ProtoField.new("Start Of Frame", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.startofframe", ftypes.UINT8)
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.stock_group = ProtoField.new("Stock Group", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.stockgroup", ftypes.UINT8, nil, nil, nil, "An Identifier Of The Stock Group")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.stock_state = ProtoField.new("Stock State", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.stockstate", ftypes.STRING, nil, nil, nil, "The State Of The Stock")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.stream_id = ProtoField.new("Stream Id", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.streamid", ftypes.UINT16, nil, nil, nil, "Stream Id per Source Id of the Business message")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.symbol = ProtoField.new("Symbol", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.symbol", ftypes.STRING, nil, nil, nil, "A Unique Alphanumeric Identifier For A Security")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.test_symbol = ProtoField.new("Test Symbol", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.testsymbol", ftypes.STRING, nil, nil, nil, "Indicates The Symbol Is A Test Symbol")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.trade_number = ProtoField.new("Trade Number", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.tradenumber", ftypes.UINT32, nil, nil, nil, "A Unique Identifier Per Stock Assigned To Each Trade")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.trade_time_stamp = ProtoField.new("Trade Time Stamp", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.tradetimestamp", ftypes.UINT32, nil, nil, nil, "The Time At Which The Trade Occurred Manually Set When A Trade Is Added")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.trading_system_time_stamp = ProtoField.new("Trading System Time Stamp", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.tradingsystemtimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The Time At Which The Event Being Reported Occurred In The Trading Engine")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.trading_system_time_stamp_utc = ProtoField.new("Trading System Time Stamp", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.tradingsystemtimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The Time At Which The Event Being Reported Occurred In The Trading Engine")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.volume = ProtoField.new("Volume", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.volume", ftypes.UINT32, nil, nil, nil, "The Quantity Of Shares For An Order Or Trade")

-- Tmx TsxAlpha QuantumFeedLevel1 Xmt 2.1 Framing
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.body = ProtoField.new("Body", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.body", ftypes.STRING, nil, nil, nil, "Xmt Body")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.body_header = ProtoField.new("Body Header", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.bodyheader", ftypes.STRING, nil, nil, nil, "Xmt Body Header")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.body_message = ProtoField.new("Body Message", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.bodymessage", ftypes.STRING, nil, nil, nil, "Xmt Body Header")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.business_header = ProtoField.new("Business Header", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.businessheader", ftypes.STRING, nil, nil, nil, "Xmt Business Header")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.frame_header = ProtoField.new("Frame Header", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.frameheader", ftypes.STRING, nil, nil, nil, "Xmt Udp Packet Frame Header")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.heartbeat_body = ProtoField.new("Heartbeat Body", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.heartbeatbody", ftypes.STRING)
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.packet = ProtoField.new("Packet", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.packet", ftypes.STRING, nil, nil, nil, "Xmt Udp Packet")

-- Tmx TsxAlpha QuantumFeedLevel1 2.1 Application Messages
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.equity_quote_message = ProtoField.new("Equity Quote Message", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.equityquotemessage", ftypes.STRING)
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.stock_status_message = ProtoField.new("Stock Status Message", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.stockstatusmessage", ftypes.STRING)
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.symbol_status_message = ProtoField.new("Symbol Status Message", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.symbolstatusmessage", ftypes.STRING)
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.trade_cancelled_message = ProtoField.new("Trade Cancelled Message", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.tradecancelledmessage", ftypes.STRING)
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.trade_message = ProtoField.new("Trade Message", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.trademessage", ftypes.STRING)

-- Tmx TsxAlpha QuantumFeedLevel1 2.1 Session Messages
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.heartbeat_body = ProtoField.new("Heartbeat Body", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.heartbeatbody", ftypes.STRING)

-- Tmx TsxAlpha QuantumFeedLevel1 Xmt 2.1 Generated Fields
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.admin_body_index = ProtoField.new("Admin Body Index", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.adminbodyindex", ftypes.UINT16)
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.body_index = ProtoField.new("Body Index", "tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.bodyindex", ftypes.UINT16)

-- Tmx TsxAlpha QuantumFeedLevel1 Xmt 2.1 Expert Info
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.experts = {}
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.experts.not_a_number = ProtoExpert.new("tmx.tsxalpha.quantumfeedlevel1.xmt.v2.1.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.experts = { tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.experts.not_a_number }

-----------------------------------------------------------------------
-- Tmx TsxAlpha QuantumFeedLevel1 Xmt 2.1 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Tmx TsxAlpha QuantumFeedLevel1 Xmt 2.1 Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true
show.session_messages = true
show.indexes = true

-- Register Tmx TsxAlpha QuantumFeedLevel1 Xmt 2.1 Show Options
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.prefs.show_application_messages then
    show.application_messages = omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.prefs.show_application_messages
  end
  if show.headers ~= omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.prefs.show_headers then
    show.headers = omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.prefs.show_headers
  end
  if show.session_messages ~= omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.prefs.show_session_messages then
    show.session_messages = omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.prefs.show_session_messages
  end
  if show.structs ~= omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.prefs.show_structs then
    show.structs = omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.prefs.show_structs
  end
  if show.indexes ~= omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.prefs.show_indexes then
    show.indexes = omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.prefs.show_indexes
  end
  if tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.absolute_time_base ~= omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.prefs.absolute_time_base then
    tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.absolute_time_base = omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.prefs.absolute_time_base
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


-----------------------------------------------------------------------
-- Tmx TsxAlpha QuantumFeedLevel1 Xmt 2.1 Fields
-----------------------------------------------------------------------

-- Ack Required Poss Dup
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ack_required_poss_dup = {}

-- Size: Ack Required Poss Dup
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ack_required_poss_dup.size = 1

-- Display: Ack Required Poss Dup
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ack_required_poss_dup.labels = {
  ["0"] = "Ack Required Poss Dup: Unused (0)",
  ["A"] = "Ack Required Poss Dup: Ack Required (A)",
  ["D"] = "Ack Required Poss Dup: Poss Dup (D)",
}

tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ack_required_poss_dup.display = function(value)
  return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ack_required_poss_dup.labels[value] or "Ack Required Poss Dup: Unknown("..value..")"
end

-- Dissect: Ack Required Poss Dup
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ack_required_poss_dup.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ack_required_poss_dup.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ack_required_poss_dup.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.ack_required_poss_dup, range, value, display)

  return offset + length, value
end

-- Admin Id
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.admin_id = {}

-- Size: Admin Id
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.admin_id.size = 1

-- Display: Admin Id
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.admin_id.display = function(value)
  return "Admin Id: "..value
end

-- Dissect: Admin Id
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.admin_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.admin_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.admin_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.admin_id, range, value, display)

  return offset + length, value
end

-- Ask Price
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ask_price = {}

-- Size: Ask Price
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ask_price.size = 8

-- Display: Ask Price
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ask_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return "Ask Price: No Value"
  end

  return "Ask Price: "..value
end

-- Translate: Ask Price
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ask_price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Ask Price
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ask_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ask_price.translate(raw)
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ask_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Size
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ask_size = {}

-- Size: Ask Size
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ask_size.size = 4

-- Display: Ask Size
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ask_size.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Ask Size: No Value"
  end

  return "Ask Size: "..value
end

-- Dissect: Ask Size
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ask_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Bid Price
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bid_price = {}

-- Size: Bid Price
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bid_price.size = 8

-- Display: Bid Price
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bid_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return "Bid Price: No Value"
  end

  return "Bid Price: "..value
end

-- Translate: Bid Price
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bid_price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Bid Price
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bid_price.translate(raw)
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bid_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Size
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bid_size = {}

-- Size: Bid Size
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bid_size.size = 4

-- Display: Bid Size
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bid_size.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Bid Size: No Value"
  end

  return "Bid Size: "..value
end

-- Dissect: Bid Size
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bid_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Board Lot
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.board_lot = {}

-- Size: Board Lot
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.board_lot.size = 2

-- Display: Board Lot
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.board_lot.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Board Lot: No Value"
  end

  return "Board Lot: "..value
end

-- Dissect: Board Lot
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.board_lot.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.board_lot.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.board_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.board_lot, range, value, display)

  return offset + length, value
end

-- Buy Broker Number
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.buy_broker_number = {}

-- Size: Buy Broker Number
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.buy_broker_number.size = 2

-- Display: Buy Broker Number
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.buy_broker_number.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Buy Broker Number: No Value"
  end

  return "Buy Broker Number: "..value
end

-- Dissect: Buy Broker Number
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.buy_broker_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.buy_broker_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.buy_broker_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.buy_broker_number, range, value, display)

  return offset + length, value
end

-- Bypass
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bypass = {}

-- Size: Bypass
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bypass.size = 1

-- Display: Bypass
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bypass.labels = {
  ["Y"] = "Bypass: The Order Is A Bypass (Y)",
  ["N"] = "Bypass: The Order Is Not A Bypass (N)",
}

tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bypass.display = function(value)
  return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bypass.labels[value] or "Bypass: Unknown("..value..")"
end

-- Dissect: Bypass
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bypass.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bypass.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bypass.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.bypass, range, value, display)

  return offset + length, value
end

-- Comment
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.comment = {}

-- Size: Comment
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.comment.size = 40

-- Display: Comment
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.comment.display = function(value)
  return "Comment: "..value
end

-- Dissect: Comment
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.comment.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.comment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.comment.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.comment, range, value, display)

  return offset + length, value
end

-- Cross Type
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.cross_type = {}

-- Size: Cross Type
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.cross_type.size = 1

-- Display: Cross Type
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.cross_type.display = function(value)
  if value == "I" then
    return "Cross Type: Internal (I)"
  end
  if value == "B" then
    return "Cross Type: Basis (B)"
  end
  if value == "C" then
    return "Cross Type: Contingent (C)"
  end
  if value == "D" then
    return "Cross Type: Derivative Related (D)"
  end
  if value == "R" then
    return "Cross Type: Regular (R)"
  end
  if value == "V" then
    return "Cross Type: Volume Weighted Average Price (V)"
  end
  if value == " " then
    return "Cross Type: Default Trade Was Not A Cross (<whitespace>)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Currency
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.currency = {}

-- Size: Currency
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.currency.size = 1

-- Display: Currency
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.currency.labels = {
  ["U"] = "Currency: Usd (U)",
  ["C"] = "Currency: Cad (C)",
}

tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.currency.display = function(value)
  return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.currency.labels[value] or "Currency: Unknown("..value..")"
end

-- Dissect: Currency
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.currency.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.currency, range, value, display)

  return offset + length, value
end

-- Cusip
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.cusip = {}

-- Size: Cusip
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.cusip.size = 12

-- Display: Cusip
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.cusip.display = function(value)
  return "Cusip: "..value
end

-- Dissect: Cusip
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.cusip.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.cusip.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.cusip.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.cusip, range, value, display)

  return offset + length, value
end

-- Face Value
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.face_value = {}

-- Size: Face Value
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.face_value.size = 8

-- Display: Face Value
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.face_value.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return "Face Value: No Value"
  end

  return "Face Value: "..value
end

-- Translate: Face Value
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.face_value.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Face Value
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.face_value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.face_value.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.face_value.translate(raw)
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.face_value.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.face_value, range, value, display)

  return offset + length, value
end

-- Hb Interval
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.hb_interval = {}

-- Size: Hb Interval
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.hb_interval.size = 2

-- Display: Hb Interval
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.hb_interval.display = function(value)
  return "Hb Interval: "..value
end

-- Dissect: Hb Interval
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.hb_interval.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.hb_interval.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.hb_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.hb_interval, range, value, display)

  return offset + length, value
end

-- Is Dark
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.is_dark = {}

-- Size: Is Dark
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.is_dark.size = 1

-- Display: Is Dark
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.is_dark.display = function(value)
  return "Is Dark: "..value
end

-- Dissect: Is Dark
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.is_dark.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.is_dark.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.is_dark.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.is_dark, range, value, display)

  return offset + length, value
end

-- Last Sale
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.last_sale = {}

-- Size: Last Sale
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.last_sale.size = 8

-- Display: Last Sale
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.last_sale.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return "Last Sale: No Value"
  end

  return "Last Sale: "..value
end

-- Translate: Last Sale
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.last_sale.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Last Sale
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.last_sale.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.last_sale.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.last_sale.translate(raw)
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.last_sale.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.last_sale, range, value, display)

  return offset + length, value
end

-- Listing Market
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.listing_market = {}

-- Size: Listing Market
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.listing_market.size = 1

-- Display: Listing Market
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.listing_market.labels = {
  ["T"] = "Listing Market: Tsx (T)",
  ["V"] = "Listing Market: Tsxv (V)",
}

tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.listing_market.display = function(value)
  return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.listing_market.labels[value] or "Listing Market: Unknown("..value..")"
end

-- Dissect: Listing Market
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.listing_market.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.listing_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.listing_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Message Length
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.message_length = {}

-- Size: Message Length
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.message_length.size = 2

-- Display: Message Length
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Min Po Qty
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.min_po_qty = {}

-- Size: Min Po Qty
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.min_po_qty.size = 4

-- Display: Min Po Qty
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.min_po_qty.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Min Po Qty: No Value"
  end

  return "Min Po Qty: "..value
end

-- Dissect: Min Po Qty
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.min_po_qty.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.min_po_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.min_po_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.min_po_qty, range, value, display)

  return offset + length, value
end

-- Msg Length
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_length = {}

-- Size: Msg Length
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_length.size = 2

-- Display: Msg Length
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_type = {}

-- Size: Msg Type
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_type.size = 1

-- Display: Msg Type
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_type.labels = {
  ["0"] = "Msg Type: Heartbeat (0)",
  ["J"] = "Msg Type: Symbol Status Message (J)",
  ["s"] = "Msg Type: Trade Message (s)",
  ["t"] = "Msg Type: Trade Cancelled Message (t)",
  ["v"] = "Msg Type: Stock Status Message (v)",
  ["w"] = "Msg Type: Equity Quote Message (w)",
}

tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_type.display = function(value)
  return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_type.labels[value] or "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Msg Version
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_version = {}

-- Size: Msg Version
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_version.size = 1

-- Display: Msg Version
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_version.display = function(value)
  return "Msg Version: "..value
end

-- Dissect: Msg Version
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_version.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.msg_version, range, value, display)

  return offset + length, value
end

-- Num Body
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.num_body = {}

-- Size: Num Body
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.num_body.size = 1

-- Display: Num Body
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.num_body.display = function(value)
  return "Num Body: "..value
end

-- Dissect: Num Body
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.num_body.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.num_body.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.num_body.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.num_body, range, value, display)

  return offset + length, value
end

-- Opening Trade
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.opening_trade = {}

-- Size: Opening Trade
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.opening_trade.size = 1

-- Display: Opening Trade
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.opening_trade.labels = {
  ["Y"] = "Opening Trade: Yes (Y)",
  ["N"] = "Opening Trade: No (N)",
}

tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.opening_trade.display = function(value)
  return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.opening_trade.labels[value] or "Opening Trade: Unknown("..value..")"
end

-- Dissect: Opening Trade
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.opening_trade.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.opening_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.opening_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.opening_trade, range, value, display)

  return offset + length, value
end

-- Price
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.price = {}

-- Size: Price
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.price.size = 8

-- Display: Price
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Translate: Price
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Price
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.price.translate(raw)
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.price, range, value, display)

  return offset + length, value
end

-- Product Type
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.product_type = {}

-- Size: Product Type
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.product_type.size = 1

-- Display: Product Type
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.product_type.labels = {
  ["B"] = "Product Type: Debenture (B)",
  ["E"] = "Product Type: Equity (E)",
  ["M"] = "Product Type: Mutual Fund (M)",
  ["F"] = "Product Type: Etf (F)",
}

tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.product_type.display = function(value)
  return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.product_type.labels[value] or "Product Type: Unknown("..value..")"
end

-- Dissect: Product Type
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.product_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.product_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.product_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.product_type, range, value, display)

  return offset + length, value
end

-- Protocol Name
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.protocol_name = {}

-- Size: Protocol Name
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.protocol_name.size = 1

-- Display: Protocol Name
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.protocol_name.display = function(value)
  return "Protocol Name: "..value
end

-- Dissect: Protocol Name
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.protocol_name.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.protocol_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.protocol_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.protocol_name, range, value, display)

  return offset + length, value
end

-- Protocol Version
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.protocol_version = {}

-- Size: Protocol Version
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.protocol_version.size = 1

-- Display: Protocol Version
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.protocol_version.display = function(value)
  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.protocol_version.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.protocol_version.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.protocol_version, range, value, "Protocol Version: Not Applicable")
    item:add_proto_expert_info(tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.experts.not_a_number, "Protocol Version is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.protocol_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Resume Trade Time
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.resume_trade_time = {}

-- Size: Resume Trade Time
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.resume_trade_time.size = 4

-- Display: Resume Trade Time
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.resume_trade_time.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Resume Trade Time: No Value"
  end

  local hour = math.floor(value / 1000000)
  local minute = math.floor(value / 10000) % 100
  local second = math.floor(value / 100) % 100
  local hundredth = value % 100

  return string.format("Resume Trade Time: %02d:%02d:%02d.%02d", hour, minute, second, hundredth)
end

-- Dissect: Resume Trade Time
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.resume_trade_time.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.resume_trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.resume_trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.resume_trade_time, range, value, display)

  return offset + length, value
end

-- Sell Broker Number
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sell_broker_number = {}

-- Size: Sell Broker Number
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sell_broker_number.size = 2

-- Display: Sell Broker Number
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sell_broker_number.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Sell Broker Number: No Value"
  end

  return "Sell Broker Number: "..value
end

-- Dissect: Sell Broker Number
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sell_broker_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sell_broker_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sell_broker_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.sell_broker_number, range, value, display)

  return offset + length, value
end

-- Sequence 0
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sequence_0 = {}

-- Size: Sequence 0
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sequence_0.size = 1

-- Display: Sequence 0
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sequence_0.display = function(value)
  if value == 0 then
    return "Sequence 0: Reserved"
  end

  return "Sequence 0: Unknown("..value..")"
end

-- Dissect: Sequence 0
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sequence_0.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sequence_0.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sequence_0.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.sequence_0, range, value, display)

  return offset + length, value
end

-- Sequence 1
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sequence_1 = {}

-- Size: Sequence 1
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sequence_1.size = 4

-- Display: Sequence 1
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sequence_1.display = function(value)
  return "Sequence 1: "..value
end

-- Dissect: Sequence 1
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sequence_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sequence_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sequence_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.sequence_1, range, value, display)

  return offset + length, value
end

-- Session Id
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.session_id = {}

-- Size: Session Id
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.session_id.size = 4

-- Display: Session Id
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.session_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.session_id, range, value, display)

  return offset + length, value
end

-- Settlement Terms
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.settlement_terms = {}

-- Size: Settlement Terms
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.settlement_terms.size = 1

-- Display: Settlement Terms
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.settlement_terms.display = function(value)
  if value == "C" then
    return "Settlement Terms: Cash (C)"
  end
  if value == "N" then
    return "Settlement Terms: Nn (N)"
  end
  if value == "M" then
    return "Settlement Terms: Ms Derivativesrelated Contingent Equity Trade (M)"
  end
  if value == "T" then
    return "Settlement Terms: Ct Cash Today (T)"
  end
  if value == "D" then
    return "Settlement Terms: If There Is A Valid Settlement Date Associated With The Order (D)"
  end
  if value == " " then
    return "Settlement Terms: No Settlement Terms (<whitespace>)"
  end

  return "Settlement Terms: Unknown("..value..")"
end

-- Dissect: Settlement Terms
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.settlement_terms.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.settlement_terms.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.settlement_terms.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.settlement_terms, range, value, display)

  return offset + length, value
end

-- Source Id
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.source_id = {}

-- Size: Source Id
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.source_id.size = 1

-- Display: Source Id
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.source_id.labels = {
  ["0"] = "Source Id: Non Source Related (0)",
  ["Q"] = "Source Id: TSX (Q)",
  ["V"] = "Source Id: TSX Venture (V)",
  ["A"] = "Source Id: Alpha (A)",
}

tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.source_id.display = function(value)
  return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.source_id.labels[value] or "Source Id: Unknown("..value..")"
end

-- Dissect: Source Id
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.source_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.source_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.source_id, range, value, display)

  return offset + length, value
end

-- Start Of Frame
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.start_of_frame = {}

-- Size: Start Of Frame
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.start_of_frame.size = 1

-- Display: Start Of Frame
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.start_of_frame.display = function(value)
  if value == 2 then
    return "Start Of Frame: New Frame"
  end

  return "Start Of Frame: Unknown("..value..")"
end

-- Dissect: Start Of Frame
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.start_of_frame.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.start_of_frame.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.start_of_frame.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.start_of_frame, range, value, display)

  return offset + length, value
end

-- Stock Group
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_group = {}

-- Size: Stock Group
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_group.size = 1

-- Display: Stock Group
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_group.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Stock Group: No Value"
  end

  return "Stock Group: "..value
end

-- Dissect: Stock Group
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_group.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.stock_group, range, value, display)

  return offset + length, value
end

-- Stock State
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_state = {}

-- Size: Stock State
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_state.size = 2

-- Display: Stock State
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_state.labels = {
  ["AS"] = "Stock State: Authorized Halted (AS)",
  ["IS"] = "Stock State: Inhibited Halted (IS)",
  ["A"] = "Stock State: Authorized (A)",
  ["I"] = "Stock State: Inhibited (I)",
}

tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_state.display = function(value)
  return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_state.labels[value] or "Stock State: Unknown("..value..")"
end

-- Dissect: Stock State
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_state.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_state.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.stock_state, range, value, display)

  return offset + length, value
end

-- Stream Id
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stream_id = {}

-- Size: Stream Id
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stream_id.size = 2

-- Display: Stream Id
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stream_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Symbol
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol = {}

-- Size: Symbol
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol.size = 12

-- Display: Symbol
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Test Symbol
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.test_symbol = {}

-- Size: Test Symbol
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.test_symbol.size = 1

-- Display: Test Symbol
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.test_symbol.labels = {
  ["Y"] = "Test Symbol: Yes (Y)",
  ["N"] = "Test Symbol: No (N)",
}

tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.test_symbol.display = function(value)
  return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.test_symbol.labels[value] or "Test Symbol: Unknown("..value..")"
end

-- Dissect: Test Symbol
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.test_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.test_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.test_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.test_symbol, range, value, display)

  return offset + length, value
end

-- Trade Number
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_number = {}

-- Size: Trade Number
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_number.size = 4

-- Display: Trade Number
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_number.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Trade Number: No Value"
  end

  return "Trade Number: "..value
end

-- Dissect: Trade Number
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Trade Time Stamp
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_time_stamp = {}

-- Size: Trade Time Stamp
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_time_stamp.size = 4

-- Display: Trade Time Stamp
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_time_stamp.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Trade Time Stamp: No Value"
  end

  local hour = math.floor(value / 10000)
  local minute = math.floor(value / 100) % 100
  local second = value % 100

  return string.format("Trade Time Stamp: %02d:%02d:%02d", hour, minute, second)
end

-- Dissect: Trade Time Stamp
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_time_stamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.trade_time_stamp, range, value, display)

  return offset + length, value
end

-- Trading System Time Stamp
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trading_system_time_stamp = {}

-- Size: Trading System Time Stamp
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trading_system_time_stamp.size = 8

-- Dissect: Trading System Time Stamp
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trading_system_time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trading_system_time_stamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.trading_system_time_stamp
  if tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.absolute_time_base == 1 then field = omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.trading_system_time_stamp_utc end

  if value == UInt64(0x00000000, 0x00000000) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Trading System Time Stamp: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Volume
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.volume = {}

-- Size: Volume
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.volume.size = 4

-- Display: Volume
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.volume.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Volume: No Value"
  end

  return "Volume: "..value
end

-- Dissect: Volume
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Tmx TsxAlpha QuantumFeedLevel1 Xmt 2.1
-----------------------------------------------------------------------

-- Equity Quote Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.equity_quote_message = {}

-- Size: Equity Quote Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.equity_quote_message.size =
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bid_price.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bid_size.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ask_price.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ask_size.size

-- Display: Equity Quote Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.equity_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equity Quote Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.equity_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_price = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer Nullable
  index, bid_size = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, ask_price = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer Nullable
  index, ask_size = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equity Quote Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.equity_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.equity_quote_message, buffer(offset, 0))
    local index = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.equity_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.equity_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.equity_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Status Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_status_message = {}

-- Size: Stock Status Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_status_message.size =
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.comment.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_state.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trading_system_time_stamp.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.resume_trade_time.size

-- Display: Stock Status Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Status Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Comment: 40 Byte Ascii String
  index, comment = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.comment.dissect(buffer, index, packet, parent)

  -- Stock State: 2 Byte Ascii String Enum with 4 values
  index, stock_state = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_state.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_system_time_stamp = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Resume Trade Time: 4 Byte Unsigned Fixed Width Integer Nullable
  index, resume_trade_time = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.resume_trade_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Status Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.stock_status_message, buffer(offset, 0))
    local index = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancelled Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_cancelled_message = {}

-- Size: Trade Cancelled Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_cancelled_message.size =
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.volume.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.price.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.buy_broker_number.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sell_broker_number.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_time_stamp.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.last_sale.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_number.size

-- Display: Trade Cancelled Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancelled Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_cancelled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, volume = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.price.dissect(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, buy_broker_number = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.buy_broker_number.dissect(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, sell_broker_number = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sell_broker_number.dissect(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_time_stamp = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_time_stamp.dissect(buffer, index, packet, parent)

  -- Last Sale: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_sale = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.last_sale.dissect(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_number = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancelled Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_cancelled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.trade_cancelled_message, buffer(offset, 0))
    local index = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_cancelled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_cancelled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_cancelled_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_message = {}

-- Size: Trade Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_message.size =
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.price.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.volume.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.buy_broker_number.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sell_broker_number.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bypass.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_time_stamp.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.settlement_terms.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.cross_type.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.last_sale.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.opening_trade.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.is_dark.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_number.size

-- Display: Trade Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, volume = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, buy_broker_number = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.buy_broker_number.dissect(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, sell_broker_number = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sell_broker_number.dissect(buffer, index, packet, parent)

  -- Bypass: 1 Byte Ascii String Enum with 2 values
  index, bypass = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.bypass.dissect(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_time_stamp = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_time_stamp.dissect(buffer, index, packet, parent)

  -- Settlement Terms: 1 Byte Ascii String Enum with 6 values
  index, settlement_terms = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.settlement_terms.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 7 values
  index, cross_type = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.cross_type.dissect(buffer, index, packet, parent)

  -- Last Sale: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_sale = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.last_sale.dissect(buffer, index, packet, parent)

  -- Opening Trade: 1 Byte Ascii String Enum with 2 values
  index, opening_trade = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.opening_trade.dissect(buffer, index, packet, parent)

  -- Is Dark: 1 Byte Ascii String
  index, is_dark = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.is_dark.dissect(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_number = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.trade_message, buffer(offset, 0))
    local index = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Status Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol_status_message = {}

-- Size: Symbol Status Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol_status_message.size =
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_group.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.listing_market.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.product_type.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.cusip.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.board_lot.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.currency.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.face_value.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.last_sale.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.min_po_qty.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_state.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.test_symbol.size

-- Display: Symbol Status Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Status Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol.dissect(buffer, index, packet, parent)

  -- Stock Group: 1 Byte Unsigned Fixed Width Integer Nullable
  index, stock_group = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_group.dissect(buffer, index, packet, parent)

  -- Listing Market: 1 Byte Ascii String Enum with 2 values
  index, listing_market = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.listing_market.dissect(buffer, index, packet, parent)

  -- Product Type: 1 Byte Ascii String Enum with 4 values
  index, product_type = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.product_type.dissect(buffer, index, packet, parent)

  -- Cusip: 12 Byte Ascii String
  index, cusip = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.cusip.dissect(buffer, index, packet, parent)

  -- Board Lot: 2 Byte Unsigned Fixed Width Integer Nullable
  index, board_lot = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.board_lot.dissect(buffer, index, packet, parent)

  -- Currency: 1 Byte Ascii String Enum with 2 values
  index, currency = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.currency.dissect(buffer, index, packet, parent)

  -- Face Value: 8 Byte Unsigned Fixed Width Integer Nullable
  index, face_value = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.face_value.dissect(buffer, index, packet, parent)

  -- Last Sale: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_sale = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.last_sale.dissect(buffer, index, packet, parent)

  -- Min Po Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_po_qty = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.min_po_qty.dissect(buffer, index, packet, parent)

  -- Stock State: 2 Byte Ascii String Enum with 4 values
  index, stock_state = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_state.dissect(buffer, index, packet, parent)

  -- Test Symbol: 1 Byte Ascii String Enum with 2 values
  index, test_symbol = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.test_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Status Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.symbol_status_message, buffer(offset, 0))
    local index = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Business Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_message = {}

-- Dissect: Business Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_message.dispatch = {
  ["J"] = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.symbol_status_message.dissect,
  ["s"] = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_message.dissect,
  ["t"] = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.trade_cancelled_message.dissect,
  ["v"] = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stock_status_message.dissect,
  ["w"] = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.equity_quote_message.dissect,
}

tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_message.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_message.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Business Header
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_header = {}

-- Size: Business Header
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_header.size =
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_version.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.source_id.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stream_id.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sequence_0.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sequence_1.size

-- Display: Business Header
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Header
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Version: B
  index, msg_version = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_version.dissect(buffer, index, packet, parent)

  -- Source Id: A
  index, source_id = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.source_id.dissect(buffer, index, packet, parent)

  -- Stream Id: B
  index, stream_id = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stream_id.dissect(buffer, index, packet, parent)

  -- Sequence 0: B
  index, sequence_0 = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sequence_0.dissect(buffer, index, packet, parent)

  -- Sequence 1: B
  index, sequence_1 = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sequence_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Header
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.business_header, buffer(offset, 0))
    local index = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_header.fields(buffer, offset, packet, parent)
  end
end

-- Body Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body_message = {}

-- Display: Body Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body_message.fields = function(buffer, offset, packet, parent, size_of_body_message)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(offset - 1, 1):string()

  -- Business Message: Runtime Type with 5 branches
  index = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_message.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Body Message
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body_message.dissect = function(buffer, offset, packet, parent, size_of_body_message)
  local index = offset + size_of_body_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.body_message, buffer(offset, 0))
    local current = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body_message.fields(buffer, offset, packet, parent, size_of_body_message)
    parent:set_len(size_of_body_message)
    local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body_message.fields(buffer, offset, packet, parent, size_of_body_message)

    return index
  end
end

-- Body Header
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body_header = {}

-- Size: Body Header
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body_header.size =
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_length.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_type.size

-- Display: Body Header
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body Header
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Length: B
  index, msg_length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_length.dissect(buffer, index, packet, parent)

  -- Msg Type: B
  index, msg_type = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Body Header
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.body_header, buffer(offset, 0))
    local index = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body_header.fields(buffer, offset, packet, parent)
  end
end

-- Body
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body = {}

-- Display: Body
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body.fields = function(buffer, offset, packet, parent, size_of_body, body_index)
  local index = offset

  -- Implicit Body Index
  if body_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.body_index, body_index)
    iteration:set_generated()
  end

  -- Body Header: Struct of 2 fields
  index, body_header = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Length
  local msg_length = buffer(index - 3, 2):le_uint()

  -- Runtime Size Of: Body Message
  local size_of_body_message = msg_length - 3

  -- Body Message: Struct of 2 fields
  index, body_message = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body_message.dissect(buffer, index, packet, parent, size_of_body_message)

  return index
end

-- Dissect: Body
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body.dissect = function(buffer, offset, packet, parent, size_of_body, body_index)
  local index = offset + size_of_body

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.body, buffer(offset, 0))
    local current = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body.fields(buffer, offset, packet, parent, size_of_body, body_index)
    parent:set_len(size_of_body)
    local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body.fields(buffer, offset, packet, parent, size_of_body, body_index)

    return index
  end
end

-- Business Bodies
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_bodies = {}

-- Calculate size of: Business Bodies
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_bodies.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Body
  index = index + buffer(offset + index - 0, 2):le_uint()

  return index
end

-- Display: Business Bodies
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_bodies.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Bodies
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_bodies.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Num Body
  local num_body = buffer(offset - 1, 1):uint()

  -- Repeating: Body
  for body_index = 1, num_body do

    -- Dependency element: Msg Length
    local msg_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Body
    index, body = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body.dissect(buffer, index, packet, parent, msg_length, body_index)
  end

  return index
end

-- Dissect: Business Bodies
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_bodies.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.business_bodies, buffer(offset, 0))
    local index = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_bodies.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_bodies.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_bodies.fields(buffer, offset, packet, parent)
  end
end

-- Admin Body
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.admin_body = {}

-- Size: Admin Body
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.admin_body.size =
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.source_id.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stream_id.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sequence_0.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sequence_1.size

-- Display: Admin Body
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.admin_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Admin Body
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.admin_body.fields = function(buffer, offset, packet, parent, admin_body_index)
  local index = offset

  -- Implicit Admin Body Index
  if admin_body_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.admin_body_index, admin_body_index)
    iteration:set_generated()
  end

  -- Source Id: A
  index, source_id = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.source_id.dissect(buffer, index, packet, parent)

  -- Stream Id: B
  index, stream_id = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.stream_id.dissect(buffer, index, packet, parent)

  -- Sequence 0: B
  index, sequence_0 = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sequence_0.dissect(buffer, index, packet, parent)

  -- Sequence 1: B
  index, sequence_1 = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.sequence_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Admin Body
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.admin_body.dissect = function(buffer, offset, packet, parent, admin_body_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.admin_body, buffer(offset, 0))
    local index = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.admin_body.fields(buffer, offset, packet, parent, admin_body_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.admin_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.admin_body.fields(buffer, offset, packet, parent, admin_body_index)
  end
end

-- Heartbeat Body
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.heartbeat_body = {}

-- Read runtime size of: Heartbeat Body
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.heartbeat_body.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset, 2):le_uint()

  return msg_length
end

-- Display: Heartbeat Body
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.heartbeat_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Body
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.heartbeat_body.fields = function(buffer, offset, packet, parent, size_of_heartbeat_body)
  local index = offset

  -- Body Header: Struct of 2 fields
  index, body_header = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.body_header.dissect(buffer, index, packet, parent)

  -- Admin Id: B
  index, admin_id = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.admin_id.dissect(buffer, index, packet, parent)

  -- Hb Interval: B
  index, hb_interval = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.hb_interval.dissect(buffer, index, packet, parent)

  -- Dependency element: Num Body
  local num_body = buffer(offset - 1, 1):uint()

  -- Repeating: Admin Body
  for admin_body_index = 1, num_body do
    index, admin_body = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.admin_body.dissect(buffer, index, packet, parent, admin_body_index)
  end

  return index
end

-- Dissect: Heartbeat Body
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.heartbeat_body.dissect = function(buffer, offset, packet, parent, size_of_heartbeat_body)
  local size_of_heartbeat_body = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.heartbeat_body.size(buffer, offset)
  local index = offset + size_of_heartbeat_body

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.heartbeat_body, buffer(offset, 0))
    local current = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.heartbeat_body.fields(buffer, offset, packet, parent, size_of_heartbeat_body)
    parent:set_len(size_of_heartbeat_body)
    local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.heartbeat_body.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.heartbeat_body.fields(buffer, offset, packet, parent, size_of_heartbeat_body)

    return index
  end
end

-- Packet Body
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.packet_body = {}

-- Dissect: Packet Body
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.packet_body.dispatch = {
  ["0"] = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.heartbeat_body.dissect,
}

tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.packet_body.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.packet_body.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Dissect Business Bodies
  return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.business_bodies.dissect(buffer, offset, packet, parent)
end

-- Frame Header
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.frame_header = {}

-- Size: Frame Header
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.frame_header.size =
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.start_of_frame.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.protocol_name.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.protocol_version.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.message_length.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.session_id.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ack_required_poss_dup.size + 
  tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.num_body.size

-- Display: Frame Header
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.frame_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Frame Header
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.frame_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Frame: B
  index, start_of_frame = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.start_of_frame.dissect(buffer, index, packet, parent)

  -- Protocol Name: A
  index, protocol_name = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.protocol_name.dissect(buffer, index, packet, parent)

  -- Protocol Version: N
  index, protocol_version = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.protocol_version.dissect(buffer, index, packet, parent)

  -- Message Length: B
  index, message_length = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.message_length.dissect(buffer, index, packet, parent)

  -- Session Id: B
  index, session_id = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.session_id.dissect(buffer, index, packet, parent)

  -- Ack Required Poss Dup: A
  index, ack_required_poss_dup = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.ack_required_poss_dup.dissect(buffer, index, packet, parent)

  -- Num Body: B
  index, num_body = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.num_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Frame Header
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.frame_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.fields.frame_header, buffer(offset, 0))
    local index = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.frame_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.frame_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.frame_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.packet = {}

-- Verify required size of Udp packet
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.packet.requiredsize = function(buffer)
  return buffer:len() >= tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.frame_header.size + 2 + tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.msg_type.size
end

-- Dissect Packet
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Frame Header: Struct of 7 fields
    index, frame_header = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.frame_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Message Length
    local message_length = buffer(index - 8, 2):le_uint()

    -- Runtime optional field: Packet Body
    local packet_body = nil

    local packet_body_exists = message_length > 6

    if packet_body_exists then

      -- Dependency element: Msg Type
      local msg_type = buffer(index + 2, 1):string()

      -- Packet Body: Runtime Type with 2 branches
      index = tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.packet_body.dissect(buffer, index, packet, parent, msg_type)
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.init()
end

-- Dissector for Tmx TsxAlpha QuantumFeedLevel1 Xmt 2.1
function omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1, buffer(), omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.description, "("..buffer:len().." Bytes)")
  return tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.packet.fingerprint = function(buffer)
  if buffer:len() < 14 then
    return false
  end

  local msg_type = buffer(13, 1):string()

  -- Heartbeat Body
  if msg_type == "0" then
    return true
  end

  -- Business Bodies: carries the application messages, which tell this protocol from others sharing the session framing
  if buffer:len() < 14 then
    return false
  end

  local msg_type = buffer(13, 1):string()

  -- Symbol Status Message
  if msg_type == "J" then
    return true
  end

  -- Trade Message
  if msg_type == "s" then
    return true
  end

  -- Trade Cancelled Message
  if msg_type == "t" then
    return true
  end

  -- Stock Status Message
  if msg_type == "v" then
    return true
  end

  -- Equity Quote Message
  if msg_type == "w" then
    return true
  end


  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Start Of Frame Field
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.start_of_frame.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 0 + 1 then
    return false
  end

  -- Attempt to read field
  local value = buffer(0, 1):uint()

  if value == 2 then
    return true
  end

  return false
end

-- Verify Protocol Name Field
tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.protocol_name.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 1 + 1 then
    return false
  end

  -- Attempt to read field
  local value = buffer(1, 1):string()

  if value == "X" then
    return true
  end

  return false
end

-- Dissector Heuristic for Tmx TsxAlpha QuantumFeedLevel1 Xmt 2.1 (Udp)
local function omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.packet.requiredsize(buffer) then return false end

  -- Verify Start Of Frame
  if not tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.start_of_frame.verify(buffer) then return false end

  -- Verify Protocol Name
  if not tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.protocol_name.verify(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1
  omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Tmx TsxAlpha QuantumFeedLevel1 Xmt 2.1
omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1:register_heuristic("udp", omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1_udp_heuristic)

-- Register Tmx TsxAlpha QuantumFeedLevel1 Xmt 2.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_tmx_tsxalpha_quantumfeedlevel1_xmt_v2_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: TMX Group
--   Version: 2.1
--   Date: Tuesday, October 20, 2020
--   Specification: Alpha Level 1 QuantumFeed Business Message Specification (2.1.0).pdf
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
