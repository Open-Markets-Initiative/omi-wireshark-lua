-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Neeq NeeqSecurities OrderEntry BjseBinary 1.1 Protocol
local omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1 = Proto("Omi.Neeq.NeeqSecurities.OrderEntry.BjseBinary.v1.1", "Neeq NeeqSecurities OrderEntry BjseBinary 1.1")

-- Protocol table
local neeq_neeqsecurities_orderentry_bjsebinary_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Neeq NeeqSecurities OrderEntry BjseBinary 1.1 Fields
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.account_id = ProtoField.new("Account Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.accountid", ftypes.STRING, nil, nil, nil, "Securities account")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.appl_id = ProtoField.new("Appl Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.applid", ftypes.STRING, nil, nil, nil, "Application identifier")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.body_length = ProtoField.new("Body Length", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.bodylength", ftypes.UINT32, nil, nil, nil, "The length of a message body")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.branch_id = ProtoField.new("Branch Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.branchid", ftypes.STRING, nil, nil, nil, "Branch identification code")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.business_reject_reason = ProtoField.new("Business Reject Reason", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.businessrejectreason", ftypes.UINT16, nil, nil, nil, "Reject reason")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.business_reject_ref_id = ProtoField.new("Business Reject Ref Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.businessrejectrefid", ftypes.STRING, nil, nil, nil, "Business layer ID of the rejected message: ClOrdID for a new order, an order cancel request or a quote response, QuoteMsgID for a quote, TradeReportID for a trade capture report")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.business_reject_text = ProtoField.new("Business Reject Text", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.businessrejecttext", ftypes.STRING, nil, nil, nil, "Reject reason text, up to 50 bytes that may include Chinese characters")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.cash_margin = ProtoField.new("Cash Margin", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.cashmargin", ftypes.STRING, nil, nil, nil, "Credit flag")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.checksum = ProtoField.new("Checksum", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.checksum", ftypes.UINT32, nil, nil, nil, "The checksum of a message, the sum of every byte from the start of the message header through the end of the message body taken modulo 256")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.clordid", ftypes.STRING, nil, nil, nil, "Client order number, a 10 digit string with leading zeros")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.clearing_firm = ProtoField.new("Clearing Firm", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.clearingfirm", ftypes.STRING, nil, nil, nil, "Clearing firm code")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.confirm_id = ProtoField.new("Confirm Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.confirmid", ftypes.UINT32, nil, nil, nil, "Agreement number, N8(0)")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.counterparty_account_id = ProtoField.new("Counterparty Account Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.counterpartyaccountid", ftypes.STRING, nil, nil, nil, "Counterparty securities account")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.counterparty_branch_id = ProtoField.new("Counterparty Branch Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.counterpartybranchid", ftypes.STRING, nil, nil, nil, "Counterparty branch identification code")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.counterparty_member_id = ProtoField.new("Counterparty Member Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.counterpartymemberid", ftypes.STRING, nil, nil, nil, "Counterparty dealer code")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.counterparty_pbuid = ProtoField.new("Counterparty Pbuid", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.counterpartypbuid", ftypes.STRING, nil, nil, nil, "Counterparty trading unit")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.counterparty_trader_code = ProtoField.new("Counterparty Trader Code", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.counterpartytradercode", ftypes.STRING)
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.cum_qty = ProtoField.new("Cum Qty", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.cumqty", ftypes.DOUBLE, nil, nil, nil, "Cumulative executed quantity")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.cxl_rej_reason = ProtoField.new("Cxl Rej Reason", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.cxlrejreason", ftypes.UINT16, nil, nil, nil, "Cancel reject reason code")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.default_appl_ver_id = ProtoField.new("Default Appl Ver Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.defaultapplverid", ftypes.STRING, nil, nil, nil, "Binary protocol version, the communication version number written as n.xy")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.exec_id = ProtoField.new("Exec Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.execid", ftypes.STRING, nil, nil, nil, "Execution number, the Beijing Stock Exchange trade number, assigned by the exchange and unique within a trading day")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.exec_type = ProtoField.new("Exec Type", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.exectype", ftypes.STRING, nil, nil, nil, "Execution report type")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.expiration_days = ProtoField.new("Expiration Days", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.expirationdays", ftypes.UINT16, nil, nil, nil, "Term in days")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.expiration_type = ProtoField.new("Expiration Type", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.expirationtype", ftypes.UINT8, nil, nil, nil, "Term type")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.heartbtint", ftypes.INT32, nil, nil, nil, "Heartbeat interval in seconds, given by the order management system at logon")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.last_px = ProtoField.new("Last Px", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.lastpx", ftypes.DOUBLE, nil, nil, nil, "Trade price")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.last_qty = ProtoField.new("Last Qty", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.lastqty", ftypes.DOUBLE, nil, nil, nil, "Trade quantity")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.leaves_qty = ProtoField.new("Leaves Qty", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.leavesqty", ftypes.DOUBLE, nil, nil, nil, "Remaining order quantity")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.market_id = ProtoField.new("Market Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.marketid", ftypes.STRING, nil, nil, nil, "Market code, reserved")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.market_segment_id = ProtoField.new("Market Segment Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.marketsegmentid", ftypes.STRING, nil, nil, nil, "Market segment code; only the first character is used, giving the platform: 2 = fixed income platform")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.maturity_date = ProtoField.new("Maturity Date", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.maturitydate", ftypes.UINT32)
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.max_price_levels = ProtoField.new("Max Price Levels", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.maxpricelevels", ftypes.UINT16, nil, nil, nil, "Maximum number of price levels to trade at; 0 means unlimited")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.member_id = ProtoField.new("Member Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.memberid", ftypes.STRING, nil, nil, nil, "Own dealer code")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.memo = ProtoField.new("Memo", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.memo", ftypes.STRING, nil, nil, nil, "Remarks, up to 120 bytes that may include Chinese characters")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.message_tail = ProtoField.new("Message Tail", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.messagetail", ftypes.STRING, nil, nil, nil, "Bjse Bjtg Message Tail, defining the checksum of a message, transmitted without encryption")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.min_qty = ProtoField.new("Min Qty", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.minqty", ftypes.DOUBLE, nil, nil, nil, "Minimum trade quantity")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.msg_type = ProtoField.new("Msg Type", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.msgtype", ftypes.UINT32, nil, nil, nil, "Type of a message")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.no_partitions = ProtoField.new("No Partitions", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.nopartitions", ftypes.UINT32, nil, nil, nil, "Number of platform partitions")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.ord_rej_reason = ProtoField.new("Ord Rej Reason", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.ordrejreason", ftypes.UINT16, nil, nil, nil, "Cancel or reject reason code")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.ord_status = ProtoField.new("Ord Status", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.ordstatus", ftypes.STRING, nil, nil, nil, "Order status")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.ord_type = ProtoField.new("Ord Type", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.ordtype", ftypes.STRING, nil, nil, nil, "Order type")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.order_id = ProtoField.new("Order Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.orderid", ftypes.STRING, nil, nil, nil, "Exchange order number of the original order")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.order_qty = ProtoField.new("Order Qty", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.orderqty", ftypes.DOUBLE, nil, nil, nil, "Order quantity")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.order_restrictions = ProtoField.new("Order Restrictions", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.orderrestrictions", ftypes.STRING, nil, nil, nil, "Order restrictions, up to four codes at once, blank when none: 1 = programmatic trading, E = algorithmic trading")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.origclordid", ftypes.STRING, nil, nil, nil, "Client order number of the original order, a 10 digit string with leading zeros")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.owner_type = ProtoField.new("Owner Type", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.ownertype", ftypes.UINT16, nil, nil, nil, "Order owner type")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.partition_no = ProtoField.new("Partition No", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.partitionno", ftypes.INT32, nil, nil, nil, "Platform partition number")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.partition_reports = ProtoField.new("Partition Reports", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.partitionreports", ftypes.STRING, nil, nil, nil, "One entry per platform partition the order management system expects to receive")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.partitions = ProtoField.new("Partitions", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.partitions", ftypes.STRING, nil, nil, nil, "One entry per platform partition")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.password = ProtoField.new("Password", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.password", ftypes.STRING)
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.pbuid = ProtoField.new("Pbuid", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.pbuid", ftypes.STRING, nil, nil, nil, "Own trading unit")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.platform_id = ProtoField.new("Platform Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.platformid", ftypes.UINT16, nil, nil, nil, "Platform number")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.platform_state = ProtoField.new("Platform State", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.platformstate", ftypes.UINT16)
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.price = ProtoField.new("Price", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.price", ftypes.DOUBLE)
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.ref_msg_type = ProtoField.new("Ref Msg Type", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.refmsgtype", ftypes.UINT32, nil, nil, nil, "Message type of the rejected message")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.ref_seq_num = ProtoField.new("Ref Seq Num", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.refseqnum", ftypes.INT64, nil, nil, nil, "Message sequence number of the rejected message")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.reject_text = ProtoField.new("Reject Text", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.rejecttext", ftypes.STRING, nil, nil, nil, "Reject reason text, up to 16 bytes that may include Chinese characters")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.report_index = ProtoField.new("Report Index", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.reportindex", ftypes.INT64, nil, nil, nil, "Report record number, continuing the numbering of the partition's reports")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.reporting_pbuid = ProtoField.new("Reporting Pbuid", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.reportingpbuid", ftypes.STRING, nil, nil, nil, "Reporting trading unit")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.security_id = ProtoField.new("Security Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.securityid", ftypes.STRING, nil, nil, nil, "Security code, 6 digits behind 2 leading spaces")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.security_id_source = ProtoField.new("Security Id Source", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.securityidsource", ftypes.STRING, nil, nil, nil, "Security code source, 3 digits behind a leading space")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.sender_comp_id = ProtoField.new("Sender Comp Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.sendercompid", ftypes.STRING, nil, nil, nil, "Sender code")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.session_status = ProtoField.new("Session Status", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.sessionstatus", ftypes.INT32, nil, nil, nil, "Session status at logout")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.settl_period = ProtoField.new("Settl Period", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.settlperiod", ftypes.STRING, nil, nil, nil, "Settlement period")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.settl_type = ProtoField.new("Settl Type", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.settltype", ftypes.STRING, nil, nil, nil, "Settlement method")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.share_property = ProtoField.new("Share Property", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.shareproperty", ftypes.STRING)
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.side = ProtoField.new("Side", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.side", ftypes.STRING)
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.stop_px = ProtoField.new("Stop Px", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.stoppx", ftypes.DOUBLE, nil, nil, nil, "Stop price")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.submitting_pbuid = ProtoField.new("Submitting Pbuid", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.submittingpbuid", ftypes.STRING, nil, nil, nil, "Submitting trading unit")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.target_comp_id = ProtoField.new("Target Comp Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.targetcompid", ftypes.STRING, nil, nil, nil, "Receiver code")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.text = ProtoField.new("Text", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.text", ftypes.STRING, nil, nil, nil, "Further explanation of the logout reason, up to 200 bytes that may include Chinese characters")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.time_in_force = ProtoField.new("Time In Force", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.timeinforce", ftypes.STRING, nil, nil, nil, "Time in force type")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trad_ses_end_time = ProtoField.new("Trad Ses End Time", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.tradsesendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Trading session end time, reserved")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trad_ses_end_time_utc = ProtoField.new("Trad Ses End Time", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.tradsesendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Trading session end time, reserved")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trad_ses_start_time = ProtoField.new("Trad Ses Start Time", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.tradsesstarttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Trading session start time, reserved")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trad_ses_start_time_utc = ProtoField.new("Trad Ses Start Time", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.tradsesstarttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Trading session start time, reserved")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.tradsesstatus", ftypes.UINT16, nil, nil, nil, "Trading session status, reserved")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trade_handling_instr = ProtoField.new("Trade Handling Instr", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.tradehandlinginstr", ftypes.STRING, nil, nil, nil, "Trade report mode")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trade_id = ProtoField.new("Trade Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.tradeid", ftypes.STRING, nil, nil, nil, "Exchange trade report number, unique across trading days")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trade_report_id = ProtoField.new("Trade Report Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.tradereportid", ftypes.STRING, nil, nil, nil, "Client trade report number")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trade_report_ref_id = ProtoField.new("Trade Report Ref Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.tradereportrefid", ftypes.STRING, nil, nil, nil, "Original client trade report number, used when cancelling a trade report")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trade_report_reject_reason = ProtoField.new("Trade Report Reject Reason", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.tradereportrejectreason", ftypes.UINT16, nil, nil, nil, "Trade report reject reason code")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trade_report_trans_type = ProtoField.new("Trade Report Trans Type", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.tradereporttranstype", ftypes.UINT8, nil, nil, nil, "Trade report transaction type")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trade_report_type = ProtoField.new("Trade Report Type", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.tradereporttype", ftypes.UINT8)
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trader_code = ProtoField.new("Trader Code", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.tradercode", ftypes.STRING, nil, nil, nil, "Own trader code")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trading_session_id = ProtoField.new("Trading Session Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.tradingsessionid", ftypes.STRING, nil, nil, nil, "Trading session ID, reserved")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.tradingsessionsubid", ftypes.STRING, nil, nil, nil, "Trading session sub ID, a numeric string")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.transact_time = ProtoField.new("Transact Time", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.transacttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Report time")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.transact_time_utc = ProtoField.new("Transact Time", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.transacttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Report time")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trd_ack_status = ProtoField.new("Trd Ack Status", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.trdackstatus", ftypes.UINT8, nil, nil, nil, "Trade report acknowledgement status")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trd_rpt_status = ProtoField.new("Trd Rpt Status", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.trdrptstatus", ftypes.UINT8, nil, nil, nil, "Trade report status")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trd_sub_type = ProtoField.new("Trd Sub Type", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.trdsubtype", ftypes.UINT16, nil, nil, nil, "Trade report business sub type")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trd_type = ProtoField.new("Trd Type", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.trdtype", ftypes.UINT16, nil, nil, nil, "Trade report business type")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.user_info = ProtoField.new("User Info", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.userinfo", ftypes.STRING, nil, nil, nil, "User private information, printable Ascii only")

-- Neeq NeeqSecurities OrderEntry BjseBinary 1.1 Framing
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.message = ProtoField.new("Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.message", ftypes.STRING, nil, nil, nil, "Bjse Bjtg Session Message")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.message_header = ProtoField.new("Message Header", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.messageheader", ftypes.STRING, nil, nil, nil, "Bjse Bjtg Message Header, defining the type and body length of a message, transmitted without encryption")

-- Neeq NeeqSecurities OrderEntry 1.1 Application Messages
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.after_hours_block_trade_trade_capture_report_ack_message = ProtoField.new("After Hours Block Trade Trade Capture Report Ack Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.afterhoursblocktradetradecapturereportackmessage", ftypes.STRING, nil, nil, nil, "Trading gateway response to a trade capture report for after hours block trading, ApplID 062. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.after_hours_block_trade_trade_capture_report_confirmation_message = ProtoField.new("After Hours Block Trade Trade Capture Report Confirmation Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.afterhoursblocktradetradecapturereportconfirmationmessage", ftypes.STRING, nil, nil, nil, "Trade confirmation of a trade capture report for after hours block trading, ApplID 062. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.after_hours_block_trade_trade_capture_report_message = ProtoField.new("After Hours Block Trade Trade Capture Report Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.afterhoursblocktradetradecapturereportmessage", ftypes.STRING, nil, nil, nil, "Trade capture report for after hours block trading, ApplID 062, submitted for matching. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.bond_spot_matching_execution_report_message = ProtoField.new("Bond Spot Matching Execution Report Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.bondspotmatchingexecutionreportmessage", ftypes.STRING, nil, nil, nil, "Order response and cancel execution report for spot bond trading by matching, ApplID 010: confirms or rejects a new order, a successful cancel, or an order the system cancels itself.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.bond_spot_matching_new_order_message = ProtoField.new("Bond Spot Matching New Order Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.bondspotmatchingnewordermessage", ftypes.STRING, nil, nil, nil, "New order for spot bond trading by matching, ApplID 010.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.bond_spot_matching_trade_execution_report_message = ProtoField.new("Bond Spot Matching Trade Execution Report Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.bondspotmatchingtradeexecutionreportmessage", ftypes.STRING, nil, nil, nil, "Execution report for a trade on an order for spot bond trading by matching, ApplID 010.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.bond_spot_negotiated_trade_capture_report_ack_message = ProtoField.new("Bond Spot Negotiated Trade Capture Report Ack Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.bondspotnegotiatedtradecapturereportackmessage", ftypes.STRING, nil, nil, nil, "Trading gateway response to a trade capture report for spot bond trading by negotiation, ApplID 031.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.bond_spot_negotiated_trade_capture_report_confirmation_message = ProtoField.new("Bond Spot Negotiated Trade Capture Report Confirmation Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.bondspotnegotiatedtradecapturereportconfirmationmessage", ftypes.STRING, nil, nil, nil, "Trade confirmation of a trade capture report for spot bond trading by negotiation, ApplID 031.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.bond_spot_negotiated_trade_capture_report_message = ProtoField.new("Bond Spot Negotiated Trade Capture Report Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.bondspotnegotiatedtradecapturereportmessage", ftypes.STRING, nil, nil, nil, "Trade capture report for spot bond trading by negotiation, ApplID 031, submitted for matching.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.business_reject_message = ProtoField.new("Business Reject Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.businessrejectmessage", ftypes.STRING, nil, nil, nil, "Sent by the trading gateway when a submission fails a basic validity check, such as an unknown security code or a submission outside its time window.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.cancel_reject_message = ProtoField.new("Cancel Reject Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.cancelrejectmessage", ftypes.STRING, nil, nil, nil, "Sent by the trading gateway when an order cancel request fails.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.centralized_auction_execution_report_message = ProtoField.new("Centralized Auction Execution Report Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.centralizedauctionexecutionreportmessage", ftypes.STRING, nil, nil, nil, "Order response and cancel execution report for centralized auction stock trading, ApplID 040: confirms or rejects a new order, a successful cancel, or an order the system cancels itself. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.centralized_auction_new_order_message = ProtoField.new("Centralized Auction New Order Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.centralizedauctionnewordermessage", ftypes.STRING, nil, nil, nil, "New order for centralized auction stock trading, ApplID 040. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.centralized_auction_trade_execution_report_message = ProtoField.new("Centralized Auction Trade Execution Report Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.centralizedauctiontradeexecutionreportmessage", ftypes.STRING, nil, nil, nil, "Execution report for a trade on an order for centralized auction stock trading, ApplID 040. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.conversion_execution_report_message = ProtoField.new("Conversion Execution Report Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.conversionexecutionreportmessage", ftypes.STRING, nil, nil, nil, "Order response and cancel execution report for conversion, ApplID 041: confirms or rejects a new order, a successful cancel, or an order the system cancels itself. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.conversion_new_order_message = ProtoField.new("Conversion New Order Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.conversionnewordermessage", ftypes.STRING, nil, nil, nil, "New order for conversion, ApplID 041. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "Sent by either side when idle so that no more than one heartbeat interval passes between messages; the body is empty.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.inquiry_execution_report_message = ProtoField.new("Inquiry Execution Report Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.inquiryexecutionreportmessage", ftypes.STRING, nil, nil, nil, "Order response and cancel execution report for inquiry, ApplID 042: confirms or rejects a new order; the business does not allow cancellation. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.inquiry_new_order_message = ProtoField.new("Inquiry New Order Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.inquirynewordermessage", ftypes.STRING, nil, nil, nil, "New order for inquiry, ApplID 042. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.logon_message = ProtoField.new("Logon Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.logonmessage", ftypes.STRING, nil, nil, nil, "The first message the order management system sends to the trading gateway, which confirms a successful logon with a Logon of its own, so both sides transmit this message type.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.logout_message = ProtoField.new("Logout Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.logoutmessage", ftypes.STRING, nil, nil, nil, "Sent by the trading gateway to refuse a logon, and by either side to end the session; the receiver answers with a Logout of its own, so both sides transmit this message type.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.market_making_mutual_trade_confirmation_trade_capture_report_ack_message = ProtoField.new("Market Making Mutual Trade Confirmation Trade Capture Report Ack Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.marketmakingmutualtradeconfirmationtradecapturereportackmessage", ftypes.STRING, nil, nil, nil, "Trading gateway response to a trade capture report for market making mutual trade confirmation, ApplID 061. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.market_making_mutual_trade_confirmation_trade_capture_report_confirmation_message = ProtoField.new("Market Making Mutual Trade Confirmation Trade Capture Report Confirmation Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.marketmakingmutualtradeconfirmationtradecapturereportconfirmationmessage", ftypes.STRING, nil, nil, nil, "Trade confirmation of a trade capture report for market making mutual trade confirmation, ApplID 061. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.market_making_mutual_trade_confirmation_trade_capture_report_message = ProtoField.new("Market Making Mutual Trade Confirmation Trade Capture Report Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.marketmakingmutualtradeconfirmationtradecapturereportmessage", ftypes.STRING, nil, nil, nil, "Trade capture report for market making mutual trade confirmation, ApplID 061, submitted for matching. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.mutual_trade_confirmation_trade_capture_report_ack_message = ProtoField.new("Mutual Trade Confirmation Trade Capture Report Ack Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.mutualtradeconfirmationtradecapturereportackmessage", ftypes.STRING, nil, nil, nil, "Trading gateway response to a trade capture report for mutual trade confirmation, ApplID 060. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.mutual_trade_confirmation_trade_capture_report_confirmation_message = ProtoField.new("Mutual Trade Confirmation Trade Capture Report Confirmation Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.mutualtradeconfirmationtradecapturereportconfirmationmessage", ftypes.STRING, nil, nil, nil, "Trade confirmation of a trade capture report for mutual trade confirmation, ApplID 060. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.mutual_trade_confirmation_trade_capture_report_message = ProtoField.new("Mutual Trade Confirmation Trade Capture Report Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.mutualtradeconfirmationtradecapturereportmessage", ftypes.STRING, nil, nil, nil, "Trade capture report for mutual trade confirmation, ApplID 060, submitted for matching. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.ordercancelrequestmessage", ftypes.STRING, nil, nil, nil, "Cancels an order; the exchange does not check the original order quantity it carries.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.platform_info_message = ProtoField.new("Platform Info Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.platforminfomessage", ftypes.STRING, nil, nil, nil, "Sent by the trading gateway after logon, giving the number of partitions of the platform and their numbers, which need not be consecutive.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.platform_state_info_message = ProtoField.new("Platform State Info Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.platformstateinfomessage", ftypes.STRING, nil, nil, nil, "Sent by the trading gateway after logon and whenever a platform changes state, so the order management system can control when it submits orders.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.put_back_execution_report_message = ProtoField.new("Put Back Execution Report Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.putbackexecutionreportmessage", ftypes.STRING, nil, nil, nil, "Order response and cancel execution report for put back, ApplID 044: confirms or rejects a new order, a successful cancel, or an order the system cancels itself. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.put_back_new_order_message = ProtoField.new("Put Back New Order Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.putbacknewordermessage", ftypes.STRING, nil, nil, nil, "New order for put back, ApplID 044. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.refinancing_securities_lending_agreed_trade_capture_report_ack_message = ProtoField.new("Refinancing Securities Lending Agreed Trade Capture Report Ack Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.refinancingsecuritieslendingagreedtradecapturereportackmessage", ftypes.STRING, nil, nil, nil, "Trading gateway response to a trade capture report for refinancing securities lending by agreement, ApplID 051. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.refinancing_securities_lending_agreed_trade_capture_report_confirmation_message = ProtoField.new("Refinancing Securities Lending Agreed Trade Capture Report Confirmation Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.refinancingsecuritieslendingagreedtradecapturereportconfirmationmessage", ftypes.STRING, nil, nil, nil, "Trade confirmation of a trade capture report for refinancing securities lending by agreement, ApplID 051. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.refinancing_securities_lending_agreed_trade_capture_report_message = ProtoField.new("Refinancing Securities Lending Agreed Trade Capture Report Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.refinancingsecuritieslendingagreedtradecapturereportmessage", ftypes.STRING, nil, nil, nil, "Trade capture report for refinancing securities lending by agreement, ApplID 051, submitted for matching. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.refinancing_securities_lending_non_agreed_execution_report_message = ProtoField.new("Refinancing Securities Lending Non Agreed Execution Report Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.refinancingsecuritieslendingnonagreedexecutionreportmessage", ftypes.STRING, nil, nil, nil, "Order response and cancel execution report for refinancing securities lending without agreement, ApplID 050: confirms or rejects a new order, a successful cancel, or an order the system cancels itself. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.refinancing_securities_lending_non_agreed_new_order_message = ProtoField.new("Refinancing Securities Lending Non Agreed New Order Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.refinancingsecuritieslendingnonagreednewordermessage", ftypes.STRING, nil, nil, nil, "New order for refinancing securities lending without agreement, ApplID 050. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.refinancing_securities_lending_non_agreed_trade_execution_report_message = ProtoField.new("Refinancing Securities Lending Non Agreed Trade Execution Report Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.refinancingsecuritieslendingnonagreedtradeexecutionreportmessage", ftypes.STRING, nil, nil, nil, "Execution report for a trade on an order for refinancing securities lending without agreement, ApplID 050. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.report_finished_message = ProtoField.new("Report Finished Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.reportfinishedmessage", ftypes.STRING, nil, nil, nil, "Sent by the trading gateway when every report of the trading day for a platform partition has been sent; its record number continues the numbering of the partition's reports.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.report_synchronization_message = ProtoField.new("Report Synchronization Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.reportsynchronizationmessage", ftypes.STRING, nil, nil, nil, "Sent by the order management system after logon to give, for each platform partition, the record number of the next report it expects; the gateway sends no reports for a partition the message omits.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.subscription_execution_report_message = ProtoField.new("Subscription Execution Report Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.subscriptionexecutionreportmessage", ftypes.STRING, nil, nil, nil, "Order response and cancel execution report for subscription, ApplID 043: confirms or rejects a new order; the business does not allow cancellation. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.subscription_new_order_message = ProtoField.new("Subscription New Order Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.subscriptionnewordermessage", ftypes.STRING, nil, nil, nil, "New order for subscription, ApplID 043. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.tender_offer_acceptance_execution_report_message = ProtoField.new("Tender Offer Acceptance Execution Report Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.tenderofferacceptanceexecutionreportmessage", ftypes.STRING, nil, nil, nil, "Order response and cancel execution report for tender offer acceptance, ApplID 045: confirms or rejects a new order, a successful cancel, or an order the system cancels itself. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.tender_offer_acceptance_new_order_message = ProtoField.new("Tender Offer Acceptance New Order Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.tenderofferacceptancenewordermessage", ftypes.STRING, nil, nil, nil, "New order for tender offer acceptance, ApplID 045. Not yet enabled.")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.tradingsessionstatusmessage", ftypes.STRING, nil, nil, nil, "Sent by the trading gateway after logon and whenever the trading session of the connected platform changes; only the fixed income platform currently sends it.")

-- Neeq NeeqSecurities OrderEntry BjseBinary 1.1 Generated Fields
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.partition_reports_index = ProtoField.new("Partition Reports Index", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.partitionreportsindex", ftypes.UINT16)
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.partitions_index = ProtoField.new("Partitions Index", "neeq.neeqsecurities.orderentry.bjsebinary.v1.1.partitionsindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Neeq NeeqSecurities OrderEntry BjseBinary 1.1 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding = ENC_GB18030

-- timestamp format
local timestamp_format_enum = {
  { 1, "Full DateTime Local", 2 },
  { 2, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Neeq NeeqSecurities OrderEntry BjseBinary 1.1 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.repeating_groups = true
show.indexes = true

-- Register Neeq NeeqSecurities OrderEntry BjseBinary 1.1 Show Options
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.prefs.show_application_messages then
    show.application_messages = omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.prefs.show_application_messages
  end
  if show.headers ~= omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.prefs.show_headers then
    show.headers = omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.prefs.show_headers
  end
  if show.repeating_groups ~= omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.prefs.show_repeating_groups then
    show.repeating_groups = omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.prefs.show_repeating_groups
  end
  if show.structs ~= omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.prefs.show_structs then
    show.structs = omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.prefs.show_structs
  end
  if show.indexes ~= omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.prefs.show_indexes then
    show.indexes = omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.prefs.show_indexes
  end
  if neeq_neeqsecurities_orderentry_bjsebinary_v1_1.timestamp_format ~= omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.prefs.timestamp_format then
    neeq_neeqsecurities_orderentry_bjsebinary_v1_1.timestamp_format = omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.prefs.timestamp_format
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


-----------------------------------------------------------------------
-- Neeq NeeqSecurities OrderEntry BjseBinary 1.1 Fields
-----------------------------------------------------------------------

-- Account Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id = {}

-- Size: Account Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size = 10

-- Display: Account Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.display = function(value)
  return "Account Id: "..value
end

-- Dissect: Account Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.account_id, range, value, display)

  return offset + length, value
end

-- Appl Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id = {}

-- Size: Appl Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size = 3

-- Display: Appl Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.display = function(value)
  return "Appl Id: "..value
end

-- Dissect: Appl Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.appl_id, range, value, display)

  return offset + length, value
end

-- Body Length
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.body_length = {}

-- Size: Body Length
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.body_length.size = 4

-- Display: Body Length
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.body_length.display = function(value)
  return "Body Length: "..value
end

-- Dissect: Body Length
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.body_length.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.body_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.body_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.body_length, range, value, display)

  return offset + length, value
end

-- Branch Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id = {}

-- Size: Branch Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size = 2

-- Display: Branch Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.display = function(value)
  return "Branch Id: "..value
end

-- Dissect: Branch Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.branch_id, range, value, display)

  return offset + length, value
end

-- Business Reject Reason
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_reason = {}

-- Size: Business Reject Reason
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_reason.size = 2

-- Display: Business Reject Reason
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_reason.labels = {
  [1] = "Business Reject Reason: Invalid Account (1)",
  [101] = "Business Reject Reason: Own Securities Account Format Invalid (101)",
  [102] = "Business Reject Reason: Counterparty Securities Account Format Invalid (102)",
  [3] = "Business Reject Reason: Trading Unit Short Sale (3)",
  [4] = "Business Reject Reason: Shareholder Short Sale (4)",
  [6] = "Business Reject Reason: Price Too High (6)",
  [601] = "Business Reject Reason: Price Above Upper Limit Regular Session (601)",
  [602] = "Business Reject Reason: Price Above Upper Limit After Hours Session (602)",
  [603] = "Business Reject Reason: Price Above Ceiling In Call Matching (603)",
  [605] = "Business Reject Reason: Price Above Ceiling In Continuous Matching (605)",
  [7] = "Business Reject Reason: Price Too Low (7)",
  [701] = "Business Reject Reason: Price Below Lower Limit Regular Session (701)",
  [702] = "Business Reject Reason: Price Below Lower Limit After Hours Session (702)",
  [705] = "Business Reject Reason: Price Below Floor In Call Matching (705)",
  [707] = "Business Reject Reason: Price Below Floor In Continuous Matching (707)",
  [8] = "Business Reject Reason: Price Error (8)",
  [801] = "Business Reject Reason: Price Not A Multiple Of The Tick Size (801)",
  [804] = "Business Reject Reason: Price Value Invalid Must Be Zero On A Cancel And Nonzero Otherwise (804)",
  [807] = "Business Reject Reason: Stop Price Value Invalid (807)",
  [9] = "Business Reject Reason: Quantity Invalid (9)",
  [901] = "Business Reject Reason: Quantity Above Maximum Regular Session (901)",
  [902] = "Business Reject Reason: Quantity Below Minimum Regular Session (902)",
  [906] = "Business Reject Reason: Quantity Not A Multiple Of The Buy Or Sell Unit (906)",
  [909] = "Business Reject Reason: Quantity Value Invalid Must Be Zero On A Cancel And Nonzero Otherwise (909)",
  [912] = "Business Reject Reason: Minimum Trade Quantity Value Invalid (912)",
  [12] = "Business Reject Reason: Account Invalid (12)",
  [1201] = "Business Reject Reason: Securities Account Does Not Exist (1201)",
  [1202] = "Business Reject Reason: Securities Account Deactivated (1202)",
  [13] = "Business Reject Reason: Account Restricted (13)",
  [1301] = "Business Reject Reason: Account Type Restricted For Trading Unit (1301)",
  [1302] = "Business Reject Reason: Account Type Restricted For Trading Unit Type (1302)",
  [1306] = "Business Reject Reason: Securities Account Restricted For Trading Unit (1306)",
  [1307] = "Business Reject Reason: Securities Account Restricted For Trading Unit Type (1307)",
  [1310] = "Business Reject Reason: Securities Account Not Allowed This Business (1310)",
  [1315] = "Business Reject Reason: Credit Account May Not Buy Non Collateral Securities (1315)",
  [1316] = "Business Reject Reason: Credit Account Margin Trading Allows Limit Orders Only (1316)",
  [1909] = "Business Reject Reason: Negotiated Trade Pairing Failed (1909)",
  [22] = "Business Reject Reason: Agreement Number Error (22)",
  [2201] = "Business Reject Reason: Agreement Number Duplicate (2201)",
  [2203] = "Business Reject Reason: Agreement Number Format Invalid (2203)",
  [23] = "Business Reject Reason: Invalid Trading Unit (23)",
  [2301] = "Business Reject Reason: Trading Unit Does Not Exist (2301)",
  [2302] = "Business Reject Reason: Trading Unit Deactivated (2302)",
  [2317] = "Business Reject Reason: Trading Unit Closed (2317)",
  [2320] = "Business Reject Reason: Trading Unit Value Invalid (2320)",
  [2323] = "Business Reject Reason: Forced Liquidation From A Non Margin Trading Unit (2323)",
  [2324] = "Business Reject Reason: Margin Trading From A Non Margin Trading Unit (2324)",
  [2326] = "Business Reject Reason: Own Trading Unit Value Invalid (2326)",
  [2327] = "Business Reject Reason: Submitting Trading Unit Value Invalid (2327)",
  [2328] = "Business Reject Reason: Counterparty Trading Unit Value Invalid (2328)",
  [26] = "Business Reject Reason: Trading Unit Restricted (26)",
  [2601] = "Business Reject Reason: Trading Unit Restricted For Security Code (2601)",
  [2602] = "Business Reject Reason: Trading Unit Restricted For Security Type (2602)",
  [2605] = "Business Reject Reason: Trading Unit Not Allowed This Business Type (2605)",
  [2609] = "Business Reject Reason: Custodian Mode Qfii Account Does Not Match Trading Unit (2609)",
  [44] = "Business Reject Reason: Invalid Business (44)",
  [4402] = "Business Reject Reason: Margin Trading Business Not Supported (4402)",
  [4404] = "Business Reject Reason: Credit Flag Value Error (4404)",
  [45] = "Business Reject Reason: Odd Lot Sale Prohibited (45)",
  [4501] = "Business Reject Reason: Odd Lot Remainder Must Be Sold At Once (4501)",
  [51] = "Business Reject Reason: Business Type Error (51)",
  [5101] = "Business Reject Reason: Security Type Not Allowed This Business Type (5101)",
  [5102] = "Business Reject Reason: Security Code Not Allowed This Business Type (5102)",
  [5105] = "Business Reject Reason: Security Code Has No Security Type (5105)",
  [5107] = "Business Reject Reason: Business Type Incorrect (5107)",
  [5108] = "Business Reject Reason: Side Value Error (5108)",
  [5109] = "Business Reject Reason: Order Type Value Error (5109)",
  [5110] = "Business Reject Reason: Trade Report Transaction Type Value Error (5110)",
  [5111] = "Business Reject Reason: Trade Report Business Type Value Error (5111)",
  [5112] = "Business Reject Reason: Trade Report Business Sub Type Value Error (5112)",
  [5113] = "Business Reject Reason: Trade Report Type Value Error (5113)",
  [5114] = "Business Reject Reason: Trade Report Mode Value Error (5114)",
  [5115] = "Business Reject Reason: Message Type Value Error (5115)",
  [52] = "Business Reject Reason: Business Prohibited (52)",
  [5201] = "Business Reject Reason: Security Suspended (5201)",
  [5202] = "Business Reject Reason: No Cancel During Call Matching (5202)",
  [5203] = "Business Reject Reason: No Submission While Closed (5203)",
  [5204] = "Business Reject Reason: Business Type Not Allowed For Security In This Period (5204)",
  [53] = "Business Reject Reason: No Order To Cancel (53)",
  [5301] = "Business Reject Reason: No Regular Order To Cancel (5301)",
  [5303] = "Business Reject Reason: Cancel Security Code Differs From Original Order (5303)",
  [5304] = "Business Reject Reason: Cancel Securities Account Differs From Original Order (5304)",
  [5305] = "Business Reject Reason: Original Order Of Cancel Is Not A Buy Or Sell Order (5305)",
  [59] = "Business Reject Reason: Invalid Dealer (59)",
  [5901] = "Business Reject Reason: Own Dealer Code Not Enabled (5901)",
  [5902] = "Business Reject Reason: Counterparty Dealer Code Not Enabled (5902)",
  [5903] = "Business Reject Reason: Own Dealer Code Value Invalid (5903)",
  [5904] = "Business Reject Reason: Counterparty Dealer Code Value Invalid (5904)",
  [60] = "Business Reject Reason: Invalid Trader (60)",
  [6001] = "Business Reject Reason: Own Trader Code Not Enabled (6001)",
  [6002] = "Business Reject Reason: Counterparty Trader Code Not Enabled (6002)",
  [6003] = "Business Reject Reason: Own Trader Code Value Invalid (6003)",
  [6004] = "Business Reject Reason: Counterparty Trader Code Value Invalid (6004)",
  [61] = "Business Reject Reason: Application Identifier Value Invalid (61)",
  [62] = "Business Reject Reason: Own Branch Identification Code Value Invalid (62)",
  [6201] = "Business Reject Reason: Counterparty Branch Identification Code Value Invalid (6201)",
  [63] = "Business Reject Reason: Settlement Method Value Invalid (63)",
  [64] = "Business Reject Reason: Settlement Period Value Invalid (64)",
  [65] = "Business Reject Reason: Time In Force Type Value Invalid (65)",
  [66] = "Business Reject Reason: Security Code Source Value Invalid (66)",
  [67] = "Business Reject Reason: Maximum Price Levels Value Invalid (67)",
  [68] = "Business Reject Reason: Clearing Firm Code Value Invalid (68)",
  [69] = "Business Reject Reason: Order Restrictions Value Invalid (69)",
  [70] = "Business Reject Reason: Order Owner Type Value Invalid (70)",
  [71] = "Business Reject Reason: Securities Holding Accounts Above Limit (71)",
  [95] = "Business Reject Reason: Invalid Code (95)",
  [9501] = "Business Reject Reason: Security Code Does Not Exist (9501)",
  [9502] = "Business Reject Reason: Security Code Value Invalid (9502)",
  [9503] = "Business Reject Reason: Security Code Format Invalid (9503)",
  [96] = "Business Reject Reason: Order Time Format Invalid (96)",
  [98] = "Business Reject Reason: Order Number Invalid (98)",
  [9801] = "Business Reject Reason: Client Order Or Trade Report Number Format Invalid (9801)",
  [9802] = "Business Reject Reason: Original Client Order Or Trade Report Number Format Invalid (9802)",
  [9803] = "Business Reject Reason: Client Order Or Trade Report Number Duplicate (9803)",
  [99] = "Business Reject Reason: Other Error (99)",
  [9902] = "Business Reject Reason: Order Validation Method Does Not Exist (9902)",
  [9903] = "Business Reject Reason: Order Exception Inconsistent With Message Definition (9903)",
  [20065] = "Business Reject Reason: Platform Closed (20065)",
  [20101] = "Business Reject Reason: Application Identifier Error (20101)",
  [20102] = "Business Reject Reason: Security Does Not Support The Business (20102)",
  [20103] = "Business Reject Reason: Unpacking Failed (20103)",
  [20104] = "Business Reject Reason: Platform Not Open (20104)",
  [20105] = "Business Reject Reason: Gateway Has No Permission For Trading Unit (20105)",
  [20106] = "Business Reject Reason: Field Value Error (20106)",
  [20107] = "Business Reject Reason: Message Type Not Supported (20107)",
  [20108] = "Business Reject Reason: Order Platform Error (20108)",
  [20112] = "Business Reject Reason: Gateway Has No Order Submission Permission (20112)",
  [29999] = "Business Reject Reason: Other Error 29999 (29999)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_reason.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_reason.labels[value] or "Business Reject Reason: Unknown("..value..")"
end

-- Dissect: Business Reject Reason
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.business_reject_reason, range, value, display)

  return offset + length, value
end

-- Business Reject Ref Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_ref_id = {}

-- Size: Business Reject Ref Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_ref_id.size = 10

-- Display: Business Reject Ref Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_ref_id.display = function(value)
  return "Business Reject Ref Id: "..value
end

-- Dissect: Business Reject Ref Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_ref_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.business_reject_ref_id, range, value, display)

  return offset + length, value
end

-- Business Reject Text
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_text = {}

-- Size: Business Reject Text
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_text.size = 50

-- Display: Business Reject Text
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_text.display = function(value)
  return "Business Reject Text: "..value
end

-- Dissect: Business Reject Text
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_text.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.business_reject_text, range, value, display)

  return offset + length, value
end

-- Cash Margin
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin = {}

-- Size: Cash Margin
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.size = 1

-- Display: Cash Margin
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.labels = {
  ["1"] = "Cash Margin: Cash (1)",
  ["2"] = "Cash Margin: Open (2)",
  ["3"] = "Cash Margin: Close (3)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.labels[value] or "Cash Margin: Unknown("..value..")"
end

-- Dissect: Cash Margin
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.size
  local range = buffer(offset, length)
  local value = range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.cash_margin, range, value, display)

  return offset + length, value
end

-- Checksum
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.checksum = {}

-- Size: Checksum
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.checksum.size = 4

-- Display: Checksum
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.checksum.display = function(value)
  return "Checksum: "..value
end

-- Dissect: Checksum
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.checksum.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.checksum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.checksum, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id = {}

-- Size: Cl Ord Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size = 10

-- Display: Cl Ord Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.display = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Clearing Firm
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm = {}

-- Size: Clearing Firm
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size = 2

-- Display: Clearing Firm
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.display = function(value)
  return "Clearing Firm: "..value
end

-- Dissect: Clearing Firm
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.clearing_firm, range, value, display)

  return offset + length, value
end

-- Confirm Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id = {}

-- Size: Confirm Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.size = 4

-- Display: Confirm Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.display = function(value)
  return "Confirm Id: "..value
end

-- Dissect: Confirm Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.confirm_id, range, value, display)

  return offset + length, value
end

-- Counterparty Account Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id = {}

-- Size: Counterparty Account Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.size = 10

-- Display: Counterparty Account Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.display = function(value)
  return "Counterparty Account Id: "..value
end

-- Dissect: Counterparty Account Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.counterparty_account_id, range, value, display)

  return offset + length, value
end

-- Counterparty Branch Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id = {}

-- Size: Counterparty Branch Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.size = 2

-- Display: Counterparty Branch Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.display = function(value)
  return "Counterparty Branch Id: "..value
end

-- Dissect: Counterparty Branch Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.counterparty_branch_id, range, value, display)

  return offset + length, value
end

-- Counterparty Member Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_member_id = {}

-- Size: Counterparty Member Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_member_id.size = 6

-- Display: Counterparty Member Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_member_id.display = function(value)
  return "Counterparty Member Id: "..value
end

-- Dissect: Counterparty Member Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_member_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_member_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_member_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.counterparty_member_id, range, value, display)

  return offset + length, value
end

-- Counterparty Pbuid
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid = {}

-- Size: Counterparty Pbuid
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.size = 6

-- Display: Counterparty Pbuid
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.display = function(value)
  return "Counterparty Pbuid: "..value
end

-- Dissect: Counterparty Pbuid
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.counterparty_pbuid, range, value, display)

  return offset + length, value
end

-- Counterparty Trader Code
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_trader_code = {}

-- Size: Counterparty Trader Code
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_trader_code.size = 5

-- Display: Counterparty Trader Code
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_trader_code.display = function(value)
  return "Counterparty Trader Code: "..value
end

-- Dissect: Counterparty Trader Code
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_trader_code.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_trader_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_trader_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.counterparty_trader_code, range, value, display)

  return offset + length, value
end

-- Cum Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty = {}

-- Size: Cum Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.size = 8

-- Display: Cum Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Translate: Cum Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Cum Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.translate(raw)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Cxl Rej Reason
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cxl_rej_reason = {}

-- Size: Cxl Rej Reason
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cxl_rej_reason.size = 2

-- Display: Cxl Rej Reason
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cxl_rej_reason.labels = {
  [1] = "Cxl Rej Reason: Invalid Account (1)",
  [101] = "Cxl Rej Reason: Own Securities Account Format Invalid (101)",
  [102] = "Cxl Rej Reason: Counterparty Securities Account Format Invalid (102)",
  [3] = "Cxl Rej Reason: Trading Unit Short Sale (3)",
  [4] = "Cxl Rej Reason: Shareholder Short Sale (4)",
  [6] = "Cxl Rej Reason: Price Too High (6)",
  [601] = "Cxl Rej Reason: Price Above Upper Limit Regular Session (601)",
  [602] = "Cxl Rej Reason: Price Above Upper Limit After Hours Session (602)",
  [603] = "Cxl Rej Reason: Price Above Ceiling In Call Matching (603)",
  [605] = "Cxl Rej Reason: Price Above Ceiling In Continuous Matching (605)",
  [7] = "Cxl Rej Reason: Price Too Low (7)",
  [701] = "Cxl Rej Reason: Price Below Lower Limit Regular Session (701)",
  [702] = "Cxl Rej Reason: Price Below Lower Limit After Hours Session (702)",
  [705] = "Cxl Rej Reason: Price Below Floor In Call Matching (705)",
  [707] = "Cxl Rej Reason: Price Below Floor In Continuous Matching (707)",
  [8] = "Cxl Rej Reason: Price Error (8)",
  [801] = "Cxl Rej Reason: Price Not A Multiple Of The Tick Size (801)",
  [804] = "Cxl Rej Reason: Price Value Invalid Must Be Zero On A Cancel And Nonzero Otherwise (804)",
  [807] = "Cxl Rej Reason: Stop Price Value Invalid (807)",
  [9] = "Cxl Rej Reason: Quantity Invalid (9)",
  [901] = "Cxl Rej Reason: Quantity Above Maximum Regular Session (901)",
  [902] = "Cxl Rej Reason: Quantity Below Minimum Regular Session (902)",
  [906] = "Cxl Rej Reason: Quantity Not A Multiple Of The Buy Or Sell Unit (906)",
  [909] = "Cxl Rej Reason: Quantity Value Invalid Must Be Zero On A Cancel And Nonzero Otherwise (909)",
  [912] = "Cxl Rej Reason: Minimum Trade Quantity Value Invalid (912)",
  [12] = "Cxl Rej Reason: Account Invalid (12)",
  [1201] = "Cxl Rej Reason: Securities Account Does Not Exist (1201)",
  [1202] = "Cxl Rej Reason: Securities Account Deactivated (1202)",
  [13] = "Cxl Rej Reason: Account Restricted (13)",
  [1301] = "Cxl Rej Reason: Account Type Restricted For Trading Unit (1301)",
  [1302] = "Cxl Rej Reason: Account Type Restricted For Trading Unit Type (1302)",
  [1306] = "Cxl Rej Reason: Securities Account Restricted For Trading Unit (1306)",
  [1307] = "Cxl Rej Reason: Securities Account Restricted For Trading Unit Type (1307)",
  [1310] = "Cxl Rej Reason: Securities Account Not Allowed This Business (1310)",
  [1315] = "Cxl Rej Reason: Credit Account May Not Buy Non Collateral Securities (1315)",
  [1316] = "Cxl Rej Reason: Credit Account Margin Trading Allows Limit Orders Only (1316)",
  [1909] = "Cxl Rej Reason: Negotiated Trade Pairing Failed (1909)",
  [22] = "Cxl Rej Reason: Agreement Number Error (22)",
  [2201] = "Cxl Rej Reason: Agreement Number Duplicate (2201)",
  [2203] = "Cxl Rej Reason: Agreement Number Format Invalid (2203)",
  [23] = "Cxl Rej Reason: Invalid Trading Unit (23)",
  [2301] = "Cxl Rej Reason: Trading Unit Does Not Exist (2301)",
  [2302] = "Cxl Rej Reason: Trading Unit Deactivated (2302)",
  [2317] = "Cxl Rej Reason: Trading Unit Closed (2317)",
  [2320] = "Cxl Rej Reason: Trading Unit Value Invalid (2320)",
  [2323] = "Cxl Rej Reason: Forced Liquidation From A Non Margin Trading Unit (2323)",
  [2324] = "Cxl Rej Reason: Margin Trading From A Non Margin Trading Unit (2324)",
  [2326] = "Cxl Rej Reason: Own Trading Unit Value Invalid (2326)",
  [2327] = "Cxl Rej Reason: Submitting Trading Unit Value Invalid (2327)",
  [2328] = "Cxl Rej Reason: Counterparty Trading Unit Value Invalid (2328)",
  [26] = "Cxl Rej Reason: Trading Unit Restricted (26)",
  [2601] = "Cxl Rej Reason: Trading Unit Restricted For Security Code (2601)",
  [2602] = "Cxl Rej Reason: Trading Unit Restricted For Security Type (2602)",
  [2605] = "Cxl Rej Reason: Trading Unit Not Allowed This Business Type (2605)",
  [2609] = "Cxl Rej Reason: Custodian Mode Qfii Account Does Not Match Trading Unit (2609)",
  [44] = "Cxl Rej Reason: Invalid Business (44)",
  [4402] = "Cxl Rej Reason: Margin Trading Business Not Supported (4402)",
  [4404] = "Cxl Rej Reason: Credit Flag Value Error (4404)",
  [45] = "Cxl Rej Reason: Odd Lot Sale Prohibited (45)",
  [4501] = "Cxl Rej Reason: Odd Lot Remainder Must Be Sold At Once (4501)",
  [51] = "Cxl Rej Reason: Business Type Error (51)",
  [5101] = "Cxl Rej Reason: Security Type Not Allowed This Business Type (5101)",
  [5102] = "Cxl Rej Reason: Security Code Not Allowed This Business Type (5102)",
  [5105] = "Cxl Rej Reason: Security Code Has No Security Type (5105)",
  [5107] = "Cxl Rej Reason: Business Type Incorrect (5107)",
  [5108] = "Cxl Rej Reason: Side Value Error (5108)",
  [5109] = "Cxl Rej Reason: Order Type Value Error (5109)",
  [5110] = "Cxl Rej Reason: Trade Report Transaction Type Value Error (5110)",
  [5111] = "Cxl Rej Reason: Trade Report Business Type Value Error (5111)",
  [5112] = "Cxl Rej Reason: Trade Report Business Sub Type Value Error (5112)",
  [5113] = "Cxl Rej Reason: Trade Report Type Value Error (5113)",
  [5114] = "Cxl Rej Reason: Trade Report Mode Value Error (5114)",
  [5115] = "Cxl Rej Reason: Message Type Value Error (5115)",
  [52] = "Cxl Rej Reason: Business Prohibited (52)",
  [5201] = "Cxl Rej Reason: Security Suspended (5201)",
  [5202] = "Cxl Rej Reason: No Cancel During Call Matching (5202)",
  [5203] = "Cxl Rej Reason: No Submission While Closed (5203)",
  [5204] = "Cxl Rej Reason: Business Type Not Allowed For Security In This Period (5204)",
  [53] = "Cxl Rej Reason: No Order To Cancel (53)",
  [5301] = "Cxl Rej Reason: No Regular Order To Cancel (5301)",
  [5303] = "Cxl Rej Reason: Cancel Security Code Differs From Original Order (5303)",
  [5304] = "Cxl Rej Reason: Cancel Securities Account Differs From Original Order (5304)",
  [5305] = "Cxl Rej Reason: Original Order Of Cancel Is Not A Buy Or Sell Order (5305)",
  [59] = "Cxl Rej Reason: Invalid Dealer (59)",
  [5901] = "Cxl Rej Reason: Own Dealer Code Not Enabled (5901)",
  [5902] = "Cxl Rej Reason: Counterparty Dealer Code Not Enabled (5902)",
  [5903] = "Cxl Rej Reason: Own Dealer Code Value Invalid (5903)",
  [5904] = "Cxl Rej Reason: Counterparty Dealer Code Value Invalid (5904)",
  [60] = "Cxl Rej Reason: Invalid Trader (60)",
  [6001] = "Cxl Rej Reason: Own Trader Code Not Enabled (6001)",
  [6002] = "Cxl Rej Reason: Counterparty Trader Code Not Enabled (6002)",
  [6003] = "Cxl Rej Reason: Own Trader Code Value Invalid (6003)",
  [6004] = "Cxl Rej Reason: Counterparty Trader Code Value Invalid (6004)",
  [61] = "Cxl Rej Reason: Application Identifier Value Invalid (61)",
  [62] = "Cxl Rej Reason: Own Branch Identification Code Value Invalid (62)",
  [6201] = "Cxl Rej Reason: Counterparty Branch Identification Code Value Invalid (6201)",
  [63] = "Cxl Rej Reason: Settlement Method Value Invalid (63)",
  [64] = "Cxl Rej Reason: Settlement Period Value Invalid (64)",
  [65] = "Cxl Rej Reason: Time In Force Type Value Invalid (65)",
  [66] = "Cxl Rej Reason: Security Code Source Value Invalid (66)",
  [67] = "Cxl Rej Reason: Maximum Price Levels Value Invalid (67)",
  [68] = "Cxl Rej Reason: Clearing Firm Code Value Invalid (68)",
  [69] = "Cxl Rej Reason: Order Restrictions Value Invalid (69)",
  [70] = "Cxl Rej Reason: Order Owner Type Value Invalid (70)",
  [71] = "Cxl Rej Reason: Securities Holding Accounts Above Limit (71)",
  [95] = "Cxl Rej Reason: Invalid Code (95)",
  [9501] = "Cxl Rej Reason: Security Code Does Not Exist (9501)",
  [9502] = "Cxl Rej Reason: Security Code Value Invalid (9502)",
  [9503] = "Cxl Rej Reason: Security Code Format Invalid (9503)",
  [96] = "Cxl Rej Reason: Order Time Format Invalid (96)",
  [98] = "Cxl Rej Reason: Order Number Invalid (98)",
  [9801] = "Cxl Rej Reason: Client Order Or Trade Report Number Format Invalid (9801)",
  [9802] = "Cxl Rej Reason: Original Client Order Or Trade Report Number Format Invalid (9802)",
  [9803] = "Cxl Rej Reason: Client Order Or Trade Report Number Duplicate (9803)",
  [99] = "Cxl Rej Reason: Other Error (99)",
  [9902] = "Cxl Rej Reason: Order Validation Method Does Not Exist (9902)",
  [9903] = "Cxl Rej Reason: Order Exception Inconsistent With Message Definition (9903)",
  [20065] = "Cxl Rej Reason: Platform Closed (20065)",
  [20101] = "Cxl Rej Reason: Application Identifier Error (20101)",
  [20102] = "Cxl Rej Reason: Security Does Not Support The Business (20102)",
  [20103] = "Cxl Rej Reason: Unpacking Failed (20103)",
  [20104] = "Cxl Rej Reason: Platform Not Open (20104)",
  [20105] = "Cxl Rej Reason: Gateway Has No Permission For Trading Unit (20105)",
  [20106] = "Cxl Rej Reason: Field Value Error (20106)",
  [20107] = "Cxl Rej Reason: Message Type Not Supported (20107)",
  [20108] = "Cxl Rej Reason: Order Platform Error (20108)",
  [20112] = "Cxl Rej Reason: Gateway Has No Order Submission Permission (20112)",
  [29999] = "Cxl Rej Reason: Other Error 29999 (29999)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cxl_rej_reason.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cxl_rej_reason.labels[value] or "Cxl Rej Reason: Unknown("..value..")"
end

-- Dissect: Cxl Rej Reason
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cxl_rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cxl_rej_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cxl_rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.cxl_rej_reason, range, value, display)

  return offset + length, value
end

-- Default Appl Ver Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.default_appl_ver_id = {}

-- Size: Default Appl Ver Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.default_appl_ver_id.size = 32

-- Display: Default Appl Ver Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.default_appl_ver_id.display = function(value)
  return "Default Appl Ver Id: "..value
end

-- Dissect: Default Appl Ver Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.default_appl_ver_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.default_appl_ver_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.default_appl_ver_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.default_appl_ver_id, range, value, display)

  return offset + length, value
end

-- Exec Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id = {}

-- Size: Exec Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size = 16

-- Display: Exec Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Exec Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type = {}

-- Size: Exec Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.size = 1

-- Display: Exec Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.labels = {
  ["0"] = "Exec Type: New (0)",
  ["4"] = "Exec Type: Cancelled (4)",
  ["8"] = "Exec Type: Reject (8)",
  ["F"] = "Exec Type: Trade (F)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.labels[value] or "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.size
  local range = buffer(offset, length)
  local value = range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Expiration Days
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_days = {}

-- Size: Expiration Days
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_days.size = 2

-- Display: Expiration Days
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_days.display = function(value)
  return "Expiration Days: "..value
end

-- Dissect: Expiration Days
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_days.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_days.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.expiration_days, range, value, display)

  return offset + length, value
end

-- Expiration Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_type = {}

-- Size: Expiration Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_type.size = 1

-- Display: Expiration Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_type.labels = {
  [1] = "Expiration Type: Fixed Term (1)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_type.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_type.labels[value] or "Expiration Type: Unknown("..value..")"
end

-- Dissect: Expiration Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.expiration_type, range, value, display)

  return offset + length, value
end

-- Heart Bt Int
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.heart_bt_int = {}

-- Size: Heart Bt Int
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.heart_bt_int.size = 4

-- Display: Heart Bt Int
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.heart_bt_int.display = function(value)
  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.heart_bt_int.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.heart_bt_int.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.heart_bt_int.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- Last Px
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px = {}

-- Size: Last Px
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.size = 8

-- Display: Last Px
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Last Px
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.translate(raw)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty = {}

-- Size: Last Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.size = 8

-- Display: Last Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Translate: Last Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Last Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.translate(raw)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Leaves Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty = {}

-- Size: Leaves Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.size = 8

-- Display: Leaves Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Translate: Leaves Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Leaves Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.translate(raw)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Market Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_id = {}

-- Size: Market Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_id.size = 8

-- Display: Market Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_id.display = function(value)
  return "Market Id: "..value
end

-- Dissect: Market Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Segment Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_segment_id = {}

-- Size: Market Segment Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_segment_id.size = 8

-- Display: Market Segment Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_segment_id.display = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_segment_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Maturity Date
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.maturity_date = {}

-- Size: Maturity Date
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.maturity_date.size = 4

-- Display: Maturity Date
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.maturity_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Maturity Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Maturity Date
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.maturity_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Max Price Levels
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.max_price_levels = {}

-- Size: Max Price Levels
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.max_price_levels.size = 2

-- Display: Max Price Levels
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.max_price_levels.display = function(value)
  return "Max Price Levels: "..value
end

-- Dissect: Max Price Levels
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.max_price_levels.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.max_price_levels.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.max_price_levels.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.max_price_levels, range, value, display)

  return offset + length, value
end

-- Member Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.member_id = {}

-- Size: Member Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.member_id.size = 6

-- Display: Member Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.member_id.display = function(value)
  return "Member Id: "..value
end

-- Dissect: Member Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.member_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.member_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.member_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.member_id, range, value, display)

  return offset + length, value
end

-- Memo
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.memo = {}

-- Size: Memo
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.memo.size = 120

-- Display: Memo
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.memo.display = function(value)
  return "Memo: "..value
end

-- Dissect: Memo
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.memo.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.memo.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.memo.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.memo, range, value, display)

  return offset + length, value
end

-- Min Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.min_qty = {}

-- Size: Min Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.min_qty.size = 8

-- Display: Min Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Translate: Min Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.min_qty.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Min Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.min_qty.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.min_qty.translate(raw)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Msg Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.msg_type = {}

-- Size: Msg Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.msg_type.size = 4

-- Display: Msg Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.msg_type.labels = {
  [1] = "Msg Type: Logon Message (1)",
  [2] = "Msg Type: Logout Message (2)",
  [3] = "Msg Type: Heartbeat Message (3)",
  [4] = "Msg Type: Business Reject Message (4)",
  [5] = "Msg Type: Report Synchronization Message (5)",
  [6] = "Msg Type: Platform State Info Message (6)",
  [7] = "Msg Type: Report Finished Message (7)",
  [9] = "Msg Type: Platform Info Message (9)",
  [10] = "Msg Type: Trading Session Status Message (10)",
  [101010] = "Msg Type: Bond Spot Matching New Order Message (101010)",
  [101040] = "Msg Type: Centralized Auction New Order Message (101040)",
  [101041] = "Msg Type: Conversion New Order Message (101041)",
  [101042] = "Msg Type: Inquiry New Order Message (101042)",
  [101043] = "Msg Type: Subscription New Order Message (101043)",
  [101044] = "Msg Type: Put Back New Order Message (101044)",
  [101045] = "Msg Type: Tender Offer Acceptance New Order Message (101045)",
  [101050] = "Msg Type: Refinancing Securities Lending Non Agreed New Order Message (101050)",
  [102000] = "Msg Type: Order Cancel Request Message (102000)",
  [201000] = "Msg Type: Cancel Reject Message (201000)",
  [202010] = "Msg Type: Bond Spot Matching Execution Report Message (202010)",
  [202040] = "Msg Type: Centralized Auction Execution Report Message (202040)",
  [202041] = "Msg Type: Conversion Execution Report Message (202041)",
  [202042] = "Msg Type: Inquiry Execution Report Message (202042)",
  [202043] = "Msg Type: Subscription Execution Report Message (202043)",
  [202044] = "Msg Type: Put Back Execution Report Message (202044)",
  [202045] = "Msg Type: Tender Offer Acceptance Execution Report Message (202045)",
  [202050] = "Msg Type: Refinancing Securities Lending Non Agreed Execution Report Message (202050)",
  [203010] = "Msg Type: Bond Spot Matching Trade Execution Report Message (203010)",
  [203040] = "Msg Type: Centralized Auction Trade Execution Report Message (203040)",
  [203050] = "Msg Type: Refinancing Securities Lending Non Agreed Trade Execution Report Message (203050)",
  [103031] = "Msg Type: Bond Spot Negotiated Trade Capture Report Message (103031)",
  [103051] = "Msg Type: Refinancing Securities Lending Agreed Trade Capture Report Message (103051)",
  [103060] = "Msg Type: Mutual Trade Confirmation Trade Capture Report Message (103060)",
  [103061] = "Msg Type: Market Making Mutual Trade Confirmation Trade Capture Report Message (103061)",
  [103062] = "Msg Type: After Hours Block Trade Trade Capture Report Message (103062)",
  [204031] = "Msg Type: Bond Spot Negotiated Trade Capture Report Ack Message (204031)",
  [204051] = "Msg Type: Refinancing Securities Lending Agreed Trade Capture Report Ack Message (204051)",
  [204060] = "Msg Type: Mutual Trade Confirmation Trade Capture Report Ack Message (204060)",
  [204061] = "Msg Type: Market Making Mutual Trade Confirmation Trade Capture Report Ack Message (204061)",
  [204062] = "Msg Type: After Hours Block Trade Trade Capture Report Ack Message (204062)",
  [205031] = "Msg Type: Bond Spot Negotiated Trade Capture Report Confirmation Message (205031)",
  [205051] = "Msg Type: Refinancing Securities Lending Agreed Trade Capture Report Confirmation Message (205051)",
  [205060] = "Msg Type: Mutual Trade Confirmation Trade Capture Report Confirmation Message (205060)",
  [205061] = "Msg Type: Market Making Mutual Trade Confirmation Trade Capture Report Confirmation Message (205061)",
  [205062] = "Msg Type: After Hours Block Trade Trade Capture Report Confirmation Message (205062)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.msg_type.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.msg_type.labels[value] or "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.msg_type, range, value, display)

  return offset + length, value
end

-- No Partitions
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.no_partitions = {}

-- Size: No Partitions
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.no_partitions.size = 4

-- Display: No Partitions
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.no_partitions.display = function(value)
  return "No Partitions: "..value
end

-- Dissect: No Partitions
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.no_partitions.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.no_partitions.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.no_partitions.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.no_partitions, range, value, display)

  return offset + length, value
end

-- Ord Rej Reason
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason = {}

-- Size: Ord Rej Reason
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.size = 2

-- Display: Ord Rej Reason
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.labels = {
  [1] = "Ord Rej Reason: Invalid Account (1)",
  [101] = "Ord Rej Reason: Own Securities Account Format Invalid (101)",
  [102] = "Ord Rej Reason: Counterparty Securities Account Format Invalid (102)",
  [3] = "Ord Rej Reason: Trading Unit Short Sale (3)",
  [4] = "Ord Rej Reason: Shareholder Short Sale (4)",
  [6] = "Ord Rej Reason: Price Too High (6)",
  [601] = "Ord Rej Reason: Price Above Upper Limit Regular Session (601)",
  [602] = "Ord Rej Reason: Price Above Upper Limit After Hours Session (602)",
  [603] = "Ord Rej Reason: Price Above Ceiling In Call Matching (603)",
  [605] = "Ord Rej Reason: Price Above Ceiling In Continuous Matching (605)",
  [7] = "Ord Rej Reason: Price Too Low (7)",
  [701] = "Ord Rej Reason: Price Below Lower Limit Regular Session (701)",
  [702] = "Ord Rej Reason: Price Below Lower Limit After Hours Session (702)",
  [705] = "Ord Rej Reason: Price Below Floor In Call Matching (705)",
  [707] = "Ord Rej Reason: Price Below Floor In Continuous Matching (707)",
  [8] = "Ord Rej Reason: Price Error (8)",
  [801] = "Ord Rej Reason: Price Not A Multiple Of The Tick Size (801)",
  [804] = "Ord Rej Reason: Price Value Invalid Must Be Zero On A Cancel And Nonzero Otherwise (804)",
  [807] = "Ord Rej Reason: Stop Price Value Invalid (807)",
  [9] = "Ord Rej Reason: Quantity Invalid (9)",
  [901] = "Ord Rej Reason: Quantity Above Maximum Regular Session (901)",
  [902] = "Ord Rej Reason: Quantity Below Minimum Regular Session (902)",
  [906] = "Ord Rej Reason: Quantity Not A Multiple Of The Buy Or Sell Unit (906)",
  [909] = "Ord Rej Reason: Quantity Value Invalid Must Be Zero On A Cancel And Nonzero Otherwise (909)",
  [912] = "Ord Rej Reason: Minimum Trade Quantity Value Invalid (912)",
  [12] = "Ord Rej Reason: Account Invalid (12)",
  [1201] = "Ord Rej Reason: Securities Account Does Not Exist (1201)",
  [1202] = "Ord Rej Reason: Securities Account Deactivated (1202)",
  [13] = "Ord Rej Reason: Account Restricted (13)",
  [1301] = "Ord Rej Reason: Account Type Restricted For Trading Unit (1301)",
  [1302] = "Ord Rej Reason: Account Type Restricted For Trading Unit Type (1302)",
  [1306] = "Ord Rej Reason: Securities Account Restricted For Trading Unit (1306)",
  [1307] = "Ord Rej Reason: Securities Account Restricted For Trading Unit Type (1307)",
  [1310] = "Ord Rej Reason: Securities Account Not Allowed This Business (1310)",
  [1315] = "Ord Rej Reason: Credit Account May Not Buy Non Collateral Securities (1315)",
  [1316] = "Ord Rej Reason: Credit Account Margin Trading Allows Limit Orders Only (1316)",
  [1909] = "Ord Rej Reason: Negotiated Trade Pairing Failed (1909)",
  [22] = "Ord Rej Reason: Agreement Number Error (22)",
  [2201] = "Ord Rej Reason: Agreement Number Duplicate (2201)",
  [2203] = "Ord Rej Reason: Agreement Number Format Invalid (2203)",
  [23] = "Ord Rej Reason: Invalid Trading Unit (23)",
  [2301] = "Ord Rej Reason: Trading Unit Does Not Exist (2301)",
  [2302] = "Ord Rej Reason: Trading Unit Deactivated (2302)",
  [2317] = "Ord Rej Reason: Trading Unit Closed (2317)",
  [2320] = "Ord Rej Reason: Trading Unit Value Invalid (2320)",
  [2323] = "Ord Rej Reason: Forced Liquidation From A Non Margin Trading Unit (2323)",
  [2324] = "Ord Rej Reason: Margin Trading From A Non Margin Trading Unit (2324)",
  [2326] = "Ord Rej Reason: Own Trading Unit Value Invalid (2326)",
  [2327] = "Ord Rej Reason: Submitting Trading Unit Value Invalid (2327)",
  [2328] = "Ord Rej Reason: Counterparty Trading Unit Value Invalid (2328)",
  [26] = "Ord Rej Reason: Trading Unit Restricted (26)",
  [2601] = "Ord Rej Reason: Trading Unit Restricted For Security Code (2601)",
  [2602] = "Ord Rej Reason: Trading Unit Restricted For Security Type (2602)",
  [2605] = "Ord Rej Reason: Trading Unit Not Allowed This Business Type (2605)",
  [2609] = "Ord Rej Reason: Custodian Mode Qfii Account Does Not Match Trading Unit (2609)",
  [44] = "Ord Rej Reason: Invalid Business (44)",
  [4402] = "Ord Rej Reason: Margin Trading Business Not Supported (4402)",
  [4404] = "Ord Rej Reason: Credit Flag Value Error (4404)",
  [45] = "Ord Rej Reason: Odd Lot Sale Prohibited (45)",
  [4501] = "Ord Rej Reason: Odd Lot Remainder Must Be Sold At Once (4501)",
  [51] = "Ord Rej Reason: Business Type Error (51)",
  [5101] = "Ord Rej Reason: Security Type Not Allowed This Business Type (5101)",
  [5102] = "Ord Rej Reason: Security Code Not Allowed This Business Type (5102)",
  [5105] = "Ord Rej Reason: Security Code Has No Security Type (5105)",
  [5107] = "Ord Rej Reason: Business Type Incorrect (5107)",
  [5108] = "Ord Rej Reason: Side Value Error (5108)",
  [5109] = "Ord Rej Reason: Order Type Value Error (5109)",
  [5110] = "Ord Rej Reason: Trade Report Transaction Type Value Error (5110)",
  [5111] = "Ord Rej Reason: Trade Report Business Type Value Error (5111)",
  [5112] = "Ord Rej Reason: Trade Report Business Sub Type Value Error (5112)",
  [5113] = "Ord Rej Reason: Trade Report Type Value Error (5113)",
  [5114] = "Ord Rej Reason: Trade Report Mode Value Error (5114)",
  [5115] = "Ord Rej Reason: Message Type Value Error (5115)",
  [52] = "Ord Rej Reason: Business Prohibited (52)",
  [5201] = "Ord Rej Reason: Security Suspended (5201)",
  [5202] = "Ord Rej Reason: No Cancel During Call Matching (5202)",
  [5203] = "Ord Rej Reason: No Submission While Closed (5203)",
  [5204] = "Ord Rej Reason: Business Type Not Allowed For Security In This Period (5204)",
  [53] = "Ord Rej Reason: No Order To Cancel (53)",
  [5301] = "Ord Rej Reason: No Regular Order To Cancel (5301)",
  [5303] = "Ord Rej Reason: Cancel Security Code Differs From Original Order (5303)",
  [5304] = "Ord Rej Reason: Cancel Securities Account Differs From Original Order (5304)",
  [5305] = "Ord Rej Reason: Original Order Of Cancel Is Not A Buy Or Sell Order (5305)",
  [59] = "Ord Rej Reason: Invalid Dealer (59)",
  [5901] = "Ord Rej Reason: Own Dealer Code Not Enabled (5901)",
  [5902] = "Ord Rej Reason: Counterparty Dealer Code Not Enabled (5902)",
  [5903] = "Ord Rej Reason: Own Dealer Code Value Invalid (5903)",
  [5904] = "Ord Rej Reason: Counterparty Dealer Code Value Invalid (5904)",
  [60] = "Ord Rej Reason: Invalid Trader (60)",
  [6001] = "Ord Rej Reason: Own Trader Code Not Enabled (6001)",
  [6002] = "Ord Rej Reason: Counterparty Trader Code Not Enabled (6002)",
  [6003] = "Ord Rej Reason: Own Trader Code Value Invalid (6003)",
  [6004] = "Ord Rej Reason: Counterparty Trader Code Value Invalid (6004)",
  [61] = "Ord Rej Reason: Application Identifier Value Invalid (61)",
  [62] = "Ord Rej Reason: Own Branch Identification Code Value Invalid (62)",
  [6201] = "Ord Rej Reason: Counterparty Branch Identification Code Value Invalid (6201)",
  [63] = "Ord Rej Reason: Settlement Method Value Invalid (63)",
  [64] = "Ord Rej Reason: Settlement Period Value Invalid (64)",
  [65] = "Ord Rej Reason: Time In Force Type Value Invalid (65)",
  [66] = "Ord Rej Reason: Security Code Source Value Invalid (66)",
  [67] = "Ord Rej Reason: Maximum Price Levels Value Invalid (67)",
  [68] = "Ord Rej Reason: Clearing Firm Code Value Invalid (68)",
  [69] = "Ord Rej Reason: Order Restrictions Value Invalid (69)",
  [70] = "Ord Rej Reason: Order Owner Type Value Invalid (70)",
  [71] = "Ord Rej Reason: Securities Holding Accounts Above Limit (71)",
  [95] = "Ord Rej Reason: Invalid Code (95)",
  [9501] = "Ord Rej Reason: Security Code Does Not Exist (9501)",
  [9502] = "Ord Rej Reason: Security Code Value Invalid (9502)",
  [9503] = "Ord Rej Reason: Security Code Format Invalid (9503)",
  [96] = "Ord Rej Reason: Order Time Format Invalid (96)",
  [98] = "Ord Rej Reason: Order Number Invalid (98)",
  [9801] = "Ord Rej Reason: Client Order Or Trade Report Number Format Invalid (9801)",
  [9802] = "Ord Rej Reason: Original Client Order Or Trade Report Number Format Invalid (9802)",
  [9803] = "Ord Rej Reason: Client Order Or Trade Report Number Duplicate (9803)",
  [99] = "Ord Rej Reason: Other Error (99)",
  [9902] = "Ord Rej Reason: Order Validation Method Does Not Exist (9902)",
  [9903] = "Ord Rej Reason: Order Exception Inconsistent With Message Definition (9903)",
  [20065] = "Ord Rej Reason: Platform Closed (20065)",
  [20101] = "Ord Rej Reason: Application Identifier Error (20101)",
  [20102] = "Ord Rej Reason: Security Does Not Support The Business (20102)",
  [20103] = "Ord Rej Reason: Unpacking Failed (20103)",
  [20104] = "Ord Rej Reason: Platform Not Open (20104)",
  [20105] = "Ord Rej Reason: Gateway Has No Permission For Trading Unit (20105)",
  [20106] = "Ord Rej Reason: Field Value Error (20106)",
  [20107] = "Ord Rej Reason: Message Type Not Supported (20107)",
  [20108] = "Ord Rej Reason: Order Platform Error (20108)",
  [20112] = "Ord Rej Reason: Gateway Has No Order Submission Permission (20112)",
  [29999] = "Ord Rej Reason: Other Error 29999 (29999)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.labels[value] or "Ord Rej Reason: Unknown("..value..")"
end

-- Dissect: Ord Rej Reason
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.ord_rej_reason, range, value, display)

  return offset + length, value
end

-- Ord Status
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status = {}

-- Size: Ord Status
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.size = 1

-- Display: Ord Status
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.labels = {
  ["0"] = "Ord Status: New (0)",
  ["1"] = "Ord Status: Partially Filled (1)",
  ["2"] = "Ord Status: Filled (2)",
  ["4"] = "Ord Status: Cancelled (4)",
  ["8"] = "Ord Status: Reject (8)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.labels[value] or "Ord Status: Unknown("..value..")"
end

-- Dissect: Ord Status
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.size
  local range = buffer(offset, length)
  local value = range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Ord Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type = {}

-- Size: Ord Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.size = 1

-- Display: Ord Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.labels = {
  ["1"] = "Ord Type: Market (1)",
  ["2"] = "Ord Type: Limit (2)",
  ["U"] = "Ord Type: Best Own Side (U)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.labels[value] or "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.size
  local range = buffer(offset, length)
  local value = range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id = {}

-- Size: Order Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.size = 16

-- Display: Order Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty = {}

-- Size: Order Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.size = 8

-- Display: Order Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Translate: Order Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Order Qty
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.translate(raw)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Restrictions
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions = {}

-- Size: Order Restrictions
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.size = 4

-- Display: Order Restrictions
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.display = function(value)
  return "Order Restrictions: "..value
end

-- Dissect: Order Restrictions
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.order_restrictions, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.size = 10

-- Display: Orig Cl Ord Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.display = function(value)
  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Owner Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type = {}

-- Size: Owner Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size = 2

-- Display: Owner Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.labels = {
  [1] = "Owner Type: Individual Investor (1)",
  [101] = "Owner Type: Exchange (101)",
  [102] = "Owner Type: Member (102)",
  [103] = "Owner Type: Institutional Investor (103)",
  [104] = "Owner Type: Proprietary Trading (104)",
  [105] = "Owner Type: Liquidity Provider (105)",
  [106] = "Owner Type: Clearing Firm (106)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.labels[value] or "Owner Type: Unknown("..value..")"
end

-- Dissect: Owner Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.owner_type, range, value, display)

  return offset + length, value
end

-- Partition No
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no = {}

-- Size: Partition No
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size = 4

-- Display: Partition No
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.display = function(value)
  return "Partition No: "..value
end

-- Dissect: Partition No
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.partition_no, range, value, display)

  return offset + length, value
end

-- Password
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.password = {}

-- Size: Password
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.password.size = 16

-- Display: Password
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.password.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.password, range, value, display)

  return offset + length, value
end

-- Pbuid
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid = {}

-- Size: Pbuid
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.size = 6

-- Display: Pbuid
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.display = function(value)
  return "Pbuid: "..value
end

-- Dissect: Pbuid
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.pbuid, range, value, display)

  return offset + length, value
end

-- Platform Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_id = {}

-- Size: Platform Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_id.size = 2

-- Display: Platform Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_id.labels = {
  [2] = "Platform Id: Fixed Income Platform (2)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_id.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_id.labels[value] or "Platform Id: Unknown("..value..")"
end

-- Dissect: Platform Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.platform_id, range, value, display)

  return offset + length, value
end

-- Platform State
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_state = {}

-- Size: Platform State
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_state.size = 2

-- Display: Platform State
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_state.labels = {
  [0] = "Platform State: Pre Open (0)",
  [2] = "Platform State: Open (2)",
  [3] = "Platform State: Halt (3)",
  [4] = "Platform State: Close (4)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_state.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_state.labels[value] or "Platform State: Unknown("..value..")"
end

-- Dissect: Platform State
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_state.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_state.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.platform_state, range, value, display)

  return offset + length, value
end

-- Price
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price = {}

-- Size: Price
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.size = 8

-- Display: Price
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Price
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.translate(raw)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.price, range, value, display)

  return offset + length, value
end

-- Ref Msg Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ref_msg_type = {}

-- Size: Ref Msg Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ref_msg_type.size = 4

-- Display: Ref Msg Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ref_msg_type.display = function(value)
  return "Ref Msg Type: "..value
end

-- Dissect: Ref Msg Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ref_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ref_msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ref_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.ref_msg_type, range, value, display)

  return offset + length, value
end

-- Ref Seq Num
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ref_seq_num = {}

-- Size: Ref Seq Num
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ref_seq_num.size = 8

-- Display: Ref Seq Num
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ref_seq_num.display = function(value)
  return "Ref Seq Num: "..value
end

-- Dissect: Ref Seq Num
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ref_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ref_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ref_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.ref_seq_num, range, value, display)

  return offset + length, value
end

-- Reject Text
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reject_text = {}

-- Size: Reject Text
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reject_text.size = 16

-- Display: Reject Text
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reject_text.display = function(value)
  return "Reject Text: "..value
end

-- Dissect: Reject Text
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reject_text.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reject_text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reject_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.reject_text, range, value, display)

  return offset + length, value
end

-- Report Index
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index = {}

-- Size: Report Index
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size = 8

-- Display: Report Index
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.display = function(value)
  return "Report Index: "..value
end

-- Dissect: Report Index
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.report_index, range, value, display)

  return offset + length, value
end

-- Reporting Pbuid
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid = {}

-- Size: Reporting Pbuid
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size = 6

-- Display: Reporting Pbuid
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.display = function(value)
  return "Reporting Pbuid: "..value
end

-- Dissect: Reporting Pbuid
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.reporting_pbuid, range, value, display)

  return offset + length, value
end

-- Security Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id = {}

-- Size: Security Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size = 8

-- Display: Security Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Id Source
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source = {}

-- Size: Security Id Source
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size = 4

-- Display: Security Id Source
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.labels = {
  ["106"] = "Security Id Source: Beijing Stock Exchange (106)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.labels[value] or "Security Id Source: Unknown("..value..")"
end

-- Dissect: Security Id Source
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.security_id_source, range, value, display)

  return offset + length, value
end

-- Sender Comp Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.sender_comp_id = {}

-- Size: Sender Comp Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.sender_comp_id.size = 20

-- Display: Sender Comp Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.sender_comp_id.display = function(value)
  return "Sender Comp Id: "..value
end

-- Dissect: Sender Comp Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.sender_comp_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.sender_comp_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.sender_comp_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.sender_comp_id, range, value, display)

  return offset + length, value
end

-- Session Status
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.session_status = {}

-- Size: Session Status
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.session_status.size = 4

-- Display: Session Status
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.session_status.labels = {
  [0] = "Session Status: Session Active (0)",
  [1] = "Session Status: Session Password Changed (1)",
  [2] = "Session Status: Session Password Due To Expire (2)",
  [3] = "Session Status: New Session Password Does Not Comply With Policy (3)",
  [4] = "Session Status: Session Logout Complete (4)",
  [5] = "Session Status: Invalid Username Or Password (5)",
  [6] = "Session Status: Account Locked (6)",
  [7] = "Session Status: Logons Are Not Allowed At This Time (7)",
  [8] = "Session Status: Password Expired (8)",
  [9] = "Session Status: Msg Seq Num Received Too Low (9)",
  [10] = "Session Status: Next Expected Msg Seq Num Received Too High (10)",
  [101] = "Session Status: Other (101)",
  [102] = "Session Status: Invalid Message (102)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.session_status.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.session_status.labels[value] or "Session Status: Unknown("..value..")"
end

-- Dissect: Session Status
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.session_status.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.session_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.session_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.session_status, range, value, display)

  return offset + length, value
end

-- Settl Period
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_period = {}

-- Size: Settl Period
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_period.size = 1

-- Display: Settl Period
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_period.labels = {
  ["0"] = "Settl Period: T Plus 0 (0)",
  ["1"] = "Settl Period: T Plus 1 (1)",
  ["2"] = "Settl Period: T Plus 2 (2)",
  ["3"] = "Settl Period: T Plus 3 (3)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_period.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_period.labels[value] or "Settl Period: Unknown("..value..")"
end

-- Dissect: Settl Period
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_period.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_period.size
  local range = buffer(offset, length)
  local value = range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.settl_period, range, value, display)

  return offset + length, value
end

-- Settl Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_type = {}

-- Size: Settl Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_type.size = 1

-- Display: Settl Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_type.labels = {
  ["1"] = "Settl Type: Gross Trade By Trade (1)",
  ["2"] = "Settl Type: Multilateral Net (2)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_type.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_type.labels[value] or "Settl Type: Unknown("..value..")"
end

-- Dissect: Settl Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_type.size
  local range = buffer(offset, length)
  local value = range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.settl_type, range, value, display)

  return offset + length, value
end

-- Share Property
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.share_property = {}

-- Size: Share Property
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.share_property.size = 2

-- Display: Share Property
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.share_property.labels = {
  ["00"] = "Share Property: Unrestricted Tradable Shares (00)",
  ["01"] = "Share Property: Post Ipo Restricted Shares (01)",
  ["05"] = "Share Property: Pre Ipo Restricted Shares (05)",
  ["08"] = "Share Property: Post Ipo Restricted Shares Eligible For Lending (08)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.share_property.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.share_property.labels[value] or "Share Property: Unknown("..value..")"
end

-- Dissect: Share Property
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.share_property.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.share_property.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.share_property.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.share_property, range, value, display)

  return offset + length, value
end

-- Side
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side = {}

-- Size: Side
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size = 1

-- Display: Side
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.labels = {
  ["1"] = "Side: Buy (1)",
  ["2"] = "Side: Sell (2)",
  ["G"] = "Side: Borrow (G)",
  ["F"] = "Side: Lend (F)",
  ["D"] = "Side: Subscribe (D)",
  ["E"] = "Side: Redeem (E)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size
  local range = buffer(offset, length)
  local value = range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.side, range, value, display)

  return offset + length, value
end

-- Stop Px
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.stop_px = {}

-- Size: Stop Px
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.stop_px.size = 8

-- Display: Stop Px
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.stop_px.display = function(value)
  return "Stop Px: "..value
end

-- Translate: Stop Px
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.stop_px.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Stop Px
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.stop_px.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.stop_px.translate(raw)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.stop_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Submitting Pbuid
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid = {}

-- Size: Submitting Pbuid
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size = 6

-- Display: Submitting Pbuid
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.display = function(value)
  return "Submitting Pbuid: "..value
end

-- Dissect: Submitting Pbuid
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.submitting_pbuid, range, value, display)

  return offset + length, value
end

-- Target Comp Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.target_comp_id = {}

-- Size: Target Comp Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.target_comp_id.size = 20

-- Display: Target Comp Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.target_comp_id.display = function(value)
  return "Target Comp Id: "..value
end

-- Dissect: Target Comp Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.target_comp_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.target_comp_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.target_comp_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.target_comp_id, range, value, display)

  return offset + length, value
end

-- Text
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text = {}

-- Size: Text
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text.size = 200

-- Display: Text
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.text, range, value, display)

  return offset + length, value
end

-- Time In Force
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.time_in_force = {}

-- Size: Time In Force
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.time_in_force.size = 1

-- Display: Time In Force
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.time_in_force.labels = {
  ["0"] = "Time In Force: Day (0)",
  ["3"] = "Time In Force: Immediate Or Cancel (3)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.time_in_force.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.time_in_force.labels[value] or "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Trad Ses End Time
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trad_ses_end_time = {}

-- Size: Trad Ses End Time
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trad_ses_end_time.size = 8

-- Dissect: Trad Ses End Time
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trad_ses_end_time.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trad_ses_end_time.size
  local range = buffer(offset, length)
  local packed = range:int64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trad_ses_end_time
  if neeq_neeqsecurities_orderentry_bjsebinary_v1_1.timestamp_format == 3 then field = omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trad_ses_end_time_utc end

  local millis = packed % 1000
  local civil = math.floor(packed / 1000)
  local year = math.floor(civil / 10000000000)
  local month = math.floor(civil / 100000000) % 100
  local day = math.floor(civil / 1000000) % 100
  local hour = math.floor(civil / 10000) % 100
  local minute = math.floor(civil / 100) % 100
  local second = civil % 100

  if month < 1 or month > 12 or day < 1 or day > 31 then
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Trad Ses End Time: " .. tostring(packed))
    return offset + length, packed
  end

  -- Days since the Unix epoch, by civil date arithmetic, in Utc
  local y = year - (month <= 2 and 1 or 0)
  local era = math.floor((y >= 0 and y or y - 399) / 400)
  local yoe = y - era * 400
  local doy = math.floor((153 * (month + (month > 2 and -3 or 9)) + 2) / 5) + day - 1
  local doe = yoe * 365 + math.floor(yoe / 4) - math.floor(yoe / 100) + doy
  local days = era * 146097 + doe - 719468

  local seconds = days * 86400 + hour * 3600 + minute * 60 + second
  local nanos = millis * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, packed
end

-- Trad Ses Start Time
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trad_ses_start_time = {}

-- Size: Trad Ses Start Time
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trad_ses_start_time.size = 8

-- Dissect: Trad Ses Start Time
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trad_ses_start_time.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trad_ses_start_time.size
  local range = buffer(offset, length)
  local packed = range:int64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trad_ses_start_time
  if neeq_neeqsecurities_orderentry_bjsebinary_v1_1.timestamp_format == 3 then field = omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trad_ses_start_time_utc end

  local millis = packed % 1000
  local civil = math.floor(packed / 1000)
  local year = math.floor(civil / 10000000000)
  local month = math.floor(civil / 100000000) % 100
  local day = math.floor(civil / 1000000) % 100
  local hour = math.floor(civil / 10000) % 100
  local minute = math.floor(civil / 100) % 100
  local second = civil % 100

  if month < 1 or month > 12 or day < 1 or day > 31 then
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Trad Ses Start Time: " .. tostring(packed))
    return offset + length, packed
  end

  -- Days since the Unix epoch, by civil date arithmetic, in Utc
  local y = year - (month <= 2 and 1 or 0)
  local era = math.floor((y >= 0 and y or y - 399) / 400)
  local yoe = y - era * 400
  local doy = math.floor((153 * (month + (month > 2 and -3 or 9)) + 2) / 5) + day - 1
  local doe = yoe * 365 + math.floor(yoe / 4) - math.floor(yoe / 100) + doy
  local days = era * 146097 + doe - 719468

  local seconds = days * 86400 + hour * 3600 + minute * 60 + second
  local nanos = millis * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, packed
end

-- Trad Ses Status
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trad_ses_status = {}

-- Size: Trad Ses Status
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trad_ses_status.size = 2

-- Display: Trad Ses Status
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trad_ses_status.display = function(value)
  return "Trad Ses Status: "..value
end

-- Dissect: Trad Ses Status
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trad_ses_status.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trad_ses_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trad_ses_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trad_ses_status, range, value, display)

  return offset + length, value
end

-- Trade Handling Instr
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr = {}

-- Size: Trade Handling Instr
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.size = 1

-- Display: Trade Handling Instr
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.labels = {
  ["0"] = "Trade Handling Instr: Trade Confirm (0)",
  ["1"] = "Trade Handling Instr: Two Party Report (1)",
  ["2"] = "Trade Handling Instr: One Party Report For Matching (2)",
  ["3"] = "Trade Handling Instr: One Party Report For Pass Through (3)",
  ["5"] = "Trade Handling Instr: Two Party Report For Claim (5)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.labels[value] or "Trade Handling Instr: Unknown("..value..")"
end

-- Dissect: Trade Handling Instr
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.size
  local range = buffer(offset, length)
  local value = range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trade_handling_instr, range, value, display)

  return offset + length, value
end

-- Trade Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id = {}

-- Size: Trade Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.size = 16

-- Display: Trade Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Report Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id = {}

-- Size: Trade Report Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.size = 10

-- Display: Trade Report Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.display = function(value)
  return "Trade Report Id: "..value
end

-- Dissect: Trade Report Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.size
  local range = buffer(offset, length)
  local value = range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trade_report_id, range, value, display)

  return offset + length, value
end

-- Trade Report Ref Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id = {}

-- Size: Trade Report Ref Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.size = 10

-- Display: Trade Report Ref Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.display = function(value)
  return "Trade Report Ref Id: "..value
end

-- Dissect: Trade Report Ref Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.size
  local range = buffer(offset, length)
  local value = range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trade_report_ref_id, range, value, display)

  return offset + length, value
end

-- Trade Report Reject Reason
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_reject_reason = {}

-- Size: Trade Report Reject Reason
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_reject_reason.size = 2

-- Display: Trade Report Reject Reason
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_reject_reason.labels = {
  [1] = "Trade Report Reject Reason: Invalid Account (1)",
  [101] = "Trade Report Reject Reason: Own Securities Account Format Invalid (101)",
  [102] = "Trade Report Reject Reason: Counterparty Securities Account Format Invalid (102)",
  [3] = "Trade Report Reject Reason: Trading Unit Short Sale (3)",
  [4] = "Trade Report Reject Reason: Shareholder Short Sale (4)",
  [6] = "Trade Report Reject Reason: Price Too High (6)",
  [601] = "Trade Report Reject Reason: Price Above Upper Limit Regular Session (601)",
  [602] = "Trade Report Reject Reason: Price Above Upper Limit After Hours Session (602)",
  [603] = "Trade Report Reject Reason: Price Above Ceiling In Call Matching (603)",
  [605] = "Trade Report Reject Reason: Price Above Ceiling In Continuous Matching (605)",
  [7] = "Trade Report Reject Reason: Price Too Low (7)",
  [701] = "Trade Report Reject Reason: Price Below Lower Limit Regular Session (701)",
  [702] = "Trade Report Reject Reason: Price Below Lower Limit After Hours Session (702)",
  [705] = "Trade Report Reject Reason: Price Below Floor In Call Matching (705)",
  [707] = "Trade Report Reject Reason: Price Below Floor In Continuous Matching (707)",
  [8] = "Trade Report Reject Reason: Price Error (8)",
  [801] = "Trade Report Reject Reason: Price Not A Multiple Of The Tick Size (801)",
  [804] = "Trade Report Reject Reason: Price Value Invalid Must Be Zero On A Cancel And Nonzero Otherwise (804)",
  [807] = "Trade Report Reject Reason: Stop Price Value Invalid (807)",
  [9] = "Trade Report Reject Reason: Quantity Invalid (9)",
  [901] = "Trade Report Reject Reason: Quantity Above Maximum Regular Session (901)",
  [902] = "Trade Report Reject Reason: Quantity Below Minimum Regular Session (902)",
  [906] = "Trade Report Reject Reason: Quantity Not A Multiple Of The Buy Or Sell Unit (906)",
  [909] = "Trade Report Reject Reason: Quantity Value Invalid Must Be Zero On A Cancel And Nonzero Otherwise (909)",
  [912] = "Trade Report Reject Reason: Minimum Trade Quantity Value Invalid (912)",
  [12] = "Trade Report Reject Reason: Account Invalid (12)",
  [1201] = "Trade Report Reject Reason: Securities Account Does Not Exist (1201)",
  [1202] = "Trade Report Reject Reason: Securities Account Deactivated (1202)",
  [13] = "Trade Report Reject Reason: Account Restricted (13)",
  [1301] = "Trade Report Reject Reason: Account Type Restricted For Trading Unit (1301)",
  [1302] = "Trade Report Reject Reason: Account Type Restricted For Trading Unit Type (1302)",
  [1306] = "Trade Report Reject Reason: Securities Account Restricted For Trading Unit (1306)",
  [1307] = "Trade Report Reject Reason: Securities Account Restricted For Trading Unit Type (1307)",
  [1310] = "Trade Report Reject Reason: Securities Account Not Allowed This Business (1310)",
  [1315] = "Trade Report Reject Reason: Credit Account May Not Buy Non Collateral Securities (1315)",
  [1316] = "Trade Report Reject Reason: Credit Account Margin Trading Allows Limit Orders Only (1316)",
  [1909] = "Trade Report Reject Reason: Negotiated Trade Pairing Failed (1909)",
  [22] = "Trade Report Reject Reason: Agreement Number Error (22)",
  [2201] = "Trade Report Reject Reason: Agreement Number Duplicate (2201)",
  [2203] = "Trade Report Reject Reason: Agreement Number Format Invalid (2203)",
  [23] = "Trade Report Reject Reason: Invalid Trading Unit (23)",
  [2301] = "Trade Report Reject Reason: Trading Unit Does Not Exist (2301)",
  [2302] = "Trade Report Reject Reason: Trading Unit Deactivated (2302)",
  [2317] = "Trade Report Reject Reason: Trading Unit Closed (2317)",
  [2320] = "Trade Report Reject Reason: Trading Unit Value Invalid (2320)",
  [2323] = "Trade Report Reject Reason: Forced Liquidation From A Non Margin Trading Unit (2323)",
  [2324] = "Trade Report Reject Reason: Margin Trading From A Non Margin Trading Unit (2324)",
  [2326] = "Trade Report Reject Reason: Own Trading Unit Value Invalid (2326)",
  [2327] = "Trade Report Reject Reason: Submitting Trading Unit Value Invalid (2327)",
  [2328] = "Trade Report Reject Reason: Counterparty Trading Unit Value Invalid (2328)",
  [26] = "Trade Report Reject Reason: Trading Unit Restricted (26)",
  [2601] = "Trade Report Reject Reason: Trading Unit Restricted For Security Code (2601)",
  [2602] = "Trade Report Reject Reason: Trading Unit Restricted For Security Type (2602)",
  [2605] = "Trade Report Reject Reason: Trading Unit Not Allowed This Business Type (2605)",
  [2609] = "Trade Report Reject Reason: Custodian Mode Qfii Account Does Not Match Trading Unit (2609)",
  [44] = "Trade Report Reject Reason: Invalid Business (44)",
  [4402] = "Trade Report Reject Reason: Margin Trading Business Not Supported (4402)",
  [4404] = "Trade Report Reject Reason: Credit Flag Value Error (4404)",
  [45] = "Trade Report Reject Reason: Odd Lot Sale Prohibited (45)",
  [4501] = "Trade Report Reject Reason: Odd Lot Remainder Must Be Sold At Once (4501)",
  [51] = "Trade Report Reject Reason: Business Type Error (51)",
  [5101] = "Trade Report Reject Reason: Security Type Not Allowed This Business Type (5101)",
  [5102] = "Trade Report Reject Reason: Security Code Not Allowed This Business Type (5102)",
  [5105] = "Trade Report Reject Reason: Security Code Has No Security Type (5105)",
  [5107] = "Trade Report Reject Reason: Business Type Incorrect (5107)",
  [5108] = "Trade Report Reject Reason: Side Value Error (5108)",
  [5109] = "Trade Report Reject Reason: Order Type Value Error (5109)",
  [5110] = "Trade Report Reject Reason: Trade Report Transaction Type Value Error (5110)",
  [5111] = "Trade Report Reject Reason: Trade Report Business Type Value Error (5111)",
  [5112] = "Trade Report Reject Reason: Trade Report Business Sub Type Value Error (5112)",
  [5113] = "Trade Report Reject Reason: Trade Report Type Value Error (5113)",
  [5114] = "Trade Report Reject Reason: Trade Report Mode Value Error (5114)",
  [5115] = "Trade Report Reject Reason: Message Type Value Error (5115)",
  [52] = "Trade Report Reject Reason: Business Prohibited (52)",
  [5201] = "Trade Report Reject Reason: Security Suspended (5201)",
  [5202] = "Trade Report Reject Reason: No Cancel During Call Matching (5202)",
  [5203] = "Trade Report Reject Reason: No Submission While Closed (5203)",
  [5204] = "Trade Report Reject Reason: Business Type Not Allowed For Security In This Period (5204)",
  [53] = "Trade Report Reject Reason: No Order To Cancel (53)",
  [5301] = "Trade Report Reject Reason: No Regular Order To Cancel (5301)",
  [5303] = "Trade Report Reject Reason: Cancel Security Code Differs From Original Order (5303)",
  [5304] = "Trade Report Reject Reason: Cancel Securities Account Differs From Original Order (5304)",
  [5305] = "Trade Report Reject Reason: Original Order Of Cancel Is Not A Buy Or Sell Order (5305)",
  [59] = "Trade Report Reject Reason: Invalid Dealer (59)",
  [5901] = "Trade Report Reject Reason: Own Dealer Code Not Enabled (5901)",
  [5902] = "Trade Report Reject Reason: Counterparty Dealer Code Not Enabled (5902)",
  [5903] = "Trade Report Reject Reason: Own Dealer Code Value Invalid (5903)",
  [5904] = "Trade Report Reject Reason: Counterparty Dealer Code Value Invalid (5904)",
  [60] = "Trade Report Reject Reason: Invalid Trader (60)",
  [6001] = "Trade Report Reject Reason: Own Trader Code Not Enabled (6001)",
  [6002] = "Trade Report Reject Reason: Counterparty Trader Code Not Enabled (6002)",
  [6003] = "Trade Report Reject Reason: Own Trader Code Value Invalid (6003)",
  [6004] = "Trade Report Reject Reason: Counterparty Trader Code Value Invalid (6004)",
  [61] = "Trade Report Reject Reason: Application Identifier Value Invalid (61)",
  [62] = "Trade Report Reject Reason: Own Branch Identification Code Value Invalid (62)",
  [6201] = "Trade Report Reject Reason: Counterparty Branch Identification Code Value Invalid (6201)",
  [63] = "Trade Report Reject Reason: Settlement Method Value Invalid (63)",
  [64] = "Trade Report Reject Reason: Settlement Period Value Invalid (64)",
  [65] = "Trade Report Reject Reason: Time In Force Type Value Invalid (65)",
  [66] = "Trade Report Reject Reason: Security Code Source Value Invalid (66)",
  [67] = "Trade Report Reject Reason: Maximum Price Levels Value Invalid (67)",
  [68] = "Trade Report Reject Reason: Clearing Firm Code Value Invalid (68)",
  [69] = "Trade Report Reject Reason: Order Restrictions Value Invalid (69)",
  [70] = "Trade Report Reject Reason: Order Owner Type Value Invalid (70)",
  [71] = "Trade Report Reject Reason: Securities Holding Accounts Above Limit (71)",
  [95] = "Trade Report Reject Reason: Invalid Code (95)",
  [9501] = "Trade Report Reject Reason: Security Code Does Not Exist (9501)",
  [9502] = "Trade Report Reject Reason: Security Code Value Invalid (9502)",
  [9503] = "Trade Report Reject Reason: Security Code Format Invalid (9503)",
  [96] = "Trade Report Reject Reason: Order Time Format Invalid (96)",
  [98] = "Trade Report Reject Reason: Order Number Invalid (98)",
  [9801] = "Trade Report Reject Reason: Client Order Or Trade Report Number Format Invalid (9801)",
  [9802] = "Trade Report Reject Reason: Original Client Order Or Trade Report Number Format Invalid (9802)",
  [9803] = "Trade Report Reject Reason: Client Order Or Trade Report Number Duplicate (9803)",
  [99] = "Trade Report Reject Reason: Other Error (99)",
  [9902] = "Trade Report Reject Reason: Order Validation Method Does Not Exist (9902)",
  [9903] = "Trade Report Reject Reason: Order Exception Inconsistent With Message Definition (9903)",
  [20065] = "Trade Report Reject Reason: Platform Closed (20065)",
  [20101] = "Trade Report Reject Reason: Application Identifier Error (20101)",
  [20102] = "Trade Report Reject Reason: Security Does Not Support The Business (20102)",
  [20103] = "Trade Report Reject Reason: Unpacking Failed (20103)",
  [20104] = "Trade Report Reject Reason: Platform Not Open (20104)",
  [20105] = "Trade Report Reject Reason: Gateway Has No Permission For Trading Unit (20105)",
  [20106] = "Trade Report Reject Reason: Field Value Error (20106)",
  [20107] = "Trade Report Reject Reason: Message Type Not Supported (20107)",
  [20108] = "Trade Report Reject Reason: Order Platform Error (20108)",
  [20112] = "Trade Report Reject Reason: Gateway Has No Order Submission Permission (20112)",
  [29999] = "Trade Report Reject Reason: Other Error 29999 (29999)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_reject_reason.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_reject_reason.labels[value] or "Trade Report Reject Reason: Unknown("..value..")"
end

-- Dissect: Trade Report Reject Reason
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_reject_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trade_report_reject_reason, range, value, display)

  return offset + length, value
end

-- Trade Report Trans Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type = {}

-- Size: Trade Report Trans Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.size = 1

-- Display: Trade Report Trans Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.labels = {
  [0] = "Trade Report Trans Type: New (0)",
  [1] = "Trade Report Trans Type: Cancel (1)",
  [2] = "Trade Report Trans Type: Replace (2)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.labels[value] or "Trade Report Trans Type: Unknown("..value..")"
end

-- Dissect: Trade Report Trans Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trade_report_trans_type, range, value, display)

  return offset + length, value
end

-- Trade Report Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type = {}

-- Size: Trade Report Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.size = 1

-- Display: Trade Report Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.labels = {
  [0] = "Trade Report Type: Submit (0)",
  [1] = "Trade Report Type: Alleged (1)",
  [2] = "Trade Report Type: Accept (2)",
  [3] = "Trade Report Type: Decline (3)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.labels[value] or "Trade Report Type: Unknown("..value..")"
end

-- Dissect: Trade Report Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trade_report_type, range, value, display)

  return offset + length, value
end

-- Trader Code
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trader_code = {}

-- Size: Trader Code
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trader_code.size = 5

-- Display: Trader Code
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trader_code.display = function(value)
  return "Trader Code: "..value
end

-- Dissect: Trader Code
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trader_code.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trader_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trader_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trader_code, range, value, display)

  return offset + length, value
end

-- Trading Session Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_id = {}

-- Size: Trading Session Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_id.size = 4

-- Display: Trading Session Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_id.display = function(value)
  return "Trading Session Id: "..value
end

-- Dissect: Trading Session Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Trading Session Sub Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_sub_id = {}

-- Size: Trading Session Sub Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_sub_id.size = 4

-- Display: Trading Session Sub Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_sub_id.labels = {
  ["0000"] = "Trading Session Sub Id: Pre Open (0000)",
  ["0100"] = "Trading Session Sub Id: Pre Matching Negotiated Trades Accepted (0100)",
  ["0130"] = "Trading Session Sub Id: Opening Call Matching Cancellable (0130)",
  ["0150"] = "Trading Session Sub Id: Opening Call Matching Not Cancellable (0150)",
  ["0170"] = "Trading Session Sub Id: Matching Paused (0170)",
  ["0200"] = "Trading Session Sub Id: Morning Trading (0200)",
  ["0300"] = "Trading Session Sub Id: Midday Break (0300)",
  ["0400"] = "Trading Session Sub Id: Afternoon Trading (0400)",
  ["0480"] = "Trading Session Sub Id: Closing Continuous Matching (0480)",
  ["0600"] = "Trading Session Sub Id: After Close (0600)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_sub_id.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_sub_id.labels[value] or "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_sub_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Transact Time
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time = {}

-- Size: Transact Time
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size = 8

-- Dissect: Transact Time
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size
  local range = buffer(offset, length)
  local packed = range:int64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.transact_time
  if neeq_neeqsecurities_orderentry_bjsebinary_v1_1.timestamp_format == 3 then field = omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.transact_time_utc end

  local millis = packed % 1000
  local civil = math.floor(packed / 1000)
  local year = math.floor(civil / 10000000000)
  local month = math.floor(civil / 100000000) % 100
  local day = math.floor(civil / 1000000) % 100
  local hour = math.floor(civil / 10000) % 100
  local minute = math.floor(civil / 100) % 100
  local second = civil % 100

  if month < 1 or month > 12 or day < 1 or day > 31 then
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Transact Time: " .. tostring(packed))
    return offset + length, packed
  end

  -- Days since the Unix epoch, by civil date arithmetic, in Utc
  local y = year - (month <= 2 and 1 or 0)
  local era = math.floor((y >= 0 and y or y - 399) / 400)
  local yoe = y - era * 400
  local doy = math.floor((153 * (month + (month > 2 and -3 or 9)) + 2) / 5) + day - 1
  local doe = yoe * 365 + math.floor(yoe / 4) - math.floor(yoe / 100) + doy
  local days = era * 146097 + doe - 719468

  local seconds = days * 86400 + hour * 3600 + minute * 60 + second
  local nanos = millis * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, packed
end

-- Trd Ack Status
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_ack_status = {}

-- Size: Trd Ack Status
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_ack_status.size = 1

-- Display: Trd Ack Status
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_ack_status.labels = {
  [0] = "Trd Ack Status: Accepted (0)",
  [1] = "Trd Ack Status: Rejected (1)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_ack_status.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_ack_status.labels[value] or "Trd Ack Status: Unknown("..value..")"
end

-- Dissect: Trd Ack Status
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_ack_status.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_ack_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_ack_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trd_ack_status, range, value, display)

  return offset + length, value
end

-- Trd Rpt Status
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_rpt_status = {}

-- Size: Trd Rpt Status
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_rpt_status.size = 1

-- Display: Trd Rpt Status
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_rpt_status.labels = {
  [0] = "Trd Rpt Status: Accepted (0)",
  [1] = "Trd Rpt Status: Rejected (1)",
  [2] = "Trd Rpt Status: Cancelled (2)",
  [100] = "Trd Rpt Status: Unmatched (100)",
  [101] = "Trd Rpt Status: Matched (101)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_rpt_status.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_rpt_status.labels[value] or "Trd Rpt Status: Unknown("..value..")"
end

-- Dissect: Trd Rpt Status
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_rpt_status.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_rpt_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_rpt_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trd_rpt_status, range, value, display)

  return offset + length, value
end

-- Trd Sub Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type = {}

-- Size: Trd Sub Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.size = 2

-- Display: Trd Sub Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.labels = {
  [0] = "Trd Sub Type: Unrestricted Share Transfer Or Not Applicable (0)",
  [1] = "Trd Sub Type: Restricted Share Transfer (1)",
  [10] = "Trd Sub Type: Rollover Keeping Counterparty (10)",
  [11] = "Trd Sub Type: Rollover Changing Counterparty (11)",
}

neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.display = function(value)
  return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.labels[value] or "Trd Sub Type: Unknown("..value..")"
end

-- Dissect: Trd Sub Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trd_sub_type, range, value, display)

  return offset + length, value
end

-- Trd Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type = {}

-- Size: Trd Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.size = 2

-- Display: Trd Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.display = function(value)
  return "Trd Type: "..value
end

-- Dissect: Trd Type
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trd_type, range, value, display)

  return offset + length, value
end

-- User Info
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info = {}

-- Size: User Info
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size = 32

-- Display: User Info
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.display = function(value)
  return "User Info: "..value
end

-- Dissect: User Info
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.user_info, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Neeq NeeqSecurities OrderEntry BjseBinary 1.1
-----------------------------------------------------------------------

-- Message Tail
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message_tail = {}

-- Size: Message Tail
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message_tail.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.checksum.size

-- Display: Message Tail
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message_tail.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Tail
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message_tail.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Checksum: uInt32
  index, checksum = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.checksum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Tail
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message_tail.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.message_tail, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message_tail.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message_tail.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message_tail.fields(buffer, offset, packet, parent)
  end
end

-- After Hours Block Trade Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_confirmation_message = {}

-- Size: After Hours Block Trade Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_confirmation_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.size

-- Display: After Hours Block Trade Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: After Hours Block Trade Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Trade Id: OrderID
  index, trade_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Report Id: ClOrdID
  index, trade_report_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Report Type: uInt8
  index, trade_report_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.dissect(buffer, index, packet, parent)

  -- Trade Report Trans Type: uInt8
  index, trade_report_trans_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.dissect(buffer, index, packet, parent)

  -- Trade Handling Instr: char
  index, trade_handling_instr = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.dissect(buffer, index, packet, parent)

  -- Trd Type: uInt16
  index, trd_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.dissect(buffer, index, packet, parent)

  -- Trd Sub Type: uInt16
  index, trd_sub_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.dissect(buffer, index, packet, parent)

  -- Confirm Id: uInt32
  index, confirm_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Pbuid: PBUID
  index, pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Counterparty Pbuid: PBUID
  index, counterparty_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.dissect(buffer, index, packet, parent)

  -- Counterparty Account Id: AccountID
  index, counterparty_account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.dissect(buffer, index, packet, parent)

  -- Counterparty Branch Id: BranchID
  index, counterparty_branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.dissect(buffer, index, packet, parent)

  -- Cash Margin: char
  index, cash_margin = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: After Hours Block Trade Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.after_hours_block_trade_trade_capture_report_confirmation_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Making Mutual Trade Confirmation Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_confirmation_message = {}

-- Size: Market Making Mutual Trade Confirmation Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_confirmation_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.size

-- Display: Market Making Mutual Trade Confirmation Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Making Mutual Trade Confirmation Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Trade Id: OrderID
  index, trade_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Report Id: ClOrdID
  index, trade_report_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Report Type: uInt8
  index, trade_report_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.dissect(buffer, index, packet, parent)

  -- Trade Report Trans Type: uInt8
  index, trade_report_trans_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.dissect(buffer, index, packet, parent)

  -- Trade Handling Instr: char
  index, trade_handling_instr = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.dissect(buffer, index, packet, parent)

  -- Trd Type: uInt16
  index, trd_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.dissect(buffer, index, packet, parent)

  -- Trd Sub Type: uInt16
  index, trd_sub_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.dissect(buffer, index, packet, parent)

  -- Confirm Id: uInt32
  index, confirm_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Pbuid: PBUID
  index, pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Counterparty Pbuid: PBUID
  index, counterparty_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.dissect(buffer, index, packet, parent)

  -- Counterparty Account Id: AccountID
  index, counterparty_account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.dissect(buffer, index, packet, parent)

  -- Counterparty Branch Id: BranchID
  index, counterparty_branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Making Mutual Trade Confirmation Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.market_making_mutual_trade_confirmation_trade_capture_report_confirmation_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Mutual Trade Confirmation Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_confirmation_message = {}

-- Size: Mutual Trade Confirmation Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_confirmation_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.size

-- Display: Mutual Trade Confirmation Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mutual Trade Confirmation Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Trade Id: OrderID
  index, trade_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Report Id: ClOrdID
  index, trade_report_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Report Type: uInt8
  index, trade_report_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.dissect(buffer, index, packet, parent)

  -- Trade Report Trans Type: uInt8
  index, trade_report_trans_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.dissect(buffer, index, packet, parent)

  -- Trade Handling Instr: char
  index, trade_handling_instr = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.dissect(buffer, index, packet, parent)

  -- Trd Type: uInt16
  index, trd_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.dissect(buffer, index, packet, parent)

  -- Trd Sub Type: uInt16
  index, trd_sub_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.dissect(buffer, index, packet, parent)

  -- Confirm Id: uInt32
  index, confirm_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Pbuid: PBUID
  index, pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Counterparty Pbuid: PBUID
  index, counterparty_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.dissect(buffer, index, packet, parent)

  -- Counterparty Account Id: AccountID
  index, counterparty_account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.dissect(buffer, index, packet, parent)

  -- Counterparty Branch Id: BranchID
  index, counterparty_branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mutual Trade Confirmation Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.mutual_trade_confirmation_trade_capture_report_confirmation_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Refinancing Securities Lending Agreed Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_confirmation_message = {}

-- Size: Refinancing Securities Lending Agreed Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_confirmation_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_days.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.maturity_date.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.share_property.size

-- Display: Refinancing Securities Lending Agreed Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refinancing Securities Lending Agreed Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Trade Id: OrderID
  index, trade_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Report Id: ClOrdID
  index, trade_report_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Report Type: uInt8
  index, trade_report_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.dissect(buffer, index, packet, parent)

  -- Trade Report Trans Type: uInt8
  index, trade_report_trans_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.dissect(buffer, index, packet, parent)

  -- Trade Handling Instr: char
  index, trade_handling_instr = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.dissect(buffer, index, packet, parent)

  -- Trd Type: uInt16
  index, trd_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.dissect(buffer, index, packet, parent)

  -- Trd Sub Type: uInt16
  index, trd_sub_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.dissect(buffer, index, packet, parent)

  -- Confirm Id: uInt32
  index, confirm_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Pbuid: PBUID
  index, pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Counterparty Pbuid: PBUID
  index, counterparty_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.dissect(buffer, index, packet, parent)

  -- Counterparty Account Id: AccountID
  index, counterparty_account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.dissect(buffer, index, packet, parent)

  -- Counterparty Branch Id: BranchID
  index, counterparty_branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.dissect(buffer, index, packet, parent)

  -- Expiration Days: uInt16
  index, expiration_days = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_days.dissect(buffer, index, packet, parent)

  -- Expiration Type: uInt8
  index, expiration_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_type.dissect(buffer, index, packet, parent)

  -- Maturity Date: LocalMktDate
  index, maturity_date = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.maturity_date.dissect(buffer, index, packet, parent)

  -- Share Property: char[2]
  index, share_property = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.share_property.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refinancing Securities Lending Agreed Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.refinancing_securities_lending_agreed_trade_capture_report_confirmation_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Spot Negotiated Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_confirmation_message = {}

-- Size: Bond Spot Negotiated Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_confirmation_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.member_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trader_code.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_member_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_trader_code.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_period.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.memo.size

-- Display: Bond Spot Negotiated Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Spot Negotiated Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Trade Id: OrderID
  index, trade_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Report Id: ClOrdID
  index, trade_report_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Report Type: uInt8
  index, trade_report_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.dissect(buffer, index, packet, parent)

  -- Trade Report Trans Type: uInt8
  index, trade_report_trans_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.dissect(buffer, index, packet, parent)

  -- Trade Handling Instr: char
  index, trade_handling_instr = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.dissect(buffer, index, packet, parent)

  -- Trd Type: uInt16
  index, trd_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.dissect(buffer, index, packet, parent)

  -- Trd Sub Type: uInt16
  index, trd_sub_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.dissect(buffer, index, packet, parent)

  -- Confirm Id: uInt32
  index, confirm_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Pbuid: PBUID
  index, pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Counterparty Pbuid: PBUID
  index, counterparty_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.dissect(buffer, index, packet, parent)

  -- Counterparty Account Id: AccountID
  index, counterparty_account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.dissect(buffer, index, packet, parent)

  -- Counterparty Branch Id: BranchID
  index, counterparty_branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.dissect(buffer, index, packet, parent)

  -- Member Id: MemberID
  index, member_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.member_id.dissect(buffer, index, packet, parent)

  -- Trader Code: TraderCode
  index, trader_code = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trader_code.dissect(buffer, index, packet, parent)

  -- Counterparty Member Id: MemberID
  index, counterparty_member_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_member_id.dissect(buffer, index, packet, parent)

  -- Counterparty Trader Code: TraderCode
  index, counterparty_trader_code = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_trader_code.dissect(buffer, index, packet, parent)

  -- Settl Type: char
  index, settl_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_type.dissect(buffer, index, packet, parent)

  -- Settl Period: char
  index, settl_period = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_period.dissect(buffer, index, packet, parent)

  -- Cash Margin: char
  index, cash_margin = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.dissect(buffer, index, packet, parent)

  -- Memo: char[120]
  index, memo = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Spot Negotiated Trade Capture Report Confirmation Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.bond_spot_negotiated_trade_capture_report_confirmation_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- After Hours Block Trade Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_ack_message = {}

-- Size: After Hours Block Trade Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_ack_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_ack_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_rpt_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_reject_reason.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.size

-- Display: After Hours Block Trade Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: After Hours Block Trade Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Trade Id: OrderID
  index, trade_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Report Id: ClOrdID
  index, trade_report_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Report Type: uInt8
  index, trade_report_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.dissect(buffer, index, packet, parent)

  -- Trade Report Trans Type: uInt8
  index, trade_report_trans_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.dissect(buffer, index, packet, parent)

  -- Trade Handling Instr: char
  index, trade_handling_instr = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.dissect(buffer, index, packet, parent)

  -- Trade Report Ref Id: ClOrdID
  index, trade_report_ref_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.dissect(buffer, index, packet, parent)

  -- Trd Ack Status: uInt8
  index, trd_ack_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_ack_status.dissect(buffer, index, packet, parent)

  -- Trd Rpt Status: uInt8
  index, trd_rpt_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_rpt_status.dissect(buffer, index, packet, parent)

  -- Trade Report Reject Reason: uInt16
  index, trade_report_reject_reason = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_reject_reason.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.dissect(buffer, index, packet, parent)

  -- Trd Type: uInt16
  index, trd_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.dissect(buffer, index, packet, parent)

  -- Trd Sub Type: uInt16
  index, trd_sub_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.dissect(buffer, index, packet, parent)

  -- Confirm Id: uInt32
  index, confirm_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Pbuid: PBUID
  index, pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Counterparty Pbuid: PBUID
  index, counterparty_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.dissect(buffer, index, packet, parent)

  -- Counterparty Account Id: AccountID
  index, counterparty_account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.dissect(buffer, index, packet, parent)

  -- Counterparty Branch Id: BranchID
  index, counterparty_branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.dissect(buffer, index, packet, parent)

  -- Cash Margin: char
  index, cash_margin = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: After Hours Block Trade Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.after_hours_block_trade_trade_capture_report_ack_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Making Mutual Trade Confirmation Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_ack_message = {}

-- Size: Market Making Mutual Trade Confirmation Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_ack_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_ack_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_rpt_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_reject_reason.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.size

-- Display: Market Making Mutual Trade Confirmation Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Making Mutual Trade Confirmation Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Trade Id: OrderID
  index, trade_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Report Id: ClOrdID
  index, trade_report_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Report Type: uInt8
  index, trade_report_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.dissect(buffer, index, packet, parent)

  -- Trade Report Trans Type: uInt8
  index, trade_report_trans_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.dissect(buffer, index, packet, parent)

  -- Trade Handling Instr: char
  index, trade_handling_instr = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.dissect(buffer, index, packet, parent)

  -- Trade Report Ref Id: ClOrdID
  index, trade_report_ref_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.dissect(buffer, index, packet, parent)

  -- Trd Ack Status: uInt8
  index, trd_ack_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_ack_status.dissect(buffer, index, packet, parent)

  -- Trd Rpt Status: uInt8
  index, trd_rpt_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_rpt_status.dissect(buffer, index, packet, parent)

  -- Trade Report Reject Reason: uInt16
  index, trade_report_reject_reason = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_reject_reason.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.dissect(buffer, index, packet, parent)

  -- Trd Type: uInt16
  index, trd_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.dissect(buffer, index, packet, parent)

  -- Trd Sub Type: uInt16
  index, trd_sub_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.dissect(buffer, index, packet, parent)

  -- Confirm Id: uInt32
  index, confirm_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Pbuid: PBUID
  index, pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Counterparty Pbuid: PBUID
  index, counterparty_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.dissect(buffer, index, packet, parent)

  -- Counterparty Account Id: AccountID
  index, counterparty_account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.dissect(buffer, index, packet, parent)

  -- Counterparty Branch Id: BranchID
  index, counterparty_branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Making Mutual Trade Confirmation Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.market_making_mutual_trade_confirmation_trade_capture_report_ack_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Mutual Trade Confirmation Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_ack_message = {}

-- Size: Mutual Trade Confirmation Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_ack_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_ack_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_rpt_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_reject_reason.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.size

-- Display: Mutual Trade Confirmation Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mutual Trade Confirmation Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Trade Id: OrderID
  index, trade_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Report Id: ClOrdID
  index, trade_report_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Report Type: uInt8
  index, trade_report_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.dissect(buffer, index, packet, parent)

  -- Trade Report Trans Type: uInt8
  index, trade_report_trans_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.dissect(buffer, index, packet, parent)

  -- Trade Handling Instr: char
  index, trade_handling_instr = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.dissect(buffer, index, packet, parent)

  -- Trade Report Ref Id: ClOrdID
  index, trade_report_ref_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.dissect(buffer, index, packet, parent)

  -- Trd Ack Status: uInt8
  index, trd_ack_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_ack_status.dissect(buffer, index, packet, parent)

  -- Trd Rpt Status: uInt8
  index, trd_rpt_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_rpt_status.dissect(buffer, index, packet, parent)

  -- Trade Report Reject Reason: uInt16
  index, trade_report_reject_reason = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_reject_reason.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.dissect(buffer, index, packet, parent)

  -- Trd Type: uInt16
  index, trd_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.dissect(buffer, index, packet, parent)

  -- Trd Sub Type: uInt16
  index, trd_sub_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.dissect(buffer, index, packet, parent)

  -- Confirm Id: uInt32
  index, confirm_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Pbuid: PBUID
  index, pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Counterparty Pbuid: PBUID
  index, counterparty_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.dissect(buffer, index, packet, parent)

  -- Counterparty Account Id: AccountID
  index, counterparty_account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.dissect(buffer, index, packet, parent)

  -- Counterparty Branch Id: BranchID
  index, counterparty_branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mutual Trade Confirmation Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.mutual_trade_confirmation_trade_capture_report_ack_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Refinancing Securities Lending Agreed Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_ack_message = {}

-- Size: Refinancing Securities Lending Agreed Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_ack_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_ack_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_rpt_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_reject_reason.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_days.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.share_property.size

-- Display: Refinancing Securities Lending Agreed Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refinancing Securities Lending Agreed Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Trade Id: OrderID
  index, trade_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Report Id: ClOrdID
  index, trade_report_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Report Type: uInt8
  index, trade_report_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.dissect(buffer, index, packet, parent)

  -- Trade Report Trans Type: uInt8
  index, trade_report_trans_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.dissect(buffer, index, packet, parent)

  -- Trade Handling Instr: char
  index, trade_handling_instr = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.dissect(buffer, index, packet, parent)

  -- Trade Report Ref Id: ClOrdID
  index, trade_report_ref_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.dissect(buffer, index, packet, parent)

  -- Trd Ack Status: uInt8
  index, trd_ack_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_ack_status.dissect(buffer, index, packet, parent)

  -- Trd Rpt Status: uInt8
  index, trd_rpt_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_rpt_status.dissect(buffer, index, packet, parent)

  -- Trade Report Reject Reason: uInt16
  index, trade_report_reject_reason = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_reject_reason.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.dissect(buffer, index, packet, parent)

  -- Trd Type: uInt16
  index, trd_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.dissect(buffer, index, packet, parent)

  -- Trd Sub Type: uInt16
  index, trd_sub_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.dissect(buffer, index, packet, parent)

  -- Confirm Id: uInt32
  index, confirm_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Pbuid: PBUID
  index, pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Counterparty Pbuid: PBUID
  index, counterparty_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.dissect(buffer, index, packet, parent)

  -- Counterparty Account Id: AccountID
  index, counterparty_account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.dissect(buffer, index, packet, parent)

  -- Counterparty Branch Id: BranchID
  index, counterparty_branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.dissect(buffer, index, packet, parent)

  -- Expiration Days: uInt16
  index, expiration_days = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_days.dissect(buffer, index, packet, parent)

  -- Expiration Type: uInt8
  index, expiration_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_type.dissect(buffer, index, packet, parent)

  -- Share Property: char[2]
  index, share_property = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.share_property.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refinancing Securities Lending Agreed Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.refinancing_securities_lending_agreed_trade_capture_report_ack_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Spot Negotiated Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_ack_message = {}

-- Size: Bond Spot Negotiated Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_ack_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_ack_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_rpt_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_reject_reason.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.member_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trader_code.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_member_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_trader_code.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_period.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.memo.size

-- Display: Bond Spot Negotiated Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Spot Negotiated Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Trade Id: OrderID
  index, trade_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Report Id: ClOrdID
  index, trade_report_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Report Type: uInt8
  index, trade_report_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.dissect(buffer, index, packet, parent)

  -- Trade Report Trans Type: uInt8
  index, trade_report_trans_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.dissect(buffer, index, packet, parent)

  -- Trade Handling Instr: char
  index, trade_handling_instr = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.dissect(buffer, index, packet, parent)

  -- Trade Report Ref Id: ClOrdID
  index, trade_report_ref_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.dissect(buffer, index, packet, parent)

  -- Trd Ack Status: uInt8
  index, trd_ack_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_ack_status.dissect(buffer, index, packet, parent)

  -- Trd Rpt Status: uInt8
  index, trd_rpt_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_rpt_status.dissect(buffer, index, packet, parent)

  -- Trade Report Reject Reason: uInt16
  index, trade_report_reject_reason = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_reject_reason.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.dissect(buffer, index, packet, parent)

  -- Trd Type: uInt16
  index, trd_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.dissect(buffer, index, packet, parent)

  -- Trd Sub Type: uInt16
  index, trd_sub_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.dissect(buffer, index, packet, parent)

  -- Confirm Id: uInt32
  index, confirm_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Pbuid: PBUID
  index, pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Counterparty Pbuid: PBUID
  index, counterparty_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.dissect(buffer, index, packet, parent)

  -- Counterparty Account Id: AccountID
  index, counterparty_account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.dissect(buffer, index, packet, parent)

  -- Counterparty Branch Id: BranchID
  index, counterparty_branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.dissect(buffer, index, packet, parent)

  -- Member Id: MemberID
  index, member_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.member_id.dissect(buffer, index, packet, parent)

  -- Trader Code: TraderCode
  index, trader_code = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trader_code.dissect(buffer, index, packet, parent)

  -- Counterparty Member Id: MemberID
  index, counterparty_member_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_member_id.dissect(buffer, index, packet, parent)

  -- Counterparty Trader Code: TraderCode
  index, counterparty_trader_code = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_trader_code.dissect(buffer, index, packet, parent)

  -- Settl Type: char
  index, settl_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_type.dissect(buffer, index, packet, parent)

  -- Settl Period: char
  index, settl_period = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_period.dissect(buffer, index, packet, parent)

  -- Cash Margin: char
  index, cash_margin = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.dissect(buffer, index, packet, parent)

  -- Memo: char[120]
  index, memo = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Spot Negotiated Trade Capture Report Ack Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.bond_spot_negotiated_trade_capture_report_ack_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- After Hours Block Trade Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_message = {}

-- Size: After Hours Block Trade Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.size

-- Display: After Hours Block Trade Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: After Hours Block Trade Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Trade Report Id: ClOrdID
  index, trade_report_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Report Type: uInt8
  index, trade_report_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.dissect(buffer, index, packet, parent)

  -- Trade Report Trans Type: uInt8
  index, trade_report_trans_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.dissect(buffer, index, packet, parent)

  -- Trade Handling Instr: char
  index, trade_handling_instr = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.dissect(buffer, index, packet, parent)

  -- Trade Report Ref Id: ClOrdID
  index, trade_report_ref_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.dissect(buffer, index, packet, parent)

  -- Trd Type: uInt16
  index, trd_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.dissect(buffer, index, packet, parent)

  -- Trd Sub Type: uInt16
  index, trd_sub_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.dissect(buffer, index, packet, parent)

  -- Confirm Id: uInt32
  index, confirm_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Pbuid: PBUID
  index, pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Counterparty Pbuid: PBUID
  index, counterparty_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.dissect(buffer, index, packet, parent)

  -- Counterparty Account Id: AccountID
  index, counterparty_account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.dissect(buffer, index, packet, parent)

  -- Counterparty Branch Id: BranchID
  index, counterparty_branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.dissect(buffer, index, packet, parent)

  -- Cash Margin: char
  index, cash_margin = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: After Hours Block Trade Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.after_hours_block_trade_trade_capture_report_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Making Mutual Trade Confirmation Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_message = {}

-- Size: Market Making Mutual Trade Confirmation Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.size

-- Display: Market Making Mutual Trade Confirmation Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Making Mutual Trade Confirmation Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Trade Report Id: ClOrdID
  index, trade_report_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Report Type: uInt8
  index, trade_report_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.dissect(buffer, index, packet, parent)

  -- Trade Report Trans Type: uInt8
  index, trade_report_trans_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.dissect(buffer, index, packet, parent)

  -- Trade Handling Instr: char
  index, trade_handling_instr = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.dissect(buffer, index, packet, parent)

  -- Trade Report Ref Id: ClOrdID
  index, trade_report_ref_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.dissect(buffer, index, packet, parent)

  -- Trd Type: uInt16
  index, trd_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.dissect(buffer, index, packet, parent)

  -- Trd Sub Type: uInt16
  index, trd_sub_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.dissect(buffer, index, packet, parent)

  -- Confirm Id: uInt32
  index, confirm_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Pbuid: PBUID
  index, pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Counterparty Pbuid: PBUID
  index, counterparty_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.dissect(buffer, index, packet, parent)

  -- Counterparty Account Id: AccountID
  index, counterparty_account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.dissect(buffer, index, packet, parent)

  -- Counterparty Branch Id: BranchID
  index, counterparty_branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Making Mutual Trade Confirmation Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.market_making_mutual_trade_confirmation_trade_capture_report_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Mutual Trade Confirmation Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_message = {}

-- Size: Mutual Trade Confirmation Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.size

-- Display: Mutual Trade Confirmation Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mutual Trade Confirmation Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Trade Report Id: ClOrdID
  index, trade_report_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Report Type: uInt8
  index, trade_report_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.dissect(buffer, index, packet, parent)

  -- Trade Report Trans Type: uInt8
  index, trade_report_trans_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.dissect(buffer, index, packet, parent)

  -- Trade Handling Instr: char
  index, trade_handling_instr = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.dissect(buffer, index, packet, parent)

  -- Trade Report Ref Id: ClOrdID
  index, trade_report_ref_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.dissect(buffer, index, packet, parent)

  -- Trd Type: uInt16
  index, trd_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.dissect(buffer, index, packet, parent)

  -- Trd Sub Type: uInt16
  index, trd_sub_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.dissect(buffer, index, packet, parent)

  -- Confirm Id: uInt32
  index, confirm_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Pbuid: PBUID
  index, pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Counterparty Pbuid: PBUID
  index, counterparty_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.dissect(buffer, index, packet, parent)

  -- Counterparty Account Id: AccountID
  index, counterparty_account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.dissect(buffer, index, packet, parent)

  -- Counterparty Branch Id: BranchID
  index, counterparty_branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mutual Trade Confirmation Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.mutual_trade_confirmation_trade_capture_report_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Refinancing Securities Lending Agreed Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_message = {}

-- Size: Refinancing Securities Lending Agreed Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_days.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.share_property.size

-- Display: Refinancing Securities Lending Agreed Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refinancing Securities Lending Agreed Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Trade Report Id: ClOrdID
  index, trade_report_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Report Type: uInt8
  index, trade_report_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.dissect(buffer, index, packet, parent)

  -- Trade Report Trans Type: uInt8
  index, trade_report_trans_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.dissect(buffer, index, packet, parent)

  -- Trade Handling Instr: char
  index, trade_handling_instr = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.dissect(buffer, index, packet, parent)

  -- Trade Report Ref Id: ClOrdID
  index, trade_report_ref_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.dissect(buffer, index, packet, parent)

  -- Trd Type: uInt16
  index, trd_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.dissect(buffer, index, packet, parent)

  -- Trd Sub Type: uInt16
  index, trd_sub_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.dissect(buffer, index, packet, parent)

  -- Confirm Id: uInt32
  index, confirm_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Pbuid: PBUID
  index, pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Counterparty Pbuid: PBUID
  index, counterparty_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.dissect(buffer, index, packet, parent)

  -- Counterparty Account Id: AccountID
  index, counterparty_account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.dissect(buffer, index, packet, parent)

  -- Counterparty Branch Id: BranchID
  index, counterparty_branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.dissect(buffer, index, packet, parent)

  -- Expiration Days: uInt16
  index, expiration_days = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_days.dissect(buffer, index, packet, parent)

  -- Expiration Type: uInt8
  index, expiration_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_type.dissect(buffer, index, packet, parent)

  -- Share Property: char[2]
  index, share_property = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.share_property.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refinancing Securities Lending Agreed Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.refinancing_securities_lending_agreed_trade_capture_report_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Spot Negotiated Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_message = {}

-- Size: Bond Spot Negotiated Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.member_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trader_code.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_member_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_trader_code.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_period.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.memo.size

-- Display: Bond Spot Negotiated Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Spot Negotiated Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Trade Report Id: ClOrdID
  index, trade_report_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_id.dissect(buffer, index, packet, parent)

  -- Trade Report Type: uInt8
  index, trade_report_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_type.dissect(buffer, index, packet, parent)

  -- Trade Report Trans Type: uInt8
  index, trade_report_trans_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_trans_type.dissect(buffer, index, packet, parent)

  -- Trade Handling Instr: char
  index, trade_handling_instr = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_handling_instr.dissect(buffer, index, packet, parent)

  -- Trade Report Ref Id: ClOrdID
  index, trade_report_ref_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trade_report_ref_id.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.dissect(buffer, index, packet, parent)

  -- Trd Type: uInt16
  index, trd_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_type.dissect(buffer, index, packet, parent)

  -- Trd Sub Type: uInt16
  index, trd_sub_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trd_sub_type.dissect(buffer, index, packet, parent)

  -- Confirm Id: uInt32
  index, confirm_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.confirm_id.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Pbuid: PBUID
  index, pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.pbuid.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Counterparty Pbuid: PBUID
  index, counterparty_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_pbuid.dissect(buffer, index, packet, parent)

  -- Counterparty Account Id: AccountID
  index, counterparty_account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_account_id.dissect(buffer, index, packet, parent)

  -- Counterparty Branch Id: BranchID
  index, counterparty_branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_branch_id.dissect(buffer, index, packet, parent)

  -- Member Id: MemberID
  index, member_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.member_id.dissect(buffer, index, packet, parent)

  -- Trader Code: TraderCode
  index, trader_code = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trader_code.dissect(buffer, index, packet, parent)

  -- Counterparty Member Id: MemberID
  index, counterparty_member_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_member_id.dissect(buffer, index, packet, parent)

  -- Counterparty Trader Code: TraderCode
  index, counterparty_trader_code = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.counterparty_trader_code.dissect(buffer, index, packet, parent)

  -- Settl Type: char
  index, settl_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_type.dissect(buffer, index, packet, parent)

  -- Settl Period: char
  index, settl_period = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_period.dissect(buffer, index, packet, parent)

  -- Cash Margin: char
  index, cash_margin = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.dissect(buffer, index, packet, parent)

  -- Memo: char[120]
  index, memo = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Spot Negotiated Trade Capture Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.bond_spot_negotiated_trade_capture_report_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Refinancing Securities Lending Non Agreed Trade Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_trade_execution_report_message = {}

-- Size: Refinancing Securities Lending Non Agreed Trade Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_trade_execution_report_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_days.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.maturity_date.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.share_property.size

-- Display: Refinancing Securities Lending Non Agreed Trade Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_trade_execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refinancing Securities Lending Non Agreed Trade Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_trade_execution_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Order Id: OrderID
  index, order_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.dissect(buffer, index, packet, parent)

  -- Ord Status: char
  index, ord_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Qty
  index, leaves_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: Qty
  index, cum_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Expiration Days: uInt16
  index, expiration_days = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_days.dissect(buffer, index, packet, parent)

  -- Expiration Type: uInt8
  index, expiration_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_type.dissect(buffer, index, packet, parent)

  -- Maturity Date: LocalMktDate
  index, maturity_date = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.maturity_date.dissect(buffer, index, packet, parent)

  -- Share Property: char[2]
  index, share_property = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.share_property.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refinancing Securities Lending Non Agreed Trade Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_trade_execution_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.refinancing_securities_lending_non_agreed_trade_execution_report_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_trade_execution_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_trade_execution_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_trade_execution_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Centralized Auction Trade Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_trade_execution_report_message = {}

-- Size: Centralized Auction Trade Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_trade_execution_report_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.size

-- Display: Centralized Auction Trade Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_trade_execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Centralized Auction Trade Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_trade_execution_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Order Id: OrderID
  index, order_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.dissect(buffer, index, packet, parent)

  -- Ord Status: char
  index, ord_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Qty
  index, leaves_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: Qty
  index, cum_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Cash Margin: char
  index, cash_margin = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Centralized Auction Trade Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_trade_execution_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.centralized_auction_trade_execution_report_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_trade_execution_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_trade_execution_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_trade_execution_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Spot Matching Trade Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_trade_execution_report_message = {}

-- Size: Bond Spot Matching Trade Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_trade_execution_report_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_period.size

-- Display: Bond Spot Matching Trade Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_trade_execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Spot Matching Trade Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_trade_execution_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Order Id: OrderID
  index, order_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.dissect(buffer, index, packet, parent)

  -- Ord Status: char
  index, ord_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.last_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Qty
  index, leaves_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: Qty
  index, cum_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Cash Margin: char
  index, cash_margin = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.dissect(buffer, index, packet, parent)

  -- Settl Type: char
  index, settl_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_type.dissect(buffer, index, packet, parent)

  -- Settl Period: char
  index, settl_period = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_period.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Spot Matching Trade Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_trade_execution_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.bond_spot_matching_trade_execution_report_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_trade_execution_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_trade_execution_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_trade_execution_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Refinancing Securities Lending Non Agreed Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_execution_report_message = {}

-- Size: Refinancing Securities Lending Non Agreed Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_execution_report_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_days.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.share_property.size

-- Display: Refinancing Securities Lending Non Agreed Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refinancing Securities Lending Non Agreed Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_execution_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Order Id: OrderID
  index, order_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: char[10]
  index, orig_cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.dissect(buffer, index, packet, parent)

  -- Ord Status: char
  index, ord_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.dissect(buffer, index, packet, parent)

  -- Ord Rej Reason: uInt16
  index, ord_rej_reason = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Qty
  index, leaves_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: Qty
  index, cum_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Ord Type: char
  index, ord_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Order Restrictions: char[4]
  index, order_restrictions = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.dissect(buffer, index, packet, parent)

  -- Expiration Days: uInt16
  index, expiration_days = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_days.dissect(buffer, index, packet, parent)

  -- Expiration Type: uInt8
  index, expiration_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_type.dissect(buffer, index, packet, parent)

  -- Share Property: char[2]
  index, share_property = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.share_property.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refinancing Securities Lending Non Agreed Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_execution_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.refinancing_securities_lending_non_agreed_execution_report_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_execution_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_execution_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_execution_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Tender Offer Acceptance Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.tender_offer_acceptance_execution_report_message = {}

-- Size: Tender Offer Acceptance Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.tender_offer_acceptance_execution_report_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.size

-- Display: Tender Offer Acceptance Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.tender_offer_acceptance_execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tender Offer Acceptance Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.tender_offer_acceptance_execution_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Order Id: OrderID
  index, order_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: char[10]
  index, orig_cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.dissect(buffer, index, packet, parent)

  -- Ord Status: char
  index, ord_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.dissect(buffer, index, packet, parent)

  -- Ord Rej Reason: uInt16
  index, ord_rej_reason = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Qty
  index, leaves_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: Qty
  index, cum_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Ord Type: char
  index, ord_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Order Restrictions: char[4]
  index, order_restrictions = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tender Offer Acceptance Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.tender_offer_acceptance_execution_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.tender_offer_acceptance_execution_report_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.tender_offer_acceptance_execution_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.tender_offer_acceptance_execution_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.tender_offer_acceptance_execution_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Put Back Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.put_back_execution_report_message = {}

-- Size: Put Back Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.put_back_execution_report_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.size

-- Display: Put Back Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.put_back_execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Put Back Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.put_back_execution_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Order Id: OrderID
  index, order_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: char[10]
  index, orig_cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.dissect(buffer, index, packet, parent)

  -- Ord Status: char
  index, ord_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.dissect(buffer, index, packet, parent)

  -- Ord Rej Reason: uInt16
  index, ord_rej_reason = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Qty
  index, leaves_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: Qty
  index, cum_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Ord Type: char
  index, ord_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Order Restrictions: char[4]
  index, order_restrictions = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Put Back Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.put_back_execution_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.put_back_execution_report_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.put_back_execution_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.put_back_execution_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.put_back_execution_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Subscription Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.subscription_execution_report_message = {}

-- Size: Subscription Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.subscription_execution_report_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.size

-- Display: Subscription Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.subscription_execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subscription Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.subscription_execution_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Order Id: OrderID
  index, order_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: char[10]
  index, orig_cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.dissect(buffer, index, packet, parent)

  -- Ord Status: char
  index, ord_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.dissect(buffer, index, packet, parent)

  -- Ord Rej Reason: uInt16
  index, ord_rej_reason = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Qty
  index, leaves_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: Qty
  index, cum_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Ord Type: char
  index, ord_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Order Restrictions: char[4]
  index, order_restrictions = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscription Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.subscription_execution_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.subscription_execution_report_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.subscription_execution_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.subscription_execution_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.subscription_execution_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Inquiry Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.inquiry_execution_report_message = {}

-- Size: Inquiry Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.inquiry_execution_report_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.size

-- Display: Inquiry Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.inquiry_execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inquiry Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.inquiry_execution_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Order Id: OrderID
  index, order_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: char[10]
  index, orig_cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.dissect(buffer, index, packet, parent)

  -- Ord Status: char
  index, ord_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.dissect(buffer, index, packet, parent)

  -- Ord Rej Reason: uInt16
  index, ord_rej_reason = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Qty
  index, leaves_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: Qty
  index, cum_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Ord Type: char
  index, ord_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Order Restrictions: char[4]
  index, order_restrictions = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inquiry Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.inquiry_execution_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.inquiry_execution_report_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.inquiry_execution_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.inquiry_execution_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.inquiry_execution_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Conversion Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.conversion_execution_report_message = {}

-- Size: Conversion Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.conversion_execution_report_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.size

-- Display: Conversion Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.conversion_execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Conversion Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.conversion_execution_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Order Id: OrderID
  index, order_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: char[10]
  index, orig_cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.dissect(buffer, index, packet, parent)

  -- Ord Status: char
  index, ord_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.dissect(buffer, index, packet, parent)

  -- Ord Rej Reason: uInt16
  index, ord_rej_reason = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Qty
  index, leaves_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: Qty
  index, cum_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Ord Type: char
  index, ord_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Order Restrictions: char[4]
  index, order_restrictions = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Conversion Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.conversion_execution_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.conversion_execution_report_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.conversion_execution_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.conversion_execution_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.conversion_execution_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Centralized Auction Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_execution_report_message = {}

-- Size: Centralized Auction Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_execution_report_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.stop_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.min_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.max_price_levels.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.time_in_force.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.size

-- Display: Centralized Auction Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Centralized Auction Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_execution_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Order Id: OrderID
  index, order_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: char[10]
  index, orig_cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.dissect(buffer, index, packet, parent)

  -- Ord Status: char
  index, ord_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.dissect(buffer, index, packet, parent)

  -- Ord Rej Reason: uInt16
  index, ord_rej_reason = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Qty
  index, leaves_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: Qty
  index, cum_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Ord Type: char
  index, ord_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Order Restrictions: char[4]
  index, order_restrictions = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.dissect(buffer, index, packet, parent)

  -- Stop Px: Price
  index, stop_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.stop_px.dissect(buffer, index, packet, parent)

  -- Min Qty: Qty
  index, min_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.min_qty.dissect(buffer, index, packet, parent)

  -- Max Price Levels: uInt16
  index, max_price_levels = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.max_price_levels.dissect(buffer, index, packet, parent)

  -- Time In Force: char
  index, time_in_force = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.time_in_force.dissect(buffer, index, packet, parent)

  -- Cash Margin: char
  index, cash_margin = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Centralized Auction Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_execution_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.centralized_auction_execution_report_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_execution_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_execution_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_execution_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Spot Matching Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_execution_report_message = {}

-- Size: Bond Spot Matching Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_execution_report_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.stop_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.min_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.max_price_levels.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.time_in_force.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.size

-- Display: Bond Spot Matching Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Spot Matching Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_execution_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Order Id: OrderID
  index, order_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: char[10]
  index, orig_cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: char[16]
  index, exec_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.exec_type.dissect(buffer, index, packet, parent)

  -- Ord Status: char
  index, ord_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.dissect(buffer, index, packet, parent)

  -- Ord Rej Reason: uInt16
  index, ord_rej_reason = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_rej_reason.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Qty
  index, leaves_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: Qty
  index, cum_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cum_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Ord Type: char
  index, ord_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Order Restrictions: char[4]
  index, order_restrictions = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.dissect(buffer, index, packet, parent)

  -- Stop Px: Price
  index, stop_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.stop_px.dissect(buffer, index, packet, parent)

  -- Min Qty: Qty
  index, min_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.min_qty.dissect(buffer, index, packet, parent)

  -- Max Price Levels: uInt16
  index, max_price_levels = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.max_price_levels.dissect(buffer, index, packet, parent)

  -- Time In Force: char
  index, time_in_force = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.time_in_force.dissect(buffer, index, packet, parent)

  -- Cash Margin: char
  index, cash_margin = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Spot Matching Execution Report Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_execution_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.bond_spot_matching_execution_report_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_execution_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_execution_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_execution_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Reject Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cancel_reject_message = {}

-- Size: Cancel Reject Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cancel_reject_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cxl_rej_reason.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reject_text.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.size

-- Display: Cancel Reject Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Reject Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Reporting Pbuid: PBUID
  index, reporting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reporting_pbuid.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: char[10]
  index, orig_cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Ord Status: char
  index, ord_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_status.dissect(buffer, index, packet, parent)

  -- Cxl Rej Reason: uInt16
  index, cxl_rej_reason = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cxl_rej_reason.dissect(buffer, index, packet, parent)

  -- Reject Text: char[16]
  index, reject_text = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.reject_text.dissect(buffer, index, packet, parent)

  -- Order Id: OrderID
  index, order_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Reject Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.cancel_reject_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Request Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_cancel_request_message = {}

-- Size: Order Cancel Request Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_cancel_request_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.size

-- Display: Order Cancel Request Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: char[10]
  index, orig_cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderID
  index, order_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.order_cancel_request_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Refinancing Securities Lending Non Agreed New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_new_order_message = {}

-- Size: Refinancing Securities Lending Non Agreed New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_new_order_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_days.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.share_property.size

-- Display: Refinancing Securities Lending Non Agreed New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refinancing Securities Lending Non Agreed New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Order Restrictions: char[4]
  index, order_restrictions = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Ord Type: char
  index, ord_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  -- Expiration Days: uInt16
  index, expiration_days = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_days.dissect(buffer, index, packet, parent)

  -- Expiration Type: uInt8
  index, expiration_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.expiration_type.dissect(buffer, index, packet, parent)

  -- Share Property: char[2]
  index, share_property = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.share_property.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refinancing Securities Lending Non Agreed New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.refinancing_securities_lending_non_agreed_new_order_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Tender Offer Acceptance New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.tender_offer_acceptance_new_order_message = {}

-- Size: Tender Offer Acceptance New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.tender_offer_acceptance_new_order_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.size

-- Display: Tender Offer Acceptance New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.tender_offer_acceptance_new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tender Offer Acceptance New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.tender_offer_acceptance_new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Order Restrictions: char[4]
  index, order_restrictions = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Ord Type: char
  index, ord_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tender Offer Acceptance New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.tender_offer_acceptance_new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.tender_offer_acceptance_new_order_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.tender_offer_acceptance_new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.tender_offer_acceptance_new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.tender_offer_acceptance_new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Put Back New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.put_back_new_order_message = {}

-- Size: Put Back New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.put_back_new_order_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.size

-- Display: Put Back New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.put_back_new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Put Back New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.put_back_new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Order Restrictions: char[4]
  index, order_restrictions = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Ord Type: char
  index, ord_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Put Back New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.put_back_new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.put_back_new_order_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.put_back_new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.put_back_new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.put_back_new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Subscription New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.subscription_new_order_message = {}

-- Size: Subscription New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.subscription_new_order_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.size

-- Display: Subscription New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.subscription_new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subscription New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.subscription_new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Order Restrictions: char[4]
  index, order_restrictions = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Ord Type: char
  index, ord_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscription New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.subscription_new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.subscription_new_order_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.subscription_new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.subscription_new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.subscription_new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Inquiry New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.inquiry_new_order_message = {}

-- Size: Inquiry New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.inquiry_new_order_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.size

-- Display: Inquiry New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.inquiry_new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inquiry New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.inquiry_new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Order Restrictions: char[4]
  index, order_restrictions = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Ord Type: char
  index, ord_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inquiry New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.inquiry_new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.inquiry_new_order_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.inquiry_new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.inquiry_new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.inquiry_new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Conversion New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.conversion_new_order_message = {}

-- Size: Conversion New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.conversion_new_order_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.size

-- Display: Conversion New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.conversion_new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Conversion New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.conversion_new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Order Restrictions: char[4]
  index, order_restrictions = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Ord Type: char
  index, ord_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Conversion New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.conversion_new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.conversion_new_order_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.conversion_new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.conversion_new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.conversion_new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Centralized Auction New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_new_order_message = {}

-- Size: Centralized Auction New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_new_order_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.stop_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.min_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.max_price_levels.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.time_in_force.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.size

-- Display: Centralized Auction New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Centralized Auction New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Order Restrictions: char[4]
  index, order_restrictions = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Ord Type: char
  index, ord_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  -- Stop Px: Price
  index, stop_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.stop_px.dissect(buffer, index, packet, parent)

  -- Min Qty: Qty
  index, min_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.min_qty.dissect(buffer, index, packet, parent)

  -- Max Price Levels: uInt16
  index, max_price_levels = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.max_price_levels.dissect(buffer, index, packet, parent)

  -- Time In Force: char
  index, time_in_force = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.time_in_force.dissect(buffer, index, packet, parent)

  -- Cash Margin: char
  index, cash_margin = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Centralized Auction New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.centralized_auction_new_order_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Spot Matching New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_new_order_message = {}

-- Size: Bond Spot Matching New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_new_order_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.stop_px.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.min_qty.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.max_price_levels.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.time_in_force.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_period.size

-- Display: Bond Spot Matching New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Spot Matching New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Owner Type: uInt16
  index, owner_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.owner_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm: char[2]
  index, clearing_firm = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.clearing_firm.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- User Info: char[32]
  index, user_info = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.user_info.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdID
  index, cl_ord_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Account Id: AccountID
  index, account_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.account_id.dissect(buffer, index, packet, parent)

  -- Branch Id: BranchID
  index, branch_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.branch_id.dissect(buffer, index, packet, parent)

  -- Order Restrictions: char[4]
  index, order_restrictions = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_restrictions.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Ord Type: char
  index, ord_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  -- Stop Px: Price
  index, stop_px = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.stop_px.dissect(buffer, index, packet, parent)

  -- Min Qty: Qty
  index, min_qty = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.min_qty.dissect(buffer, index, packet, parent)

  -- Max Price Levels: uInt16
  index, max_price_levels = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.max_price_levels.dissect(buffer, index, packet, parent)

  -- Time In Force: char
  index, time_in_force = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.time_in_force.dissect(buffer, index, packet, parent)

  -- Cash Margin: char
  index, cash_margin = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cash_margin.dissect(buffer, index, packet, parent)

  -- Settl Type: char
  index, settl_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_type.dissect(buffer, index, packet, parent)

  -- Settl Period: char
  index, settl_period = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.settl_period.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Spot Matching New Order Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.bond_spot_matching_new_order_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Status Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_status_message = {}

-- Size: Trading Session Status Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_status_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_segment_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_sub_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trad_ses_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trad_ses_start_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trad_ses_end_time.size

-- Display: Trading Session Status Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: char[8]
  index, market_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: char[8]
  index, market_segment_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: char[4]
  index, trading_session_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: char[4]
  index, trading_session_sub_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Status: uInt16
  index, trad_ses_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trad_ses_status.dissect(buffer, index, packet, parent)

  -- Trad Ses Start Time: LocalTimeStamp
  index, trad_ses_start_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trad_ses_start_time.dissect(buffer, index, packet, parent)

  -- Trad Ses End Time: LocalTimeStamp
  index, trad_ses_end_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trad_ses_end_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.trading_session_status_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Partitions
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partitions = {}

-- Size: Partitions
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partitions.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size

-- Display: Partitions
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partitions.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Partitions
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partitions.fields = function(buffer, offset, packet, parent, partitions_index)
  local index = offset

  -- Implicit Partitions Index
  if partitions_index ~= nil and show.indexes then
    local iteration = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.partitions_index, partitions_index)
    iteration:set_generated()
  end

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Partitions
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partitions.dissect = function(buffer, offset, packet, parent, partitions_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.partitions, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partitions.fields(buffer, offset, packet, parent, partitions_index)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partitions.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partitions.fields(buffer, offset, packet, parent, partitions_index)
  end
end

-- Platform Info Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_info_message = {}

-- Calculate size of: Platform Info Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_info_message.size = function(buffer, offset)
  local index = 0

  index = index + neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_id.size

  index = index + neeq_neeqsecurities_orderentry_bjsebinary_v1_1.no_partitions.size

  -- Calculate field size from count
  local partitions_count = buffer(offset + index - 4, 4):uint()
  index = index + partitions_count * 4

  return index
end

-- Display: Platform Info Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_info_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Platform Info Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_info_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Platform Id: uInt16
  index, platform_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_id.dissect(buffer, index, packet, parent)

  -- No Partitions: NumInGroup
  index, no_partitions = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.no_partitions.dissect(buffer, index, packet, parent)

  -- Repeating: Partitions
  for partitions_index = 1, no_partitions do
    index, partitions = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partitions.dissect(buffer, index, packet, parent, partitions_index)
  end

  return index
end

-- Dissect: Platform Info Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_info_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.platform_info_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_info_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_info_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_info_message.fields(buffer, offset, packet, parent)
  end
end

-- Report Finished Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_finished_message = {}

-- Size: Report Finished Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_finished_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_id.size

-- Display: Report Finished Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_finished_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Report Finished Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_finished_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  -- Platform Id: uInt16
  index, platform_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Report Finished Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_finished_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.report_finished_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_finished_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_finished_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_finished_message.fields(buffer, offset, packet, parent)
  end
end

-- Platform State Info Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_state_info_message = {}

-- Size: Platform State Info Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_state_info_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_state.size

-- Display: Platform State Info Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_state_info_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Platform State Info Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_state_info_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Platform Id: uInt16
  index, platform_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_id.dissect(buffer, index, packet, parent)

  -- Platform State: uInt16
  index, platform_state = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Platform State Info Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_state_info_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.platform_state_info_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_state_info_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_state_info_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_state_info_message.fields(buffer, offset, packet, parent)
  end
end

-- Partition Reports
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_reports = {}

-- Size: Partition Reports
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_reports.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.size

-- Display: Partition Reports
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_reports.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Partition Reports
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_reports.fields = function(buffer, offset, packet, parent, partition_reports_index)
  local index = offset

  -- Implicit Partition Reports Index
  if partition_reports_index ~= nil and show.indexes then
    local iteration = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.partition_reports_index, partition_reports_index)
    iteration:set_generated()
  end

  -- Partition No: Int32
  index, partition_no = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_no.dissect(buffer, index, packet, parent)

  -- Report Index: SeqNum
  index, report_index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_index.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Partition Reports
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_reports.dissect = function(buffer, offset, packet, parent, partition_reports_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.partition_reports, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_reports.fields(buffer, offset, packet, parent, partition_reports_index)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_reports.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_reports.fields(buffer, offset, packet, parent, partition_reports_index)
  end
end

-- Report Synchronization Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_synchronization_message = {}

-- Calculate size of: Report Synchronization Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_synchronization_message.size = function(buffer, offset)
  local index = 0

  index = index + neeq_neeqsecurities_orderentry_bjsebinary_v1_1.no_partitions.size

  -- Calculate field size from count
  local partition_reports_count = buffer(offset + index - 4, 4):uint()
  index = index + partition_reports_count * 12

  return index
end

-- Display: Report Synchronization Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_synchronization_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Report Synchronization Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_synchronization_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- No Partitions: NumInGroup
  index, no_partitions = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.no_partitions.dissect(buffer, index, packet, parent)

  -- Repeating: Partition Reports
  for partition_reports_index = 1, no_partitions do
    index, partition_reports = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.partition_reports.dissect(buffer, index, packet, parent, partition_reports_index)
  end

  return index
end

-- Dissect: Report Synchronization Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_synchronization_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.report_synchronization_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_synchronization_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_synchronization_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_synchronization_message.fields(buffer, offset, packet, parent)
  end
end

-- Business Reject Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_message = {}

-- Size: Business Reject Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ref_seq_num.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ref_msg_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_ref_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_reason.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_text.size

-- Display: Business Reject Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Reject Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Appl Id: char[3]
  index, appl_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.appl_id.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimeStamp
  index, transact_time = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- Submitting Pbuid: PBUID
  index, submitting_pbuid = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.submitting_pbuid.dissect(buffer, index, packet, parent)

  -- Security Id: char[8]
  index, security_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Ref Seq Num: SeqNum
  index, ref_seq_num = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ref_seq_num.dissect(buffer, index, packet, parent)

  -- Ref Msg Type: uInt32
  index, ref_msg_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.ref_msg_type.dissect(buffer, index, packet, parent)

  -- Business Reject Ref Id: char[10]
  index, business_reject_ref_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_ref_id.dissect(buffer, index, packet, parent)

  -- Business Reject Reason: uInt16
  index, business_reject_reason = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_reason.dissect(buffer, index, packet, parent)

  -- Business Reject Text: char[50]
  index, business_reject_text = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Reject Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.business_reject_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.heartbeat_message = {}

-- Display: Heartbeat Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.logout_message = {}

-- Size: Logout Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.logout_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.session_status.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text.size

-- Display: Logout Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.logout_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Status: Int32
  index, session_status = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.session_status.dissect(buffer, index, packet, parent)

  -- Text: char[200]
  index, text = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.logout_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.logout_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.logout_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.logout_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.logout_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.logon_message = {}

-- Size: Logon Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.logon_message.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.sender_comp_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.target_comp_id.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.heart_bt_int.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.password.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.default_appl_ver_id.size

-- Display: Logon Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sender Comp Id: char[20]
  index, sender_comp_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.sender_comp_id.dissect(buffer, index, packet, parent)

  -- Target Comp Id: char[20]
  index, target_comp_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.target_comp_id.dissect(buffer, index, packet, parent)

  -- Heart Bt Int: Int32
  index, heart_bt_int = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.heart_bt_int.dissect(buffer, index, packet, parent)

  -- Password: char[16]
  index, password = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.password.dissect(buffer, index, packet, parent)

  -- Default Appl Ver Id: char[32]
  index, default_appl_ver_id = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.default_appl_ver_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.logon_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.payload = {}

-- Dispatch: Payload
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.payload.dispatch = {
  [1] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.logon_message.dissect,
  [2] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.logout_message.dissect,
  [3] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.heartbeat_message.dissect,
  [4] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.business_reject_message.dissect,
  [5] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_synchronization_message.dissect,
  [6] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_state_info_message.dissect,
  [7] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.report_finished_message.dissect,
  [9] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.platform_info_message.dissect,
  [10] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.trading_session_status_message.dissect,
  [101010] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_new_order_message.dissect,
  [101040] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_new_order_message.dissect,
  [101041] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.conversion_new_order_message.dissect,
  [101042] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.inquiry_new_order_message.dissect,
  [101043] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.subscription_new_order_message.dissect,
  [101044] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.put_back_new_order_message.dissect,
  [101045] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.tender_offer_acceptance_new_order_message.dissect,
  [101050] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_new_order_message.dissect,
  [102000] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.order_cancel_request_message.dissect,
  [201000] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.cancel_reject_message.dissect,
  [202010] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_execution_report_message.dissect,
  [202040] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_execution_report_message.dissect,
  [202041] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.conversion_execution_report_message.dissect,
  [202042] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.inquiry_execution_report_message.dissect,
  [202043] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.subscription_execution_report_message.dissect,
  [202044] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.put_back_execution_report_message.dissect,
  [202045] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.tender_offer_acceptance_execution_report_message.dissect,
  [202050] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_execution_report_message.dissect,
  [203010] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_matching_trade_execution_report_message.dissect,
  [203040] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.centralized_auction_trade_execution_report_message.dissect,
  [203050] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_non_agreed_trade_execution_report_message.dissect,
  [103031] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_message.dissect,
  [103051] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_message.dissect,
  [103060] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_message.dissect,
  [103061] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_message.dissect,
  [103062] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_message.dissect,
  [204031] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_ack_message.dissect,
  [204051] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_ack_message.dissect,
  [204060] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_ack_message.dissect,
  [204061] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_ack_message.dissect,
  [204062] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_ack_message.dissect,
  [205031] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.bond_spot_negotiated_trade_capture_report_confirmation_message.dissect,
  [205051] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.refinancing_securities_lending_agreed_trade_capture_report_confirmation_message.dissect,
  [205060] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.mutual_trade_confirmation_trade_capture_report_confirmation_message.dissect,
  [205061] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.market_making_mutual_trade_confirmation_trade_capture_report_confirmation_message.dissect,
  [205062] = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.after_hours_block_trade_trade_capture_report_confirmation_message.dissect,
}

-- Dissect: Payload
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.payload.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message_header = {}

-- Size: Message Header
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message_header.size =
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.msg_type.size + 
  neeq_neeqsecurities_orderentry_bjsebinary_v1_1.body_length.size

-- Display: Message Header
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: uInt32
  index, msg_type = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.msg_type.dissect(buffer, index, packet, parent)

  -- Body Length: uInt32
  index, body_length = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.body_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.fields.message_header, buffer(offset, 0))
    local index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message = {}

-- Verify required size of Tcp packet
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message.requiredsize = function(buffer)
  return buffer:len() >= neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message_header.size
end

-- Dissect Message
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Header: Struct of 2 fields
  index, message_header = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 8, 4):uint()

  -- Payload: Runtime Type with 45 branches
  index = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.payload.dissect(buffer, index, packet, parent, msg_type)

  -- Message Tail: Struct of 1 fields
  index, message_tail = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message_tail.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.init()
end

-- Dissector for Neeq NeeqSecurities OrderEntry BjseBinary 1.1
function omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.name

  local length = buffer:len()
  local offset = 0

  -- Dissect each message the segment carries
  while offset < length do
    local protocol = parent:add(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1, buffer(offset), omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.description, "("..(length - offset).." Bytes)")
    local consumed = neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message.dissect(buffer(offset):tvb(), packet, protocol)

    if consumed == nil or consumed <= 0 then
      return offset
    end

    protocol:set_len(consumed)
    offset = offset + consumed
  end

  return offset
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Message: would its message dispatch accept this frame?
neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message.fingerprint = function(buffer)
  if buffer:len() < 4 then
    return false
  end

  local msg_type = buffer(0, 4):uint()

  -- Logon Message
  if msg_type == 1 then
    return true
  end

  -- Logout Message
  if msg_type == 2 then
    return true
  end

  -- Heartbeat Message
  if msg_type == 3 then
    return true
  end

  -- Business Reject Message
  if msg_type == 4 then
    return true
  end

  -- Report Synchronization Message
  if msg_type == 5 then
    return true
  end

  -- Platform State Info Message
  if msg_type == 6 then
    return true
  end

  -- Report Finished Message
  if msg_type == 7 then
    return true
  end

  -- Platform Info Message
  if msg_type == 9 then
    return true
  end

  -- Trading Session Status Message
  if msg_type == 10 then
    return true
  end

  -- Bond Spot Matching New Order Message
  if msg_type == 101010 then
    return true
  end

  -- Centralized Auction New Order Message
  if msg_type == 101040 then
    return true
  end

  -- Conversion New Order Message
  if msg_type == 101041 then
    return true
  end

  -- Inquiry New Order Message
  if msg_type == 101042 then
    return true
  end

  -- Subscription New Order Message
  if msg_type == 101043 then
    return true
  end

  -- Put Back New Order Message
  if msg_type == 101044 then
    return true
  end

  -- Tender Offer Acceptance New Order Message
  if msg_type == 101045 then
    return true
  end

  -- Refinancing Securities Lending Non Agreed New Order Message
  if msg_type == 101050 then
    return true
  end

  -- Order Cancel Request Message
  if msg_type == 102000 then
    return true
  end

  -- Cancel Reject Message
  if msg_type == 201000 then
    return true
  end

  -- Bond Spot Matching Execution Report Message
  if msg_type == 202010 then
    return true
  end

  -- Centralized Auction Execution Report Message
  if msg_type == 202040 then
    return true
  end

  -- Conversion Execution Report Message
  if msg_type == 202041 then
    return true
  end

  -- Inquiry Execution Report Message
  if msg_type == 202042 then
    return true
  end

  -- Subscription Execution Report Message
  if msg_type == 202043 then
    return true
  end

  -- Put Back Execution Report Message
  if msg_type == 202044 then
    return true
  end

  -- Tender Offer Acceptance Execution Report Message
  if msg_type == 202045 then
    return true
  end

  -- Refinancing Securities Lending Non Agreed Execution Report Message
  if msg_type == 202050 then
    return true
  end

  -- Bond Spot Matching Trade Execution Report Message
  if msg_type == 203010 then
    return true
  end

  -- Centralized Auction Trade Execution Report Message
  if msg_type == 203040 then
    return true
  end

  -- Refinancing Securities Lending Non Agreed Trade Execution Report Message
  if msg_type == 203050 then
    return true
  end

  -- Bond Spot Negotiated Trade Capture Report Message
  if msg_type == 103031 then
    return true
  end

  -- Refinancing Securities Lending Agreed Trade Capture Report Message
  if msg_type == 103051 then
    return true
  end

  -- Mutual Trade Confirmation Trade Capture Report Message
  if msg_type == 103060 then
    return true
  end

  -- Market Making Mutual Trade Confirmation Trade Capture Report Message
  if msg_type == 103061 then
    return true
  end

  -- After Hours Block Trade Trade Capture Report Message
  if msg_type == 103062 then
    return true
  end

  -- Bond Spot Negotiated Trade Capture Report Ack Message
  if msg_type == 204031 then
    return true
  end

  -- Refinancing Securities Lending Agreed Trade Capture Report Ack Message
  if msg_type == 204051 then
    return true
  end

  -- Mutual Trade Confirmation Trade Capture Report Ack Message
  if msg_type == 204060 then
    return true
  end

  -- Market Making Mutual Trade Confirmation Trade Capture Report Ack Message
  if msg_type == 204061 then
    return true
  end

  -- After Hours Block Trade Trade Capture Report Ack Message
  if msg_type == 204062 then
    return true
  end

  -- Bond Spot Negotiated Trade Capture Report Confirmation Message
  if msg_type == 205031 then
    return true
  end

  -- Refinancing Securities Lending Agreed Trade Capture Report Confirmation Message
  if msg_type == 205051 then
    return true
  end

  -- Mutual Trade Confirmation Trade Capture Report Confirmation Message
  if msg_type == 205060 then
    return true
  end

  -- Market Making Mutual Trade Confirmation Trade Capture Report Confirmation Message
  if msg_type == 205061 then
    return true
  end

  -- After Hours Block Trade Trade Capture Report Confirmation Message
  if msg_type == 205062 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Neeq NeeqSecurities OrderEntry BjseBinary 1.1 (Tcp)
local function omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp message message dispatch
  if not neeq_neeqsecurities_orderentry_bjsebinary_v1_1.message.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1
  omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Neeq NeeqSecurities OrderEntry BjseBinary 1.1
omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1:register_heuristic("tcp", omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1_tcp_heuristic)

-- Register Neeq NeeqSecurities OrderEntry BjseBinary 1.1 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_neeq_neeqsecurities_orderentry_bjsebinary_v1_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Equities Exchange and Quotations
--   Version: 1.1
--   Date: Wednesday, December 31, 2025
--   Specification: 20251231194558_3eigny7no7.pdf
--
-- Script:
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
