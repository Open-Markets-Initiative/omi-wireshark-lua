-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx Tsx QuantumFeedLevel2Recovery Xmt 3.6 Protocol
local omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6 = Proto("Omi.Tmx.Tsx.QuantumFeedLevel2Recovery.Xmt.v3.6", "Tmx Tsx QuantumFeedLevel2Recovery Xmt 3.6")

-- Protocol table
local tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx Tsx QuantumFeedLevel2Recovery Xmt 3.6 Fields
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.ack_required_poss_dup = ProtoField.new("Ack Required Poss Dup", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.ackrequiredpossdup", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.admin_body = ProtoField.new("Admin Body", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.adminbody", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.admin_id = ProtoField.new("Admin Id", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.adminid", ftypes.UINT8, nil, nil, nil, "Admin ID for short window (1 to 255). Note: 0 is not allowed as a value.")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.board_lot = ProtoField.new("Board Lot", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.boardlot", ftypes.UINT16, nil, nil, nil, "Contains The Board Lot Size")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.broker_number = ProtoField.new("Broker Number", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.brokernumber", ftypes.UINT16, nil, nil, nil, "An Exchangeassigned Public Number Uniquely Identifying A Participating Organization")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.buy_broker_number = ProtoField.new("Buy Broker Number", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.buybrokernumber", ftypes.UINT16, nil, nil, nil, "An Exchangeassigned Public Number Uniquely Identifying A Participating Organization Associated With A Buy Order")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.buy_display_volume = ProtoField.new("Buy Display Volume", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.buydisplayvolume", ftypes.UINT32, nil, nil, nil, "Public Remaining Display Volume For The Buy Order")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.buy_maximum_quantity = ProtoField.new("Buy Maximum Quantity", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.buymaximumquantity", ftypes.UINT32, nil, nil, nil, "The Maximum Quantity Of A Mutual Fund Allowed To Purchase")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.buy_minimum_quantity = ProtoField.new("Buy Minimum Quantity", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.buyminimumquantity", ftypes.UINT32, nil, nil, nil, "The Minimum Quantity Of A Mutual Fund Required To Purchase")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.buy_order_id = ProtoField.new("Buy Order Id", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.buyorderid", ftypes.UINT64, nil, nil, nil, "Public Numeric Identifier Assigned To The Buy Order By The Trading System")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.bypass = ProtoField.new("Bypass", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.bypass", ftypes.STRING, nil, nil, nil, "An Indicator For Bypass Crosses Which Can Be Printed Outside Of The Protected Nbbo And Are Not Subject To Cross Interference")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.calculated_opening_price = ProtoField.new("Calculated Opening Price", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.calculatedopeningprice", ftypes.DOUBLE, nil, nil, nil, "The Price At Which Orders Will Trade At The Open")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.client_frame = ProtoField.new("Client Frame", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.clientframe", ftypes.STRING, nil, nil, nil, "One XMT frame with no trailer.")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.comment = ProtoField.new("Comment", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.comment", ftypes.STRING, nil, nil, nil, "A Text Field Corresponding To A Reason Code Entered When A Stock Is Halted Or The Initiator Of A Delayed Opening On A Stock Or When There Is A Change To The Rt Oddlot Trader On A Stock As Well This Is A Systemproduced Text Field To Describe The Disabling Of The Moc Session By Tsx Trading Services")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.cop_limit = ProtoField.new("Cop Limit", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.coplimit", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.cop_order = ProtoField.new("Cop Order", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.coporder", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.credits = ProtoField.new("Credits", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.credits", ftypes.UINT16, nil, nil, nil, "Reserved for future use. Value is 0.")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.cross_type = ProtoField.new("Cross Type", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.crosstype", ftypes.STRING, nil, nil, nil, "Type Of Crosses Originating From A Participating Organization Between Managed Accounts That Have The Same Manager")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.currency = ProtoField.new("Currency", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.currency", ftypes.STRING, nil, nil, nil, "The Currency Associated With A Reported Price")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.cusip = ProtoField.new("Cusip", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.cusip", ftypes.STRING, nil, nil, nil, "Clearing And Settlement Registration Number")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.face_value = ProtoField.new("Face Value", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.facevalue", ftypes.DOUBLE, nil, nil, nil, "The Face Value Of A Debenture")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.far_indicative_closing_price = ProtoField.new("Far Indicative Closing Price", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.farindicativeclosingprice", ftypes.DOUBLE, nil, nil, nil, "The Calculated Closing Price That Will Maximize The Number Of Shares Matched Based On Closing Interest Only Moc Loc This Calculation Excludes Continuous Market Orders")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.hb_interval = ProtoField.new("Hb Interval", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.hbinterval", ftypes.UINT16, nil, nil, nil, "Heartbeat interval in milliseconds (1 to 65536).")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.imbalance_reference_price = ProtoField.new("Imbalance Reference Price", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.imbalancereferenceprice", ftypes.DOUBLE, nil, nil, nil, "The Price That Determines If A Given Limitpriced Market On Close Loc Order Can Contribute To The Moc Imbalance All Loc Orders That Are Priced Equal To Or More Aggressively Than This Price Will Contribute To The Moc Imbalance")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.imbalance_side = ProtoField.new("Imbalance Side", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.imbalanceside", ftypes.STRING, nil, nil, nil, "Marker To Indicate Which Side Has An Imbalance Volume For Market On Close")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.imbalancevolume", ftypes.UINT32, nil, nil, nil, "Identifies The Volume Of Shares Of The Imbalance Side For Market On Close")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.initiated_by = ProtoField.new("Initiated By", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.initiatedby", ftypes.STRING, nil, nil, nil, "Indicates Which Side Began The Trade Correction")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.is_conditional = ProtoField.new("Is Conditional", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.isconditional", ftypes.STRING, nil, nil, nil, "Indicates A Firmup Conditional To Firmup Conditional Execution")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.is_dark = ProtoField.new("Is Dark", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.isdark", ftypes.STRING, nil, nil, nil, "Indicates The Passive Side Of The Trade Is Dark")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.is_mid_only = ProtoField.new("Is Mid Only", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.ismidonly", ftypes.STRING, nil, nil, nil, "Indicates A Dark Contra Midpoint Only Plus To Contra Midpoint Only Plus Execution")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.last_sale = ProtoField.new("Last Sale", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.lastsale", ftypes.DOUBLE, nil, nil, nil, "Last Sale Price Of A Stock")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.listing_market = ProtoField.new("Listing Market", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.listingmarket", ftypes.STRING, nil, nil, nil, "The Market On Which A Security Is Listed")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.market_order_imbalance_side = ProtoField.new("Market Order Imbalance Side", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.marketorderimbalanceside", ftypes.STRING, nil, nil, nil, "Side Buy Or Sell Of The Market Order Imbalance Volume")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.market_order_imbalance_volume = ProtoField.new("Market Order Imbalance Volume", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.marketorderimbalancevolume", ftypes.UINT32, nil, nil, nil, "Indicates The Share Imbalance When Considering Moc Orders Only Note This Will Not Change From Freeze Period As Moc Orders Are Not Allowed After This Time")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.market_state = ProtoField.new("Market State", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.marketstate", ftypes.STRING, nil, nil, nil, "Indicates The Current Market State")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.message_length = ProtoField.new("Message Length", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.messagelength", ftypes.UINT16, nil, nil, nil, "Length of message from Header to Body inclusive")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.moc_eligible = ProtoField.new("Moc Eligible", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.moceligible", ftypes.STRING, nil, nil, nil, "Identifies Whether The Stock Is Eligible To Trade In The Market On Close Session Each Trading Day")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.msg_length = ProtoField.new("Msg Length", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.msglength", ftypes.UINT16, nil, nil, nil, "Length of this message")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.msg_type = ProtoField.new("Msg Type", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.msgtype", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.msg_version = ProtoField.new("Msg Version", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.msgversion", ftypes.UINT8, nil, nil, nil, "Message version number")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.near_indicative_closing_price = ProtoField.new("Near Indicative Closing Price", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.nearindicativeclosingprice", ftypes.DOUBLE, nil, nil, nil, "The Calculated Closing Price That Will Maximize The Number Of Shares Matched Based On Onclose Orders Moc Loc And Visible Continuous Market Orders Effectively This Is The Price At Which The Closing Print Would Occur At The Time Of Publication")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.non_resident = ProtoField.new("Non Resident", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.nonresident", ftypes.STRING, nil, nil, nil, "A Terms Marker Indicating That Trade Participant Is Not A Canadian Resident")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.num_body = ProtoField.new("Num Body", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.numbody", ftypes.UINT8)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_id = ProtoField.new("Order Id", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.orderid", ftypes.UINT64, nil, nil, nil, "Public Numeric Identifier Assigned To An Order By The Trading System")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_price = ProtoField.new("Order Price", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.orderprice", ftypes.DOUBLE, nil, nil, nil, "The Price In A Valid Currency")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_side = ProtoField.new("Order Side", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.orderside", ftypes.STRING, nil, nil, nil, "Market Side Of An Order")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.orig_trade_number = ProtoField.new("Orig Trade Number", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.origtradenumber", ftypes.UINT32, nil, nil, nil, "Used With Trade Corrections To Reference Previously Reported Executions")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.paired_volume = ProtoField.new("Paired Volume", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.pairedvolume", ftypes.UINT32, nil, nil, nil, "The Number Of Moc And Loc Shares That Are Able Be Matched At The Reference Price")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.price = ProtoField.new("Price", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.price", ftypes.DOUBLE, nil, nil, nil, "The Price In A Valid Currency")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.price_variation = ProtoField.new("Price Variation", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.pricevariation", ftypes.DOUBLE, nil, nil, nil, "This Field Indicates The Absolute Value Of The Percentage Of Deviation Of The Near Indicative Closing Price From The Reference Price")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.priority_time_stamp = ProtoField.new("Priority Time Stamp", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.prioritytimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time Stamp Assigned By The Trading Engine To Specify Time Priority Of An Order Orders Are Sequenced In The Order Book Based On Symbol Price And Priority Time Stamp")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.priority_time_stamp_utc = ProtoField.new("Priority Time Stamp", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.prioritytimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time Stamp Assigned By The Trading Engine To Specify Time Priority Of An Order Orders Are Sequenced In The Order Book Based On Symbol Price And Priority Time Stamp")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.product_type = ProtoField.new("Product Type", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.producttype", ftypes.STRING, nil, nil, nil, "The Product Type For A Symbol")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.protocol_name = ProtoField.new("Protocol Name", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.protocolname", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.protocol_version = ProtoField.new("Protocol Version", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.protocolversion", ftypes.UINT8, nil, nil, nil, "Protocol major version number")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.reason_code = ProtoField.new("Reason Code", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.reasoncode", ftypes.UINT8, nil, nil, nil, "Reason code for the jump.")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.reject_code = ProtoField.new("Reject Code", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.rejectcode", ftypes.UINT8, nil, nil, nil, "Code for rejection.")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.reject_message = ProtoField.new("Reject Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.rejectmessage", ftypes.STRING, nil, nil, nil, "Alphanumeric descriptive message.")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.reject_subcode = ProtoField.new("Reject Subcode", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.rejectsubcode", ftypes.UINT8, nil, nil, nil, "Reason for rejection.")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.rejected_business_header = ProtoField.new("Rejected Business Header", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.rejectedbusinessheader", ftypes.STRING, nil, nil, nil, "Business header reference without a business payload.")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.rejected_msg_length = ProtoField.new("Rejected Msg Length", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.rejectedmsglength", ftypes.UINT16, nil, nil, nil, "Length of this message (BusHdr) in bytes including this field.")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.rejected_sequence_1 = ProtoField.new("Rejected Sequence 1", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.rejectedsequence1", ftypes.UINT32, nil, nil, nil, "Starting sequence per stream ID of the Business message that results in the rejection.")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.replay_range = ProtoField.new("Replay Range", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.replayrange", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.replay_session_id = ProtoField.new("Replay Session Id", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.replaysessionid", ftypes.UINT32, nil, nil, nil, "Session ID of the source to replay the message.")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.replay_win = ProtoField.new("Replay Win", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.replaywin", ftypes.UINT8, nil, nil, nil, "Replay window in seconds.")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.replay_win_num = ProtoField.new("Replay Win Num", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.replaywinnum", ftypes.UINT16, nil, nil, nil, "Maximum number of replay requests allowed in the window.")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.replay_win_size = ProtoField.new("Replay Win Size", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.replaywinsize", ftypes.UINT16, nil, nil, nil, "Maximum number of messages, in thousands, allowed in the replay window.")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sell_broker_number = ProtoField.new("Sell Broker Number", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.sellbrokernumber", ftypes.UINT16, nil, nil, nil, "An Exchangeassigned Number Uniquely Identifying A Participating Organization Associated With A Sell Order")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sell_display_volume = ProtoField.new("Sell Display Volume", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.selldisplayvolume", ftypes.UINT32, nil, nil, nil, "Public Remaining Volume For The Sell Order")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sell_maximum_quantity = ProtoField.new("Sell Maximum Quantity", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.sellmaximumquantity", ftypes.UINT32, nil, nil, nil, "The Maximum Quantity Of A Mutual Fund Allowed To Sell")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sell_minimum_quantity = ProtoField.new("Sell Minimum Quantity", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.sellminimumquantity", ftypes.UINT32, nil, nil, nil, "The Minimum Quantity Of A Mutual Fund Required To Sell")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sell_order_id = ProtoField.new("Sell Order Id", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.sellorderid", ftypes.UINT64, nil, nil, nil, "Public Numeric Identifier Assigned To A Sell Order By The Trading System")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sequence_0 = ProtoField.new("Sequence 0", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.sequence0", ftypes.UINT8, nil, nil, nil, "Reserved for future expansion, Value is 0")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sequence_1 = ProtoField.new("Sequence 1", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.sequence1", ftypes.UINT32, nil, nil, nil, "Sequence per Stream Id of the Business message")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sequence_1_current = ProtoField.new("Sequence 1 Current", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.sequence1current", ftypes.UINT32, nil, nil, nil, "Current next sequence per stream ID.")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sequence_1_end = ProtoField.new("Sequence 1 End", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.sequence1end", ftypes.UINT32, nil, nil, nil, "Ending sequence per stream ID.")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sequence_1_new = ProtoField.new("Sequence 1 New", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.sequence1new", ftypes.UINT32, nil, nil, nil, "New next sequence per stream ID.")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sequence_1_start = ProtoField.new("Sequence 1 Start", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.sequence1start", ftypes.UINT32, nil, nil, nil, "Starting sequence per stream ID.")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sequence_jump_record = ProtoField.new("Sequence Jump Record", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.sequencejumprecord", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.server_frame = ProtoField.new("Server Frame", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.serverframe", ftypes.STRING, nil, nil, nil, "One XMT frame with no trailer.")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.session_id = ProtoField.new("Session Id", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.sessionid", ftypes.UINT32, nil, nil, nil, "Constant Session Id")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.settlement_date = ProtoField.new("Settlement Date", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.settlementdate", ftypes.UINT32, nil, nil, nil, "Settlement Date Associated With The Order")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.settlement_terms = ProtoField.new("Settlement Terms", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.settlementterms", ftypes.STRING, nil, nil, nil, "Settlement Terms Associated With The Order")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.source_id = ProtoField.new("Source Id", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.sourceid", ftypes.STRING, nil, nil, nil, "Source Id of the Business message")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.start_of_frame = ProtoField.new("Start Of Frame", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.startofframe", ftypes.UINT8)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.stock_group = ProtoField.new("Stock Group", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.stockgroup", ftypes.UINT8, nil, nil, nil, "An Identifier Of The Stock Group")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.stock_state = ProtoField.new("Stock State", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.stockstate", ftypes.STRING, nil, nil, nil, "The State Of The Stock")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.stream_id = ProtoField.new("Stream Id", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.streamid", ftypes.UINT16, nil, nil, nil, "Stream Id per Source Id of the Business message")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.symbol = ProtoField.new("Symbol", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.symbol", ftypes.STRING, nil, nil, nil, "A Unique Alphanumeric Identifier For A Security")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.test_symbol = ProtoField.new("Test Symbol", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.testsymbol", ftypes.STRING, nil, nil, nil, "Indicates The Symbol Is A Test Symbol")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trade_date = ProtoField.new("Trade Date", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.tradedate", ftypes.UINT32, nil, nil, nil, "Effective Date Of The Trade Will Only Be Filled When The Effective Date Is Different From The Current Date")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trade_number = ProtoField.new("Trade Number", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.tradenumber", ftypes.UINT32, nil, nil, nil, "Unique Identifier Assigned To Each Trade On A Per Stock Basis")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trade_time_stamp = ProtoField.new("Trade Time Stamp", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.tradetimestamp", ftypes.UINT32, nil, nil, nil, "The Time At Which The Trade Occurred Manually Set When A Trade Is Added")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trading_system_time_stamp = ProtoField.new("Trading System Time Stamp", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.tradingsystemtimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The Time At Which The Event Being Reported Occurred In The Trading Engine")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trading_system_time_stamp_utc = ProtoField.new("Trading System Time Stamp", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.tradingsystemtimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The Time At Which The Event Being Reported Occurred In The Trading Engine")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.volume = ProtoField.new("Volume", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.volume", ftypes.UINT32, nil, nil, nil, "The Quantity Of Shares For An Order Or Fill")

-- Tmx Tsx QuantumFeedLevel2Recovery Xmt 3.6 Framing
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.ack = ProtoField.new("Ack", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.ack", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.body = ProtoField.new("Body", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.body", ftypes.STRING, nil, nil, nil, "Xmt Body")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.body_header = ProtoField.new("Body Header", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.bodyheader", ftypes.STRING, nil, nil, nil, "Xmt Body Header")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.body_message = ProtoField.new("Body Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.bodymessage", ftypes.STRING, nil, nil, nil, "Xmt Body Header")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.business_header = ProtoField.new("Business Header", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.businessheader", ftypes.STRING, nil, nil, nil, "Xmt Business Header")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.client_packet = ProtoField.new("Client Packet", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.clientpacket", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.frame_header = ProtoField.new("Frame Header", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.frameheader", ftypes.STRING, nil, nil, nil, "XMT frame prefix and outer header.")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.heartbeat_body = ProtoField.new("Heartbeat Body", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.heartbeatbody", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.login_request = ProtoField.new("Login Request", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.loginrequest", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.login_response = ProtoField.new("Login Response", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.loginresponse", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.logout = ProtoField.new("Logout", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.logout", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.reject = ProtoField.new("Reject", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.reject", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.replay_request = ProtoField.new("Replay Request", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.replayrequest", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sequence_jump = ProtoField.new("Sequence Jump", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.sequencejump", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.server_packet = ProtoField.new("Server Packet", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.serverpacket", ftypes.STRING)

-- Tmx Tsx QuantumFeedLevel2Recovery 3.6 Session Messages
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.ack = ProtoField.new("Ack", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.ack", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.heartbeat_body = ProtoField.new("Heartbeat Body", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.heartbeatbody", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.login_request = ProtoField.new("Login Request", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.loginrequest", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.login_response = ProtoField.new("Login Response", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.loginresponse", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.logout = ProtoField.new("Logout", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.logout", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.reject = ProtoField.new("Reject", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.reject", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.replay_request = ProtoField.new("Replay Request", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.replayrequest", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sequence_jump = ProtoField.new("Sequence Jump", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.sequencejump", ftypes.STRING)

-- Tmx Tsx QuantumFeedLevel2Recovery 3.6 Application Messages
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.assign_cop_no_orders_message = ProtoField.new("Assign Cop No Orders Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.assigncopnoordersmessage", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.assign_cop_orders_message = ProtoField.new("Assign Cop Orders Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.assigncopordersmessage", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.assign_limit_message = ProtoField.new("Assign Limit Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.assignlimitmessage", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.market_state_update_message = ProtoField.new("Market State Update Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.marketstateupdatemessage", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.moc_imbalance_message = ProtoField.new("Moc Imbalance Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.mocimbalancemessage", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_book_message = ProtoField.new("Order Book Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.orderbookmessage", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_book_terms_message = ProtoField.new("Order Book Terms Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.orderbooktermsmessage", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_booked_message = ProtoField.new("Order Booked Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.orderbookedmessage", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_booked_terms_message = ProtoField.new("Order Booked Terms Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.orderbookedtermsmessage", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_cancelled_message = ProtoField.new("Order Cancelled Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.ordercancelledmessage", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_cancelled_terms_message = ProtoField.new("Order Cancelled Terms Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.ordercancelledtermsmessage", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_price_time_assigned_message = ProtoField.new("Order Price Time Assigned Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.orderpricetimeassignedmessage", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_price_time_assigned_terms_message = ProtoField.new("Order Price Time Assigned Terms Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.orderpricetimeassignedtermsmessage", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.stock_status_message = ProtoField.new("Stock Status Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.stockstatusmessage", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.symbol_status_message = ProtoField.new("Symbol Status Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.symbolstatusmessage", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trade_cancelled_message = ProtoField.new("Trade Cancelled Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.tradecancelledmessage", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trade_cancelled_terms_message = ProtoField.new("Trade Cancelled Terms Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.tradecancelledtermsmessage", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.tradecorrectionmessage", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trade_correction_terms_message = ProtoField.new("Trade Correction Terms Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.tradecorrectiontermsmessage", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trade_report_message = ProtoField.new("Trade Report Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.tradereportmessage", ftypes.STRING)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trade_report_terms_message = ProtoField.new("Trade Report Terms Message", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.tradereporttermsmessage", ftypes.STRING)

-- Tmx Tsx QuantumFeedLevel2Recovery Xmt 3.6 Generated Fields
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.admin_body_index = ProtoField.new("Admin Body Index", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.adminbodyindex", ftypes.UINT16)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.body_index = ProtoField.new("Body Index", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.bodyindex", ftypes.UINT16)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.cop_limit_index = ProtoField.new("Cop Limit Index", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.coplimitindex", ftypes.UINT16)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.cop_order_index = ProtoField.new("Cop Order Index", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.coporderindex", ftypes.UINT16)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.rejected_business_header_index = ProtoField.new("Rejected Business Header Index", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.rejectedbusinessheaderindex", ftypes.UINT16)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.replay_range_index = ProtoField.new("Replay Range Index", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.replayrangeindex", ftypes.UINT16)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sequence_jump_record_index = ProtoField.new("Sequence Jump Record Index", "tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.sequencejumprecordindex", ftypes.UINT16)

-- Tmx Tsx QuantumFeedLevel2Recovery Xmt 3.6 Expert Info
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.experts = {}
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.experts.not_a_number = ProtoExpert.new("tmx.tsx.quantumfeedlevel2recovery.xmt.v3.6.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.experts = { tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.experts.not_a_number }

-----------------------------------------------------------------------
-- Tmx Tsx QuantumFeedLevel2Recovery Xmt 3.6 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.absolute_time_base = 0

-- assumed connection role
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Tmx Tsx QuantumFeedLevel2Recovery Xmt 3.6 Element Dissection Options
show.session_messages = true
show.structs = true
show.application_messages = true
show.headers = true
show.indexes = true

-- Register Tmx Tsx QuantumFeedLevel2Recovery Xmt 3.6 Show Options
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.show_application_messages then
    show.application_messages = omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.show_application_messages
  end
  if show.headers ~= omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.show_headers then
    show.headers = omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.show_headers
  end
  if show.session_messages ~= omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.show_session_messages then
    show.session_messages = omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.show_session_messages
  end
  if show.structs ~= omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.show_structs then
    show.structs = omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.show_structs
  end
  if show.indexes ~= omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.show_indexes then
    show.indexes = omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.show_indexes
  end
  if tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.absolute_time_base ~= omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.absolute_time_base then
    tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.absolute_time_base = omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.absolute_time_base
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
-- Tmx Tsx QuantumFeedLevel2Recovery Xmt 3.6 Fields
-----------------------------------------------------------------------

-- Ack Required Poss Dup
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.ack_required_poss_dup = {}

-- Size: Ack Required Poss Dup
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.ack_required_poss_dup.size = 1

-- Display: Ack Required Poss Dup
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.ack_required_poss_dup.display = function(value)
  if value == "A" then
    return "Ack Required Poss Dup: Ack Required (A)"
  end
  if value == "D" then
    return "Ack Required Poss Dup: Poss Dup (D)"
  end

  return "Ack Required Poss Dup: Unknown("..value..")"
end

-- Dissect: Ack Required Poss Dup
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.ack_required_poss_dup.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.ack_required_poss_dup.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.ack_required_poss_dup.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.ack_required_poss_dup, range, value, display)

  return offset + length, value
end

-- Admin Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_id = {}

-- Size: Admin Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_id.size = 1

-- Display: Admin Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_id.display = function(value)
  return "Admin Id: "..value
end

-- Dissect: Admin Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.admin_id, range, value, display)

  return offset + length, value
end

-- Board Lot
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.board_lot = {}

-- Size: Board Lot
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.board_lot.size = 2

-- Display: Board Lot
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.board_lot.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Board Lot: No Value"
  end

  return "Board Lot: "..value
end

-- Dissect: Board Lot
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.board_lot.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.board_lot.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.board_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.board_lot, range, value, display)

  return offset + length, value
end

-- Broker Number
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number = {}

-- Size: Broker Number
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.size = 2

-- Display: Broker Number
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Broker Number: No Value"
  end

  return "Broker Number: "..value
end

-- Dissect: Broker Number
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.broker_number, range, value, display)

  return offset + length, value
end

-- Buy Broker Number
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_broker_number = {}

-- Size: Buy Broker Number
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_broker_number.size = 2

-- Display: Buy Broker Number
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_broker_number.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Buy Broker Number: No Value"
  end

  return "Buy Broker Number: "..value
end

-- Dissect: Buy Broker Number
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_broker_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_broker_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_broker_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.buy_broker_number, range, value, display)

  return offset + length, value
end

-- Buy Display Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_display_volume = {}

-- Size: Buy Display Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_display_volume.size = 4

-- Display: Buy Display Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_display_volume.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Buy Display Volume: No Value"
  end

  return "Buy Display Volume: "..value
end

-- Dissect: Buy Display Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_display_volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_display_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_display_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.buy_display_volume, range, value, display)

  return offset + length, value
end

-- Buy Maximum Quantity
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_maximum_quantity = {}

-- Size: Buy Maximum Quantity
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_maximum_quantity.size = 4

-- Display: Buy Maximum Quantity
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_maximum_quantity.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Buy Maximum Quantity: No Value"
  end

  return "Buy Maximum Quantity: "..value
end

-- Dissect: Buy Maximum Quantity
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_maximum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_maximum_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_maximum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.buy_maximum_quantity, range, value, display)

  return offset + length, value
end

-- Buy Minimum Quantity
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_minimum_quantity = {}

-- Size: Buy Minimum Quantity
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_minimum_quantity.size = 4

-- Display: Buy Minimum Quantity
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_minimum_quantity.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Buy Minimum Quantity: No Value"
  end

  return "Buy Minimum Quantity: "..value
end

-- Dissect: Buy Minimum Quantity
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_minimum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_minimum_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_minimum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.buy_minimum_quantity, range, value, display)

  return offset + length, value
end

-- Buy Order Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_order_id = {}

-- Size: Buy Order Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_order_id.size = 8

-- Display: Buy Order Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_order_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Buy Order Id: No Value"
  end

  return "Buy Order Id: "..value
end

-- Dissect: Buy Order Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_order_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.buy_order_id, range, value, display)

  return offset + length, value
end

-- Bypass
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.bypass = {}

-- Size: Bypass
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.bypass.size = 1

-- Display: Bypass
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.bypass.display = function(value)
  if value == "Y" then
    return "Bypass: The Order Is A Bypass (Y)"
  end
  if value == "N" then
    return "Bypass: The Order Is Not A Bypass (N)"
  end

  return "Bypass: Unknown("..value..")"
end

-- Dissect: Bypass
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.bypass.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.bypass.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.bypass.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.bypass, range, value, display)

  return offset + length, value
end

-- Calculated Opening Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.calculated_opening_price = {}

-- Size: Calculated Opening Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.calculated_opening_price.size = 8

-- Display: Calculated Opening Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.calculated_opening_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return "Calculated Opening Price: No Value"
  end

  return "Calculated Opening Price: "..value
end

-- Translate: Calculated Opening Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.calculated_opening_price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Calculated Opening Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.calculated_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.calculated_opening_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.calculated_opening_price.translate(raw)
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.calculated_opening_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.calculated_opening_price, range, value, display)

  return offset + length, value
end

-- Comment
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.comment = {}

-- Size: Comment
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.comment.size = 40

-- Display: Comment
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.comment.display = function(value)
  return "Comment: "..value
end

-- Dissect: Comment
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.comment.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.comment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.comment.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.comment, range, value, display)

  return offset + length, value
end

-- Credits
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.credits = {}

-- Size: Credits
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.credits.size = 2

-- Display: Credits
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.credits.display = function(value)
  if value == 0 then
    return "Credits: Reserved"
  end

  return "Credits: Unknown("..value..")"
end

-- Dissect: Credits
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.credits.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.credits.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.credits.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.credits, range, value, display)

  return offset + length, value
end

-- Cross Type
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cross_type = {}

-- Size: Cross Type
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cross_type.size = 1

-- Display: Cross Type
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cross_type.display = function(value)
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
  if value == "S" then
    return "Cross Type: Special Trading Session (S)"
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
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Currency
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.currency = {}

-- Size: Currency
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.currency.size = 1

-- Display: Currency
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.currency.display = function(value)
  if value == "U" then
    return "Currency: Usd (U)"
  end
  if value == "C" then
    return "Currency: Cad (C)"
  end

  return "Currency: Unknown("..value..")"
end

-- Dissect: Currency
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.currency.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.currency, range, value, display)

  return offset + length, value
end

-- Cusip
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cusip = {}

-- Size: Cusip
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cusip.size = 12

-- Display: Cusip
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cusip.display = function(value)
  return "Cusip: "..value
end

-- Dissect: Cusip
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cusip.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cusip.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cusip.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.cusip, range, value, display)

  return offset + length, value
end

-- Face Value
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.face_value = {}

-- Size: Face Value
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.face_value.size = 8

-- Display: Face Value
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.face_value.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return "Face Value: No Value"
  end

  return "Face Value: "..value
end

-- Translate: Face Value
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.face_value.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Face Value
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.face_value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.face_value.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.face_value.translate(raw)
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.face_value.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.face_value, range, value, display)

  return offset + length, value
end

-- Far Indicative Closing Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.far_indicative_closing_price = {}

-- Size: Far Indicative Closing Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.far_indicative_closing_price.size = 8

-- Display: Far Indicative Closing Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.far_indicative_closing_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return "Far Indicative Closing Price: No Value"
  end

  return "Far Indicative Closing Price: "..value
end

-- Translate: Far Indicative Closing Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.far_indicative_closing_price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Far Indicative Closing Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.far_indicative_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.far_indicative_closing_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.far_indicative_closing_price.translate(raw)
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.far_indicative_closing_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.far_indicative_closing_price, range, value, display)

  return offset + length, value
end

-- Hb Interval
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.hb_interval = {}

-- Size: Hb Interval
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.hb_interval.size = 2

-- Display: Hb Interval
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.hb_interval.display = function(value)
  return "Hb Interval: "..value
end

-- Dissect: Hb Interval
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.hb_interval.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.hb_interval.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.hb_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.hb_interval, range, value, display)

  return offset + length, value
end

-- Imbalance Reference Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_reference_price = {}

-- Size: Imbalance Reference Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_reference_price.size = 8

-- Display: Imbalance Reference Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_reference_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return "Imbalance Reference Price: No Value"
  end

  return "Imbalance Reference Price: "..value
end

-- Translate: Imbalance Reference Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_reference_price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Imbalance Reference Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_reference_price.translate(raw)
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_reference_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.imbalance_reference_price, range, value, display)

  return offset + length, value
end

-- Imbalance Side
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_side = {}

-- Size: Imbalance Side
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_side.size = 1

-- Display: Imbalance Side
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_side.display = function(value)
  if value == "B" then
    return "Imbalance Side: Buy (B)"
  end
  if value == "S" then
    return "Imbalance Side: Sell (S)"
  end
  if value == " " then
    return "Imbalance Side: No Imbalance Exists (<whitespace>)"
  end

  return "Imbalance Side: Unknown("..value..")"
end

-- Dissect: Imbalance Side
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Imbalance Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_volume = {}

-- Size: Imbalance Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_volume.size = 4

-- Display: Imbalance Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_volume.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Imbalance Volume: No Value"
  end

  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.imbalance_volume, range, value, display)

  return offset + length, value
end

-- Initiated By
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.initiated_by = {}

-- Size: Initiated By
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.initiated_by.size = 1

-- Display: Initiated By
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.initiated_by.display = function(value)
  if value == "B" then
    return "Initiated By: Buy (B)"
  end
  if value == "S" then
    return "Initiated By: Sell (S)"
  end
  if value == "C" then
    return "Initiated By: Both (C)"
  end

  return "Initiated By: Unknown("..value..")"
end

-- Dissect: Initiated By
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.initiated_by.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.initiated_by.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.initiated_by.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.initiated_by, range, value, display)

  return offset + length, value
end

-- Is Conditional
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_conditional = {}

-- Size: Is Conditional
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_conditional.size = 1

-- Display: Is Conditional
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_conditional.display = function(value)
  if value == "Y" then
    return "Is Conditional: Yes (Y)"
  end
  if value == "N" then
    return "Is Conditional: No (N)"
  end

  return "Is Conditional: Unknown("..value..")"
end

-- Dissect: Is Conditional
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_conditional.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_conditional.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_conditional.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.is_conditional, range, value, display)

  return offset + length, value
end

-- Is Dark
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_dark = {}

-- Size: Is Dark
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_dark.size = 1

-- Display: Is Dark
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_dark.display = function(value)
  if value == "Y" then
    return "Is Dark: Yes (Y)"
  end
  if value == "N" then
    return "Is Dark: No (N)"
  end

  return "Is Dark: Unknown("..value..")"
end

-- Dissect: Is Dark
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_dark.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_dark.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_dark.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.is_dark, range, value, display)

  return offset + length, value
end

-- Is Mid Only
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_mid_only = {}

-- Size: Is Mid Only
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_mid_only.size = 1

-- Display: Is Mid Only
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_mid_only.display = function(value)
  if value == "Y" then
    return "Is Mid Only: Yes (Y)"
  end
  if value == "N" then
    return "Is Mid Only: No (N)"
  end

  return "Is Mid Only: Unknown("..value..")"
end

-- Dissect: Is Mid Only
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_mid_only.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_mid_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_mid_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.is_mid_only, range, value, display)

  return offset + length, value
end

-- Last Sale
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.last_sale = {}

-- Size: Last Sale
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.last_sale.size = 8

-- Display: Last Sale
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.last_sale.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return "Last Sale: No Value"
  end

  return "Last Sale: "..value
end

-- Translate: Last Sale
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.last_sale.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Last Sale
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.last_sale.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.last_sale.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.last_sale.translate(raw)
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.last_sale.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.last_sale, range, value, display)

  return offset + length, value
end

-- Listing Market
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.listing_market = {}

-- Size: Listing Market
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.listing_market.size = 1

-- Display: Listing Market
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.listing_market.display = function(value)
  if value == "T" then
    return "Listing Market: Tsx (T)"
  end
  if value == "V" then
    return "Listing Market: Tsx Venture (V)"
  end
  if value == "N" then
    return "Listing Market: Tsx Na Vex (N)"
  end
  if value == "Q" then
    return "Listing Market: Nasdaq (Q)"
  end
  if value == "S" then
    return "Listing Market: Nyse (S)"
  end
  if value == "M" then
    return "Listing Market: Nyse Mkt (M)"
  end
  if value == "X" then
    return "Listing Market: No Market (X)"
  end

  return "Listing Market: Unknown("..value..")"
end

-- Dissect: Listing Market
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.listing_market.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.listing_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.listing_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Market Order Imbalance Side
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_order_imbalance_side = {}

-- Size: Market Order Imbalance Side
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_order_imbalance_side.size = 1

-- Display: Market Order Imbalance Side
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_order_imbalance_side.display = function(value)
  if value == "B" then
    return "Market Order Imbalance Side: Buy (B)"
  end
  if value == "S" then
    return "Market Order Imbalance Side: Sell (S)"
  end
  if value == " " then
    return "Market Order Imbalance Side: No Imbalance Exists (<whitespace>)"
  end

  return "Market Order Imbalance Side: Unknown("..value..")"
end

-- Dissect: Market Order Imbalance Side
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_order_imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_order_imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_order_imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.market_order_imbalance_side, range, value, display)

  return offset + length, value
end

-- Market Order Imbalance Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_order_imbalance_volume = {}

-- Size: Market Order Imbalance Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_order_imbalance_volume.size = 4

-- Display: Market Order Imbalance Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_order_imbalance_volume.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Market Order Imbalance Volume: No Value"
  end

  return "Market Order Imbalance Volume: "..value
end

-- Dissect: Market Order Imbalance Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_order_imbalance_volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_order_imbalance_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_order_imbalance_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.market_order_imbalance_volume, range, value, display)

  return offset + length, value
end

-- Market State
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_state = {}

-- Size: Market State
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_state.size = 1

-- Display: Market State
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_state.display = function(value)
  if value == "P" then
    return "Market State: Preopen (P)"
  end
  if value == "O" then
    return "Market State: Opening (O)"
  end
  if value == "S" then
    return "Market State: Open (S)"
  end
  if value == "M" then
    return "Market State: Moc Imbalance (M)"
  end
  if value == "T" then
    return "Market State: Moc Freeze (T)"
  end
  if value == "A" then
    return "Market State: Ccp Determination (A)"
  end
  if value == "E" then
    return "Market State: Price Movement Extension (E)"
  end
  if value == "L" then
    return "Market State: Closing (L)"
  end
  if value == "N" then
    return "Market State: Extended Hours Cxls (N)"
  end
  if value == "R" then
    return "Market State: Extended Hours Open (R)"
  end
  if value == "F" then
    return "Market State: Extended Hours Close (F)"
  end
  if value == "C" then
    return "Market State: Closed (C)"
  end
  if value == "J" then
    return "Market State: Nav Ex Closed (J)"
  end
  if value == "G" then
    return "Market State: Nav Ex Order Entry (G)"
  end
  if value == "H" then
    return "Market State: Nav Ex Order Entry Close (H)"
  end
  if value == "K" then
    return "Market State: Nav Ex Am Execution (K)"
  end
  if value == "X" then
    return "Market State: Nav Ex Pm Execution (X)"
  end
  if value == "Y" then
    return "Market State: Nav Ex Close (Y)"
  end

  return "Market State: Unknown("..value..")"
end

-- Dissect: Market State
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_state.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.market_state, range, value, display)

  return offset + length, value
end

-- Message Length
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.message_length = {}

-- Size: Message Length
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.message_length.size = 2

-- Display: Message Length
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.message_length.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.message_length, range, value, display)

  return offset + length, value
end

-- Moc Eligible
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.moc_eligible = {}

-- Size: Moc Eligible
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.moc_eligible.size = 1

-- Display: Moc Eligible
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.moc_eligible.display = function(value)
  if value == "Y" then
    return "Moc Eligible: Yes (Y)"
  end
  if value == "N" then
    return "Moc Eligible: No (N)"
  end

  return "Moc Eligible: Unknown("..value..")"
end

-- Dissect: Moc Eligible
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.moc_eligible.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.moc_eligible.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.moc_eligible.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.moc_eligible, range, value, display)

  return offset + length, value
end

-- Msg Length
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_length = {}

-- Size: Msg Length
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_length.size = 2

-- Display: Msg Length
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_type = {}

-- Size: Msg Type
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_type.size = 1

-- Display: Msg Type
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_type.display = function(value)
  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "1" then
    return "Msg Type: Login Request (1)"
  end
  if value == "2" then
    return "Msg Type: Login Response (2)"
  end
  if value == "3" then
    return "Msg Type: Logout (3)"
  end
  if value == "4" then
    return "Msg Type: Ack (4)"
  end
  if value == "5" then
    return "Msg Type: Replay Request (5)"
  end
  if value == "6" then
    return "Msg Type: Sequence Jump (6)"
  end
  if value == "9" then
    return "Msg Type: Reject (9)"
  end
  if value == "J" then
    return "Msg Type: Symbol Status Message (J)"
  end
  if value == "G" then
    return "Msg Type: Order Book Message (G)"
  end
  if value == "j" then
    return "Msg Type: Order Book Terms Message (j)"
  end
  if value == "A" then
    return "Msg Type: Assign Cop Orders Message (A)"
  end
  if value == "B" then
    return "Msg Type: Assign Cop No Orders Message (B)"
  end
  if value == "C" then
    return "Msg Type: Assign Limit Message (C)"
  end
  if value == "E" then
    return "Msg Type: Market State Update Message (E)"
  end
  if value == "F" then
    return "Msg Type: Moc Imbalance Message (F)"
  end
  if value == "P" then
    return "Msg Type: Order Booked Message (P)"
  end
  if value == "m" then
    return "Msg Type: Order Booked Terms Message (m)"
  end
  if value == "Q" then
    return "Msg Type: Order Cancelled Message (Q)"
  end
  if value == "n" then
    return "Msg Type: Order Cancelled Terms Message (n)"
  end
  if value == "R" then
    return "Msg Type: Order Price Time Assigned Message (R)"
  end
  if value == "o" then
    return "Msg Type: Order Price Time Assigned Terms Message (o)"
  end
  if value == "I" then
    return "Msg Type: Stock Status Message (I)"
  end
  if value == "S" then
    return "Msg Type: Trade Report Message (S)"
  end
  if value == "p" then
    return "Msg Type: Trade Report Terms Message (p)"
  end
  if value == "T" then
    return "Msg Type: Trade Cancelled Message (T)"
  end
  if value == "q" then
    return "Msg Type: Trade Cancelled Terms Message (q)"
  end
  if value == "U" then
    return "Msg Type: Trade Correction Message (U)"
  end
  if value == "r" then
    return "Msg Type: Trade Correction Terms Message (r)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Msg Version
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_version = {}

-- Size: Msg Version
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_version.size = 1

-- Display: Msg Version
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_version.display = function(value)
  return "Msg Version: "..value
end

-- Dissect: Msg Version
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_version.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.msg_version, range, value, display)

  return offset + length, value
end

-- Near Indicative Closing Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.near_indicative_closing_price = {}

-- Size: Near Indicative Closing Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.near_indicative_closing_price.size = 8

-- Display: Near Indicative Closing Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.near_indicative_closing_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return "Near Indicative Closing Price: No Value"
  end

  return "Near Indicative Closing Price: "..value
end

-- Translate: Near Indicative Closing Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.near_indicative_closing_price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Near Indicative Closing Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.near_indicative_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.near_indicative_closing_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.near_indicative_closing_price.translate(raw)
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.near_indicative_closing_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.near_indicative_closing_price, range, value, display)

  return offset + length, value
end

-- Non Resident
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.non_resident = {}

-- Size: Non Resident
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.non_resident.size = 1

-- Display: Non Resident
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.non_resident.display = function(value)
  if value == "Y" then
    return "Non Resident: Yes (Y)"
  end
  if value == "N" then
    return "Non Resident: No (N)"
  end

  return "Non Resident: Unknown("..value..")"
end

-- Dissect: Non Resident
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.non_resident.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.non_resident.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.non_resident.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.non_resident, range, value, display)

  return offset + length, value
end

-- Num Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.num_body = {}

-- Size: Num Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.num_body.size = 1

-- Display: Num Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.num_body.display = function(value)
  return "Num Body: "..value
end

-- Dissect: Num Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.num_body.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.num_body.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.num_body.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.num_body, range, value, display)

  return offset + length, value
end

-- Order Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id = {}

-- Size: Order Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.size = 8

-- Display: Order Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Order Id: No Value"
  end

  return "Order Id: "..value
end

-- Dissect: Order Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price = {}

-- Size: Order Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price.size = 8

-- Display: Order Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price.display = function(value)
  return "Order Price: "..value
end

-- Translate: Order Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Order Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price.translate(raw)
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_price, range, value, display)

  return offset + length, value
end

-- Order Side
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side = {}

-- Size: Order Side
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.size = 1

-- Display: Order Side
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.display = function(value)
  if value == "B" then
    return "Order Side: Buy (B)"
  end
  if value == "S" then
    return "Order Side: Sell (S)"
  end

  return "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_side, range, value, display)

  return offset + length, value
end

-- Orig Trade Number
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.orig_trade_number = {}

-- Size: Orig Trade Number
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.orig_trade_number.size = 4

-- Display: Orig Trade Number
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.orig_trade_number.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Orig Trade Number: No Value"
  end

  return "Orig Trade Number: "..value
end

-- Dissect: Orig Trade Number
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.orig_trade_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.orig_trade_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.orig_trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.orig_trade_number, range, value, display)

  return offset + length, value
end

-- Paired Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.paired_volume = {}

-- Size: Paired Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.paired_volume.size = 4

-- Display: Paired Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.paired_volume.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Paired Volume: No Value"
  end

  return "Paired Volume: "..value
end

-- Dissect: Paired Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.paired_volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.paired_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.paired_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.paired_volume, range, value, display)

  return offset + length, value
end

-- Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price = {}

-- Size: Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.size = 8

-- Display: Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Translate: Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x00000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Price
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.translate(raw)
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.price, range, value, display)

  return offset + length, value
end

-- Price Variation
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price_variation = {}

-- Size: Price Variation
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price_variation.size = 4

-- Display: Price Variation
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price_variation.display = function(raw, value)
  -- Check null sentinel value
  if raw == 0 then
    return "Price Variation: No Value"
  end

  return "Price Variation: "..value
end

-- Translate: Price Variation
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price_variation.translate = function(raw)
  -- Check null sentinel value
  if raw == 0 then
    return 0/0
  end

  return raw/100
end

-- Dissect: Price Variation
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price_variation.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price_variation.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price_variation.translate(raw)
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price_variation.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.price_variation, range, value, display)

  return offset + length, value
end

-- Priority Time Stamp
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.priority_time_stamp = {}

-- Size: Priority Time Stamp
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.priority_time_stamp.size = 8

-- Dissect: Priority Time Stamp
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.priority_time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.priority_time_stamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.priority_time_stamp
  if tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.absolute_time_base == 1 then field = omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.priority_time_stamp_utc end

  if value == UInt64(0x00000000, 0x00000000) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Priority Time Stamp: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000)):tonumber()
  local nanos = (value % UInt64(1000000)):tonumber() * 1000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Product Type
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.product_type = {}

-- Size: Product Type
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.product_type.size = 1

-- Display: Product Type
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.product_type.display = function(value)
  if value == "B" then
    return "Product Type: Debenture (B)"
  end
  if value == "E" then
    return "Product Type: Equity (E)"
  end
  if value == "M" then
    return "Product Type: Mutual Fund (M)"
  end
  if value == "F" then
    return "Product Type: Etf (F)"
  end
  if value == "U" then
    return "Product Type: Us Equity (U)"
  end
  if value == "O" then
    return "Product Type: Bond (O)"
  end

  return "Product Type: Unknown("..value..")"
end

-- Dissect: Product Type
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.product_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.product_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.product_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.product_type, range, value, display)

  return offset + length, value
end

-- Protocol Name
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.protocol_name = {}

-- Size: Protocol Name
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.protocol_name.size = 1

-- Display: Protocol Name
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.protocol_name.display = function(value)
  return "Protocol Name: "..value
end

-- Dissect: Protocol Name
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.protocol_name.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.protocol_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.protocol_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.protocol_name, range, value, display)

  return offset + length, value
end

-- Protocol Version
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.protocol_version = {}

-- Size: Protocol Version
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.protocol_version.size = 1

-- Display: Protocol Version
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.protocol_version.display = function(value)
  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.protocol_version.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.protocol_version.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.protocol_version, range, value, "Protocol Version: Not Applicable")
    item:add_proto_expert_info(tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.experts.not_a_number, "Protocol Version is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.protocol_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Reason Code
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reason_code = {}

-- Size: Reason Code
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reason_code.size = 1

-- Display: Reason Code
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reason_code.display = function(value)
  if value == 1 then
    return "Reason Code: Do Not Resend (1)"
  end
  if value == 2 then
    return "Reason Code: No Longer Available (2)"
  end
  if value == 3 then
    return "Reason Code: Disaster (3)"
  end

  return "Reason Code: Unknown("..value..")"
end

-- Dissect: Reason Code
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reason_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Reject Code
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_code = {}

-- Size: Reject Code
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_code.size = 1

-- Display: Reject Code
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_code.display = function(value)
  if value == 0 then
    return "Reject Code: Information (0)"
  end
  if value == 1 then
    return "Reject Code: Warning (1)"
  end
  if value == 2 then
    return "Reject Code: Critical (2)"
  end
  if value == 3 then
    return "Reject Code: Fatal (3)"
  end

  return "Reject Code: Unknown("..value..")"
end

-- Dissect: Reject Code
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_code.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.reject_code, range, value, display)

  return offset + length, value
end

-- Reject Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_message = {}

-- Size: Reject Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_message.size = 30

-- Display: Reject Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_message.display = function(value)
  return "Reject Message: "..value
end

-- Dissect: Reject Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_message.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_message.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.reject_message, range, value, display)

  return offset + length, value
end

-- Reject Subcode
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_subcode = {}

-- Size: Reject Subcode
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_subcode.size = 1

-- Display: Reject Subcode
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_subcode.display = function(value)
  if value == 1 then
    return "Reject Subcode: Invalid Syntax (1)"
  end
  if value == 2 then
    return "Reject Subcode: Invalid Session States Or Conditions (2)"
  end
  if value == 3 then
    return "Reject Subcode: Invalid Values (3)"
  end
  if value == 4 then
    return "Reject Subcode: Function Not Implemented (4)"
  end
  if value == 5 then
    return "Reject Subcode: Function Not Allowed (5)"
  end
  if value == 6 then
    return "Reject Subcode: Function Temporarily Not Available But Retryable (6)"
  end
  if value == 7 then
    return "Reject Subcode: Message Temporarily Not Available But Retryable (7)"
  end
  if value == 8 then
    return "Reject Subcode: Duplicate Request Or Message (8)"
  end
  if value == 9 then
    return "Reject Subcode: Others See Message (9)"
  end

  return "Reject Subcode: Unknown("..value..")"
end

-- Dissect: Reject Subcode
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_subcode.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_subcode.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_subcode.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.reject_subcode, range, value, display)

  return offset + length, value
end

-- Rejected Msg Length
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_msg_length = {}

-- Size: Rejected Msg Length
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_msg_length.size = 2

-- Display: Rejected Msg Length
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_msg_length.display = function(value)
  return "Rejected Msg Length: "..value
end

-- Dissect: Rejected Msg Length
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_msg_length.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.rejected_msg_length, range, value, display)

  return offset + length, value
end

-- Rejected Sequence 1
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_sequence_1 = {}

-- Size: Rejected Sequence 1
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_sequence_1.size = 4

-- Display: Rejected Sequence 1
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_sequence_1.display = function(value)
  return "Rejected Sequence 1: "..value
end

-- Dissect: Rejected Sequence 1
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_sequence_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_sequence_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_sequence_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.rejected_sequence_1, range, value, display)

  return offset + length, value
end

-- Replay Session Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_session_id = {}

-- Size: Replay Session Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_session_id.size = 4

-- Display: Replay Session Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_session_id.display = function(value)
  return "Replay Session Id: "..value
end

-- Dissect: Replay Session Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_session_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.replay_session_id, range, value, display)

  return offset + length, value
end

-- Replay Win
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win = {}

-- Size: Replay Win
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win.size = 1

-- Display: Replay Win
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win.display = function(value)
  return "Replay Win: "..value
end

-- Dissect: Replay Win
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.replay_win, range, value, display)

  return offset + length, value
end

-- Replay Win Num
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win_num = {}

-- Size: Replay Win Num
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win_num.size = 2

-- Display: Replay Win Num
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win_num.display = function(value)
  return "Replay Win Num: "..value
end

-- Dissect: Replay Win Num
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win_num.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.replay_win_num, range, value, display)

  return offset + length, value
end

-- Replay Win Size
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win_size = {}

-- Size: Replay Win Size
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win_size.size = 2

-- Display: Replay Win Size
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win_size.display = function(value)
  return "Replay Win Size: "..value
end

-- Dissect: Replay Win Size
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.replay_win_size, range, value, display)

  return offset + length, value
end

-- Sell Broker Number
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_broker_number = {}

-- Size: Sell Broker Number
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_broker_number.size = 2

-- Display: Sell Broker Number
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_broker_number.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Sell Broker Number: No Value"
  end

  return "Sell Broker Number: "..value
end

-- Dissect: Sell Broker Number
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_broker_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_broker_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_broker_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sell_broker_number, range, value, display)

  return offset + length, value
end

-- Sell Display Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_display_volume = {}

-- Size: Sell Display Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_display_volume.size = 4

-- Display: Sell Display Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_display_volume.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Sell Display Volume: No Value"
  end

  return "Sell Display Volume: "..value
end

-- Dissect: Sell Display Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_display_volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_display_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_display_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sell_display_volume, range, value, display)

  return offset + length, value
end

-- Sell Maximum Quantity
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_maximum_quantity = {}

-- Size: Sell Maximum Quantity
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_maximum_quantity.size = 4

-- Display: Sell Maximum Quantity
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_maximum_quantity.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Sell Maximum Quantity: No Value"
  end

  return "Sell Maximum Quantity: "..value
end

-- Dissect: Sell Maximum Quantity
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_maximum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_maximum_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_maximum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sell_maximum_quantity, range, value, display)

  return offset + length, value
end

-- Sell Minimum Quantity
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_minimum_quantity = {}

-- Size: Sell Minimum Quantity
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_minimum_quantity.size = 4

-- Display: Sell Minimum Quantity
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_minimum_quantity.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Sell Minimum Quantity: No Value"
  end

  return "Sell Minimum Quantity: "..value
end

-- Dissect: Sell Minimum Quantity
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_minimum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_minimum_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_minimum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sell_minimum_quantity, range, value, display)

  return offset + length, value
end

-- Sell Order Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_order_id = {}

-- Size: Sell Order Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_order_id.size = 8

-- Display: Sell Order Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_order_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Sell Order Id: No Value"
  end

  return "Sell Order Id: "..value
end

-- Dissect: Sell Order Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_order_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sell_order_id, range, value, display)

  return offset + length, value
end

-- Sequence 0
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_0 = {}

-- Size: Sequence 0
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_0.size = 1

-- Display: Sequence 0
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_0.display = function(value)
  if value == 0 then
    return "Sequence 0: Reserved"
  end

  return "Sequence 0: Unknown("..value..")"
end

-- Dissect: Sequence 0
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_0.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_0.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_0.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sequence_0, range, value, display)

  return offset + length, value
end

-- Sequence 1
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1 = {}

-- Size: Sequence 1
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1.size = 4

-- Display: Sequence 1
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1.display = function(value)
  return "Sequence 1: "..value
end

-- Dissect: Sequence 1
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sequence_1, range, value, display)

  return offset + length, value
end

-- Sequence 1 Current
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_current = {}

-- Size: Sequence 1 Current
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_current.size = 4

-- Display: Sequence 1 Current
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_current.display = function(value)
  return "Sequence 1 Current: "..value
end

-- Dissect: Sequence 1 Current
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_current.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_current.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_current.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sequence_1_current, range, value, display)

  return offset + length, value
end

-- Sequence 1 End
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_end = {}

-- Size: Sequence 1 End
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_end.size = 4

-- Display: Sequence 1 End
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_end.display = function(value)
  return "Sequence 1 End: "..value
end

-- Dissect: Sequence 1 End
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_end.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_end.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_end.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sequence_1_end, range, value, display)

  return offset + length, value
end

-- Sequence 1 New
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_new = {}

-- Size: Sequence 1 New
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_new.size = 4

-- Display: Sequence 1 New
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_new.display = function(value)
  return "Sequence 1 New: "..value
end

-- Dissect: Sequence 1 New
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_new.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_new.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_new.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sequence_1_new, range, value, display)

  return offset + length, value
end

-- Sequence 1 Start
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_start = {}

-- Size: Sequence 1 Start
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_start.size = 4

-- Display: Sequence 1 Start
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_start.display = function(value)
  return "Sequence 1 Start: "..value
end

-- Dissect: Sequence 1 Start
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_start.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_start.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sequence_1_start, range, value, display)

  return offset + length, value
end

-- Session Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.session_id = {}

-- Size: Session Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.session_id.size = 4

-- Display: Session Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.session_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.session_id, range, value, display)

  return offset + length, value
end

-- Settlement Date
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_date = {}

-- Size: Settlement Date
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_date.size = 4

-- Display: Settlement Date
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_date.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Settlement Date: No Value"
  end

  return "Settlement Date: "..value
end

-- Dissect: Settlement Date
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Settlement Terms
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_terms = {}

-- Size: Settlement Terms
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_terms.size = 1

-- Display: Settlement Terms
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_terms.display = function(value)
  if value == "C" then
    return "Settlement Terms: Cash (C)"
  end
  if value == "N" then
    return "Settlement Terms: Nn (N)"
  end
  if value == "M" then
    return "Settlement Terms: Ms (M)"
  end
  if value == "T" then
    return "Settlement Terms: Ct (T)"
  end
  if value == "D" then
    return "Settlement Terms: Valid Settlement Date (D)"
  end
  if value == " " then
    return "Settlement Terms: No Settlement Terms (<whitespace>)"
  end

  return "Settlement Terms: Unknown("..value..")"
end

-- Dissect: Settlement Terms
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_terms.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_terms.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_terms.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.settlement_terms, range, value, display)

  return offset + length, value
end

-- Source Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.source_id = {}

-- Size: Source Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.source_id.size = 1

-- Display: Source Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.source_id.display = function(value)
  if value == "0" then
    return "Source Id: Non Source Related (0)"
  end
  if value == "Q" then
    return "Source Id: TSX (Q)"
  end
  if value == "V" then
    return "Source Id: TSX Venture (V)"
  end
  if value == "A" then
    return "Source Id: Alpha (A)"
  end

  return "Source Id: Unknown("..value..")"
end

-- Dissect: Source Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.source_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.source_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.source_id, range, value, display)

  return offset + length, value
end

-- Start Of Frame
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.start_of_frame = {}

-- Size: Start Of Frame
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.start_of_frame.size = 1

-- Display: Start Of Frame
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.start_of_frame.display = function(value)
  if value == 2 then
    return "Start Of Frame: New Frame"
  end

  return "Start Of Frame: Unknown("..value..")"
end

-- Dissect: Start Of Frame
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.start_of_frame.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.start_of_frame.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.start_of_frame.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.start_of_frame, range, value, display)

  return offset + length, value
end

-- Stock Group
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_group = {}

-- Size: Stock Group
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_group.size = 1

-- Display: Stock Group
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_group.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Stock Group: No Value"
  end

  return "Stock Group: "..value
end

-- Dissect: Stock Group
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_group.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.stock_group, range, value, display)

  return offset + length, value
end

-- Stock State
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_state = {}

-- Size: Stock State
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_state.size = 2

-- Display: Stock State
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_state.display = function(value)
  if value == "AR" then
    return "Stock State: Authorized Delayed (AR)"
  end
  if value == "IR" then
    return "Stock State: Inhibited Delayed (IR)"
  end
  if value == "AS" then
    return "Stock State: Authorized Halted (AS)"
  end
  if value == "IS" then
    return "Stock State: Inhibited Halted (IS)"
  end
  if value == "AE" then
    return "Stock State: Authorized Price Movement Delayed (AE)"
  end
  if value == "IE" then
    return "Stock State: Inhibited Price Movement Delayed (IE)"
  end
  if value == "A" then
    return "Stock State: Authorized (A)"
  end
  if value == "I" then
    return "Stock State: Inhibited (I)"
  end

  return "Stock State: Unknown("..value..")"
end

-- Dissect: Stock State
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_state.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_state.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.stock_state, range, value, display)

  return offset + length, value
end

-- Stream Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stream_id = {}

-- Size: Stream Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stream_id.size = 2

-- Display: Stream Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stream_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Symbol
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol = {}

-- Size: Symbol
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size = 12

-- Display: Symbol
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Test Symbol
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.test_symbol = {}

-- Size: Test Symbol
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.test_symbol.size = 1

-- Display: Test Symbol
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.test_symbol.display = function(value)
  if value == "Y" then
    return "Test Symbol: Yes (Y)"
  end
  if value == "N" then
    return "Test Symbol: No (N)"
  end

  return "Test Symbol: Unknown("..value..")"
end

-- Dissect: Test Symbol
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.test_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.test_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.test_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.test_symbol, range, value, display)

  return offset + length, value
end

-- Trade Date
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_date = {}

-- Size: Trade Date
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_date.size = 4

-- Display: Trade Date
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_date.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Trade Date: No Value"
  end

  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Trade Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Trade Date
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Number
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_number = {}

-- Size: Trade Number
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_number.size = 4

-- Display: Trade Number
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_number.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Trade Number: No Value"
  end

  return "Trade Number: "..value
end

-- Dissect: Trade Number
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Trade Time Stamp
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_time_stamp = {}

-- Size: Trade Time Stamp
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_time_stamp.size = 4

-- Display: Trade Time Stamp
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_time_stamp.display = function(value)
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
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_time_stamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trade_time_stamp, range, value, display)

  return offset + length, value
end

-- Trading System Time Stamp
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp = {}

-- Size: Trading System Time Stamp
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.size = 8

-- Dissect: Trading System Time Stamp
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trading_system_time_stamp
  if tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.absolute_time_base == 1 then field = omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trading_system_time_stamp_utc end

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
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume = {}

-- Size: Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.size = 4

-- Display: Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Volume: No Value"
  end

  return "Volume: "..value
end

-- Dissect: Volume
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Tmx Tsx QuantumFeedLevel2Recovery Xmt 3.6
-----------------------------------------------------------------------

-- Rejected Business Header
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_business_header = {}

-- Size: Rejected Business Header
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_business_header.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_msg_length.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_type.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_version.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.source_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stream_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_0.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_sequence_1.size

-- Display: Rejected Business Header
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_business_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rejected Business Header
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_business_header.fields = function(buffer, offset, packet, parent, rejected_business_header_index)
  local index = offset

  -- Implicit Rejected Business Header Index
  if rejected_business_header_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.rejected_business_header_index, rejected_business_header_index)
    iteration:set_generated()
  end

  -- Rejected Msg Length: B
  index, rejected_msg_length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_msg_length.dissect(buffer, index, packet, parent)

  -- Msg Type: B
  index, msg_type = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Version: B
  index, msg_version = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_version.dissect(buffer, index, packet, parent)

  -- Source Id: A
  index, source_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.source_id.dissect(buffer, index, packet, parent)

  -- Stream Id: B
  index, stream_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stream_id.dissect(buffer, index, packet, parent)

  -- Sequence 0: B
  index, sequence_0 = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_0.dissect(buffer, index, packet, parent)

  -- Rejected Sequence 1: B
  index, rejected_sequence_1 = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_sequence_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rejected Business Header
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_business_header.dissect = function(buffer, offset, packet, parent, rejected_business_header_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.rejected_business_header, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_business_header.fields(buffer, offset, packet, parent, rejected_business_header_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_business_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_business_header.fields(buffer, offset, packet, parent, rejected_business_header_index)
  end
end

-- Body Header
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_header = {}

-- Size: Body Header
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_header.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_length.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_type.size

-- Display: Body Header
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body Header
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Length: B
  index, msg_length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_length.dissect(buffer, index, packet, parent)

  -- Msg Type: B
  index, msg_type = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Body Header
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.body_header, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_header.fields(buffer, offset, packet, parent)
  end
end

-- Reject
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject = {}

-- Read runtime size of: Reject
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset, 2):le_uint()

  return msg_length
end

-- Display: Reject
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject.fields = function(buffer, offset, packet, parent, size_of_reject)
  local index = offset

  -- Body Header: Struct of 2 fields
  index, body_header = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_header.dissect(buffer, index, packet, parent)

  -- Admin Id: B
  index, admin_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_id.dissect(buffer, index, packet, parent)

  -- Reject Code: B
  index, reject_code = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_code.dissect(buffer, index, packet, parent)

  -- Reject Subcode: B
  index, reject_subcode = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_subcode.dissect(buffer, index, packet, parent)

  -- Reject Message: A
  index, reject_message = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject_message.dissect(buffer, index, packet, parent)

  -- Dependency element: Num Body
  local num_body = buffer(offset - 1, 1):uint()

  -- Repeating: Rejected Business Header
  for rejected_business_header_index = 1, num_body do
    index, rejected_business_header = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.rejected_business_header.dissect(buffer, index, packet, parent, rejected_business_header_index)
  end

  return index
end

-- Dissect: Reject
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject.dissect = function(buffer, offset, packet, parent, size_of_reject)
  local size_of_reject = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject.size(buffer, offset)
  local index = offset + size_of_reject

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.reject, buffer(offset, 0))
    local current = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject.fields(buffer, offset, packet, parent, size_of_reject)
    parent:set_len(size_of_reject)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject.fields(buffer, offset, packet, parent, size_of_reject)

    return index
  end
end

-- Sequence Jump Record
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_jump_record = {}

-- Size: Sequence Jump Record
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_jump_record.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.source_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stream_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_0.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_current.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_new.size

-- Display: Sequence Jump Record
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_jump_record.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Jump Record
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_jump_record.fields = function(buffer, offset, packet, parent, sequence_jump_record_index)
  local index = offset

  -- Implicit Sequence Jump Record Index
  if sequence_jump_record_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sequence_jump_record_index, sequence_jump_record_index)
    iteration:set_generated()
  end

  -- Source Id: A
  index, source_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.source_id.dissect(buffer, index, packet, parent)

  -- Stream Id: B
  index, stream_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stream_id.dissect(buffer, index, packet, parent)

  -- Sequence 0: B
  index, sequence_0 = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_0.dissect(buffer, index, packet, parent)

  -- Sequence 1 Current: B
  index, sequence_1_current = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_current.dissect(buffer, index, packet, parent)

  -- Sequence 1 New: B
  index, sequence_1_new = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_new.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Jump Record
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_jump_record.dissect = function(buffer, offset, packet, parent, sequence_jump_record_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sequence_jump_record, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_jump_record.fields(buffer, offset, packet, parent, sequence_jump_record_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_jump_record.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_jump_record.fields(buffer, offset, packet, parent, sequence_jump_record_index)
  end
end

-- Sequence Jump
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_jump = {}

-- Read runtime size of: Sequence Jump
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_jump.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset, 2):le_uint()

  return msg_length
end

-- Display: Sequence Jump
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_jump.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Jump
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_jump.fields = function(buffer, offset, packet, parent, size_of_sequence_jump)
  local index = offset

  -- Body Header: Struct of 2 fields
  index, body_header = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_header.dissect(buffer, index, packet, parent)

  -- Admin Id: B
  index, admin_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_id.dissect(buffer, index, packet, parent)

  -- Reason Code: B
  index, reason_code = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reason_code.dissect(buffer, index, packet, parent)

  -- Dependency element: Num Body
  local num_body = buffer(offset - 1, 1):uint()

  -- Repeating: Sequence Jump Record
  for sequence_jump_record_index = 1, num_body do
    index, sequence_jump_record = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_jump_record.dissect(buffer, index, packet, parent, sequence_jump_record_index)
  end

  return index
end

-- Dissect: Sequence Jump
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_jump.dissect = function(buffer, offset, packet, parent, size_of_sequence_jump)
  local size_of_sequence_jump = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_jump.size(buffer, offset)
  local index = offset + size_of_sequence_jump

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.sequence_jump, buffer(offset, 0))
    local current = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_jump.fields(buffer, offset, packet, parent, size_of_sequence_jump)
    parent:set_len(size_of_sequence_jump)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_jump.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_jump.fields(buffer, offset, packet, parent, size_of_sequence_jump)

    return index
  end
end

-- Trade Correction Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_correction_terms_message = {}

-- Size: Trade Correction Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_correction_terms_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_broker_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_broker_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.initiated_by.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.orig_trade_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_time_stamp.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.non_resident.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_terms.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_date.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cross_type.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.size

-- Display: Trade Correction Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_correction_terms_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_correction_terms_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_number.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, volume = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.dissect(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, buy_broker_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_broker_number.dissect(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, sell_broker_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_broker_number.dissect(buffer, index, packet, parent)

  -- Initiated By: 1 Byte Ascii String Enum with 3 values
  index, initiated_by = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.initiated_by.dissect(buffer, index, packet, parent)

  -- Orig Trade Number: 4 Byte Unsigned Fixed Width Integer Nullable
  index, orig_trade_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.orig_trade_number.dissect(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_time_stamp.dissect(buffer, index, packet, parent)

  -- Non Resident: 1 Byte Ascii String Enum with 2 values
  index, non_resident = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.non_resident.dissect(buffer, index, packet, parent)

  -- Settlement Terms: 1 Byte Ascii String Enum with 6 values
  index, settlement_terms = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_terms.dissect(buffer, index, packet, parent)

  -- Settlement Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, settlement_date = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_date.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 8 values
  index, cross_type = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cross_type.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_system_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_correction_terms_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trade_correction_terms_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_correction_terms_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_correction_terms_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_correction_terms_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_correction_message = {}

-- Size: Trade Correction Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_correction_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_broker_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_broker_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.initiated_by.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.orig_trade_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.bypass.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_time_stamp.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cross_type.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.listing_market.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.product_type.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_date.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_mid_only.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_dark.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_conditional.size

-- Display: Trade Correction Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_number.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, volume = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.dissect(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, buy_broker_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_broker_number.dissect(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, sell_broker_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_broker_number.dissect(buffer, index, packet, parent)

  -- Initiated By: 1 Byte Ascii String Enum with 3 values
  index, initiated_by = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.initiated_by.dissect(buffer, index, packet, parent)

  -- Orig Trade Number: 4 Byte Unsigned Fixed Width Integer Nullable
  index, orig_trade_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.orig_trade_number.dissect(buffer, index, packet, parent)

  -- Bypass: 1 Byte Ascii String Enum with 2 values
  index, bypass = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.bypass.dissect(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_time_stamp.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 8 values
  index, cross_type = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cross_type.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_system_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Listing Market: 1 Byte Ascii String Enum with 7 values
  index, listing_market = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.listing_market.dissect(buffer, index, packet, parent)

  -- Product Type: 1 Byte Ascii String Enum with 6 values
  index, product_type = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.product_type.dissect(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_date.dissect(buffer, index, packet, parent)

  -- Is Mid Only: 1 Byte Ascii String Enum with 2 values
  index, is_mid_only = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_mid_only.dissect(buffer, index, packet, parent)

  -- Is Dark: 1 Byte Ascii String Enum with 2 values
  index, is_dark = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_dark.dissect(buffer, index, packet, parent)

  -- Is Conditional: 1 Byte Ascii String Enum with 2 values
  index, is_conditional = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_conditional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trade_correction_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancelled Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_cancelled_terms_message = {}

-- Size: Trade Cancelled Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_cancelled_terms_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.size

-- Display: Trade Cancelled Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_cancelled_terms_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancelled Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_cancelled_terms_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_number.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_system_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancelled Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_cancelled_terms_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trade_cancelled_terms_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_cancelled_terms_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_cancelled_terms_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_cancelled_terms_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancelled Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_cancelled_message = {}

-- Size: Trade Cancelled Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_cancelled_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.listing_market.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.product_type.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_date.size

-- Display: Trade Cancelled Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancelled Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_cancelled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_number.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_system_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Listing Market: 1 Byte Ascii String Enum with 7 values
  index, listing_market = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.listing_market.dissect(buffer, index, packet, parent)

  -- Product Type: 1 Byte Ascii String Enum with 6 values
  index, product_type = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.product_type.dissect(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancelled Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_cancelled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trade_cancelled_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_cancelled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_cancelled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_cancelled_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_report_terms_message = {}

-- Size: Trade Report Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_report_terms_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_broker_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_order_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_display_volume.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_broker_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_order_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_display_volume.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_time_stamp.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.non_resident.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_terms.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_date.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cross_type.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.size

-- Display: Trade Report Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_report_terms_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_report_terms_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_number.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, volume = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.dissect(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, buy_broker_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_broker_number.dissect(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, buy_order_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_order_id.dissect(buffer, index, packet, parent)

  -- Buy Display Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, buy_display_volume = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_display_volume.dissect(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, sell_broker_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_broker_number.dissect(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sell_order_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_order_id.dissect(buffer, index, packet, parent)

  -- Sell Display Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, sell_display_volume = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_display_volume.dissect(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_time_stamp.dissect(buffer, index, packet, parent)

  -- Non Resident: 1 Byte Ascii String Enum with 2 values
  index, non_resident = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.non_resident.dissect(buffer, index, packet, parent)

  -- Settlement Terms: 1 Byte Ascii String Enum with 6 values
  index, settlement_terms = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_terms.dissect(buffer, index, packet, parent)

  -- Settlement Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, settlement_date = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_date.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 8 values
  index, cross_type = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cross_type.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_system_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_report_terms_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trade_report_terms_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_report_terms_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_report_terms_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_report_terms_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_report_message = {}

-- Size: Trade Report Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_report_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_broker_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_order_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_display_volume.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_broker_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_order_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_display_volume.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.bypass.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_time_stamp.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cross_type.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.listing_market.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.product_type.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_date.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_mid_only.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_dark.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_conditional.size

-- Display: Trade Report Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_number.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, volume = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.dissect(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, buy_broker_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_broker_number.dissect(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, buy_order_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_order_id.dissect(buffer, index, packet, parent)

  -- Buy Display Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, buy_display_volume = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_display_volume.dissect(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, sell_broker_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_broker_number.dissect(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sell_order_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_order_id.dissect(buffer, index, packet, parent)

  -- Sell Display Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, sell_display_volume = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_display_volume.dissect(buffer, index, packet, parent)

  -- Bypass: 1 Byte Ascii String Enum with 2 values
  index, bypass = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.bypass.dissect(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_time_stamp.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 8 values
  index, cross_type = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cross_type.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_system_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Listing Market: 1 Byte Ascii String Enum with 7 values
  index, listing_market = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.listing_market.dissect(buffer, index, packet, parent)

  -- Product Type: 1 Byte Ascii String Enum with 6 values
  index, product_type = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.product_type.dissect(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_date.dissect(buffer, index, packet, parent)

  -- Is Mid Only: 1 Byte Ascii String Enum with 2 values
  index, is_mid_only = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_mid_only.dissect(buffer, index, packet, parent)

  -- Is Dark: 1 Byte Ascii String Enum with 2 values
  index, is_dark = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_dark.dissect(buffer, index, packet, parent)

  -- Is Conditional: 1 Byte Ascii String Enum with 2 values
  index, is_conditional = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.is_conditional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.trade_report_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Status Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_status_message = {}

-- Size: Stock Status Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_status_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.comment.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_state.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.listing_market.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.product_type.size

-- Display: Stock Status Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Status Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect(buffer, index, packet, parent)

  -- Comment: 40 Byte Ascii String
  index, comment = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.comment.dissect(buffer, index, packet, parent)

  -- Stock State: 2 Byte Ascii String Enum with 8 values
  index, stock_state = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_state.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_system_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Listing Market: 1 Byte Ascii String Enum with 7 values
  index, listing_market = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.listing_market.dissect(buffer, index, packet, parent)

  -- Product Type: 1 Byte Ascii String Enum with 6 values
  index, product_type = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.product_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Status Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.stock_status_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Price Time Assigned Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price_time_assigned_terms_message = {}

-- Size: Order Price Time Assigned Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price_time_assigned_terms_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.priority_time_stamp.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.size

-- Display: Order Price Time Assigned Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price_time_assigned_terms_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Price Time Assigned Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price_time_assigned_terms_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, broker_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.dissect(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, volume = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.dissect(buffer, index, packet, parent)

  -- Priority Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, priority_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.priority_time_stamp.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_system_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Price Time Assigned Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price_time_assigned_terms_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_price_time_assigned_terms_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price_time_assigned_terms_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price_time_assigned_terms_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price_time_assigned_terms_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Price Time Assigned Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price_time_assigned_message = {}

-- Size: Order Price Time Assigned Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price_time_assigned_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.priority_time_stamp.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.size

-- Display: Order Price Time Assigned Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price_time_assigned_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Price Time Assigned Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price_time_assigned_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, broker_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.dissect(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, volume = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.dissect(buffer, index, packet, parent)

  -- Priority Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, priority_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.priority_time_stamp.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_system_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Price Time Assigned Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price_time_assigned_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_price_time_assigned_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price_time_assigned_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price_time_assigned_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price_time_assigned_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancelled Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_cancelled_terms_message = {}

-- Size: Order Cancelled Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_cancelled_terms_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.size

-- Display: Order Cancelled Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_cancelled_terms_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancelled Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_cancelled_terms_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, broker_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.dissect(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_system_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancelled Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_cancelled_terms_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_cancelled_terms_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_cancelled_terms_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_cancelled_terms_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_cancelled_terms_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancelled Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_cancelled_message = {}

-- Size: Order Cancelled Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_cancelled_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.size

-- Display: Order Cancelled Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancelled Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_cancelled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, broker_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.dissect(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_system_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancelled Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_cancelled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_cancelled_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_cancelled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_cancelled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_cancelled_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Booked Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_booked_terms_message = {}

-- Size: Order Booked Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_booked_terms_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.non_resident.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_terms.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_date.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.priority_time_stamp.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.size

-- Display: Order Booked Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_booked_terms_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Booked Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_booked_terms_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, broker_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.dissect(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, volume = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.dissect(buffer, index, packet, parent)

  -- Non Resident: 1 Byte Ascii String Enum with 2 values
  index, non_resident = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.non_resident.dissect(buffer, index, packet, parent)

  -- Settlement Terms: 1 Byte Ascii String Enum with 6 values
  index, settlement_terms = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_terms.dissect(buffer, index, packet, parent)

  -- Settlement Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, settlement_date = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_date.dissect(buffer, index, packet, parent)

  -- Priority Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, priority_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.priority_time_stamp.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_system_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Booked Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_booked_terms_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_booked_terms_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_booked_terms_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_booked_terms_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_booked_terms_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Booked Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_booked_message = {}

-- Size: Order Booked Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_booked_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.priority_time_stamp.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.size

-- Display: Order Booked Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_booked_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Booked Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_booked_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, broker_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.dissect(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.dissect(buffer, index, packet, parent)

  -- Order Price: 8 Byte Unsigned Fixed Width Integer
  index, order_price = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, volume = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.dissect(buffer, index, packet, parent)

  -- Priority Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, priority_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.priority_time_stamp.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_system_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Booked Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_booked_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_booked_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_booked_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_booked_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_booked_message.fields(buffer, offset, packet, parent)
  end
end

-- Moc Imbalance Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.moc_imbalance_message = {}

-- Size: Moc Imbalance Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.moc_imbalance_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_side.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_volume.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_reference_price.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.paired_volume.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_order_imbalance_volume.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_order_imbalance_side.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.near_indicative_closing_price.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.far_indicative_closing_price.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price_variation.size

-- Display: Moc Imbalance Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.moc_imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Moc Imbalance Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.moc_imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect(buffer, index, packet, parent)

  -- Imbalance Side: 1 Byte Ascii String Enum with 3 values
  index, imbalance_side = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_side.dissect(buffer, index, packet, parent)

  -- Imbalance Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, imbalance_volume = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_volume.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_system_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Imbalance Reference Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, imbalance_reference_price = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.imbalance_reference_price.dissect(buffer, index, packet, parent)

  -- Paired Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, paired_volume = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.paired_volume.dissect(buffer, index, packet, parent)

  -- Market Order Imbalance Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, market_order_imbalance_volume = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_order_imbalance_volume.dissect(buffer, index, packet, parent)

  -- Market Order Imbalance Side: 1 Byte Ascii String Enum with 3 values
  index, market_order_imbalance_side = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_order_imbalance_side.dissect(buffer, index, packet, parent)

  -- Near Indicative Closing Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, near_indicative_closing_price = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.near_indicative_closing_price.dissect(buffer, index, packet, parent)

  -- Far Indicative Closing Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, far_indicative_closing_price = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.far_indicative_closing_price.dissect(buffer, index, packet, parent)

  -- Price Variation: 4 Byte Unsigned Fixed Width Integer Nullable
  index, price_variation = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price_variation.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Moc Imbalance Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.moc_imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.moc_imbalance_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.moc_imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.moc_imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.moc_imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Market State Update Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_state_update_message = {}

-- Size: Market State Update Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_state_update_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_state.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_group.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.size

-- Display: Market State Update Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_state_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market State Update Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_state_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market State: 1 Byte Ascii String Enum with 18 values
  index, market_state = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_state.dissect(buffer, index, packet, parent)

  -- Stock Group: 1 Byte Unsigned Fixed Width Integer Nullable
  index, stock_group = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_group.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_system_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market State Update Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_state_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.market_state_update_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_state_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_state_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_state_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Cop Limit
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cop_limit = {}

-- Size: Cop Limit
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cop_limit.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.size

-- Display: Cop Limit
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cop_limit.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cop Limit
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cop_limit.fields = function(buffer, offset, packet, parent, cop_limit_index)
  local index = offset

  -- Implicit Cop Limit Index
  if cop_limit_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.cop_limit_index, cop_limit_index)
    iteration:set_generated()
  end

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, broker_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Limit
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cop_limit.dissect = function(buffer, offset, packet, parent, cop_limit_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.cop_limit, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cop_limit.fields(buffer, offset, packet, parent, cop_limit_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cop_limit.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cop_limit.fields(buffer, offset, packet, parent, cop_limit_index)
  end
end

-- Assign Limit Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_limit_message = {}

-- Size: Assign Limit Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_limit_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.calculated_opening_price.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.size + 
  15 * tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cop_limit.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.size

-- Display: Assign Limit Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_limit_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Assign Limit Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_limit_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect(buffer, index, packet, parent)

  -- Calculated Opening Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, calculated_opening_price = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.calculated_opening_price.dissect(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.dissect(buffer, index, packet, parent)

  -- Array Of: Cop Limit
  for cop_limit_index = 1, 15 do
    index, cop_limit = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cop_limit.dissect(buffer, index, packet, parent, cop_limit_index)
  end

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_system_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Assign Limit Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_limit_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.assign_limit_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_limit_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_limit_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_limit_message.fields(buffer, offset, packet, parent)
  end
end

-- Assign Cop No Orders Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_cop_no_orders_message = {}

-- Size: Assign Cop No Orders Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_cop_no_orders_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.calculated_opening_price.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.size

-- Display: Assign Cop No Orders Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_cop_no_orders_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Assign Cop No Orders Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_cop_no_orders_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect(buffer, index, packet, parent)

  -- Calculated Opening Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, calculated_opening_price = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.calculated_opening_price.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_system_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Assign Cop No Orders Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_cop_no_orders_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.assign_cop_no_orders_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_cop_no_orders_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_cop_no_orders_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_cop_no_orders_message.fields(buffer, offset, packet, parent)
  end
end

-- Cop Order
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cop_order = {}

-- Size: Cop Order
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cop_order.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.size

-- Display: Cop Order
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cop_order.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cop Order
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cop_order.fields = function(buffer, offset, packet, parent, cop_order_index)
  local index = offset

  -- Implicit Cop Order Index
  if cop_order_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.cop_order_index, cop_order_index)
    iteration:set_generated()
  end

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, broker_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cop Order
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cop_order.dissect = function(buffer, offset, packet, parent, cop_order_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.cop_order, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cop_order.fields(buffer, offset, packet, parent, cop_order_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cop_order.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cop_order.fields(buffer, offset, packet, parent, cop_order_index)
  end
end

-- Assign Cop Orders Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_cop_orders_message = {}

-- Size: Assign Cop Orders Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_cop_orders_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.calculated_opening_price.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.size + 
  15 * tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cop_order.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.size

-- Display: Assign Cop Orders Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_cop_orders_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Assign Cop Orders Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_cop_orders_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect(buffer, index, packet, parent)

  -- Calculated Opening Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, calculated_opening_price = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.calculated_opening_price.dissect(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.dissect(buffer, index, packet, parent)

  -- Array Of: Cop Order
  for cop_order_index = 1, 15 do
    index, cop_order = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cop_order.dissect(buffer, index, packet, parent, cop_order_index)
  end

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trading_system_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Assign Cop Orders Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_cop_orders_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.assign_cop_orders_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_cop_orders_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_cop_orders_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_cop_orders_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_book_terms_message = {}

-- Size: Order Book Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_book_terms_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.non_resident.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_terms.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_date.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.priority_time_stamp.size

-- Display: Order Book Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_book_terms_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_book_terms_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, broker_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.dissect(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, volume = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.dissect(buffer, index, packet, parent)

  -- Non Resident: 1 Byte Ascii String Enum with 2 values
  index, non_resident = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.non_resident.dissect(buffer, index, packet, parent)

  -- Settlement Terms: 1 Byte Ascii String Enum with 6 values
  index, settlement_terms = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_terms.dissect(buffer, index, packet, parent)

  -- Settlement Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, settlement_date = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.settlement_date.dissect(buffer, index, packet, parent)

  -- Priority Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, priority_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.priority_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Terms Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_book_terms_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_book_terms_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_book_terms_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_book_terms_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_book_terms_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_book_message = {}

-- Size: Order Book Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_book_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.priority_time_stamp.size

-- Display: Order Book Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect(buffer, index, packet, parent)

  -- Broker Number: 2 Byte Unsigned Fixed Width Integer Nullable
  index, broker_number = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.broker_number.dissect(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_id.dissect(buffer, index, packet, parent)

  -- Order Price: 8 Byte Unsigned Fixed Width Integer
  index, order_price = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, volume = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.volume.dissect(buffer, index, packet, parent)

  -- Priority Time Stamp: 8 Byte Unsigned Fixed Width Integer Nullable
  index, priority_time_stamp = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.priority_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_book_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.order_book_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Status Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol_status_message = {}

-- Size: Symbol Status Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol_status_message.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_group.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cusip.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.board_lot.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.currency.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.face_value.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.last_sale.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.listing_market.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.product_type.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_maximum_quantity.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_minimum_quantity.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_maximum_quantity.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_minimum_quantity.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_state.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.test_symbol.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.moc_eligible.size

-- Display: Symbol Status Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Status Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol.dissect(buffer, index, packet, parent)

  -- Stock Group: 1 Byte Unsigned Fixed Width Integer Nullable
  index, stock_group = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_group.dissect(buffer, index, packet, parent)

  -- Cusip: 12 Byte Ascii String
  index, cusip = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.cusip.dissect(buffer, index, packet, parent)

  -- Board Lot: 2 Byte Unsigned Fixed Width Integer Nullable
  index, board_lot = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.board_lot.dissect(buffer, index, packet, parent)

  -- Currency: 1 Byte Ascii String Enum with 2 values
  index, currency = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.currency.dissect(buffer, index, packet, parent)

  -- Face Value: 8 Byte Unsigned Fixed Width Integer Nullable
  index, face_value = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.face_value.dissect(buffer, index, packet, parent)

  -- Last Sale: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_sale = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.last_sale.dissect(buffer, index, packet, parent)

  -- Listing Market: 1 Byte Ascii String Enum with 7 values
  index, listing_market = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.listing_market.dissect(buffer, index, packet, parent)

  -- Product Type: 1 Byte Ascii String Enum with 6 values
  index, product_type = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.product_type.dissect(buffer, index, packet, parent)

  -- Buy Maximum Quantity: 4 Byte Unsigned Fixed Width Integer Nullable
  index, buy_maximum_quantity = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_maximum_quantity.dissect(buffer, index, packet, parent)

  -- Buy Minimum Quantity: 4 Byte Unsigned Fixed Width Integer Nullable
  index, buy_minimum_quantity = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.buy_minimum_quantity.dissect(buffer, index, packet, parent)

  -- Sell Maximum Quantity: 4 Byte Unsigned Fixed Width Integer Nullable
  index, sell_maximum_quantity = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_maximum_quantity.dissect(buffer, index, packet, parent)

  -- Sell Minimum Quantity: 4 Byte Unsigned Fixed Width Integer Nullable
  index, sell_minimum_quantity = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sell_minimum_quantity.dissect(buffer, index, packet, parent)

  -- Stock State: 2 Byte Ascii String Enum with 8 values
  index, stock_state = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_state.dissect(buffer, index, packet, parent)

  -- Test Symbol: 1 Byte Ascii String Enum with 2 values
  index, test_symbol = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.test_symbol.dissect(buffer, index, packet, parent)

  -- Moc Eligible: 1 Byte Ascii String Enum with 2 values
  index, moc_eligible = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.moc_eligible.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Status Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.symbol_status_message, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Business Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.business_message = {}

-- Dissect: Business Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.business_message.dissect = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Symbol Status Message
  if msg_type == "J" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.symbol_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Message
  if msg_type == "G" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_book_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Terms Message
  if msg_type == "j" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_book_terms_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Assign Cop Orders Message
  if msg_type == "A" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_cop_orders_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Assign Cop No Orders Message
  if msg_type == "B" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_cop_no_orders_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Assign Limit Message
  if msg_type == "C" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.assign_limit_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market State Update Message
  if msg_type == "E" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.market_state_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Moc Imbalance Message
  if msg_type == "F" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.moc_imbalance_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Booked Message
  if msg_type == "P" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_booked_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Booked Terms Message
  if msg_type == "m" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_booked_terms_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancelled Message
  if msg_type == "Q" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_cancelled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancelled Terms Message
  if msg_type == "n" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_cancelled_terms_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Price Time Assigned Message
  if msg_type == "R" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price_time_assigned_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Price Time Assigned Terms Message
  if msg_type == "o" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.order_price_time_assigned_terms_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Status Message
  if msg_type == "I" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stock_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if msg_type == "S" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Terms Message
  if msg_type == "p" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_report_terms_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancelled Message
  if msg_type == "T" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_cancelled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancelled Terms Message
  if msg_type == "q" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_cancelled_terms_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if msg_type == "U" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Terms Message
  if msg_type == "r" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.trade_correction_terms_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Business Header
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.business_header = {}

-- Size: Business Header
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.business_header.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_version.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.source_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stream_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_0.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1.size

-- Display: Business Header
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.business_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Header
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.business_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Version: B
  index, msg_version = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_version.dissect(buffer, index, packet, parent)

  -- Source Id: A
  index, source_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.source_id.dissect(buffer, index, packet, parent)

  -- Stream Id: B
  index, stream_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stream_id.dissect(buffer, index, packet, parent)

  -- Sequence 0: B
  index, sequence_0 = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_0.dissect(buffer, index, packet, parent)

  -- Sequence 1: B
  index, sequence_1 = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Header
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.business_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.business_header, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.business_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.business_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.business_header.fields(buffer, offset, packet, parent)
  end
end

-- Body Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_message = {}

-- Display: Body Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_message.fields = function(buffer, offset, packet, parent, size_of_body_message)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.business_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(offset - 1, 1):string()

  -- Business Message: Runtime Type with 21 branches
  index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.business_message.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Body Message
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_message.dissect = function(buffer, offset, packet, parent, size_of_body_message)
  local index = offset + size_of_body_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.body_message, buffer(offset, 0))
    local current = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_message.fields(buffer, offset, packet, parent, size_of_body_message)
    parent:set_len(size_of_body_message)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_message.fields(buffer, offset, packet, parent, size_of_body_message)

    return index
  end
end

-- Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body = {}

-- Display: Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body.fields = function(buffer, offset, packet, parent, size_of_body, body_index)
  local index = offset

  -- Implicit Body Index
  if body_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.body_index, body_index)
    iteration:set_generated()
  end

  -- Body Header: Struct of 2 fields
  index, body_header = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Length
  local msg_length = buffer(index - 3, 2):le_uint()

  -- Runtime Size Of: Body Message
  local size_of_body_message = msg_length - 3

  -- Body Message: Struct of 2 fields
  index, body_message = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_message.dissect(buffer, index, packet, parent, size_of_body_message)

  return index
end

-- Dissect: Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body.dissect = function(buffer, offset, packet, parent, size_of_body, body_index)
  local index = offset + size_of_body

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.body, buffer(offset, 0))
    local current = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body.fields(buffer, offset, packet, parent, size_of_body, body_index)
    parent:set_len(size_of_body)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body.fields(buffer, offset, packet, parent, size_of_body, body_index)

    return index
  end
end

-- Ack
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.ack = {}

-- Read runtime size of: Ack
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.ack.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset, 2):le_uint()

  return msg_length
end

-- Display: Ack
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.ack.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ack
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.ack.fields = function(buffer, offset, packet, parent, size_of_ack)
  local index = offset

  -- Body Header: Struct of 2 fields
  index, body_header = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_header.dissect(buffer, index, packet, parent)

  -- Admin Id: B
  index, admin_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_id.dissect(buffer, index, packet, parent)

  -- Dependency element: Num Body
  local num_body = buffer(offset - 1, 1):uint()

  -- Repeating: Body
  for body_index = 1, num_body do

    -- Dependency element: Msg Length
    local msg_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Body
    index, body = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body.dissect(buffer, index, packet, parent, msg_length, body_index)
  end

  return index
end

-- Dissect: Ack
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.ack.dissect = function(buffer, offset, packet, parent, size_of_ack)
  local size_of_ack = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.ack.size(buffer, offset)
  local index = offset + size_of_ack

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.ack, buffer(offset, 0))
    local current = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.ack.fields(buffer, offset, packet, parent, size_of_ack)
    parent:set_len(size_of_ack)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.ack.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.ack.fields(buffer, offset, packet, parent, size_of_ack)

    return index
  end
end

-- Login Response
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.login_response = {}

-- Read runtime size of: Login Response
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.login_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset, 2):le_uint()

  return msg_length
end

-- Display: Login Response
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.login_response.fields = function(buffer, offset, packet, parent, size_of_login_response)
  local index = offset

  -- Body Header: Struct of 2 fields
  index, body_header = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_header.dissect(buffer, index, packet, parent)

  -- Admin Id: B
  index, admin_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_id.dissect(buffer, index, packet, parent)

  -- Hb Interval: B
  index, hb_interval = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.hb_interval.dissect(buffer, index, packet, parent)

  -- Replay Win Size: B
  index, replay_win_size = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win_size.dissect(buffer, index, packet, parent)

  -- Replay Win Num: B
  index, replay_win_num = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win_num.dissect(buffer, index, packet, parent)

  -- Replay Win: B
  index, replay_win = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win.dissect(buffer, index, packet, parent)

  -- Credits: B
  index, credits = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.credits.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.login_response.dissect = function(buffer, offset, packet, parent, size_of_login_response)
  local size_of_login_response = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.login_response.size(buffer, offset)
  local index = offset + size_of_login_response

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.login_response, buffer(offset, 0))
    local current = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.login_response.fields(buffer, offset, packet, parent, size_of_login_response)
    parent:set_len(size_of_login_response)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.login_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.login_response.fields(buffer, offset, packet, parent, size_of_login_response)

    return index
  end
end

-- Admin Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_body = {}

-- Size: Admin Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_body.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.source_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stream_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_0.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1.size

-- Display: Admin Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Admin Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_body.fields = function(buffer, offset, packet, parent, admin_body_index)
  local index = offset

  -- Implicit Admin Body Index
  if admin_body_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.admin_body_index, admin_body_index)
    iteration:set_generated()
  end

  -- Source Id: A
  index, source_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.source_id.dissect(buffer, index, packet, parent)

  -- Stream Id: B
  index, stream_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stream_id.dissect(buffer, index, packet, parent)

  -- Sequence 0: B
  index, sequence_0 = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_0.dissect(buffer, index, packet, parent)

  -- Sequence 1: B
  index, sequence_1 = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Admin Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_body.dissect = function(buffer, offset, packet, parent, admin_body_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.admin_body, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_body.fields(buffer, offset, packet, parent, admin_body_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_body.fields(buffer, offset, packet, parent, admin_body_index)
  end
end

-- Heartbeat Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.heartbeat_body = {}

-- Read runtime size of: Heartbeat Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.heartbeat_body.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset, 2):le_uint()

  return msg_length
end

-- Display: Heartbeat Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.heartbeat_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.heartbeat_body.fields = function(buffer, offset, packet, parent, size_of_heartbeat_body)
  local index = offset

  -- Body Header: Struct of 2 fields
  index, body_header = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_header.dissect(buffer, index, packet, parent)

  -- Admin Id: B
  index, admin_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_id.dissect(buffer, index, packet, parent)

  -- Hb Interval: B
  index, hb_interval = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.hb_interval.dissect(buffer, index, packet, parent)

  -- Dependency element: Num Body
  local num_body = buffer(offset - 1, 1):uint()

  -- Repeating: Admin Body
  for admin_body_index = 1, num_body do
    index, admin_body = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_body.dissect(buffer, index, packet, parent, admin_body_index)
  end

  return index
end

-- Dissect: Heartbeat Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.heartbeat_body.dissect = function(buffer, offset, packet, parent, size_of_heartbeat_body)
  local size_of_heartbeat_body = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.heartbeat_body.size(buffer, offset)
  local index = offset + size_of_heartbeat_body

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.heartbeat_body, buffer(offset, 0))
    local current = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.heartbeat_body.fields(buffer, offset, packet, parent, size_of_heartbeat_body)
    parent:set_len(size_of_heartbeat_body)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.heartbeat_body.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.heartbeat_body.fields(buffer, offset, packet, parent, size_of_heartbeat_body)

    return index
  end
end

-- Server Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.server_body = {}

-- Dissect: Server Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.server_body.dissect = function(buffer, offset, packet, parent, msg_type, msg_type, msg_type, msg_type, msg_type)
  -- Dissect Heartbeat Body
  if msg_type == "0" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.heartbeat_body.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response
  if msg_type == "2" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.login_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ack
  if msg_type == "4" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.ack.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequence Jump
  if msg_type == "6" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_jump.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reject
  if msg_type == "9" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.reject.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Frame Header
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.frame_header = {}

-- Size: Frame Header
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.frame_header.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.start_of_frame.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.protocol_name.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.protocol_version.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.message_length.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.session_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.ack_required_poss_dup.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.num_body.size

-- Display: Frame Header
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.frame_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Frame Header
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.frame_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Frame: B
  index, start_of_frame = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.start_of_frame.dissect(buffer, index, packet, parent)

  -- Protocol Name: A
  index, protocol_name = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.protocol_name.dissect(buffer, index, packet, parent)

  -- Protocol Version: N
  index, protocol_version = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.protocol_version.dissect(buffer, index, packet, parent)

  -- Message Length: B
  index, message_length = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.message_length.dissect(buffer, index, packet, parent)

  -- Session Id: B
  index, session_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.session_id.dissect(buffer, index, packet, parent)

  -- Ack Required Poss Dup: A
  index, ack_required_poss_dup = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.ack_required_poss_dup.dissect(buffer, index, packet, parent)

  -- Num Body: B
  index, num_body = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.num_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Frame Header
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.frame_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.frame_header, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.frame_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.frame_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.frame_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Frame
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.server_frame = {}

-- Display: Server Frame
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.server_frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Frame
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.server_frame.fields = function(buffer, offset, packet, parent, size_of_server_frame)
  local index = offset

  -- Frame Header: Struct of 7 fields
  index, frame_header = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.frame_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(index - 8, 2):le_uint()

  -- Runtime optional field: Server Body
  local server_body = nil

  local server_body_exists = message_length > 6

  if server_body_exists then

    -- Dependency element: Msg Type
    local msg_type = buffer(index + 2, 1):string()

    -- Dependency element: Msg Type
    local msg_type = buffer(index + 2, 1):string()

    -- Dependency element: Msg Type
    local msg_type = buffer(index + 2, 1):string()

    -- Dependency element: Msg Type
    local msg_type = buffer(index + 2, 1):string()

    -- Dependency element: Msg Type
    local msg_type = buffer(index + 2, 1):string()

    -- Server Body: Runtime Type with 5 branches
    index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.server_body.dissect(buffer, index, packet, parent, msg_type, msg_type, msg_type, msg_type, msg_type)
  end

  return index
end

-- Dissect: Server Frame
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.server_frame.dissect = function(buffer, offset, packet, parent, size_of_server_frame)
  local index = offset + size_of_server_frame

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.server_frame, buffer(offset, 0))
    local current = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.server_frame.fields(buffer, offset, packet, parent, size_of_server_frame)
    parent:set_len(size_of_server_frame)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.server_frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.server_frame.fields(buffer, offset, packet, parent, size_of_server_frame)

    return index
  end
end

-- Remaining Bytes For: Server Frame
local server_frame_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.frame_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 3, 2):le_uint() + 5

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Server Packet
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.server_packet = {}

-- Verify required size of Tcp packet
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.server_packet.requiredsize = function(buffer)
  return buffer:len() >= tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.frame_header.size + 2 + tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_type.size
end

-- Dissect Server Packet
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Frame
  local end_of_payload = buffer:len()

  -- Server Frame: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_frame = server_frame_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_server_frame):tvb()
      index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.server_frame.dissect(frame, index, packet, parent, size_of_server_frame)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      -- Claim the whole buffer: tcp keeps the bytes from desegment_offset for reassembly
      return end_of_payload
    end
  end

  return index
end

-- Replay Range
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_range = {}

-- Size: Replay Range
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_range.size =
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.source_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stream_id.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_0.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_start.size + 
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_end.size

-- Display: Replay Range
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_range.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Range
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_range.fields = function(buffer, offset, packet, parent, replay_range_index)
  local index = offset

  -- Implicit Replay Range Index
  if replay_range_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.replay_range_index, replay_range_index)
    iteration:set_generated()
  end

  -- Source Id: A
  index, source_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.source_id.dissect(buffer, index, packet, parent)

  -- Stream Id: B
  index, stream_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.stream_id.dissect(buffer, index, packet, parent)

  -- Sequence 0: B
  index, sequence_0 = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_0.dissect(buffer, index, packet, parent)

  -- Sequence 1 Start: B
  index, sequence_1_start = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_start.dissect(buffer, index, packet, parent)

  -- Sequence 1 End: B
  index, sequence_1_end = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.sequence_1_end.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Range
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_range.dissect = function(buffer, offset, packet, parent, replay_range_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.replay_range, buffer(offset, 0))
    local index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_range.fields(buffer, offset, packet, parent, replay_range_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_range.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_range.fields(buffer, offset, packet, parent, replay_range_index)
  end
end

-- Replay Request
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_request = {}

-- Read runtime size of: Replay Request
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset, 2):le_uint()

  return msg_length
end

-- Display: Replay Request
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_request.fields = function(buffer, offset, packet, parent, size_of_replay_request)
  local index = offset

  -- Body Header: Struct of 2 fields
  index, body_header = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_header.dissect(buffer, index, packet, parent)

  -- Admin Id: B
  index, admin_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_id.dissect(buffer, index, packet, parent)

  -- Replay Session Id: B
  index, replay_session_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_session_id.dissect(buffer, index, packet, parent)

  -- Dependency element: Num Body
  local num_body = buffer(offset - 1, 1):uint()

  -- Repeating: Replay Range
  for replay_range_index = 1, num_body do
    index, replay_range = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_range.dissect(buffer, index, packet, parent, replay_range_index)
  end

  return index
end

-- Dissect: Replay Request
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_request.dissect = function(buffer, offset, packet, parent, size_of_replay_request)
  local size_of_replay_request = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_request.size(buffer, offset)
  local index = offset + size_of_replay_request

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.replay_request, buffer(offset, 0))
    local current = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_request.fields(buffer, offset, packet, parent, size_of_replay_request)
    parent:set_len(size_of_replay_request)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_request.fields(buffer, offset, packet, parent, size_of_replay_request)

    return index
  end
end

-- Logout
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.logout = {}

-- Read runtime size of: Logout
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.logout.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset, 2):le_uint()

  return msg_length
end

-- Display: Logout
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.logout.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.logout.fields = function(buffer, offset, packet, parent, size_of_logout)
  local index = offset

  -- Body Header: Struct of 2 fields
  index, body_header = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_header.dissect(buffer, index, packet, parent)

  -- Admin Id: B
  index, admin_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.logout.dissect = function(buffer, offset, packet, parent, size_of_logout)
  local size_of_logout = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.logout.size(buffer, offset)
  local index = offset + size_of_logout

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.logout, buffer(offset, 0))
    local current = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.logout.fields(buffer, offset, packet, parent, size_of_logout)
    parent:set_len(size_of_logout)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.logout.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.logout.fields(buffer, offset, packet, parent, size_of_logout)

    return index
  end
end

-- Login Request
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.login_request = {}

-- Read runtime size of: Login Request
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.login_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset, 2):le_uint()

  return msg_length
end

-- Display: Login Request
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.login_request.fields = function(buffer, offset, packet, parent, size_of_login_request)
  local index = offset

  -- Body Header: Struct of 2 fields
  index, body_header = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.body_header.dissect(buffer, index, packet, parent)

  -- Admin Id: B
  index, admin_id = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.admin_id.dissect(buffer, index, packet, parent)

  -- Hb Interval: B
  index, hb_interval = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.hb_interval.dissect(buffer, index, packet, parent)

  -- Replay Win Size: B
  index, replay_win_size = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win_size.dissect(buffer, index, packet, parent)

  -- Replay Win Num: B
  index, replay_win_num = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_win_num.dissect(buffer, index, packet, parent)

  -- Credits: B
  index, credits = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.credits.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.login_request.dissect = function(buffer, offset, packet, parent, size_of_login_request)
  local size_of_login_request = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.login_request.size(buffer, offset)
  local index = offset + size_of_login_request

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.login_request, buffer(offset, 0))
    local current = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.login_request.fields(buffer, offset, packet, parent, size_of_login_request)
    parent:set_len(size_of_login_request)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.login_request.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.login_request.fields(buffer, offset, packet, parent, size_of_login_request)

    return index
  end
end

-- Client Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.client_body = {}

-- Dissect: Client Body
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.client_body.dissect = function(buffer, offset, packet, parent, msg_type, msg_type, msg_type, msg_type)
  -- Dissect Heartbeat Body
  if msg_type == "0" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.heartbeat_body.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request
  if msg_type == "1" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.login_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout
  if msg_type == "3" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.logout.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Request
  if msg_type == "5" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.replay_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Frame
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.client_frame = {}

-- Display: Client Frame
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.client_frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Frame
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.client_frame.fields = function(buffer, offset, packet, parent, size_of_client_frame)
  local index = offset

  -- Frame Header: Struct of 7 fields
  index, frame_header = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.frame_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(index - 8, 2):le_uint()

  -- Runtime optional field: Client Body
  local client_body = nil

  local client_body_exists = message_length > 6

  if client_body_exists then

    -- Dependency element: Msg Type
    local msg_type = buffer(index + 2, 1):string()

    -- Dependency element: Msg Type
    local msg_type = buffer(index + 2, 1):string()

    -- Dependency element: Msg Type
    local msg_type = buffer(index + 2, 1):string()

    -- Dependency element: Msg Type
    local msg_type = buffer(index + 2, 1):string()

    -- Client Body: Runtime Type with 4 branches
    index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.client_body.dissect(buffer, index, packet, parent, msg_type, msg_type, msg_type, msg_type)
  end

  return index
end

-- Dissect: Client Frame
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.client_frame.dissect = function(buffer, offset, packet, parent, size_of_client_frame)
  local index = offset + size_of_client_frame

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.fields.client_frame, buffer(offset, 0))
    local current = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.client_frame.fields(buffer, offset, packet, parent, size_of_client_frame)
    parent:set_len(size_of_client_frame)
    local display = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.client_frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.client_frame.fields(buffer, offset, packet, parent, size_of_client_frame)

    return index
  end
end

-- Remaining Bytes For: Client Frame
local client_frame_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.frame_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 3, 2):le_uint() + 5

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Client Packet
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.client_packet = {}

-- Verify required size of Tcp packet
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.client_packet.requiredsize = function(buffer)
  return buffer:len() >= tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.frame_header.size + 2 + tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.msg_type.size
end

-- Dissect Client Packet
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Frame
  local end_of_payload = buffer:len()

  -- Client Frame: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_frame = client_frame_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_client_frame):tvb()
      index = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.client_frame.dissect(frame, index, packet, parent, size_of_client_frame)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      -- Claim the whole buffer: tcp keeps the bytes from desegment_offset for reassembly
      return end_of_payload
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.init()
end

-- Connection roles for Tmx Tsx QuantumFeedLevel2Recovery Xmt 3.6: Client is the initiator, Server is the acceptor
-- Initiator endpoint of each conversation, recorded from its first frame
local initiators = {}

-- Conversations whose first frame proved to be the acceptor's: the heuristic swaps the sides
local swapped = {}

-- Endpoint key of an address and port
local function endpoint(address, port)
  return tostring(address)..":"..tostring(port)
end


-- Conversation key, the same in both directions
local function conversation(packet)
  local source = endpoint(packet.src, packet.src_port)
  local destination = endpoint(packet.dst, packet.dst_port)

  if source < destination then
    return source.." "..destination
  end

  return destination.." "..source
end


-- Connection role of the frame's sender
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.role = function(packet)
  if omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.acceptor_port

  if acceptor_port ~= 0 and packet.dst_port == acceptor_port then
    return "initiator"
  end

  if acceptor_port ~= 0 and packet.src_port == acceptor_port then
    return "acceptor"
  end

  local key = conversation(packet)
  local sender = endpoint(packet.src, packet.src_port)

  if initiators[key] == nil then
    initiators[key] = sender
  end

  local sender_initiated = initiators[key] == sender

  if omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.prefs.swap_sides then
    sender_initiated = not sender_initiated
  end

  if swapped[key] then
    sender_initiated = not sender_initiated
  end

  if sender_initiated then
    return "initiator"
  end

  return "acceptor"
end


-- Swap the resolved sides of the frame's conversation
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Tmx Tsx QuantumFeedLevel2Recovery Xmt 3.6
function omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6, buffer(), omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.description, "("..buffer:len().." Bytes)")
  local role = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.role(packet)

  if role == "initiator" then
    return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.client_packet.dissect(buffer, packet, protocol)
  end

  return tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.client_packet.fingerprint = function(buffer)
  if buffer:len() < 14 then
    return false
  end

  local msg_type = buffer(13, 1):string()
  local msg_type = buffer(13, 1):string()
  local msg_type = buffer(13, 1):string()
  local msg_type = buffer(13, 1):string()

  -- Heartbeat Body
  if msg_type == "0" then
    return true
  end

  -- Login Request
  if msg_type == "1" then
    return true
  end

  -- Logout
  if msg_type == "3" then
    return true
  end

  -- Replay Request
  if msg_type == "5" then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.server_packet.fingerprint = function(buffer)
  if buffer:len() < 14 then
    return false
  end

  local msg_type = buffer(13, 1):string()
  local msg_type = buffer(13, 1):string()
  local msg_type = buffer(13, 1):string()
  local msg_type = buffer(13, 1):string()
  local msg_type = buffer(13, 1):string()

  -- Heartbeat Body
  if msg_type == "0" then
    return true
  end

  -- Login Response
  if msg_type == "2" then
    return true
  end

  -- Ack: carries the application messages, which tell this protocol from others sharing the session framing
  if msg_type == "4" then
    if buffer:len() < 18 then
      return false
    end

    local msg_type = buffer(17, 1):string()

    -- Symbol Status Message
    if msg_type == "J" then
      return true
    end

    -- Order Book Message
    if msg_type == "G" then
      return true
    end

    -- Order Book Terms Message
    if msg_type == "j" then
      return true
    end

    -- Assign Cop Orders Message
    if msg_type == "A" then
      return true
    end

    -- Assign Cop No Orders Message
    if msg_type == "B" then
      return true
    end

    -- Assign Limit Message
    if msg_type == "C" then
      return true
    end

    -- Market State Update Message
    if msg_type == "E" then
      return true
    end

    -- Moc Imbalance Message
    if msg_type == "F" then
      return true
    end

    -- Order Booked Message
    if msg_type == "P" then
      return true
    end

    -- Order Booked Terms Message
    if msg_type == "m" then
      return true
    end

    -- Order Cancelled Message
    if msg_type == "Q" then
      return true
    end

    -- Order Cancelled Terms Message
    if msg_type == "n" then
      return true
    end

    -- Order Price Time Assigned Message
    if msg_type == "R" then
      return true
    end

    -- Order Price Time Assigned Terms Message
    if msg_type == "o" then
      return true
    end

    -- Stock Status Message
    if msg_type == "I" then
      return true
    end

    -- Trade Report Message
    if msg_type == "S" then
      return true
    end

    -- Trade Report Terms Message
    if msg_type == "p" then
      return true
    end

    -- Trade Cancelled Message
    if msg_type == "T" then
      return true
    end

    -- Trade Cancelled Terms Message
    if msg_type == "q" then
      return true
    end

    -- Trade Correction Message
    if msg_type == "U" then
      return true
    end

    -- Trade Correction Terms Message
    if msg_type == "r" then
      return true
    end

    return false
  end

  -- Sequence Jump
  if msg_type == "6" then
    return true
  end

  -- Reject
  if msg_type == "9" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Start Of Frame Field
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.start_of_frame.client_packet_verify = function(buffer)
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
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.protocol_name.client_packet_verify = function(buffer)
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

-- Verify Start Of Frame Field
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.start_of_frame.server_packet_verify = function(buffer)
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
tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.protocol_name.server_packet_verify = function(buffer)
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

-- Dissector Heuristic for Tmx Tsx QuantumFeedLevel2Recovery Xmt 3.6 (Tcp)
local function omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.client_packet.requiredsize(buffer) then return false end

  -- Verify Start Of Frame
  if not tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.start_of_frame.client_packet_verify(buffer) then return false end

  -- Verify Protocol Name
  if not tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.protocol_name.client_packet_verify(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6
  omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Tmx Tsx QuantumFeedLevel2Recovery Xmt 3.6 (Tcp)
local function omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.server_packet.requiredsize(buffer) then return false end

  -- Verify Start Of Frame
  if not tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.start_of_frame.server_packet_verify(buffer) then return false end

  -- Verify Protocol Name
  if not tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.protocol_name.server_packet_verify(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6
  omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Tmx Tsx QuantumFeedLevel2Recovery Xmt 3.6 (Tcp): apply the heuristic of the sender's connection role
local function omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6_tcp_heuristic(buffer, packet, parent)
  local role = tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.role(packet)
  local initiator = omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6_tcp_initiator_heuristic
  local acceptor = omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6.swap(packet)

  return false
end

-- Register Heuristics for Tmx Tsx QuantumFeedLevel2Recovery Xmt 3.6
omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6:register_heuristic("tcp", omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6_tcp_heuristic)

-- Register Tmx Tsx QuantumFeedLevel2Recovery Xmt 3.6 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_tmx_tsx_quantumfeedlevel2recovery_xmt_v3_6)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: TMX Group
--   Version: 3.6
--   Date: Tuesday, August 10, 2021
--   Specification: TSX TSXV Level 2 QuantumFeed Business Message Specification (3.6.0).pdf
--   Specification: tmx-xmt-protocol-spec-v1-2-0.pdf
--   Specification: TSX QuantumFeed Service Access Guide (4.1.0).pdf
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
