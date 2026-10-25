-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme Ebs iLink3 Sbe 8.3 Protocol
local omi_cme_ebs_ilink3_sbe_v8_3 = Proto("Omi.Cme.Ebs.iLink3.Sbe.v8.3", "Cme Ebs iLink3 Sbe 8.3")

-- Protocol table
local cme_ebs_ilink3_sbe_v8_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cme Ebs iLink3 Sbe 8.3 Fields
omi_cme_ebs_ilink3_sbe_v8_3.fields.access_key_id = ProtoField.new("Access Key Id", "cme.ebs.ilink3.sbe.v8.3.accesskeyid", ftypes.STRING, nil, nil, nil, "Contains the AccessKeyID assigned to this session on this port.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.aggressor_indicator = ProtoField.new("Aggressor Indicator", "cme.ebs.ilink3.sbe.v8.3.aggressorindicator", ftypes.UINT8, nil, nil, nil, "Indicates if order was incoming or resting for the match event")
omi_cme_ebs_ilink3_sbe_v8_3.fields.aon = ProtoField.new("Aon", "cme.ebs.ilink3.sbe.v8.3.aon", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cme_ebs_ilink3_sbe_v8_3.fields.auto_quote_request = ProtoField.new("Auto Quote Request", "cme.ebs.ilink3.sbe.v8.3.autoquoterequest", ftypes.UINT8, nil, nil, nil, "Boolean flag (0/1) to automatically send a quote request message following the security definition (35=d) message.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.avg_px_group_id = ProtoField.new("Avg Px Group Id", "cme.ebs.ilink3.sbe.v8.3.avgpxgroupid", ftypes.STRING, nil, nil, nil, "Used by submitting firm to group trades being allocated into an average price group. The trades in average price group will be used to calculate an average price for the group")
omi_cme_ebs_ilink3_sbe_v8_3.fields.avg_px_indicator = ProtoField.new("Avg Px Indicator", "cme.ebs.ilink3.sbe.v8.3.avgpxindicator", ftypes.UINT8, nil, nil, nil, "Average pricing indicator")
omi_cme_ebs_ilink3_sbe_v8_3.fields.bid_size = ProtoField.new("Bid Size", "cme.ebs.ilink3.sbe.v8.3.bidsize", ftypes.UINT32, nil, nil, nil, "Quantity of bid. This goes together with bid price (tag 132).")
omi_cme_ebs_ilink3_sbe_v8_3.fields.block_length = ProtoField.new("Block Length", "cme.ebs.ilink3.sbe.v8.3.blocklength", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.business_reject_reason = ProtoField.new("Business Reject Reason", "cme.ebs.ilink3.sbe.v8.3.businessrejectreason", ftypes.UINT16, nil, nil, nil, "Code to identify reason for a Business Message Reject message")
omi_cme_ebs_ilink3_sbe_v8_3.fields.business_reject_ref_id = ProtoField.new("Business Reject Ref Id", "cme.ebs.ilink3.sbe.v8.3.businessrejectrefid", ftypes.UINT64, nil, nil, nil, "The value of the business-level ID field on the message being referenced. Required unless the corresponding ID field was not specified.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.cancelled_symbol = ProtoField.new("Cancelled Symbol", "cme.ebs.ilink3.sbe.v8.3.cancelledsymbol", ftypes.STRING, nil, nil, nil, "Instrument Group cancelled for a Quote Cancel acknowledgement.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.clearing_account_type = ProtoField.new("Clearing Account Type", "cme.ebs.ilink3.sbe.v8.3.clearingaccounttype", ftypes.UINT8, nil, nil, nil, "Designates the account type to be used for the order when submitted to clearing")
omi_cme_ebs_ilink3_sbe_v8_3.fields.clearing_trade_price_type = ProtoField.new("Clearing Trade Price Type", "cme.ebs.ilink3.sbe.v8.3.clearingtradepricetype", ftypes.UINT8, nil, nil, nil, "Indicates to recipient whether trade is clearing at execution prices LastPx (tag 31) or alternate clearing price (prior day settlement price)")
omi_cme_ebs_ilink3_sbe_v8_3.fields.clordid = ProtoField.new("ClOrdId", "cme.ebs.ilink3.sbe.v8.3.clordid", ftypes.STRING, nil, nil, nil, "Unique identifier for Order as assigned by the buy-side (institution, broker, intermediary etc.). Uniqueness must be guaranteed within a single trading day. Firms, particularly those which electronically submit multi-day orders, trade globally or throughout market close periods, should ensure uniqueness across days, for example by embedding a date within the ClOrdID field")
omi_cme_ebs_ilink3_sbe_v8_3.fields.cmta_giveup_cd = ProtoField.new("Cmta Giveup Cd", "cme.ebs.ilink3.sbe.v8.3.cmtagiveupcd", ftypes.STRING, nil, nil, nil, "Indicates if the order is a give-up or SGX offset. Reject if greater than max length or not containing valid value.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.credentials = ProtoField.new("Credentials", "cme.ebs.ilink3.sbe.v8.3.credentials", ftypes.STRING, nil, nil, nil, "Not used and will be set to 0")
omi_cme_ebs_ilink3_sbe_v8_3.fields.credentials_data = ProtoField.new("Credentials Data", "cme.ebs.ilink3.sbe.v8.3.credentialsdata", ftypes.BYTES, nil, nil, nil, "Variable Length Data")
omi_cme_ebs_ilink3_sbe_v8_3.fields.credentials_length = ProtoField.new("Credentials Length", "cme.ebs.ilink3.sbe.v8.3.credentialslength", ftypes.UINT16, nil, nil, nil, "Length Field")
omi_cme_ebs_ilink3_sbe_v8_3.fields.cross_id = ProtoField.new("Cross Id", "cme.ebs.ilink3.sbe.v8.3.crossid", ftypes.UINT64, nil, nil, nil, "Identifier for a cross order. Must be unique during a given trading day")
omi_cme_ebs_ilink3_sbe_v8_3.fields.cross_id_optional = ProtoField.new("Cross Id Optional", "cme.ebs.ilink3.sbe.v8.3.crossidoptional", ftypes.UINT64, nil, nil, nil, "Identifier for a cross order. Will be present if execution report is in response to a cross order")
omi_cme_ebs_ilink3_sbe_v8_3.fields.cross_type = ProtoField.new("Cross Type", "cme.ebs.ilink3.sbe.v8.3.crosstype", ftypes.UINT8, nil, nil, nil, "ype of cross being submitted to a market. (if in response to a cross order)")
omi_cme_ebs_ilink3_sbe_v8_3.fields.cum_qty = ProtoField.new("Cum Qty", "cme.ebs.ilink3.sbe.v8.3.cumqty", ftypes.UINT32, nil, nil, nil, "Total quantity filled")
omi_cme_ebs_ilink3_sbe_v8_3.fields.currency = ProtoField.new("Currency", "cme.ebs.ilink3.sbe.v8.3.currency", ftypes.STRING, nil, nil, nil, "Identifies the currency for the price")
omi_cme_ebs_ilink3_sbe_v8_3.fields.cust_order_capacity = ProtoField.new("Cust Order Capacity", "cme.ebs.ilink3.sbe.v8.3.custordercapacity", ftypes.UINT8, nil, nil, nil, "Capacity of customer placing the order. Used by futures exchanges to indicate the CTICode (customer type indicator) as required by the US CFTC (Commodity Futures Trading Commission)")
omi_cme_ebs_ilink3_sbe_v8_3.fields.cust_order_handling_inst = ProtoField.new("Cust Order Handling Inst", "cme.ebs.ilink3.sbe.v8.3.custorderhandlinginst", ftypes.STRING, nil, nil, nil, "Codes that apply special information that the Broker / Dealer needs to report, as specified by the customer. Defines source of the order")
omi_cme_ebs_ilink3_sbe_v8_3.fields.cxl_rej_reason = ProtoField.new("Cxl Rej Reason", "cme.ebs.ilink3.sbe.v8.3.cxlrejreason", ftypes.UINT16, nil, nil, nil, "Code to identify reason for cancel rejection")
omi_cme_ebs_ilink3_sbe_v8_3.fields.day = ProtoField.new("Day", "cme.ebs.ilink3.sbe.v8.3.day", ftypes.UINT8, nil, nil, nil, "DD")
omi_cme_ebs_ilink3_sbe_v8_3.fields.delay_duration = ProtoField.new("Delay Duration", "cme.ebs.ilink3.sbe.v8.3.delayduration", ftypes.UINT16, nil, nil, nil, "Indicates the amount of time that a message was delayed as a result of being split (9553=0) or as a result of being out of order due to TCP retransmission (9553=1) or as a result of being queued behind a split message (9553=2). Represented as number of nanoseconds in unix epoch format (since Jan 1, 1970). Subtracting this number from FIFO time will represent original received time of delayed message")
omi_cme_ebs_ilink3_sbe_v8_3.fields.display_qty = ProtoField.new("Display Qty", "cme.ebs.ilink3.sbe.v8.3.displayqty", ftypes.UINT32, nil, nil, nil, "The quantity to be displayed . Required for iceberg orders. On orders specifies the qty to be displayed, on execution reports the currently displayed quantity")
omi_cme_ebs_ilink3_sbe_v8_3.fields.dk_reason = ProtoField.new("Dk Reason", "cme.ebs.ilink3.sbe.v8.3.dkreason", ftypes.STRING, nil, nil, nil, "Reason for execution rejection")
omi_cme_ebs_ilink3_sbe_v8_3.fields.encoding_type = ProtoField.new("Encoding Type", "cme.ebs.ilink3.sbe.v8.3.encodingtype", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.end_date = ProtoField.new("End Date", "cme.ebs.ilink3.sbe.v8.3.enddate", ftypes.UINT16, nil, nil, nil, "End date of a financing deal, i.e. the date the seller reimburses the buyer and takes back control of the collateral")
omi_cme_ebs_ilink3_sbe_v8_3.fields.error_codes = ProtoField.new("Error Codes", "cme.ebs.ilink3.sbe.v8.3.errorcodes", ftypes.UINT16, nil, nil, nil, "Error code for reject reason")
omi_cme_ebs_ilink3_sbe_v8_3.fields.exchange_quote_req_id = ProtoField.new("Exchange Quote Req Id", "cme.ebs.ilink3.sbe.v8.3.exchangequotereqid", ftypes.STRING, nil, nil, nil, "CME Globex generated QuoteID")
omi_cme_ebs_ilink3_sbe_v8_3.fields.exec_ack_status = ProtoField.new("Exec Ack Status", "cme.ebs.ilink3.sbe.v8.3.execackstatus", ftypes.UINT8, nil, nil, nil, "Indicates the status of the execution acknowledgement")
omi_cme_ebs_ilink3_sbe_v8_3.fields.exec_id = ProtoField.new("Exec Id", "cme.ebs.ilink3.sbe.v8.3.execid", ftypes.STRING, nil, nil, nil, "Unique identifier of execution message as assigned by the exchange unique per day across all instruments and across all good till orders.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.exec_inst = ProtoField.new("Exec Inst", "cme.ebs.ilink3.sbe.v8.3.execinst", ftypes.STRING, nil, nil, nil, "ExecInst bit set")
omi_cme_ebs_ilink3_sbe_v8_3.fields.exec_inst_reserved_1 = ProtoField.new("Exec Inst Reserved 1", "cme.ebs.ilink3.sbe.v8.3.execinstreserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08, "Reserved1")
omi_cme_ebs_ilink3_sbe_v8_3.fields.exec_inst_reserved_2 = ProtoField.new("Exec Inst Reserved 2", "cme.ebs.ilink3.sbe.v8.3.execinstreserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10, "Reserved2")
omi_cme_ebs_ilink3_sbe_v8_3.fields.exec_inst_reserved_3 = ProtoField.new("Exec Inst Reserved 3", "cme.ebs.ilink3.sbe.v8.3.execinstreserved3", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20, "Reserved3")
omi_cme_ebs_ilink3_sbe_v8_3.fields.exec_inst_reserved_4 = ProtoField.new("Exec Inst Reserved 4", "cme.ebs.ilink3.sbe.v8.3.execinstreserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40, "Reserved4")
omi_cme_ebs_ilink3_sbe_v8_3.fields.exec_inst_reserved_5 = ProtoField.new("Exec Inst Reserved 5", "cme.ebs.ilink3.sbe.v8.3.execinstreserved5", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80, "Reserved5")
omi_cme_ebs_ilink3_sbe_v8_3.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "cme.ebs.ilink3.sbe.v8.3.execrestatementreason", ftypes.UINT8, nil, nil, nil, "Used to communicate unsolicited cancels")
omi_cme_ebs_ilink3_sbe_v8_3.fields.exec_type = ProtoField.new("Exec Type", "cme.ebs.ilink3.sbe.v8.3.exectype", ftypes.STRING, nil, nil, nil, "Describes the specific ExecutionRpt as trade cancellation or correction")
omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_mode = ProtoField.new("Execution Mode", "cme.ebs.ilink3.sbe.v8.3.executionmode", ftypes.STRING, nil, nil, nil, "Identifies whether the order should be treated as passive (will not match when entered) or aggressive (could match when entered); default behavior when absent is aggressive")
omi_cme_ebs_ilink3_sbe_v8_3.fields.executor = ProtoField.new("Executor", "cme.ebs.ilink3.sbe.v8.3.executor", ftypes.UINT64, nil, nil, nil, "Will be populated with a short code for the person or algo identified in FIX tag 5392 which will be mapped to National ID or Algo at reporting time. Applicable for EU fixed income markets only")
omi_cme_ebs_ilink3_sbe_v8_3.fields.expiration_cycle = ProtoField.new("Expiration Cycle", "cme.ebs.ilink3.sbe.v8.3.expirationcycle", ftypes.UINT8, nil, nil, nil, "For tag 827-ExpirationCycle=2, instrument expires as indicated in market data Security Definition (tag 35-MsgType=d) repeating block: Tag 865-EventType=7 (Last Eligible Trade Date) Tag 1145-EventTime")
omi_cme_ebs_ilink3_sbe_v8_3.fields.expire_date = ProtoField.new("Expire Date", "cme.ebs.ilink3.sbe.v8.3.expiredate", ftypes.UINT16, nil, nil, nil, "Date of order expiration (last day the order can trade), always expressed in terms of the local market date. Applicable only to GTD orders which expire at the end of the trading session specified. This has to be a future or current session date and cannot be in the past.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.exponent = ProtoField.new("Exponent", "cme.ebs.ilink3.sbe.v8.3.exponent", ftypes.INT8)
omi_cme_ebs_ilink3_sbe_v8_3.fields.fault_tolerance_indicator = ProtoField.new("Fault Tolerance Indicator", "cme.ebs.ilink3.sbe.v8.3.faulttoleranceindicator", ftypes.UINT8, nil, nil, nil, "Indicates whether the connection is primary or backup")
omi_cme_ebs_ilink3_sbe_v8_3.fields.fill_exec_id = ProtoField.new("Fill Exec Id", "cme.ebs.ilink3.sbe.v8.3.fillexecid", ftypes.STRING, nil, nil, nil, "Used as an identifier for each fill reason or allocation reported in single Execution Report. Required if NoFills(1362) > 0. Append FillExecID with ExecID to derive unique identifier for each fill reason or allocation")
omi_cme_ebs_ilink3_sbe_v8_3.fields.fill_px = ProtoField.new("Fill Px", "cme.ebs.ilink3.sbe.v8.3.fillpx", ftypes.DOUBLE, nil, nil, nil, "Price of this fill reason or allocation. Required if NoFills(1362) > 0. Same as LastPx(31)")
omi_cme_ebs_ilink3_sbe_v8_3.fields.fill_qty = ProtoField.new("Fill Qty", "cme.ebs.ilink3.sbe.v8.3.fillqty", ftypes.UINT32, nil, nil, nil, "Quantity bought/sold for this fill reason")
omi_cme_ebs_ilink3_sbe_v8_3.fields.fill_yield_type = ProtoField.new("Fill Yield Type", "cme.ebs.ilink3.sbe.v8.3.fillyieldtype", ftypes.UINT8, nil, nil, nil, "Enumeration of the Fill Reason field using Integer. This identifies the type of match algorithm")
omi_cme_ebs_ilink3_sbe_v8_3.fields.fills_group = ProtoField.new("Fills Group", "cme.ebs.ilink3.sbe.v8.3.fillsgroup", ftypes.STRING, nil, nil, nil, "Specifies the number of fill reasons included in this Execution Report")
omi_cme_ebs_ilink3_sbe_v8_3.fields.fills_groups = ProtoField.new("Fills Groups", "cme.ebs.ilink3.sbe.v8.3.fillsgroups", ftypes.STRING, nil, nil, nil, "NoFills Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.financial_instrument_full_name = ProtoField.new("Financial Instrument Full Name", "cme.ebs.ilink3.sbe.v8.3.financialinstrumentfullname", ftypes.STRING, nil, nil, nil, "Long name of the instrument for TM Repo")
omi_cme_ebs_ilink3_sbe_v8_3.fields.firm = ProtoField.new("Firm", "cme.ebs.ilink3.sbe.v8.3.firm", ftypes.STRING, nil, nil, nil, "Firm ID")
omi_cme_ebs_ilink3_sbe_v8_3.fields.from_seq_no = ProtoField.new("From Seq No", "cme.ebs.ilink3.sbe.v8.3.fromseqno", ftypes.UINT32, nil, nil, nil, "Sequence number of the first business message requested. This should not be greater than the latest sequence number from CME")
omi_cme_ebs_ilink3_sbe_v8_3.fields.group_size = ProtoField.new("Group Size", "cme.ebs.ilink3.sbe.v8.3.groupsize", ftypes.STRING, nil, nil, nil, "Repeating group dimensions")
omi_cme_ebs_ilink3_sbe_v8_3.fields.hmac_signature = ProtoField.new("Hmac Signature", "cme.ebs.ilink3.sbe.v8.3.hmacsignature", ftypes.BYTES)
omi_cme_ebs_ilink3_sbe_v8_3.fields.host_cross_id = ProtoField.new("Host Cross Id", "cme.ebs.ilink3.sbe.v8.3.hostcrossid", ftypes.UINT64, nil, nil, nil, "Host assigned entity ID that can be used to reference all components of a cross; sides + strategy + legs. The HostCrossID will also be used to link together components of the cross order. For example, each individual execution report associated with the order will carry HostCrossID in order to tie them back together to the original cross order.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.idm_short_code = ProtoField.new("Idm Short Code", "cme.ebs.ilink3.sbe.v8.3.idmshortcode", ftypes.UINT64, nil, nil, nil, "Represents the Investment Decision Maker Short Code. Applicable for EU fixed income markets only")
omi_cme_ebs_ilink3_sbe_v8_3.fields.keep_alive_interval = ProtoField.new("Keep Alive Interval", "cme.ebs.ilink3.sbe.v8.3.keepaliveinterval", ftypes.UINT16, nil, nil, nil, "The longest time in milliseconds the customer or CME could remain silent before sending a keep alive message")
omi_cme_ebs_ilink3_sbe_v8_3.fields.keep_alive_interval_lapsed = ProtoField.new("Keep Alive Interval Lapsed", "cme.ebs.ilink3.sbe.v8.3.keepaliveintervallapsed", ftypes.UINT8, nil, nil, nil, "This indicates if the Sequence message being sent by CME is to warn that one keep alive interval has lapsed without any message received from customer (this can also be sent from customer to CME)")
omi_cme_ebs_ilink3_sbe_v8_3.fields.last_fragment = ProtoField.new("Last Fragment", "cme.ebs.ilink3.sbe.v8.3.lastfragment", ftypes.UINT8, nil, nil, nil, "Indicates whether the message is the last message in a sequence of messages to support fragmentation")
omi_cme_ebs_ilink3_sbe_v8_3.fields.last_px = ProtoField.new("Last Px", "cme.ebs.ilink3.sbe.v8.3.lastpx", ftypes.DOUBLE, nil, nil, nil, "Price of this (last) fill")
omi_cme_ebs_ilink3_sbe_v8_3.fields.last_qty = ProtoField.new("Last Qty", "cme.ebs.ilink3.sbe.v8.3.lastqty", ftypes.UINT32, nil, nil, nil, "Quantity of shares bought/sold on this (last) fill")
omi_cme_ebs_ilink3_sbe_v8_3.fields.last_rpt_requested = ProtoField.new("Last Rpt Requested", "cme.ebs.ilink3.sbe.v8.3.lastrptrequested", ftypes.UINT8, nil, nil, nil, "Indicates whether this message is the last report message in response to an Order Mass Status Request. Required if responding to a Order Mass Status Request.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.last_uuid = ProtoField.new("Last Uuid", "cme.ebs.ilink3.sbe.v8.3.lastuuid", ftypes.UINT64, nil, nil, nil, "If RetransmitRequest is for a previous UUID then put that here otherwise put default null value")
omi_cme_ebs_ilink3_sbe_v8_3.fields.leaves_qty = ProtoField.new("Leaves Qty", "cme.ebs.ilink3.sbe.v8.3.leavesqty", ftypes.UINT32, nil, nil, nil, "Quantity open for further execution; LeavesQty = OrderQty (38) - CumQty (14); Only present for outrights and spreads and not spread legs")
omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_exec_id = ProtoField.new("Leg Exec Id", "cme.ebs.ilink3.sbe.v8.3.legexecid", ftypes.UINT64, nil, nil, nil, "The ExecID (17) value corresponding to a trade leg.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_exec_ref_id = ProtoField.new("Leg Exec Ref Id", "cme.ebs.ilink3.sbe.v8.3.legexecrefid", ftypes.UINT64, nil, nil, nil, "The original ExecID(17) value corresponding to trade leg which is being corrected")
omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_last_px = ProtoField.new("Leg Last Px", "cme.ebs.ilink3.sbe.v8.3.leglastpx", ftypes.DOUBLE, nil, nil, nil, "Execution price assigned to a leg of a multileg instrument")
omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_last_qty = ProtoField.new("Leg Last Qty", "cme.ebs.ilink3.sbe.v8.3.leglastqty", ftypes.UINT32, nil, nil, nil, "Fill quantity for the leg instrument")
omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_option_delta = ProtoField.new("Leg Option Delta", "cme.ebs.ilink3.sbe.v8.3.legoptiondelta", ftypes.STRING, nil, nil, nil, "Up to 26 legs (i.e., repeating groups) supported for UDS for options. Up to 40 legs (i.e., repeating groups) supported for UDS for futures. Will be set to 0 for REPO")
omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_price = ProtoField.new("Leg Price", "cme.ebs.ilink3.sbe.v8.3.legprice", ftypes.DOUBLE, nil, nil, nil, "Price of the futures contract as part of UDS Covered")
omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "cme.ebs.ilink3.sbe.v8.3.legratioqty", ftypes.UINT8, nil, nil, nil, "Specifies ratio for the instrument defined in this repeating group. Required for any UDS options leg. Optional for Covereds leg")
omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_security_id = ProtoField.new("Leg Security Id", "cme.ebs.ilink3.sbe.v8.3.legsecurityid", ftypes.INT32, nil, nil, nil, "Multileg instrument's individual security's SecurityID")
omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_side = ProtoField.new("Leg Side", "cme.ebs.ilink3.sbe.v8.3.legside", ftypes.UINT8, nil, nil, nil, "The side of this individual leg of a multileg security")
omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_trade_id = ProtoField.new("Leg Trade Id", "cme.ebs.ilink3.sbe.v8.3.legtradeid", ftypes.UINT32, nil, nil, nil, "The TradeID value corresponding to a trade leg")
omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_trade_ref_id = ProtoField.new("Leg Trade Ref Id", "cme.ebs.ilink3.sbe.v8.3.legtraderefid", ftypes.UINT32, nil, nil, nil, "Refers to the original LegTradeID of the leg trade being corrected")
omi_cme_ebs_ilink3_sbe_v8_3.fields.liquidity_flag = ProtoField.new("Liquidity Flag", "cme.ebs.ilink3.sbe.v8.3.liquidityflag", ftypes.UINT8, nil, nil, nil, "New field added to capture if an order was submitted for market making obligation or not. Applicable only for EU fixed income markets")
omi_cme_ebs_ilink3_sbe_v8_3.fields.list_update_action = ProtoField.new("List Update Action", "cme.ebs.ilink3.sbe.v8.3.listupdateaction", ftypes.STRING, nil, nil, nil, "Indicates if all of the information sent in this message with a unique new PartyDetailsListRequestID is a new addition or deletion of existing information associated with an existing PartyDetailsListRequestID. For PartyDetailsListRequestID=FFFFFFFF this should always be set to \"A\"")
omi_cme_ebs_ilink3_sbe_v8_3.fields.location = ProtoField.new("Location", "cme.ebs.ilink3.sbe.v8.3.location", ftypes.STRING, nil, nil, nil, "Text describing sender's location (i.e. geopraphic location and/or desk)")
omi_cme_ebs_ilink3_sbe_v8_3.fields.location_optional = ProtoField.new("Location Optional", "cme.ebs.ilink3.sbe.v8.3.locationoptional", ftypes.STRING, nil, nil, nil, "Text describing sender's location (i.e. geopraphic location and/or desk)")
omi_cme_ebs_ilink3_sbe_v8_3.fields.managed_order = ProtoField.new("Managed Order", "cme.ebs.ilink3.sbe.v8.3.managedorder", ftypes.UINT8, nil, nil, nil, "Boolean: flags a managed order")
omi_cme_ebs_ilink3_sbe_v8_3.fields.mantissa = ProtoField.new("Mantissa", "cme.ebs.ilink3.sbe.v8.3.mantissa", ftypes.INT64)
omi_cme_ebs_ilink3_sbe_v8_3.fields.mantissa_32 = ProtoField.new("Mantissa 32", "cme.ebs.ilink3.sbe.v8.3.mantissa32", ftypes.INT32, nil, nil, nil, "mantissa")
omi_cme_ebs_ilink3_sbe_v8_3.fields.manual_order_indicator = ProtoField.new("Manual Order Indicator", "cme.ebs.ilink3.sbe.v8.3.manualorderindicator", ftypes.UINT8, nil, nil, nil, "Indicates if the order was initially received manually (as opposed to electronically)")
omi_cme_ebs_ilink3_sbe_v8_3.fields.manual_order_indicator_optional = ProtoField.new("Manual Order Indicator Optional", "cme.ebs.ilink3.sbe.v8.3.manualorderindicatoroptional", ftypes.UINT8, nil, nil, nil, "Indicates if order was sent manually or generated by automated trading logi")
omi_cme_ebs_ilink3_sbe_v8_3.fields.market_segment_id = ProtoField.new("Market Segment Id", "cme.ebs.ilink3.sbe.v8.3.marketsegmentid", ftypes.UINT8, nil, nil, nil, "Specifies the market segment (physical match engine partition) for which working orders should be cancelled. Conditionally Required if MassActionScope=\"Market Segment\" (Tag 1374=9). Will be ignored if present for any other criteria specified in MassActionScope besides Market Segment")
omi_cme_ebs_ilink3_sbe_v8_3.fields.mass_status_req_id = ProtoField.new("Mass Status Req Id", "cme.ebs.ilink3.sbe.v8.3.massstatusreqid", ftypes.UINT64, nil, nil, nil, "Unique ID of OrderMassStatusRequest as assigned by the customer and present in Execution Report as well")
omi_cme_ebs_ilink3_sbe_v8_3.fields.mass_status_req_id_optional = ProtoField.new("Mass Status Req Id Optional", "cme.ebs.ilink3.sbe.v8.3.massstatusreqidoptional", ftypes.UINT64, nil, nil, nil, "Unique ID of Order Mass Status Request as assigned by the client system")
omi_cme_ebs_ilink3_sbe_v8_3.fields.mass_status_req_type = ProtoField.new("Mass Status Req Type", "cme.ebs.ilink3.sbe.v8.3.massstatusreqtype", ftypes.UINT8, nil, nil, nil, "Specifies the scope of the OrderMassStatusRequest within the context of working orders only. Status will be returned for all orders matching the criteria specified here for Session and Firm")
omi_cme_ebs_ilink3_sbe_v8_3.fields.mass_status_tif = ProtoField.new("Mass Status Tif", "cme.ebs.ilink3.sbe.v8.3.massstatustif", ftypes.UINT8, nil, nil, nil, "Specifies the scope of the OrderMassStatusRequest within the context of MassStatusRequestType (585) if present. Absence of this field is interpreted as Day & GTC & GTD. FAK is excluded since scope is limited to working orders only")
omi_cme_ebs_ilink3_sbe_v8_3.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "cme.ebs.ilink3.sbe.v8.3.maturitymonthyear", ftypes.STRING, nil, nil, nil, "SecurityDefinitionResponse")
omi_cme_ebs_ilink3_sbe_v8_3.fields.max_no_of_substitutions = ProtoField.new("Max No Of Substitutions", "cme.ebs.ilink3.sbe.v8.3.maxnoofsubstitutions", ftypes.UINT8, nil, nil, nil, "Max number of substitutions allowed. The value of 0 indicates that substitutions are not allowed.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.md_trade_entry_id = ProtoField.new("Md Trade Entry Id", "cme.ebs.ilink3.sbe.v8.3.mdtradeentryid", ftypes.UINT32, nil, nil, nil, "Market Data Trade Entry ID. This identifier is assigned to all trades that take place for an instrument at a particular price level")
omi_cme_ebs_ilink3_sbe_v8_3.fields.memo = ProtoField.new("Memo", "cme.ebs.ilink3.sbe.v8.3.memo", ftypes.STRING, nil, nil, nil, "This general purpose text field could be mapped from iLink to Clearing STP for trades. Not available for use with the short format where PartyDetailsListRequestID not equal to FFFFFFFF. Available for use only with the long format where PartyDetailsListRequestID=FFFFFFFF")
omi_cme_ebs_ilink3_sbe_v8_3.fields.message_length = ProtoField.new("Message Length", "cme.ebs.ilink3.sbe.v8.3.messagelength", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.min_qty = ProtoField.new("Min Qty", "cme.ebs.ilink3.sbe.v8.3.minqty", ftypes.UINT32, nil, nil, nil, "Minimum quantity of an order to be executed")
omi_cme_ebs_ilink3_sbe_v8_3.fields.mm_protection_reset = ProtoField.new("Mm Protection Reset", "cme.ebs.ilink3.sbe.v8.3.mmprotectionreset", ftypes.UINT8, nil, nil, nil, "When market maker protection is triggered CME will not accept any new quotes from the market maker for that product group until it receives a mass quote message with the MMProtectionReset flag set to true")
omi_cme_ebs_ilink3_sbe_v8_3.fields.month = ProtoField.new("Month", "cme.ebs.ilink3.sbe.v8.3.month", ftypes.UINT8, nil, nil, nil, "MM")
omi_cme_ebs_ilink3_sbe_v8_3.fields.msg_count = ProtoField.new("Msg Count", "cme.ebs.ilink3.sbe.v8.3.msgcount", ftypes.UINT32, nil, nil, nil, "Count of how many messages have not been applied")
omi_cme_ebs_ilink3_sbe_v8_3.fields.msg_count_16 = ProtoField.new("Msg Count 16", "cme.ebs.ilink3.sbe.v8.3.msgcount16", ftypes.UINT16, nil, nil, nil, "Count of business messages requested")
omi_cme_ebs_ilink3_sbe_v8_3.fields.next_seq_no = ProtoField.new("Next Seq No", "cme.ebs.ilink3.sbe.v8.3.nextseqno", ftypes.UINT32, nil, nil, nil, "Next expected message sequence number")
omi_cme_ebs_ilink3_sbe_v8_3.fields.nh = ProtoField.new("Nh", "cme.ebs.ilink3.sbe.v8.3.nh", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cme_ebs_ilink3_sbe_v8_3.fields.no_processed_entries = ProtoField.new("No Processed Entries", "cme.ebs.ilink3.sbe.v8.3.noprocessedentries", ftypes.UINT8, nil, nil, nil, "Number of quotes that have been accepted from the corresponding inbound message")
omi_cme_ebs_ilink3_sbe_v8_3.fields.num_in_group = ProtoField.new("Num In Group", "cme.ebs.ilink3.sbe.v8.3.numingroup", ftypes.UINT8)
omi_cme_ebs_ilink3_sbe_v8_3.fields.ob = ProtoField.new("Ob", "cme.ebs.ilink3.sbe.v8.3.ob", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cme_ebs_ilink3_sbe_v8_3.fields.offer_size = ProtoField.new("Offer Size", "cme.ebs.ilink3.sbe.v8.3.offersize", ftypes.UINT32, nil, nil, nil, "Quantity of offer. This goes together with offer price (tag 133).")
omi_cme_ebs_ilink3_sbe_v8_3.fields.ofm_override = ProtoField.new("Ofm Override", "cme.ebs.ilink3.sbe.v8.3.ofmoverride", ftypes.UINT8, nil, nil, nil, "Flag indicating whether the order quantity stipulated on replace request should be entered into the market as stated without reduction for any fills that have occurred. Also once enabled in the order chain it cannot be disabled")
omi_cme_ebs_ilink3_sbe_v8_3.fields.option_delta = ProtoField.new("Option Delta", "cme.ebs.ilink3.sbe.v8.3.optiondelta", ftypes.STRING, nil, nil, nil, "ExecutionReportTradeSpreadLeg")
omi_cme_ebs_ilink3_sbe_v8_3.fields.ord_rej_reason = ProtoField.new("Ord Rej Reason", "cme.ebs.ilink3.sbe.v8.3.ordrejreason", ftypes.UINT16, nil, nil, nil, "Code to identify reason for order rejection")
omi_cme_ebs_ilink3_sbe_v8_3.fields.ord_status = ProtoField.new("Ord Status", "cme.ebs.ilink3.sbe.v8.3.ordstatus", ftypes.STRING, nil, nil, nil, "Identifies status of order")
omi_cme_ebs_ilink3_sbe_v8_3.fields.ord_status_req_id = ProtoField.new("Ord Status Req Id", "cme.ebs.ilink3.sbe.v8.3.ordstatusreqid", ftypes.UINT64, nil, nil, nil, "Used to uniquely identify a specific Order Status Request message. Echoed back on Execution Report as well")
omi_cme_ebs_ilink3_sbe_v8_3.fields.ord_status_req_id_optional = ProtoField.new("Ord Status Req Id Optional", "cme.ebs.ilink3.sbe.v8.3.ordstatusreqidoptional", ftypes.UINT64, nil, nil, nil, "Used to uniquely identify a specific Order Status Request message")
omi_cme_ebs_ilink3_sbe_v8_3.fields.ord_status_req_type = ProtoField.new("Ord Status Req Type", "cme.ebs.ilink3.sbe.v8.3.ordstatusreqtype", ftypes.UINT8, nil, nil, nil, "If present — specifies the scope of the OrderMassStatusRequest within the context of MassStatusRequestType (585) and Session and Firm for working orders only. Status will be returned for all orders matching the criteria specified here for Session and Firm combination")
omi_cme_ebs_ilink3_sbe_v8_3.fields.ord_status_trd = ProtoField.new("Ord Status Trd", "cme.ebs.ilink3.sbe.v8.3.ordstatustrd", ftypes.UINT8, nil, nil, nil, "Identifies status of order as partially filled or completely filled")
omi_cme_ebs_ilink3_sbe_v8_3.fields.ord_status_trd_cxl = ProtoField.new("Ord Status Trd Cxl", "cme.ebs.ilink3.sbe.v8.3.ordstatustrdcxl", ftypes.STRING, nil, nil, nil, "Identifies status of order as trade cancellation or correction")
omi_cme_ebs_ilink3_sbe_v8_3.fields.ord_type = ProtoField.new("Ord Type", "cme.ebs.ilink3.sbe.v8.3.ordtype", ftypes.STRING, nil, nil, nil, "Order type")
omi_cme_ebs_ilink3_sbe_v8_3.fields.ord_type_optional = ProtoField.new("Ord Type Optional", "cme.ebs.ilink3.sbe.v8.3.ordtypeoptional", ftypes.STRING, nil, nil, nil, "Order type.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.order_event_exec_id = ProtoField.new("Order Event Exec Id", "cme.ebs.ilink3.sbe.v8.3.ordereventexecid", ftypes.UINT32, nil, nil, nil, "This is a unique ID which ties together a specific fill between two orders; It will be unique per instrument per day")
omi_cme_ebs_ilink3_sbe_v8_3.fields.order_event_px = ProtoField.new("Order Event Px", "cme.ebs.ilink3.sbe.v8.3.ordereventpx", ftypes.DOUBLE, nil, nil, nil, "Refers to the fill price; same as LastPx (Tag 31)")
omi_cme_ebs_ilink3_sbe_v8_3.fields.order_event_qty = ProtoField.new("Order Event Qty", "cme.ebs.ilink3.sbe.v8.3.ordereventqty", ftypes.UINT32, nil, nil, nil, "Refers to the specific fill quantity between this order and the opposite order")
omi_cme_ebs_ilink3_sbe_v8_3.fields.order_event_reason = ProtoField.new("Order Event Reason", "cme.ebs.ilink3.sbe.v8.3.ordereventreason", ftypes.UINT8, nil, nil, nil, "Action that caused the event to ocurr. 100=Binary Trade Reporting")
omi_cme_ebs_ilink3_sbe_v8_3.fields.order_event_text = ProtoField.new("Order Event Text", "cme.ebs.ilink3.sbe.v8.3.ordereventtext", ftypes.STRING, nil, nil, nil, "Will not be present for BrokerTec US; Will be populated with the firm ID of the opposite order for BrokerTec EU bilateral trades")
omi_cme_ebs_ilink3_sbe_v8_3.fields.order_event_type = ProtoField.new("Order Event Type", "cme.ebs.ilink3.sbe.v8.3.ordereventtype", ftypes.UINT8, nil, nil, nil, "The type of event affecting an order")
omi_cme_ebs_ilink3_sbe_v8_3.fields.order_id = ProtoField.new("Order Id", "cme.ebs.ilink3.sbe.v8.3.orderid", ftypes.UINT64, nil, nil, nil, "Unique identifier for order as assigned by the exchange. Uniqueness is guaranteed within a single trading day across all instruments.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.order_qty = ProtoField.new("Order Qty", "cme.ebs.ilink3.sbe.v8.3.orderqty", ftypes.UINT32, nil, nil, nil, "Number of shares or contracts ordered")
omi_cme_ebs_ilink3_sbe_v8_3.fields.order_qty_optional = ProtoField.new("Order Qty Optional", "cme.ebs.ilink3.sbe.v8.3.orderqtyoptional", ftypes.UINT32, nil, nil, nil, "Order quantity. Mandatory for buy or sell but not required for cross")
omi_cme_ebs_ilink3_sbe_v8_3.fields.order_request_id = ProtoField.new("Order Request Id", "cme.ebs.ilink3.sbe.v8.3.orderrequestid", ftypes.UINT64, nil, nil, nil, "Use OrderRequestID to identify a request to enter, modify or delete an order and echo the value on the ExecutionReport representing the response")
omi_cme_ebs_ilink3_sbe_v8_3.fields.orig_secondary_execution_id = ProtoField.new("Orig Secondary Execution Id", "cme.ebs.ilink3.sbe.v8.3.origsecondaryexecutionid", ftypes.UINT64, nil, nil, nil, "Unique identifier of the fill which is being corrected")
omi_cme_ebs_ilink3_sbe_v8_3.fields.orig_side_trade_id = ProtoField.new("Orig Side Trade Id", "cme.ebs.ilink3.sbe.v8.3.origsidetradeid", ftypes.UINT32, nil, nil, nil, "Refers back to the unique ID assigned to the corrected trade")
omi_cme_ebs_ilink3_sbe_v8_3.fields.original_order_event_exec_id = ProtoField.new("Original Order Event Exec Id", "cme.ebs.ilink3.sbe.v8.3.originalordereventexecid", ftypes.UINT32, nil, nil, nil, "Contains the previous OrderEventExecID value (Tag 1797) of the trade being adjusted or busted")
omi_cme_ebs_ilink3_sbe_v8_3.fields.outright_order_events_group = ProtoField.new("Outright Order Events Group", "cme.ebs.ilink3.sbe.v8.3.outrightordereventsgroup", ftypes.STRING, nil, nil, nil, "Number of fills which comprise fill quantity")
omi_cme_ebs_ilink3_sbe_v8_3.fields.outright_order_events_groups = ProtoField.new("Outright Order Events Groups", "cme.ebs.ilink3.sbe.v8.3.outrightordereventsgroups", ftypes.STRING, nil, nil, nil, "NoOrderEvents Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.outright_trade_events_group = ProtoField.new("Outright Trade Events Group", "cme.ebs.ilink3.sbe.v8.3.outrighttradeeventsgroup", ftypes.STRING, nil, nil, nil, "Number of fills which comprise fill quantity")
omi_cme_ebs_ilink3_sbe_v8_3.fields.outright_trade_events_groups = ProtoField.new("Outright Trade Events Groups", "cme.ebs.ilink3.sbe.v8.3.outrighttradeeventsgroups", ftypes.STRING, nil, nil, nil, "NoOrderEvents Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.ownership = ProtoField.new("Ownership", "cme.ebs.ilink3.sbe.v8.3.ownership", ftypes.UINT8, nil, nil, nil, "Specifies the owner of the work up private phase")
omi_cme_ebs_ilink3_sbe_v8_3.fields.party_detail_definition_status = ProtoField.new("Party Detail Definition Status", "cme.ebs.ilink3.sbe.v8.3.partydetaildefinitionstatus", ftypes.UINT8, nil, nil, nil, "Status of party detail definition for one party")
omi_cme_ebs_ilink3_sbe_v8_3.fields.party_detail_id = ProtoField.new("Party Detail Id", "cme.ebs.ilink3.sbe.v8.3.partydetailid", ftypes.STRING, nil, nil, nil, "The identification of the party. Required when NoPartyDetails(1671) > 0")
omi_cme_ebs_ilink3_sbe_v8_3.fields.party_detail_request_status = ProtoField.new("Party Detail Request Status", "cme.ebs.ilink3.sbe.v8.3.partydetailrequeststatus", ftypes.UINT8, nil, nil, nil, "Status of party details definition request")
omi_cme_ebs_ilink3_sbe_v8_3.fields.party_detail_role = ProtoField.new("Party Detail Role", "cme.ebs.ilink3.sbe.v8.3.partydetailrole", ftypes.UINT16, nil, nil, nil, "Identifies the type of PartyDetailID. Required when NoPartyDetails(1671) > 0")
omi_cme_ebs_ilink3_sbe_v8_3.fields.party_details_group = ProtoField.new("Party Details Group", "cme.ebs.ilink3.sbe.v8.3.partydetailsgroup", ftypes.STRING, nil, nil, nil, "Number of party details. More than one occurrence of the same party role is not allowed and will be rejected")
omi_cme_ebs_ilink3_sbe_v8_3.fields.party_details_groups = ProtoField.new("Party Details Groups", "cme.ebs.ilink3.sbe.v8.3.partydetailsgroups", ftypes.STRING, nil, nil, nil, "NoPartyDetails Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.party_details_list_report_id = ProtoField.new("Party Details List Report Id", "cme.ebs.ilink3.sbe.v8.3.partydetailslistreportid", ftypes.UINT64, nil, nil, nil, "Refers to the unique identifier of the PartyDetailsListRequest(35=CF) message used to request this PartyDetailsListReport")
omi_cme_ebs_ilink3_sbe_v8_3.fields.party_details_list_req_id = ProtoField.new("Party Details List Req Id", "cme.ebs.ilink3.sbe.v8.3.partydetailslistreqid", ftypes.UINT64, nil, nil, nil, "Refers to the ID of the related PartyDetailsDefinitionRequest message which will logically be tied to this message")
omi_cme_ebs_ilink3_sbe_v8_3.fields.party_details_list_req_id_optional = ProtoField.new("Party Details List Req Id Optional", "cme.ebs.ilink3.sbe.v8.3.partydetailslistreqidoptional", ftypes.UINT64, nil, nil, nil, "Refers to the ID of the related PartyDetailsDefinitionRequest message which will logically be tied to this message")
omi_cme_ebs_ilink3_sbe_v8_3.fields.party_id = ProtoField.new("Party Id", "cme.ebs.ilink3.sbe.v8.3.partyid", ftypes.UINT64, nil, nil, nil, "Required if NoPartyIDs(453) > 0. Identification of the PartyDetailsListRequestID of PartyDetailsDefinitionRequestAck")
omi_cme_ebs_ilink3_sbe_v8_3.fields.party_id_source = ProtoField.new("Party Id Source", "cme.ebs.ilink3.sbe.v8.3.partyidsource", ftypes.STRING, nil, nil, nil, "Required if NoPartyIDs(453) > 0. Used to identify classification source. Constant value")
omi_cme_ebs_ilink3_sbe_v8_3.fields.party_ids_group = ProtoField.new("Party Ids Group", "cme.ebs.ilink3.sbe.v8.3.partyidsgroup", ftypes.STRING, nil, nil, nil, "Number of PartyID (448), PartyIDSource (447), and PartyRole (452) entries. Applicable only if specific PartyDetailsDefinitions are being requested otherwise set to 0")
omi_cme_ebs_ilink3_sbe_v8_3.fields.party_ids_groups = ProtoField.new("Party Ids Groups", "cme.ebs.ilink3.sbe.v8.3.partyidsgroups", ftypes.STRING, nil, nil, nil, "NoPartyIDs Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.party_role = ProtoField.new("Party Role", "cme.ebs.ilink3.sbe.v8.3.partyrole", ftypes.UINT16, nil, nil, nil, "Required if NoPartyIDs(453) > 0. Identifies the type of PartyID(448)")
omi_cme_ebs_ilink3_sbe_v8_3.fields.poss_retrans_flag = ProtoField.new("Poss Retrans Flag", "cme.ebs.ilink3.sbe.v8.3.possretransflag", ftypes.UINT8, nil, nil, nil, "Flags message as possible retransmission. This will convey whether a message is an original transmission or duplicate in response to RetransmissionRequest. This will become pertinent when original messages get interleaved with Retransmission responses")
omi_cme_ebs_ilink3_sbe_v8_3.fields.previous_seq_no = ProtoField.new("Previous Seq No", "cme.ebs.ilink3.sbe.v8.3.previousseqno", ftypes.UINT32, nil, nil, nil, "Refers to the SeqNum sent in the previous message before this one from CME")
omi_cme_ebs_ilink3_sbe_v8_3.fields.previous_uuid = ProtoField.new("Previous Uuid", "cme.ebs.ilink3.sbe.v8.3.previousuuid", ftypes.UINT64, nil, nil, nil, "Refers to the UUID sent in the previous message before this one from CME")
omi_cme_ebs_ilink3_sbe_v8_3.fields.price = ProtoField.new("Price", "cme.ebs.ilink3.sbe.v8.3.price", ftypes.DOUBLE, nil, nil, nil, "Price per share or contract")
omi_cme_ebs_ilink3_sbe_v8_3.fields.price_optional = ProtoField.new("Price Optional", "cme.ebs.ilink3.sbe.v8.3.priceoptional", ftypes.DOUBLE, nil, nil, nil, "Price per share or contract. Conditionally required if the order type requires a price (not market orders)")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_ack_status = ProtoField.new("Quote Ack Status", "cme.ebs.ilink3.sbe.v8.3.quoteackstatus", ftypes.UINT8, nil, nil, nil, "Identifies the status of the quote acknowledgement.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_ack_entries_group = ProtoField.new("Quote Cancel Ack Entries Group", "cme.ebs.ilink3.sbe.v8.3.quotecancelackentriesgroup", ftypes.STRING, nil, nil, nil, "The number of quote entries for a quote set. Will be populated only for enumerated rejects for Cancel By Instrument")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_ack_entries_groups = ProtoField.new("Quote Cancel Ack Entries Groups", "cme.ebs.ilink3.sbe.v8.3.quotecancelackentriesgroups", ftypes.STRING, nil, nil, nil, "NoQuoteEntries Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_ack_sets_group = ProtoField.new("Quote Cancel Ack Sets Group", "cme.ebs.ilink3.sbe.v8.3.quotecancelacksetsgroup", ftypes.STRING, nil, nil, nil, "The number of sets of quotes in the message. Will be populated only for enumerated rejects for Cancel By Quote Set")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_ack_sets_groups = ProtoField.new("Quote Cancel Ack Sets Groups", "cme.ebs.ilink3.sbe.v8.3.quotecancelacksetsgroups", ftypes.STRING, nil, nil, nil, "NoQuoteSets Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_entries_group = ProtoField.new("Quote Cancel Entries Group", "cme.ebs.ilink3.sbe.v8.3.quotecancelentriesgroup", ftypes.STRING, nil, nil, nil, "The number of quote entries for quote sets, instruments, product group, cancel all; 298=1 (1 to 100); 298=3 (1); 298=4 (1); 298=100 (1 to 15)")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_entries_groups = ProtoField.new("Quote Cancel Entries Groups", "cme.ebs.ilink3.sbe.v8.3.quotecancelentriesgroups", ftypes.STRING, nil, nil, nil, "NoQuoteEntries Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_sets_group = ProtoField.new("Quote Cancel Sets Group", "cme.ebs.ilink3.sbe.v8.3.quotecancelsetsgroup", ftypes.STRING, nil, nil, nil, "The number of sets of quotes in the message. Conditionally required if 298=100")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_sets_groups = ProtoField.new("Quote Cancel Sets Groups", "cme.ebs.ilink3.sbe.v8.3.quotecancelsetsgroups", ftypes.STRING, nil, nil, nil, "NoQuoteSets Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_type = ProtoField.new("Quote Cancel Type", "cme.ebs.ilink3.sbe.v8.3.quotecanceltype", ftypes.UINT8, nil, nil, nil, "Identifies the type of Quote Cancel. A working quote can be cancelled by providing either it's instrument, instrument group or by cancelling all.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cxl_status = ProtoField.new("Quote Cxl Status", "cme.ebs.ilink3.sbe.v8.3.quotecxlstatus", ftypes.UINT8, nil, nil, nil, "Identifies the type of Quote Cancel. A working quote can be cancelled by providing either it's instrument, quote set, product group, or by cancelling all")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_entry_id = ProtoField.new("Quote Entry Id", "cme.ebs.ilink3.sbe.v8.3.quoteentryid", ftypes.UINT32, nil, nil, nil, "Unique identifier for a quote. The QuoteEntryID stays with the quote as a static identifier even if the quote is updated. For fills this value is transposed into client order ID (tag 11)")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_entry_reject_reason = ProtoField.new("Quote Entry Reject Reason", "cme.ebs.ilink3.sbe.v8.3.quoteentryrejectreason", ftypes.UINT8, nil, nil, nil, "Reason (error code) quote has been rejected")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_error_code = ProtoField.new("Quote Error Code", "cme.ebs.ilink3.sbe.v8.3.quoteerrorcode", ftypes.UINT16, nil, nil, nil, "Reason (error code) quote set cancel has been rejected.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_id = ProtoField.new("Quote Id", "cme.ebs.ilink3.sbe.v8.3.quoteid", ftypes.UINT32, nil, nil, nil, "Unique identifier for mass quote populated by the client system")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_reject_reason = ProtoField.new("Quote Reject Reason", "cme.ebs.ilink3.sbe.v8.3.quoterejectreason", ftypes.UINT16, nil, nil, nil, "Contains reason (error code) the corresponding MassQuote message has been rejected. When this tag is returned, all quotes in the corresponding Mass Quote message are rejected.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_req_id = ProtoField.new("Quote Req Id", "cme.ebs.ilink3.sbe.v8.3.quotereqid", ftypes.UINT64, nil, nil, nil, "Unique identifier for quote request message")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_set_id = ProtoField.new("Quote Set Id", "cme.ebs.ilink3.sbe.v8.3.quotesetid", ftypes.UINT16, nil, nil, nil, "Unique id for the Quote Set")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_type = ProtoField.new("Quote Type", "cme.ebs.ilink3.sbe.v8.3.quotetype", ftypes.UINT8, nil, nil, nil, "Type of quote requested")
omi_cme_ebs_ilink3_sbe_v8_3.fields.reason = ProtoField.new("Reason", "cme.ebs.ilink3.sbe.v8.3.reason", ftypes.STRING, nil, nil, nil, "Reject reason details")
omi_cme_ebs_ilink3_sbe_v8_3.fields.ref_msg_type = ProtoField.new("Ref Msg Type", "cme.ebs.ilink3.sbe.v8.3.refmsgtype", ftypes.STRING, nil, nil, nil, "The MsgType of the FIX message being referenced.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.ref_seq_num = ProtoField.new("Ref Seq Num", "cme.ebs.ilink3.sbe.v8.3.refseqnum", ftypes.UINT32, nil, nil, nil, "Tag 9726 - SeqNum of the rejected message")
omi_cme_ebs_ilink3_sbe_v8_3.fields.ref_tag_id = ProtoField.new("Ref Tag Id", "cme.ebs.ilink3.sbe.v8.3.reftagid", ftypes.UINT16, nil, nil, nil, "The tag number of the FIX/FIXP field being referenced which is invalid")
omi_cme_ebs_ilink3_sbe_v8_3.fields.related_sym_group = ProtoField.new("Related Sym Group", "cme.ebs.ilink3.sbe.v8.3.relatedsymgroup", ftypes.STRING, nil, nil, nil, "Specifies the number of repeating symbols specified.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.related_sym_groups = ProtoField.new("Related Sym Groups", "cme.ebs.ilink3.sbe.v8.3.relatedsymgroups", ftypes.STRING, nil, nil, nil, "NoRelatedSym Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.request_legs_group = ProtoField.new("Request Legs Group", "cme.ebs.ilink3.sbe.v8.3.requestlegsgroup", ftypes.STRING, nil, nil, nil, "Up to 26 legs (i.e., repeating groups) supported for UDS for options. Up to 40 legs (i.e., repeating groups) supported for UDS for futures. Will be set to 0 for REPO")
omi_cme_ebs_ilink3_sbe_v8_3.fields.request_legs_groups = ProtoField.new("Request Legs Groups", "cme.ebs.ilink3.sbe.v8.3.requestlegsgroups", ftypes.STRING, nil, nil, nil, "NoLegs Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.request_result = ProtoField.new("Request Result", "cme.ebs.ilink3.sbe.v8.3.requestresult", ftypes.UINT8, nil, nil, nil, "Status of party details list request")
omi_cme_ebs_ilink3_sbe_v8_3.fields.request_time = ProtoField.new("Request Time", "cme.ebs.ilink3.sbe.v8.3.requesttime", ftypes.UINT64, nil, nil, nil, "Information carried on a response to convey the time (UTC) when the request was received by the MSGW application. UTC timestamps are sent in number of nanoseconds since the UNIX epoch with microsecond precision")
omi_cme_ebs_ilink3_sbe_v8_3.fields.request_timestamp = ProtoField.new("Request Timestamp", "cme.ebs.ilink3.sbe.v8.3.requesttimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time of request; recommended to use timestamp as number of nanoseconds since epoch (Jan 1, 1970)")
omi_cme_ebs_ilink3_sbe_v8_3.fields.request_timestamp_utc = ProtoField.new("Request Timestamp", "cme.ebs.ilink3.sbe.v8.3.requesttimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time of request; recommended to use timestamp as number of nanoseconds since epoch (Jan 1, 1970)")
omi_cme_ebs_ilink3_sbe_v8_3.fields.requesting_party_id = ProtoField.new("Requesting Party Id", "cme.ebs.ilink3.sbe.v8.3.requestingpartyid", ftypes.STRING, nil, nil, nil, "Party identifier for the requesting party. Required when NoRequestingPartyIDs(1657) > 0")
omi_cme_ebs_ilink3_sbe_v8_3.fields.requesting_party_id_source = ProtoField.new("Requesting Party Id Source", "cme.ebs.ilink3.sbe.v8.3.requestingpartyidsource", ftypes.STRING, nil, nil, nil, "Identifies the source of the RequestingPartyID(1658) value. Required when NoRequestingPartyIDs(1657) > 0. Constant value")
omi_cme_ebs_ilink3_sbe_v8_3.fields.requesting_party_ids_group = ProtoField.new("Requesting Party Ids Group", "cme.ebs.ilink3.sbe.v8.3.requestingpartyidsgroup", ftypes.STRING, nil, nil, nil, "Number of requesting party identifiers. Will be zero if specific PartyDetailsDefinitionID's are being requested. Will be populated only if all PartyDetailsDefinitions are being requested for a specific Firm")
omi_cme_ebs_ilink3_sbe_v8_3.fields.requesting_party_ids_groups = ProtoField.new("Requesting Party Ids Groups", "cme.ebs.ilink3.sbe.v8.3.requestingpartyidsgroups", ftypes.STRING, nil, nil, nil, "NoRequestingPartyIDs Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.requesting_party_role = ProtoField.new("Requesting Party Role", "cme.ebs.ilink3.sbe.v8.3.requestingpartyrole", ftypes.STRING, nil, nil, nil, "Identifies the type or role of the RequestingPartyID(1658) specified. Constant value")
omi_cme_ebs_ilink3_sbe_v8_3.fields.response_legs_group = ProtoField.new("Response Legs Group", "cme.ebs.ilink3.sbe.v8.3.responselegsgroup", ftypes.STRING, nil, nil, nil, "Number of legs (repeating groups).")
omi_cme_ebs_ilink3_sbe_v8_3.fields.response_legs_groups = ProtoField.new("Response Legs Groups", "cme.ebs.ilink3.sbe.v8.3.responselegsgroups", ftypes.STRING, nil, nil, nil, "NoLegs Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.rfq_side = ProtoField.new("Rfq Side", "cme.ebs.ilink3.sbe.v8.3.rfqside", ftypes.UINT8, nil, nil, nil, "Order side")
omi_cme_ebs_ilink3_sbe_v8_3.fields.risk_free_rate = ProtoField.new("Risk Free Rate", "cme.ebs.ilink3.sbe.v8.3.riskfreerate", ftypes.STRING, nil, nil, nil, "ExecutionReportTradeSpreadLeg")
omi_cme_ebs_ilink3_sbe_v8_3.fields.schema_id = ProtoField.new("Schema Id", "cme.ebs.ilink3.sbe.v8.3.schemaid", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.sec_exec_id = ProtoField.new("Sec Exec Id", "cme.ebs.ilink3.sbe.v8.3.secexecid", ftypes.UINT64, nil, nil, nil, "Unique identifier that allows linking id spread summary fill notice with leg fill notice and trade cancel messages")
omi_cme_ebs_ilink3_sbe_v8_3.fields.secret_key_secure_id_expiration = ProtoField.new("Secret Key Secure Id Expiration", "cme.ebs.ilink3.sbe.v8.3.secretkeysecureidexpiration", ftypes.UINT16, nil, nil, nil, "This indicates in how many days the HMAC secret key will expire")
omi_cme_ebs_ilink3_sbe_v8_3.fields.security_group = ProtoField.new("Security Group", "cme.ebs.ilink3.sbe.v8.3.securitygroup", ftypes.STRING, nil, nil, nil, "Specifies the Product Group for which working orders should be cancelled. Conditionally required if MassActionScope=\"Product Group\" (Tag1374=10). Will be ignored if present for any other criteria specified in MassActionScope besides Product Group")
omi_cme_ebs_ilink3_sbe_v8_3.fields.security_id = ProtoField.new("Security Id", "cme.ebs.ilink3.sbe.v8.3.securityid", ftypes.INT32, nil, nil, nil, "Security ID as defined by CME. For the security ID list, see the security definition messages")
omi_cme_ebs_ilink3_sbe_v8_3.fields.security_id_optional = ProtoField.new("Security Id Optional", "cme.ebs.ilink3.sbe.v8.3.securityidoptional", ftypes.INT32, nil, nil, nil, "Conditionally required if MassActionScope=\"Instrument\" (Tag 1374=1). Will be ignored if present for any other criteria specified in MassActionScope besides Instrument")
omi_cme_ebs_ilink3_sbe_v8_3.fields.security_req_id = ProtoField.new("Security Req Id", "cme.ebs.ilink3.sbe.v8.3.securityreqid", ftypes.UINT64, nil, nil, nil, "Unique identifier for a security definition request. It is incumbent on the market participant to maintain uniqueness")
omi_cme_ebs_ilink3_sbe_v8_3.fields.security_response_id = ProtoField.new("Security Response Id", "cme.ebs.ilink3.sbe.v8.3.securityresponseid", ftypes.UINT64, nil, nil, nil, "Unique ID of a SecurityDefinition message")
omi_cme_ebs_ilink3_sbe_v8_3.fields.security_response_type = ProtoField.new("Security Response Type", "cme.ebs.ilink3.sbe.v8.3.securityresponsetype", ftypes.UINT8, nil, nil, nil, "Type of security definition message response.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.security_sub_type = ProtoField.new("Security Sub Type", "cme.ebs.ilink3.sbe.v8.3.securitysubtype", ftypes.STRING, nil, nil, nil, "Identifies specific type of UDS; valid values are COMBO, COVERED and REPO")
omi_cme_ebs_ilink3_sbe_v8_3.fields.security_type = ProtoField.new("Security Type", "cme.ebs.ilink3.sbe.v8.3.securitytype", ftypes.STRING, nil, nil, nil, "Indicates type of security")
omi_cme_ebs_ilink3_sbe_v8_3.fields.self_match_prevention_id = ProtoField.new("Self Match Prevention Id", "cme.ebs.ilink3.sbe.v8.3.selfmatchpreventionid", ftypes.UINT64, nil, nil, nil, "Identifies an order or trade that should not be matched to an opposite order or trade if both buy and sell orders for the same asset contain the same SelfMatchPreventionID (2362) and submitted by the same firm")
omi_cme_ebs_ilink3_sbe_v8_3.fields.self_match_prevention_instruction = ProtoField.new("Self Match Prevention Instruction", "cme.ebs.ilink3.sbe.v8.3.selfmatchpreventioninstruction", ftypes.STRING, nil, nil, nil, "Used to act upon the outcome when a self-match is detected and an order is prevented from trading against another order with the same SelfMatchPreventionID (Tag 2362). 1=Cancel newest signifies that incoming order is cancelled. 2=Cancel Oldest signifies that the resting order is cancelled. Absence of this field (with Tag 2362) is interpreted as cancel oldest")
omi_cme_ebs_ilink3_sbe_v8_3.fields.sender_id = ProtoField.new("Sender Id", "cme.ebs.ilink3.sbe.v8.3.senderid", ftypes.STRING, nil, nil, nil, "Operator ID. Should be unique per Firm ID. Assigned value used to identify specific message originator. Represents last individual or team in charge of the system which modifies the order before submission to the Globex platform, or if not modified from initiator (party role=118), last individual or team in charge of the system, which submit the order to the Globex platform")
omi_cme_ebs_ilink3_sbe_v8_3.fields.sender_id_optional = ProtoField.new("Sender Id Optional", "cme.ebs.ilink3.sbe.v8.3.senderidoptional", ftypes.STRING, nil, nil, nil, "Operator ID. Should be unique per Firm ID. Assigned value used to identify specific message originator. Represents last individual or team in charge of the system which modifies the order before submission to the Globex platform, or if not modified from initiator (party role=118), last individual or team in charge of the system, which submit the order to the Globex platform")
omi_cme_ebs_ilink3_sbe_v8_3.fields.sending_time_epoch = ProtoField.new("Sending Time Epoch", "cme.ebs.ilink3.sbe.v8.3.sendingtimeepoch", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time when the message is sent. 64-bit integer expressing the number of nano seconds since midnight January 1, 1970.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.sending_time_epoch_utc = ProtoField.new("Sending Time Epoch", "cme.ebs.ilink3.sbe.v8.3.sendingtimeepoch.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time when the message is sent. 64-bit integer expressing the number of nano seconds since midnight January 1, 1970.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.seq_num = ProtoField.new("Seq Num", "cme.ebs.ilink3.sbe.v8.3.seqnum", ftypes.UINT32, nil, nil, nil, "Sequence number as assigned to message")
omi_cme_ebs_ilink3_sbe_v8_3.fields.session = ProtoField.new("Session", "cme.ebs.ilink3.sbe.v8.3.session", ftypes.STRING, nil, nil, nil, "Session ID")
omi_cme_ebs_ilink3_sbe_v8_3.fields.short_sale_type = ProtoField.new("Short Sale Type", "cme.ebs.ilink3.sbe.v8.3.shortsaletype", ftypes.UINT8, nil, nil, nil, "Indicates the type of short sale. Will not be used for Buy orders but Sell orders should have this tag populated for MiFID")
omi_cme_ebs_ilink3_sbe_v8_3.fields.side = ProtoField.new("Side", "cme.ebs.ilink3.sbe.v8.3.side", ftypes.UINT8, nil, nil, nil, "Side of order")
omi_cme_ebs_ilink3_sbe_v8_3.fields.side_time_in_force = ProtoField.new("Side Time In Force", "cme.ebs.ilink3.sbe.v8.3.sidetimeinforce", ftypes.UINT8, nil, nil, nil, "Indicates how long the order as specified in the side stays in effect. SideTimeInForce allows a two-sided cross order to specify order behavior separately for each side. Defaults to Day if absent.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.side_trade_id = ProtoField.new("Side Trade Id", "cme.ebs.ilink3.sbe.v8.3.sidetradeid", ftypes.UINT32, nil, nil, nil, "The unique ID assigned to the trade once it is received or matched by the exchange")
omi_cme_ebs_ilink3_sbe_v8_3.fields.sides_group = ProtoField.new("Sides Group", "cme.ebs.ilink3.sbe.v8.3.sidesgroup", ftypes.STRING, nil, nil, nil, "Number of Side repeating group instances")
omi_cme_ebs_ilink3_sbe_v8_3.fields.sides_groups = ProtoField.new("Sides Groups", "cme.ebs.ilink3.sbe.v8.3.sidesgroups", ftypes.STRING, nil, nil, nil, "NoSides Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.simple_open_framing_header = ProtoField.new("Simple Open Framing Header", "cme.ebs.ilink3.sbe.v8.3.simpleopenframingheader", ftypes.STRING)
omi_cme_ebs_ilink3_sbe_v8_3.fields.source_repo_id = ProtoField.new("Source Repo Id", "cme.ebs.ilink3.sbe.v8.3.sourcerepoid", ftypes.INT32, nil, nil, nil, "Represents the source repo instrument on which the new tailor made repo should be modeled on")
omi_cme_ebs_ilink3_sbe_v8_3.fields.split_msg = ProtoField.new("Split Msg", "cme.ebs.ilink3.sbe.v8.3.splitmsg", ftypes.UINT8, nil, nil, nil, "Indicates whether a message was delayed as a result of being split among multiple packets (0) or if a message was delayed as a result of TCP re-transmission (1) or if a complete message was delayed due to a previously submitted split or out of order message (2). If absent then the message was not delayed and was neither split nor received out of order")
omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_leg_order_events_group = ProtoField.new("Spread Leg Order Events Group", "cme.ebs.ilink3.sbe.v8.3.spreadlegordereventsgroup", ftypes.STRING, nil, nil, nil, "Number of fills which comprise fill quantity")
omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_leg_order_events_groups = ProtoField.new("Spread Leg Order Events Groups", "cme.ebs.ilink3.sbe.v8.3.spreadlegordereventsgroups", ftypes.STRING, nil, nil, nil, "NoOrderEvents Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_leg_trade_events_group = ProtoField.new("Spread Leg Trade Events Group", "cme.ebs.ilink3.sbe.v8.3.spreadlegtradeeventsgroup", ftypes.STRING, nil, nil, nil, "Number of fills which comprise fill quantity")
omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_leg_trade_events_groups = ProtoField.new("Spread Leg Trade Events Groups", "cme.ebs.ilink3.sbe.v8.3.spreadlegtradeeventsgroups", ftypes.STRING, nil, nil, nil, "NoOrderEvents Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_order_events_group = ProtoField.new("Spread Order Events Group", "cme.ebs.ilink3.sbe.v8.3.spreadordereventsgroup", ftypes.STRING, nil, nil, nil, "Number of fills which comprise fill quantity")
omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_order_events_groups = ProtoField.new("Spread Order Events Groups", "cme.ebs.ilink3.sbe.v8.3.spreadordereventsgroups", ftypes.STRING, nil, nil, nil, "NoOrderEvents Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_trade_events_group = ProtoField.new("Spread Trade Events Group", "cme.ebs.ilink3.sbe.v8.3.spreadtradeeventsgroup", ftypes.STRING, nil, nil, nil, "Number of fills which comprise fill quantity")
omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_trade_events_groups = ProtoField.new("Spread Trade Events Groups", "cme.ebs.ilink3.sbe.v8.3.spreadtradeeventsgroups", ftypes.STRING, nil, nil, nil, "NoOrderEvents Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.start_date = ProtoField.new("Start Date", "cme.ebs.ilink3.sbe.v8.3.startdate", ftypes.UINT16, nil, nil, nil, "Start date of a financing deal, i.e. the date the buyer pays the seller cash and takes control of the collateral")
omi_cme_ebs_ilink3_sbe_v8_3.fields.stop_px = ProtoField.new("Stop Px", "cme.ebs.ilink3.sbe.v8.3.stoppx", ftypes.DOUBLE, nil, nil, nil, "The stop price of a stop protect or stop limit order. (Conditionally required if OrdType = 3 or 4).")
omi_cme_ebs_ilink3_sbe_v8_3.fields.symbol = ProtoField.new("Symbol", "cme.ebs.ilink3.sbe.v8.3.symbol", ftypes.STRING, nil, nil, nil, "Instrument Short Name for TM Repo")
omi_cme_ebs_ilink3_sbe_v8_3.fields.template_id = ProtoField.new("Template Id", "cme.ebs.ilink3.sbe.v8.3.templateid", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.termination_type = ProtoField.new("Termination Type", "cme.ebs.ilink3.sbe.v8.3.terminationtype", ftypes.STRING, nil, nil, nil, "Represents the term code")
omi_cme_ebs_ilink3_sbe_v8_3.fields.text = ProtoField.new("Text", "cme.ebs.ilink3.sbe.v8.3.text", ftypes.STRING, nil, nil, nil, "Reject reason details. Will be used only for descriptive rejects")
omi_cme_ebs_ilink3_sbe_v8_3.fields.time_in_force = ProtoField.new("Time In Force", "cme.ebs.ilink3.sbe.v8.3.timeinforce", ftypes.UINT8, nil, nil, nil, "Specifies how long the order remains in effect")
omi_cme_ebs_ilink3_sbe_v8_3.fields.time_to_expiration = ProtoField.new("Time To Expiration", "cme.ebs.ilink3.sbe.v8.3.timetoexpiration", ftypes.STRING, nil, nil, nil, "ExecutionReportTradeSpreadLeg")
omi_cme_ebs_ilink3_sbe_v8_3.fields.tot_no_quote_entries_optional = ProtoField.new("Tot No Quote Entries Optional", "cme.ebs.ilink3.sbe.v8.3.totnoquoteentriesoptional", ftypes.UINT8, nil, nil, nil, "Total number of quotes for the quote set across all messages. Should be the sum of all NoQuoteEntries in each message that has repeating quotes that are part of the same quote set. Required if NoQuoteEntries > 0. Since fragmentation is not supported in practice this will always be equal to the value of NoQuoteEntries.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.tot_num_parties = ProtoField.new("Tot Num Parties", "cme.ebs.ilink3.sbe.v8.3.totnumparties", ftypes.UINT16, nil, nil, nil, "Indicates total number of PartyDetailsListReports being returned in response to PartyDetailsListRequest")
omi_cme_ebs_ilink3_sbe_v8_3.fields.total_num_securities = ProtoField.new("Total Num Securities", "cme.ebs.ilink3.sbe.v8.3.totalnumsecurities", ftypes.UINT8, nil, nil, nil, "Indicates total number of leg fills for the spread; Will represent total number of ExecutionReportTradeSpreadLeg messages sent for the spread and will be set to 0 when spread leg fills are consolidated with spread fill")
omi_cme_ebs_ilink3_sbe_v8_3.fields.trade_addendum = ProtoField.new("Trade Addendum", "cme.ebs.ilink3.sbe.v8.3.tradeaddendum", ftypes.UINT8, nil, nil, nil, "The type of event affecting an order")
omi_cme_ebs_ilink3_sbe_v8_3.fields.trade_addendum_legs_group = ProtoField.new("Trade Addendum Legs Group", "cme.ebs.ilink3.sbe.v8.3.tradeaddendumlegsgroup", ftypes.STRING, nil, nil, nil, "Number of legs (repeating groups).")
omi_cme_ebs_ilink3_sbe_v8_3.fields.trade_addendum_legs_groups = ProtoField.new("Trade Addendum Legs Groups", "cme.ebs.ilink3.sbe.v8.3.tradeaddendumlegsgroups", ftypes.STRING, nil, nil, nil, "NoLegs Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.trade_date = ProtoField.new("Trade Date", "cme.ebs.ilink3.sbe.v8.3.tradedate", ftypes.UINT16, nil, nil, nil, "Indicates date of trading day (expressed in local time at place of trade).")
omi_cme_ebs_ilink3_sbe_v8_3.fields.trade_legs_group = ProtoField.new("Trade Legs Group", "cme.ebs.ilink3.sbe.v8.3.tradelegsgroup", ftypes.STRING, nil, nil, nil, "Number of Leg executions; Will currently be set to 0 and in future will contain the leg fills for the spread when spread leg fills are consolidated with the spread fill as a single message")
omi_cme_ebs_ilink3_sbe_v8_3.fields.trade_legs_groups = ProtoField.new("Trade Legs Groups", "cme.ebs.ilink3.sbe.v8.3.tradelegsgroups", ftypes.STRING, nil, nil, nil, "NoLegs Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.trade_link_id = ProtoField.new("Trade Link Id", "cme.ebs.ilink3.sbe.v8.3.tradelinkid", ftypes.UINT32, nil, nil, nil, "Contains the workup ID; unique per instrument per day")
omi_cme_ebs_ilink3_sbe_v8_3.fields.trading_system_name = ProtoField.new("Trading System Name", "cme.ebs.ilink3.sbe.v8.3.tradingsystemname", ftypes.STRING, nil, nil, nil, "Provides the name of the application system being used to generate FIX application messages.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.trading_system_vendor = ProtoField.new("Trading System Vendor", "cme.ebs.ilink3.sbe.v8.3.tradingsystemvendor", ftypes.STRING, nil, nil, nil, "Provides the vendor of the application system")
omi_cme_ebs_ilink3_sbe_v8_3.fields.trading_system_version = ProtoField.new("Trading System Version", "cme.ebs.ilink3.sbe.v8.3.tradingsystemversion", ftypes.STRING, nil, nil, nil, "Provides the version of the application system being used to initiate FIX application messages.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.trans_bkd_time = ProtoField.new("Trans Bkd Time", "cme.ebs.ilink3.sbe.v8.3.transbkdtime", ftypes.UINT64, nil, nil, nil, "For derivatives a date and time stamp to indicate when this order was booked with the agent prior to submission to the exchange. Indicates the time at which the order was finalized between the buyer and seller prior to submission. Expressed as nanoseconds since epoch time")
omi_cme_ebs_ilink3_sbe_v8_3.fields.transact_time = ProtoField.new("Transact Time", "cme.ebs.ilink3.sbe.v8.3.transacttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the transaction represented by this ExecutionReport (35=8) occurred. Expressed as nanoseconds since epoch time")
omi_cme_ebs_ilink3_sbe_v8_3.fields.transact_time_utc = ProtoField.new("Transact Time", "cme.ebs.ilink3.sbe.v8.3.transacttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the transaction represented by this ExecutionReport (35=8) occurred. Expressed as nanoseconds since epoch time")
omi_cme_ebs_ilink3_sbe_v8_3.fields.trd_reg_publication_reason = ProtoField.new("Trd Reg Publication Reason", "cme.ebs.ilink3.sbe.v8.3.trdregpublicationreason", ftypes.UINT8, nil, nil, nil, "Additional reason for trade publication type specified in TrdRegPublicationType (2669). Reasons may be specific to regulatory trade publication rules. 12=Exempted due to European System of Central Banks (ESCB) policy transaction")
omi_cme_ebs_ilink3_sbe_v8_3.fields.trd_reg_publication_type = ProtoField.new("Trd Reg Publication Type", "cme.ebs.ilink3.sbe.v8.3.trdregpublicationtype", ftypes.UINT8, nil, nil, nil, "Specifies the type of regulatory trade publication. Additional reasons for the publication type will be specified in TrdRegPublicationReason (2670). 2=Exempt from Publication. There are allowable exemptions for the post-trade publication of trade transactions")
omi_cme_ebs_ilink3_sbe_v8_3.fields.trd_reg_publications_group = ProtoField.new("Trd Reg Publications Group", "cme.ebs.ilink3.sbe.v8.3.trdregpublicationsgroup", ftypes.STRING, nil, nil, nil, "Number of regulatory publication rules in repeating group. Should always be \"1\" if being used otherwise set to 0")
omi_cme_ebs_ilink3_sbe_v8_3.fields.trd_reg_publications_groups = ProtoField.new("Trd Reg Publications Groups", "cme.ebs.ilink3.sbe.v8.3.trdregpublicationsgroups", ftypes.STRING, nil, nil, nil, "NoTrdRegPublications Block")
omi_cme_ebs_ilink3_sbe_v8_3.fields.underlying_px = ProtoField.new("Underlying Px", "cme.ebs.ilink3.sbe.v8.3.underlyingpx", ftypes.DOUBLE, nil, nil, nil, "Underlying price associated with a derivative instrument. Price for the future used in calculating the conversion of vol. to premium for the option. Only applicable for vol quoted option trades.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.unsolicited_cancel_type = ProtoField.new("Unsolicited Cancel Type", "cme.ebs.ilink3.sbe.v8.3.unsolicitedcanceltype", ftypes.STRING, nil, nil, nil, "Type of quote cancel generated by CME -- returned only for unsolicited quote cancels")
omi_cme_ebs_ilink3_sbe_v8_3.fields.uuid = ProtoField.new("Uuid", "cme.ebs.ilink3.sbe.v8.3.uuid", ftypes.UINT64, nil, nil, nil, "Session Identifier defined as type long (uInt64); recommended to use timestamp as number of microseconds since epoch (Jan 1, 1970)")
omi_cme_ebs_ilink3_sbe_v8_3.fields.version = ProtoField.new("Version", "cme.ebs.ilink3.sbe.v8.3.version", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.volatility = ProtoField.new("Volatility", "cme.ebs.ilink3.sbe.v8.3.volatility", ftypes.STRING, nil, nil, nil, "ExecutionReportTradeSpreadLeg")
omi_cme_ebs_ilink3_sbe_v8_3.fields.week = ProtoField.new("Week", "cme.ebs.ilink3.sbe.v8.3.week", ftypes.UINT8, nil, nil, nil, "WW")
omi_cme_ebs_ilink3_sbe_v8_3.fields.year = ProtoField.new("Year", "cme.ebs.ilink3.sbe.v8.3.year", ftypes.UINT16, nil, nil, nil, "YYYY")

-- Cme Ebs iLink3 Sbe 8.3 Framing
omi_cme_ebs_ilink3_sbe_v8_3.fields.client_packet = ProtoField.new("Client Packet", "cme.ebs.ilink3.sbe.v8.3.clientpacket", ftypes.STRING, nil, nil, nil, "Simple Open Frame Packet sent by the firm to Cme")
omi_cme_ebs_ilink3_sbe_v8_3.fields.client_simple_open_frame = ProtoField.new("Client Simple Open Frame", "cme.ebs.ilink3.sbe.v8.3.clientsimpleopenframe", ftypes.STRING, nil, nil, nil, "Simple Open Frame sent by the firm to Cme")
omi_cme_ebs_ilink3_sbe_v8_3.fields.message_header = ProtoField.new("Message Header", "cme.ebs.ilink3.sbe.v8.3.messageheader", ftypes.STRING, nil, nil, nil, "Template ID and length of message root")
omi_cme_ebs_ilink3_sbe_v8_3.fields.server_packet = ProtoField.new("Server Packet", "cme.ebs.ilink3.sbe.v8.3.serverpacket", ftypes.STRING, nil, nil, nil, "Simple Open Frame Packet sent by Cme to the firm")
omi_cme_ebs_ilink3_sbe_v8_3.fields.server_simple_open_frame = ProtoField.new("Server Simple Open Frame", "cme.ebs.ilink3.sbe.v8.3.serversimpleopenframe", ftypes.STRING, nil, nil, nil, "Simple Open Frame sent by Cme to the firm")

-- Cme Ebs iLink3 8.3 Application Messages
omi_cme_ebs_ilink3_sbe_v8_3.fields.business_reject = ProtoField.new("Business Reject", "cme.ebs.ilink3.sbe.v8.3.businessreject", ftypes.STRING, nil, nil, nil, "The Business Message Reject message can reject an application-level message, which fulfills session level rules but fails the business rules.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.establish = ProtoField.new("Establish", "cme.ebs.ilink3.sbe.v8.3.establish", ftypes.STRING, nil, nil, nil, "After negotiation is complete, the customer must send an Establish message to start assigning sequence numbers. Once established, customers can submit orders and quotes.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.establishment_ack = ProtoField.new("Establishment Ack", "cme.ebs.ilink3.sbe.v8.3.establishmentack", ftypes.STRING, nil, nil, nil, "The Establishment Acknowledgment message is sent when an Establish message from a customer is accepted by CME.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.establishment_reject = ProtoField.new("Establishment Reject", "cme.ebs.ilink3.sbe.v8.3.establishmentreject", ftypes.STRING, nil, nil, nil, "The Establishment Reject message is sent when an Establish message from the customer is rejected by CME.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_ack = ProtoField.new("Execution Ack", "cme.ebs.ilink3.sbe.v8.3.executionack", ftypes.STRING, nil, nil, nil, "The Execution Acknowledgment message notifies CME that a given fill has either been accepted or rejected by a counterparty for EU bilateral trades.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_cancel = ProtoField.new("Execution Report Cancel", "cme.ebs.ilink3.sbe.v8.3.executionreportcancel", ftypes.STRING, nil, nil, nil, "Execution Report - Cancel message is sent in response to Order Cancel Request as well as to report unsolicited cancellation of orders.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_elimination = ProtoField.new("Execution Report Elimination", "cme.ebs.ilink3.sbe.v8.3.executionreportelimination", ftypes.STRING, nil, nil, nil, "The Execution Report - Elimination message is sent at order elimination.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_modify = ProtoField.new("Execution Report Modify", "cme.ebs.ilink3.sbe.v8.3.executionreportmodify", ftypes.STRING, nil, nil, nil, "Execution Report - Modify message is sent in response to Order Cancel Replace Request.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_new = ProtoField.new("Execution Report New", "cme.ebs.ilink3.sbe.v8.3.executionreportnew", ftypes.STRING, nil, nil, nil, "Execution Report - New message is sent in response to New Order Single as well as activation of stop orders.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_reject = ProtoField.new("Execution Report Reject", "cme.ebs.ilink3.sbe.v8.3.executionreportreject", ftypes.STRING, nil, nil, nil, "The Execution Report - Reject message notifies the client system of a rejected order.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_status = ProtoField.new("Execution Report Status", "cme.ebs.ilink3.sbe.v8.3.executionreportstatus", ftypes.STRING, nil, nil, nil, "Execution Report - Status message is sent in response to Order Status Request or Order Mass Status Request.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_trade_addendum_outright = ProtoField.new("Execution Report Trade Addendum Outright", "cme.ebs.ilink3.sbe.v8.3.executionreporttradeaddendumoutright", ftypes.STRING, nil, nil, nil, "The Execution Report - Trade Addendum Outright message notifies client systems of trade cancellation or correction for outrights.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_trade_addendum_spread = ProtoField.new("Execution Report Trade Addendum Spread", "cme.ebs.ilink3.sbe.v8.3.executionreporttradeaddendumspread", ftypes.STRING, nil, nil, nil, "The Execution Report - Trade Addendum Spread message notifies client system of trade cancellation or correction for spreads.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_trade_addendum_spread_leg = ProtoField.new("Execution Report Trade Addendum Spread Leg", "cme.ebs.ilink3.sbe.v8.3.executionreporttradeaddendumspreadleg", ftypes.STRING, nil, nil, nil, "The Execution Report - Trade Addendum Spread Leg message notifies client system of trade cancellation or correction for spread legs.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_trade_outright = ProtoField.new("Execution Report Trade Outright", "cme.ebs.ilink3.sbe.v8.3.executionreporttradeoutright", ftypes.STRING, nil, nil, nil, "The Execution Report - Trade Outright message is sent upon fill or partial fill of a client order for outright instruments.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_trade_spread = ProtoField.new("Execution Report Trade Spread", "cme.ebs.ilink3.sbe.v8.3.executionreporttradespread", ftypes.STRING, nil, nil, nil, "The Execution Report - Trade Spread message is sent upon fill or partial fill of a client order for spread instruments.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_trade_spread_leg = ProtoField.new("Execution Report Trade Spread Leg", "cme.ebs.ilink3.sbe.v8.3.executionreporttradespreadleg", ftypes.STRING, nil, nil, nil, "The Execution Report - Trade Spread Leg message is sent upon fill or partial fill of a client order for spread leg instruments.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.negotiate = ProtoField.new("Negotiate", "cme.ebs.ilink3.sbe.v8.3.negotiate", ftypes.STRING, nil, nil, nil, "The customer sends the Negotiate message to CME to initiate a connection.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.negotiation_reject = ProtoField.new("Negotiation Reject", "cme.ebs.ilink3.sbe.v8.3.negotiationreject", ftypes.STRING, nil, nil, nil, "The Negotiation Reject message is sent when CME rejects a Negotiate message sent by the customer.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.negotiation_response = ProtoField.new("Negotiation Response", "cme.ebs.ilink3.sbe.v8.3.negotiationresponse", ftypes.STRING, nil, nil, nil, "The Negotiation Response message is sent when a Negotiate message from the customer is accepted by CME.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.new_order_cross = ProtoField.new("New Order Cross", "cme.ebs.ilink3.sbe.v8.3.newordercross", ftypes.STRING, nil, nil, nil, "The New Order Cross message submits a Cross on CME Globex, a two-sided order submitted by a single party/broker at the same price and quantity.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.new_order_single = ProtoField.new("New Order Single", "cme.ebs.ilink3.sbe.v8.3.newordersingle", ftypes.STRING, nil, nil, nil, "Used to enter an order in the system; the behavior of an order can be affected by many parameters such as order type and order type qualifier.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.not_applied = ProtoField.new("Not Applied", "cme.ebs.ilink3.sbe.v8.3.notapplied", ftypes.STRING, nil, nil, nil, "The Not Applied message is sent when CME detects a sequence gap from the customer.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.order_cancel_reject = ProtoField.new("Order Cancel Reject", "cme.ebs.ilink3.sbe.v8.3.ordercancelreject", ftypes.STRING, nil, nil, nil, "The Order Cancel Reject message is issued upon receipt of a cancel request message which cannot be honored.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.order_cancel_replace_reject = ProtoField.new("Order Cancel Replace Reject", "cme.ebs.ilink3.sbe.v8.3.ordercancelreplacereject", ftypes.STRING, nil, nil, nil, "The Order Cancel Replace Reject message is issued upon receipt of a cancel replace request message that cannot be honored.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.order_cancel_replace_request = ProtoField.new("Order Cancel Replace Request", "cme.ebs.ilink3.sbe.v8.3.ordercancelreplacerequest", ftypes.STRING, nil, nil, nil, "Sent by client system to replace an existing order.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.order_cancel_request = ProtoField.new("Order Cancel Request", "cme.ebs.ilink3.sbe.v8.3.ordercancelrequest", ftypes.STRING, nil, nil, nil, "Sent by client system to cancel an existing order; an order may be cancelled by referencing the Order ID.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.order_mass_status_request = ProtoField.new("Order Mass Status Request", "cme.ebs.ilink3.sbe.v8.3.ordermassstatusrequest", ftypes.STRING, nil, nil, nil, "The Order Mass Status Request message requests the status for orders matching criteria specified within the request.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.order_status_request = ProtoField.new("Order Status Request", "cme.ebs.ilink3.sbe.v8.3.orderstatusrequest", ftypes.STRING, nil, nil, nil, "Submitted by the client system to obtain the current status of a specific order; CME Globex returns the order status in the form of an Execution Report (MsgType=8) with the status listed in tag 39-OrdStatus.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.party_details_definition_request = ProtoField.new("Party Details Definition Request", "cme.ebs.ilink3.sbe.v8.3.partydetailsdefinitionrequest", ftypes.STRING, nil, nil, nil, "The Party Details Definition Request message is used to provide all customer information, clearing instructions, order source, self-match parameters, etc. Only one party update is allowed per message.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.party_details_definition_request_ack = ProtoField.new("Party Details Definition Request Ack", "cme.ebs.ilink3.sbe.v8.3.partydetailsdefinitionrequestack", ftypes.STRING, nil, nil, nil, "Used to respond to the Party Details Definition Request message indicating whether the request has been accepted.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.party_details_list_report = ProtoField.new("Party Details List Report", "cme.ebs.ilink3.sbe.v8.3.partydetailslistreport", ftypes.STRING, nil, nil, nil, "Used to replay Party Details Definition information such as clearing instructions, order source, self-match parameters, etc. for a particular Firm ID.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.party_details_list_request = ProtoField.new("Party Details List Request", "cme.ebs.ilink3.sbe.v8.3.partydetailslistrequest", ftypes.STRING, nil, nil, nil, "The Party Details List Request message is used to request all of the Party Details Definition information such as clearing instructions, order source, self-match parameters, etc. for a particular Firm ID. Only one Party Details List Request is allowed at a time.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel = ProtoField.new("Quote Cancel", "cme.ebs.ilink3.sbe.v8.3.quotecancel", ftypes.STRING, nil, nil, nil, "The Quote Cancel message is used by a market maker to cancel all quotes or a partial set of quotes submitted during a specific session which are still tradeable and have not been rejected or expired. Quote Cancel messages are processed upon receipt by CME regardless of whether the corresponding resting quotes are completely or partially filled.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_ack = ProtoField.new("Quote Cancel Ack", "cme.ebs.ilink3.sbe.v8.3.quotecancelack", ftypes.STRING, nil, nil, nil, "Quote Cancel Acknowledgment message is used in response to a Quote Cancel message to either accept it or reject it. This message can also be unsolicited in a scenario where CME Globex initiates the cancellation.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.request_for_quote = ProtoField.new("Request For Quote", "cme.ebs.ilink3.sbe.v8.3.requestforquote", ftypes.STRING, nil, nil, nil, "The Request for Quote message generates a Request for Quote to solicit a quote on an instrument.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.request_for_quote_ack = ProtoField.new("Request For Quote Ack", "cme.ebs.ilink3.sbe.v8.3.requestforquoteack", ftypes.STRING, nil, nil, nil, "Request for Quote Acknowledgment message is used in response to a Request for Quote message to either accept it or reject it.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.retransmission = ProtoField.new("Retransmission", "cme.ebs.ilink3.sbe.v8.3.retransmission", ftypes.STRING, nil, nil, nil, "The Retransmission message is sent when a Retransmit Request message from the customer is accepted by CME.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.retransmit_reject = ProtoField.new("Retransmit Reject", "cme.ebs.ilink3.sbe.v8.3.retransmitreject", ftypes.STRING, nil, nil, nil, "CME Globex sends a Retransmit Reject message when a Retransmit Request message from the customer is rejected.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.retransmit_request = ProtoField.new("Retransmit Request", "cme.ebs.ilink3.sbe.v8.3.retransmitrequest", ftypes.STRING, nil, nil, nil, "Customers can send the Retransmit Request message to recover missed messages.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.security_definition_request = ProtoField.new("Security Definition Request", "cme.ebs.ilink3.sbe.v8.3.securitydefinitionrequest", ftypes.STRING, nil, nil, nil, "The Security Definition Request message creates a User Defined Spread (UDS) instrument.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.security_definition_response = ProtoField.new("Security Definition Response", "cme.ebs.ilink3.sbe.v8.3.securitydefinitionresponse", ftypes.STRING, nil, nil, nil, "This message is sent in response to an attempt to create a new security definition.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.sequence = ProtoField.new("Sequence", "cme.ebs.ilink3.sbe.v8.3.sequence", ftypes.STRING, nil, nil, nil, "The Sequence message is used in both Recoverable (CME to customer) and Idempotent (customer to CME) flows.")
omi_cme_ebs_ilink3_sbe_v8_3.fields.terminate = ProtoField.new("Terminate", "cme.ebs.ilink3.sbe.v8.3.terminate", ftypes.STRING, nil, nil, nil, "The Terminate message is sent to indicate that the sender is going to disconnect the TCP socket connection.")

-- Cme Ebs iLink3 Sbe 8.3 Generated Fields
omi_cme_ebs_ilink3_sbe_v8_3.fields.fills_group_index = ProtoField.new("Fills Group Index", "cme.ebs.ilink3.sbe.v8.3.fillsgroupindex", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.outright_order_events_group_index = ProtoField.new("Outright Order Events Group Index", "cme.ebs.ilink3.sbe.v8.3.outrightordereventsgroupindex", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.outright_trade_events_group_index = ProtoField.new("Outright Trade Events Group Index", "cme.ebs.ilink3.sbe.v8.3.outrighttradeeventsgroupindex", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.party_details_group_index = ProtoField.new("Party Details Group Index", "cme.ebs.ilink3.sbe.v8.3.partydetailsgroupindex", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.party_ids_group_index = ProtoField.new("Party Ids Group Index", "cme.ebs.ilink3.sbe.v8.3.partyidsgroupindex", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_ack_entries_group_index = ProtoField.new("Quote Cancel Ack Entries Group Index", "cme.ebs.ilink3.sbe.v8.3.quotecancelackentriesgroupindex", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_ack_sets_group_index = ProtoField.new("Quote Cancel Ack Sets Group Index", "cme.ebs.ilink3.sbe.v8.3.quotecancelacksetsgroupindex", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_entries_group_index = ProtoField.new("Quote Cancel Entries Group Index", "cme.ebs.ilink3.sbe.v8.3.quotecancelentriesgroupindex", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_sets_group_index = ProtoField.new("Quote Cancel Sets Group Index", "cme.ebs.ilink3.sbe.v8.3.quotecancelsetsgroupindex", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.related_sym_group_index = ProtoField.new("Related Sym Group Index", "cme.ebs.ilink3.sbe.v8.3.relatedsymgroupindex", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.request_legs_group_index = ProtoField.new("Request Legs Group Index", "cme.ebs.ilink3.sbe.v8.3.requestlegsgroupindex", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.requesting_party_ids_group_index = ProtoField.new("Requesting Party Ids Group Index", "cme.ebs.ilink3.sbe.v8.3.requestingpartyidsgroupindex", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.response_legs_group_index = ProtoField.new("Response Legs Group Index", "cme.ebs.ilink3.sbe.v8.3.responselegsgroupindex", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.sides_group_index = ProtoField.new("Sides Group Index", "cme.ebs.ilink3.sbe.v8.3.sidesgroupindex", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_leg_order_events_group_index = ProtoField.new("Spread Leg Order Events Group Index", "cme.ebs.ilink3.sbe.v8.3.spreadlegordereventsgroupindex", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_leg_trade_events_group_index = ProtoField.new("Spread Leg Trade Events Group Index", "cme.ebs.ilink3.sbe.v8.3.spreadlegtradeeventsgroupindex", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_order_events_group_index = ProtoField.new("Spread Order Events Group Index", "cme.ebs.ilink3.sbe.v8.3.spreadordereventsgroupindex", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_trade_events_group_index = ProtoField.new("Spread Trade Events Group Index", "cme.ebs.ilink3.sbe.v8.3.spreadtradeeventsgroupindex", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.trade_addendum_legs_group_index = ProtoField.new("Trade Addendum Legs Group Index", "cme.ebs.ilink3.sbe.v8.3.tradeaddendumlegsgroupindex", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.trade_legs_group_index = ProtoField.new("Trade Legs Group Index", "cme.ebs.ilink3.sbe.v8.3.tradelegsgroupindex", ftypes.UINT16)
omi_cme_ebs_ilink3_sbe_v8_3.fields.trd_reg_publications_group_index = ProtoField.new("Trd Reg Publications Group Index", "cme.ebs.ilink3.sbe.v8.3.trdregpublicationsgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Cme Ebs iLink3 Sbe 8.3 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
cme_ebs_ilink3_sbe_v8_3.absolute_time_base = 0

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

-- Cme Ebs iLink3 Sbe 8.3 Element Dissection Options
show.application_messages = true
show.structs = true
show.repeating_groups = true
show.headers = true
show.indexes = true

-- Register Cme Ebs iLink3 Sbe 8.3 Show Options
omi_cme_ebs_ilink3_sbe_v8_3.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_cme_ebs_ilink3_sbe_v8_3.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_cme_ebs_ilink3_sbe_v8_3.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_cme_ebs_ilink3_sbe_v8_3.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cme_ebs_ilink3_sbe_v8_3.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cme_ebs_ilink3_sbe_v8_3.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_cme_ebs_ilink3_sbe_v8_3.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cme_ebs_ilink3_sbe_v8_3.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_cme_ebs_ilink3_sbe_v8_3.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_cme_ebs_ilink3_sbe_v8_3.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cme_ebs_ilink3_sbe_v8_3.prefs.show_application_messages then
    show.application_messages = omi_cme_ebs_ilink3_sbe_v8_3.prefs.show_application_messages
  end
  if show.headers ~= omi_cme_ebs_ilink3_sbe_v8_3.prefs.show_headers then
    show.headers = omi_cme_ebs_ilink3_sbe_v8_3.prefs.show_headers
  end
  if show.repeating_groups ~= omi_cme_ebs_ilink3_sbe_v8_3.prefs.show_repeating_groups then
    show.repeating_groups = omi_cme_ebs_ilink3_sbe_v8_3.prefs.show_repeating_groups
  end
  if show.structs ~= omi_cme_ebs_ilink3_sbe_v8_3.prefs.show_structs then
    show.structs = omi_cme_ebs_ilink3_sbe_v8_3.prefs.show_structs
  end
  if show.indexes ~= omi_cme_ebs_ilink3_sbe_v8_3.prefs.show_indexes then
    show.indexes = omi_cme_ebs_ilink3_sbe_v8_3.prefs.show_indexes
  end
  if cme_ebs_ilink3_sbe_v8_3.absolute_time_base ~= omi_cme_ebs_ilink3_sbe_v8_3.prefs.absolute_time_base then
    cme_ebs_ilink3_sbe_v8_3.absolute_time_base = omi_cme_ebs_ilink3_sbe_v8_3.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Cme Ebs iLink3 Sbe 8.3 Fields
-----------------------------------------------------------------------

-- Access Key Id
cme_ebs_ilink3_sbe_v8_3.access_key_id = {}

-- Size: Access Key Id
cme_ebs_ilink3_sbe_v8_3.access_key_id.size = 20

-- Display: Access Key Id
cme_ebs_ilink3_sbe_v8_3.access_key_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Access Key Id: No Value"
  end

  return "Access Key Id: "..value
end

-- Dissect: Access Key Id
cme_ebs_ilink3_sbe_v8_3.access_key_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.access_key_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.access_key_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.access_key_id, range, value, display)

  return offset + length, value
end

-- Aggressor Indicator
cme_ebs_ilink3_sbe_v8_3.aggressor_indicator = {}

-- Size: Aggressor Indicator
cme_ebs_ilink3_sbe_v8_3.aggressor_indicator.size = 1

-- Display: Aggressor Indicator
cme_ebs_ilink3_sbe_v8_3.aggressor_indicator.labels = {
  [0] = "Aggressor Indicator: False (0)",
  [1] = "Aggressor Indicator: True (1)",
}

cme_ebs_ilink3_sbe_v8_3.aggressor_indicator.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.aggressor_indicator.labels[value] or "Aggressor Indicator: Unknown("..value..")"
end

-- Dissect: Aggressor Indicator
cme_ebs_ilink3_sbe_v8_3.aggressor_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.aggressor_indicator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.aggressor_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.aggressor_indicator, range, value, display)

  return offset + length, value
end

-- Auto Quote Request
cme_ebs_ilink3_sbe_v8_3.auto_quote_request = {}

-- Size: Auto Quote Request
cme_ebs_ilink3_sbe_v8_3.auto_quote_request.size = 1

-- Display: Auto Quote Request
cme_ebs_ilink3_sbe_v8_3.auto_quote_request.labels = {
  [0] = "Auto Quote Request: False (0)",
  [1] = "Auto Quote Request: True (1)",
}

cme_ebs_ilink3_sbe_v8_3.auto_quote_request.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.auto_quote_request.labels[value] or "Auto Quote Request: Unknown("..value..")"
end

-- Dissect: Auto Quote Request
cme_ebs_ilink3_sbe_v8_3.auto_quote_request.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.auto_quote_request.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.auto_quote_request.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.auto_quote_request, range, value, display)

  return offset + length, value
end

-- Avg Px Group Id
cme_ebs_ilink3_sbe_v8_3.avg_px_group_id = {}

-- Size: Avg Px Group Id
cme_ebs_ilink3_sbe_v8_3.avg_px_group_id.size = 20

-- Display: Avg Px Group Id
cme_ebs_ilink3_sbe_v8_3.avg_px_group_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Avg Px Group Id: No Value"
  end

  return "Avg Px Group Id: "..value
end

-- Dissect: Avg Px Group Id
cme_ebs_ilink3_sbe_v8_3.avg_px_group_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.avg_px_group_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.avg_px_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.avg_px_group_id, range, value, display)

  return offset + length, value
end

-- Avg Px Indicator
cme_ebs_ilink3_sbe_v8_3.avg_px_indicator = {}

-- Size: Avg Px Indicator
cme_ebs_ilink3_sbe_v8_3.avg_px_indicator.size = 1

-- Display: Avg Px Indicator
cme_ebs_ilink3_sbe_v8_3.avg_px_indicator.display = function(value)
  if value == 255 then
    return "Avg Px Indicator: No Value"
  end
  if value == 0 then
    return "Avg Px Indicator: No Average Pricing (0)"
  end
  if value == 1 then
    return "Avg Px Indicator: Tradeispartofan Average Price Group Identifiedbythe Avg Px Grp Id (1)"
  end
  if value == 3 then
    return "Avg Px Indicator: Tradeispartofa Notional Value Average Price Group (3)"
  end

  return "Avg Px Indicator: Unknown("..value..")"
end

-- Dissect: Avg Px Indicator
cme_ebs_ilink3_sbe_v8_3.avg_px_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.avg_px_indicator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.avg_px_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.avg_px_indicator, range, value, display)

  return offset + length, value
end

-- Bid Size
cme_ebs_ilink3_sbe_v8_3.bid_size = {}

-- Size: Bid Size
cme_ebs_ilink3_sbe_v8_3.bid_size.size = 4

-- Display: Bid Size
cme_ebs_ilink3_sbe_v8_3.bid_size.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Bid Size: No Value"
  end

  return "Bid Size: "..value
end

-- Dissect: Bid Size
cme_ebs_ilink3_sbe_v8_3.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.bid_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Block Length
cme_ebs_ilink3_sbe_v8_3.block_length = {}

-- Size: Block Length
cme_ebs_ilink3_sbe_v8_3.block_length.size = 2

-- Display: Block Length
cme_ebs_ilink3_sbe_v8_3.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
cme_ebs_ilink3_sbe_v8_3.block_length.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.block_length, range, value, display)

  return offset + length, value
end

-- Business Reject Reason
cme_ebs_ilink3_sbe_v8_3.business_reject_reason = {}

-- Size: Business Reject Reason
cme_ebs_ilink3_sbe_v8_3.business_reject_reason.size = 2

-- Display: Business Reject Reason
cme_ebs_ilink3_sbe_v8_3.business_reject_reason.display = function(value)
  return "Business Reject Reason: "..value
end

-- Dissect: Business Reject Reason
cme_ebs_ilink3_sbe_v8_3.business_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.business_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.business_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.business_reject_reason, range, value, display)

  return offset + length, value
end

-- Business Reject Ref Id
cme_ebs_ilink3_sbe_v8_3.business_reject_ref_id = {}

-- Size: Business Reject Ref Id
cme_ebs_ilink3_sbe_v8_3.business_reject_ref_id.size = 8

-- Display: Business Reject Ref Id
cme_ebs_ilink3_sbe_v8_3.business_reject_ref_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Business Reject Ref Id: No Value"
  end

  return "Business Reject Ref Id: "..value
end

-- Dissect: Business Reject Ref Id
cme_ebs_ilink3_sbe_v8_3.business_reject_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.business_reject_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.business_reject_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.business_reject_ref_id, range, value, display)

  return offset + length, value
end

-- Cancelled Symbol
cme_ebs_ilink3_sbe_v8_3.cancelled_symbol = {}

-- Size: Cancelled Symbol
cme_ebs_ilink3_sbe_v8_3.cancelled_symbol.size = 6

-- Display: Cancelled Symbol
cme_ebs_ilink3_sbe_v8_3.cancelled_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cancelled Symbol: No Value"
  end

  return "Cancelled Symbol: "..value
end

-- Dissect: Cancelled Symbol
cme_ebs_ilink3_sbe_v8_3.cancelled_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.cancelled_symbol.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.cancelled_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.cancelled_symbol, range, value, display)

  return offset + length, value
end

-- Clearing Account Type
cme_ebs_ilink3_sbe_v8_3.clearing_account_type = {}

-- Size: Clearing Account Type
cme_ebs_ilink3_sbe_v8_3.clearing_account_type.size = 1

-- Display: Clearing Account Type
cme_ebs_ilink3_sbe_v8_3.clearing_account_type.display = function(value)
  if value == 255 then
    return "Clearing Account Type: No Value"
  end
  if value == 0 then
    return "Clearing Account Type: Customer (0)"
  end
  if value == 1 then
    return "Clearing Account Type: Firm (1)"
  end

  return "Clearing Account Type: Unknown("..value..")"
end

-- Dissect: Clearing Account Type
cme_ebs_ilink3_sbe_v8_3.clearing_account_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.clearing_account_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.clearing_account_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.clearing_account_type, range, value, display)

  return offset + length, value
end

-- Clearing Trade Price Type
cme_ebs_ilink3_sbe_v8_3.clearing_trade_price_type = {}

-- Size: Clearing Trade Price Type
cme_ebs_ilink3_sbe_v8_3.clearing_trade_price_type.size = 1

-- Display: Clearing Trade Price Type
cme_ebs_ilink3_sbe_v8_3.clearing_trade_price_type.display = function(value)
  if value == 255 then
    return "Clearing Trade Price Type: No Value"
  end
  if value == 0 then
    return "Clearing Trade Price Type: Trade Clearingat Execution Price (0)"
  end
  if value == 1 then
    return "Clearing Trade Price Type: Trade Clearingat Alternate Clearing Price (1)"
  end

  return "Clearing Trade Price Type: Unknown("..value..")"
end

-- Dissect: Clearing Trade Price Type
cme_ebs_ilink3_sbe_v8_3.clearing_trade_price_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.clearing_trade_price_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.clearing_trade_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.clearing_trade_price_type, range, value, display)

  return offset + length, value
end

-- ClOrdId
cme_ebs_ilink3_sbe_v8_3.clordid = {}

-- Size: ClOrdId
cme_ebs_ilink3_sbe_v8_3.clordid.size = 20

-- Display: ClOrdId
cme_ebs_ilink3_sbe_v8_3.clordid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "ClOrdId: No Value"
  end

  return "ClOrdId: "..value
end

-- Dissect: ClOrdId
cme_ebs_ilink3_sbe_v8_3.clordid.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.clordid.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.clordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.clordid, range, value, display)

  return offset + length, value
end

-- Cmta Giveup Cd
cme_ebs_ilink3_sbe_v8_3.cmta_giveup_cd = {}

-- Size: Cmta Giveup Cd
cme_ebs_ilink3_sbe_v8_3.cmta_giveup_cd.size = 1

-- Display: Cmta Giveup Cd
cme_ebs_ilink3_sbe_v8_3.cmta_giveup_cd.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Cmta Giveup Cd: No Value"
  end

  if value == "G" then
    return "Cmta Giveup Cd: Give Up (G)"
  end
  if value == "S" then
    return "Cmta Giveup Cd: Sg Xoffset (S)"
  end

  return "Cmta Giveup Cd: Unknown("..value..")"
end

-- Dissect: Cmta Giveup Cd
cme_ebs_ilink3_sbe_v8_3.cmta_giveup_cd.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.cmta_giveup_cd.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.cmta_giveup_cd.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.cmta_giveup_cd, range, value, display)

  return offset + length, value
end

-- Credentials Data
cme_ebs_ilink3_sbe_v8_3.credentials_data = {}

-- Display: Credentials Data
cme_ebs_ilink3_sbe_v8_3.credentials_data.display = function(value)
  return "Credentials Data: "..value
end

-- Dissect runtime sized field: Credentials Data
cme_ebs_ilink3_sbe_v8_3.credentials_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = cme_ebs_ilink3_sbe_v8_3.credentials_data.display(value, packet, parent, size)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.credentials_data, range, value, display)

  return offset + size, value
end

-- Credentials Length
cme_ebs_ilink3_sbe_v8_3.credentials_length = {}

-- Size: Credentials Length
cme_ebs_ilink3_sbe_v8_3.credentials_length.size = 2

-- Display: Credentials Length
cme_ebs_ilink3_sbe_v8_3.credentials_length.display = function(value)
  return "Credentials Length: "..value
end

-- Dissect: Credentials Length
cme_ebs_ilink3_sbe_v8_3.credentials_length.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.credentials_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.credentials_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.credentials_length, range, value, display)

  return offset + length, value
end

-- Cross Id
cme_ebs_ilink3_sbe_v8_3.cross_id = {}

-- Size: Cross Id
cme_ebs_ilink3_sbe_v8_3.cross_id.size = 8

-- Display: Cross Id
cme_ebs_ilink3_sbe_v8_3.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
cme_ebs_ilink3_sbe_v8_3.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.cross_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Cross Id Optional
cme_ebs_ilink3_sbe_v8_3.cross_id_optional = {}

-- Size: Cross Id Optional
cme_ebs_ilink3_sbe_v8_3.cross_id_optional.size = 8

-- Display: Cross Id Optional
cme_ebs_ilink3_sbe_v8_3.cross_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Cross Id Optional: No Value"
  end

  return "Cross Id Optional: "..value
end

-- Dissect: Cross Id Optional
cme_ebs_ilink3_sbe_v8_3.cross_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.cross_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.cross_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.cross_id_optional, range, value, display)

  return offset + length, value
end

-- Cross Type
cme_ebs_ilink3_sbe_v8_3.cross_type = {}

-- Size: Cross Type
cme_ebs_ilink3_sbe_v8_3.cross_type.size = 1

-- Display: Cross Type
cme_ebs_ilink3_sbe_v8_3.cross_type.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Cross Type: No Value"
  end

  return "Cross Type: "..value
end

-- Dissect: Cross Type
cme_ebs_ilink3_sbe_v8_3.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.cross_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Cum Qty
cme_ebs_ilink3_sbe_v8_3.cum_qty = {}

-- Size: Cum Qty
cme_ebs_ilink3_sbe_v8_3.cum_qty.size = 4

-- Display: Cum Qty
cme_ebs_ilink3_sbe_v8_3.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
cme_ebs_ilink3_sbe_v8_3.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.cum_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Currency
cme_ebs_ilink3_sbe_v8_3.currency = {}

-- Size: Currency
cme_ebs_ilink3_sbe_v8_3.currency.size = 3

-- Display: Currency
cme_ebs_ilink3_sbe_v8_3.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
cme_ebs_ilink3_sbe_v8_3.currency.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.currency.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.currency, range, value, display)

  return offset + length, value
end

-- Cust Order Capacity
cme_ebs_ilink3_sbe_v8_3.cust_order_capacity = {}

-- Size: Cust Order Capacity
cme_ebs_ilink3_sbe_v8_3.cust_order_capacity.size = 1

-- Display: Cust Order Capacity
cme_ebs_ilink3_sbe_v8_3.cust_order_capacity.display = function(value)
  if value == 255 then
    return "Cust Order Capacity: No Value"
  end
  if value == 1 then
    return "Cust Order Capacity: Membertradingfortheirownaccount (1)"
  end
  if value == 2 then
    return "Cust Order Capacity: Clearingfirmtradingforitsproprietaryaccount (2)"
  end
  if value == 3 then
    return "Cust Order Capacity: Membertradingforanothermember (3)"
  end
  if value == 4 then
    return "Cust Order Capacity: Allother (4)"
  end

  return "Cust Order Capacity: Unknown("..value..")"
end

-- Dissect: Cust Order Capacity
cme_ebs_ilink3_sbe_v8_3.cust_order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.cust_order_capacity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.cust_order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.cust_order_capacity, range, value, display)

  return offset + length, value
end

-- Cust Order Handling Inst
cme_ebs_ilink3_sbe_v8_3.cust_order_handling_inst = {}

-- Size: Cust Order Handling Inst
cme_ebs_ilink3_sbe_v8_3.cust_order_handling_inst.size = 1

-- Display: Cust Order Handling Inst
cme_ebs_ilink3_sbe_v8_3.cust_order_handling_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Cust Order Handling Inst: No Value"
  end

  if value == "C" then
    return "Cust Order Handling Inst: Fc Mprovidedscreen (C)"
  end
  if value == "D" then
    return "Cust Order Handling Inst: Otherprovidedscreen (D)"
  end
  if value == "G" then
    return "Cust Order Handling Inst: Fcmapi Cta Ix (G)"
  end
  if value == "H" then
    return "Cust Order Handling Inst: Algo Engine (H)"
  end
  if value == "W" then
    return "Cust Order Handling Inst: Desk Electronic (W)"
  end
  if value == "Y" then
    return "Cust Order Handling Inst: Client Electronic (Y)"
  end

  return "Cust Order Handling Inst: Unknown("..value..")"
end

-- Dissect: Cust Order Handling Inst
cme_ebs_ilink3_sbe_v8_3.cust_order_handling_inst.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.cust_order_handling_inst.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.cust_order_handling_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.cust_order_handling_inst, range, value, display)

  return offset + length, value
end

-- Cxl Rej Reason
cme_ebs_ilink3_sbe_v8_3.cxl_rej_reason = {}

-- Size: Cxl Rej Reason
cme_ebs_ilink3_sbe_v8_3.cxl_rej_reason.size = 2

-- Display: Cxl Rej Reason
cme_ebs_ilink3_sbe_v8_3.cxl_rej_reason.display = function(value)
  return "Cxl Rej Reason: "..value
end

-- Dissect: Cxl Rej Reason
cme_ebs_ilink3_sbe_v8_3.cxl_rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.cxl_rej_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.cxl_rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.cxl_rej_reason, range, value, display)

  return offset + length, value
end

-- Day
cme_ebs_ilink3_sbe_v8_3.day = {}

-- Size: Day
cme_ebs_ilink3_sbe_v8_3.day.size = 1

-- Display: Day
cme_ebs_ilink3_sbe_v8_3.day.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Day: No Value"
  end

  return "Day: "..value
end

-- Dissect: Day
cme_ebs_ilink3_sbe_v8_3.day.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.day.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.day, range, value, display)

  return offset + length, value
end

-- Delay Duration
cme_ebs_ilink3_sbe_v8_3.delay_duration = {}

-- Size: Delay Duration
cme_ebs_ilink3_sbe_v8_3.delay_duration.size = 2

-- Display: Delay Duration
cme_ebs_ilink3_sbe_v8_3.delay_duration.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Delay Duration: No Value"
  end

  return "Delay Duration: "..value
end

-- Dissect: Delay Duration
cme_ebs_ilink3_sbe_v8_3.delay_duration.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.delay_duration.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.delay_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.delay_duration, range, value, display)

  return offset + length, value
end

-- Display Qty
cme_ebs_ilink3_sbe_v8_3.display_qty = {}

-- Size: Display Qty
cme_ebs_ilink3_sbe_v8_3.display_qty.size = 4

-- Display: Display Qty
cme_ebs_ilink3_sbe_v8_3.display_qty.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Display Qty: No Value"
  end

  return "Display Qty: "..value
end

-- Dissect: Display Qty
cme_ebs_ilink3_sbe_v8_3.display_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.display_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Dk Reason
cme_ebs_ilink3_sbe_v8_3.dk_reason = {}

-- Size: Dk Reason
cme_ebs_ilink3_sbe_v8_3.dk_reason.size = 1

-- Display: Dk Reason
cme_ebs_ilink3_sbe_v8_3.dk_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Dk Reason: No Value"
  end

  if value == "A" then
    return "Dk Reason: Unknown Security (A)"
  end
  if value == "B" then
    return "Dk Reason: Wrong Side (B)"
  end
  if value == "C" then
    return "Dk Reason: Quantity Exceeds Order (C)"
  end
  if value == "D" then
    return "Dk Reason: No Matching Order (D)"
  end
  if value == "E" then
    return "Dk Reason: Price Exceeds Limit (E)"
  end
  if value == "F" then
    return "Dk Reason: Calculation Difference (F)"
  end
  if value == "G" then
    return "Dk Reason: No Matching Execution Report (G)"
  end
  if value == "Z" then
    return "Dk Reason: Other (Z)"
  end

  return "Dk Reason: Unknown("..value..")"
end

-- Dissect: Dk Reason
cme_ebs_ilink3_sbe_v8_3.dk_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.dk_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.dk_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.dk_reason, range, value, display)

  return offset + length, value
end

-- Encoding Type
cme_ebs_ilink3_sbe_v8_3.encoding_type = {}

-- Size: Encoding Type
cme_ebs_ilink3_sbe_v8_3.encoding_type.size = 2

-- Display: Encoding Type
cme_ebs_ilink3_sbe_v8_3.encoding_type.display = function(value)
  return "Encoding Type: "..value
end

-- Dissect: Encoding Type
cme_ebs_ilink3_sbe_v8_3.encoding_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.encoding_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.encoding_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.encoding_type, range, value, display)

  return offset + length, value
end

-- End Date
cme_ebs_ilink3_sbe_v8_3.end_date = {}

-- Size: End Date
cme_ebs_ilink3_sbe_v8_3.end_date.size = 2

-- Display: End Date
cme_ebs_ilink3_sbe_v8_3.end_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "End Date: No Value"
  end

  return "End Date: "..value
end

-- Dissect: End Date
cme_ebs_ilink3_sbe_v8_3.end_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.end_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.end_date, range, value, display)

  return offset + length, value
end

-- Error Codes
cme_ebs_ilink3_sbe_v8_3.error_codes = {}

-- Size: Error Codes
cme_ebs_ilink3_sbe_v8_3.error_codes.size = 2

-- Display: Error Codes
cme_ebs_ilink3_sbe_v8_3.error_codes.display = function(value)
  return "Error Codes: "..value
end

-- Dissect: Error Codes
cme_ebs_ilink3_sbe_v8_3.error_codes.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.error_codes.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.error_codes.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.error_codes, range, value, display)

  return offset + length, value
end

-- Exchange Quote Req Id
cme_ebs_ilink3_sbe_v8_3.exchange_quote_req_id = {}

-- Size: Exchange Quote Req Id
cme_ebs_ilink3_sbe_v8_3.exchange_quote_req_id.size = 17

-- Display: Exchange Quote Req Id
cme_ebs_ilink3_sbe_v8_3.exchange_quote_req_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Exchange Quote Req Id: No Value"
  end

  return "Exchange Quote Req Id: "..value
end

-- Dissect: Exchange Quote Req Id
cme_ebs_ilink3_sbe_v8_3.exchange_quote_req_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.exchange_quote_req_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.exchange_quote_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.exchange_quote_req_id, range, value, display)

  return offset + length, value
end

-- Exec Ack Status
cme_ebs_ilink3_sbe_v8_3.exec_ack_status = {}

-- Size: Exec Ack Status
cme_ebs_ilink3_sbe_v8_3.exec_ack_status.size = 1

-- Display: Exec Ack Status
cme_ebs_ilink3_sbe_v8_3.exec_ack_status.labels = {
  [1] = "Exec Ack Status: Accepted (1)",
  [2] = "Exec Ack Status: Rejected (2)",
}

cme_ebs_ilink3_sbe_v8_3.exec_ack_status.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.exec_ack_status.labels[value] or "Exec Ack Status: Unknown("..value..")"
end

-- Dissect: Exec Ack Status
cme_ebs_ilink3_sbe_v8_3.exec_ack_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.exec_ack_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.exec_ack_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.exec_ack_status, range, value, display)

  return offset + length, value
end

-- Exec Id
cme_ebs_ilink3_sbe_v8_3.exec_id = {}

-- Size: Exec Id
cme_ebs_ilink3_sbe_v8_3.exec_id.size = 40

-- Display: Exec Id
cme_ebs_ilink3_sbe_v8_3.exec_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Exec Id: No Value"
  end

  return "Exec Id: "..value
end

-- Dissect: Exec Id
cme_ebs_ilink3_sbe_v8_3.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.exec_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Exec Restatement Reason
cme_ebs_ilink3_sbe_v8_3.exec_restatement_reason = {}

-- Size: Exec Restatement Reason
cme_ebs_ilink3_sbe_v8_3.exec_restatement_reason.size = 1

-- Display: Exec Restatement Reason
cme_ebs_ilink3_sbe_v8_3.exec_restatement_reason.display = function(value)
  if value == 255 then
    return "Exec Restatement Reason: No Value"
  end
  if value == 8 then
    return "Exec Restatement Reason: Market Exchange Option (8)"
  end
  if value == 9 then
    return "Exec Restatement Reason: Cancelled Not Best (9)"
  end
  if value == 100 then
    return "Exec Restatement Reason: Cancel On Disconnect (100)"
  end
  if value == 103 then
    return "Exec Restatement Reason: Self Match Prevention Oldest Order Cancelled (103)"
  end
  if value == 104 then
    return "Exec Restatement Reason: Cancel On Globex Credit Controls Violation (104)"
  end
  if value == 105 then
    return "Exec Restatement Reason: Cancel From Firmsoft (105)"
  end
  if value == 106 then
    return "Exec Restatement Reason: Cancel From Risk Management Api (106)"
  end
  if value == 107 then
    return "Exec Restatement Reason: Self Match Prevention Newest Order Cancelled (107)"
  end
  if value == 108 then
    return "Exec Restatement Reason: Cancelduetovolquotedoptionorderrestedqtylessthanminordersize (108)"
  end

  return "Exec Restatement Reason: Unknown("..value..")"
end

-- Dissect: Exec Restatement Reason
cme_ebs_ilink3_sbe_v8_3.exec_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.exec_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.exec_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Exec Type
cme_ebs_ilink3_sbe_v8_3.exec_type = {}

-- Size: Exec Type
cme_ebs_ilink3_sbe_v8_3.exec_type.size = 1

-- Display: Exec Type
cme_ebs_ilink3_sbe_v8_3.exec_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Exec Type: No Value"
  end

  if value == "G" then
    return "Exec Type: Trade Correction (G)"
  end
  if value == "H" then
    return "Exec Type: Trade Cancel (H)"
  end

  return "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
cme_ebs_ilink3_sbe_v8_3.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.exec_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Execution Mode
cme_ebs_ilink3_sbe_v8_3.execution_mode = {}

-- Size: Execution Mode
cme_ebs_ilink3_sbe_v8_3.execution_mode.size = 1

-- Display: Execution Mode
cme_ebs_ilink3_sbe_v8_3.execution_mode.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Execution Mode: No Value"
  end

  if value == "A" then
    return "Execution Mode: Aggressive (A)"
  end
  if value == "P" then
    return "Execution Mode: Passive (P)"
  end

  return "Execution Mode: Unknown("..value..")"
end

-- Dissect: Execution Mode
cme_ebs_ilink3_sbe_v8_3.execution_mode.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.execution_mode.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.execution_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_mode, range, value, display)

  return offset + length, value
end

-- Executor
cme_ebs_ilink3_sbe_v8_3.executor = {}

-- Size: Executor
cme_ebs_ilink3_sbe_v8_3.executor.size = 8

-- Display: Executor
cme_ebs_ilink3_sbe_v8_3.executor.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Executor: No Value"
  end

  return "Executor: "..value
end

-- Dissect: Executor
cme_ebs_ilink3_sbe_v8_3.executor.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.executor.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.executor.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.executor, range, value, display)

  return offset + length, value
end

-- Expiration Cycle
cme_ebs_ilink3_sbe_v8_3.expiration_cycle = {}

-- Size: Expiration Cycle
cme_ebs_ilink3_sbe_v8_3.expiration_cycle.size = 1

-- Display: Expiration Cycle
cme_ebs_ilink3_sbe_v8_3.expiration_cycle.display = function(value)
  if value == 255 then
    return "Expiration Cycle: No Value"
  end
  if value == 0 then
    return "Expiration Cycle: Expire On Trading Session Close (0)"
  end
  if value == 2 then
    return "Expiration Cycle: Expirationatgivendate (2)"
  end

  return "Expiration Cycle: Unknown("..value..")"
end

-- Dissect: Expiration Cycle
cme_ebs_ilink3_sbe_v8_3.expiration_cycle.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.expiration_cycle.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.expiration_cycle.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.expiration_cycle, range, value, display)

  return offset + length, value
end

-- Expire Date
cme_ebs_ilink3_sbe_v8_3.expire_date = {}

-- Size: Expire Date
cme_ebs_ilink3_sbe_v8_3.expire_date.size = 2

-- Display: Expire Date
cme_ebs_ilink3_sbe_v8_3.expire_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Expire Date: No Value"
  end

  return "Expire Date: "..value
end

-- Dissect: Expire Date
cme_ebs_ilink3_sbe_v8_3.expire_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.expire_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.expire_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.expire_date, range, value, display)

  return offset + length, value
end

-- Exponent
cme_ebs_ilink3_sbe_v8_3.exponent = {}

-- Size: Exponent
cme_ebs_ilink3_sbe_v8_3.exponent.size = 1

-- Display: Exponent
cme_ebs_ilink3_sbe_v8_3.exponent.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Exponent: No Value"
  end

  return "Exponent: "..value
end

-- Dissect: Exponent
cme_ebs_ilink3_sbe_v8_3.exponent.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cme_ebs_ilink3_sbe_v8_3.exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.exponent, range, value, display)

  return offset + length, value
end

-- Fault Tolerance Indicator
cme_ebs_ilink3_sbe_v8_3.fault_tolerance_indicator = {}

-- Size: Fault Tolerance Indicator
cme_ebs_ilink3_sbe_v8_3.fault_tolerance_indicator.size = 1

-- Display: Fault Tolerance Indicator
cme_ebs_ilink3_sbe_v8_3.fault_tolerance_indicator.display = function(value)
  if value == 255 then
    return "Fault Tolerance Indicator: No Value"
  end
  if value == 0 then
    return "Fault Tolerance Indicator: Backup (0)"
  end
  if value == 1 then
    return "Fault Tolerance Indicator: Primary (1)"
  end

  return "Fault Tolerance Indicator: Unknown("..value..")"
end

-- Dissect: Fault Tolerance Indicator
cme_ebs_ilink3_sbe_v8_3.fault_tolerance_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.fault_tolerance_indicator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.fault_tolerance_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.fault_tolerance_indicator, range, value, display)

  return offset + length, value
end

-- Fill Exec Id
cme_ebs_ilink3_sbe_v8_3.fill_exec_id = {}

-- Size: Fill Exec Id
cme_ebs_ilink3_sbe_v8_3.fill_exec_id.size = 2

-- Display: Fill Exec Id
cme_ebs_ilink3_sbe_v8_3.fill_exec_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fill Exec Id: No Value"
  end

  return "Fill Exec Id: "..value
end

-- Dissect: Fill Exec Id
cme_ebs_ilink3_sbe_v8_3.fill_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.fill_exec_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.fill_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.fill_exec_id, range, value, display)

  return offset + length, value
end

-- Fill Px
cme_ebs_ilink3_sbe_v8_3.fill_px = {}

-- Size: Fill Px
cme_ebs_ilink3_sbe_v8_3.fill_px.size = 8

-- Display: Fill Px
cme_ebs_ilink3_sbe_v8_3.fill_px.display = function(value)
  return "Fill Px: "..value
end

-- Translate: Fill Px
cme_ebs_ilink3_sbe_v8_3.fill_px.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Fill Px
cme_ebs_ilink3_sbe_v8_3.fill_px.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.fill_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_ebs_ilink3_sbe_v8_3.fill_px.translate(raw)
  local display = cme_ebs_ilink3_sbe_v8_3.fill_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.fill_px, range, value, display)

  return offset + length, value
end

-- Fill Qty
cme_ebs_ilink3_sbe_v8_3.fill_qty = {}

-- Size: Fill Qty
cme_ebs_ilink3_sbe_v8_3.fill_qty.size = 4

-- Display: Fill Qty
cme_ebs_ilink3_sbe_v8_3.fill_qty.display = function(value)
  return "Fill Qty: "..value
end

-- Dissect: Fill Qty
cme_ebs_ilink3_sbe_v8_3.fill_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.fill_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.fill_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Fill Yield Type
cme_ebs_ilink3_sbe_v8_3.fill_yield_type = {}

-- Size: Fill Yield Type
cme_ebs_ilink3_sbe_v8_3.fill_yield_type.size = 1

-- Display: Fill Yield Type
cme_ebs_ilink3_sbe_v8_3.fill_yield_type.display = function(value)
  return "Fill Yield Type: "..value
end

-- Dissect: Fill Yield Type
cme_ebs_ilink3_sbe_v8_3.fill_yield_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.fill_yield_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.fill_yield_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.fill_yield_type, range, value, display)

  return offset + length, value
end

-- Financial Instrument Full Name
cme_ebs_ilink3_sbe_v8_3.financial_instrument_full_name = {}

-- Size: Financial Instrument Full Name
cme_ebs_ilink3_sbe_v8_3.financial_instrument_full_name.size = 35

-- Display: Financial Instrument Full Name
cme_ebs_ilink3_sbe_v8_3.financial_instrument_full_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Financial Instrument Full Name: No Value"
  end

  return "Financial Instrument Full Name: "..value
end

-- Dissect: Financial Instrument Full Name
cme_ebs_ilink3_sbe_v8_3.financial_instrument_full_name.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.financial_instrument_full_name.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.financial_instrument_full_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.financial_instrument_full_name, range, value, display)

  return offset + length, value
end

-- Firm
cme_ebs_ilink3_sbe_v8_3.firm = {}

-- Size: Firm
cme_ebs_ilink3_sbe_v8_3.firm.size = 5

-- Display: Firm
cme_ebs_ilink3_sbe_v8_3.firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Firm: No Value"
  end

  return "Firm: "..value
end

-- Dissect: Firm
cme_ebs_ilink3_sbe_v8_3.firm.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.firm.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.firm, range, value, display)

  return offset + length, value
end

-- From Seq No
cme_ebs_ilink3_sbe_v8_3.from_seq_no = {}

-- Size: From Seq No
cme_ebs_ilink3_sbe_v8_3.from_seq_no.size = 4

-- Display: From Seq No
cme_ebs_ilink3_sbe_v8_3.from_seq_no.display = function(value)
  return "From Seq No: "..value
end

-- Dissect: From Seq No
cme_ebs_ilink3_sbe_v8_3.from_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.from_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.from_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.from_seq_no, range, value, display)

  return offset + length, value
end

-- Hmac Signature
cme_ebs_ilink3_sbe_v8_3.hmac_signature = {}

-- Size: Hmac Signature
cme_ebs_ilink3_sbe_v8_3.hmac_signature.size = 32

-- Display: Hmac Signature
cme_ebs_ilink3_sbe_v8_3.hmac_signature.display = function(value)
  return "Hmac Signature: "..value
end

-- Dissect: Hmac Signature
cme_ebs_ilink3_sbe_v8_3.hmac_signature.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.hmac_signature.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_ebs_ilink3_sbe_v8_3.hmac_signature.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.hmac_signature, range, value, display)

  return offset + length, value
end

-- Host Cross Id
cme_ebs_ilink3_sbe_v8_3.host_cross_id = {}

-- Size: Host Cross Id
cme_ebs_ilink3_sbe_v8_3.host_cross_id.size = 8

-- Display: Host Cross Id
cme_ebs_ilink3_sbe_v8_3.host_cross_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Host Cross Id: No Value"
  end

  return "Host Cross Id: "..value
end

-- Dissect: Host Cross Id
cme_ebs_ilink3_sbe_v8_3.host_cross_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.host_cross_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.host_cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.host_cross_id, range, value, display)

  return offset + length, value
end

-- Idm Short Code
cme_ebs_ilink3_sbe_v8_3.idm_short_code = {}

-- Size: Idm Short Code
cme_ebs_ilink3_sbe_v8_3.idm_short_code.size = 8

-- Display: Idm Short Code
cme_ebs_ilink3_sbe_v8_3.idm_short_code.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Idm Short Code: No Value"
  end

  return "Idm Short Code: "..value
end

-- Dissect: Idm Short Code
cme_ebs_ilink3_sbe_v8_3.idm_short_code.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.idm_short_code.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.idm_short_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.idm_short_code, range, value, display)

  return offset + length, value
end

-- Keep Alive Interval
cme_ebs_ilink3_sbe_v8_3.keep_alive_interval = {}

-- Size: Keep Alive Interval
cme_ebs_ilink3_sbe_v8_3.keep_alive_interval.size = 2

-- Display: Keep Alive Interval
cme_ebs_ilink3_sbe_v8_3.keep_alive_interval.display = function(value)
  return "Keep Alive Interval: "..value
end

-- Dissect: Keep Alive Interval
cme_ebs_ilink3_sbe_v8_3.keep_alive_interval.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.keep_alive_interval.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.keep_alive_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.keep_alive_interval, range, value, display)

  return offset + length, value
end

-- Keep Alive Interval Lapsed
cme_ebs_ilink3_sbe_v8_3.keep_alive_interval_lapsed = {}

-- Size: Keep Alive Interval Lapsed
cme_ebs_ilink3_sbe_v8_3.keep_alive_interval_lapsed.size = 1

-- Display: Keep Alive Interval Lapsed
cme_ebs_ilink3_sbe_v8_3.keep_alive_interval_lapsed.labels = {
  [0] = "Keep Alive Interval Lapsed: Not Lapsed (0)",
  [1] = "Keep Alive Interval Lapsed: Lapsed (1)",
}

cme_ebs_ilink3_sbe_v8_3.keep_alive_interval_lapsed.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.keep_alive_interval_lapsed.labels[value] or "Keep Alive Interval Lapsed: Unknown("..value..")"
end

-- Dissect: Keep Alive Interval Lapsed
cme_ebs_ilink3_sbe_v8_3.keep_alive_interval_lapsed.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.keep_alive_interval_lapsed.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.keep_alive_interval_lapsed.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.keep_alive_interval_lapsed, range, value, display)

  return offset + length, value
end

-- Last Fragment
cme_ebs_ilink3_sbe_v8_3.last_fragment = {}

-- Size: Last Fragment
cme_ebs_ilink3_sbe_v8_3.last_fragment.size = 1

-- Display: Last Fragment
cme_ebs_ilink3_sbe_v8_3.last_fragment.labels = {
  [0] = "Last Fragment: False (0)",
  [1] = "Last Fragment: True (1)",
}

cme_ebs_ilink3_sbe_v8_3.last_fragment.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.last_fragment.labels[value] or "Last Fragment: Unknown("..value..")"
end

-- Dissect: Last Fragment
cme_ebs_ilink3_sbe_v8_3.last_fragment.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.last_fragment.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.last_fragment.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.last_fragment, range, value, display)

  return offset + length, value
end

-- Last Px
cme_ebs_ilink3_sbe_v8_3.last_px = {}

-- Size: Last Px
cme_ebs_ilink3_sbe_v8_3.last_px.size = 8

-- Display: Last Px
cme_ebs_ilink3_sbe_v8_3.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
cme_ebs_ilink3_sbe_v8_3.last_px.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Last Px
cme_ebs_ilink3_sbe_v8_3.last_px.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_ebs_ilink3_sbe_v8_3.last_px.translate(raw)
  local display = cme_ebs_ilink3_sbe_v8_3.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
cme_ebs_ilink3_sbe_v8_3.last_qty = {}

-- Size: Last Qty
cme_ebs_ilink3_sbe_v8_3.last_qty.size = 4

-- Display: Last Qty
cme_ebs_ilink3_sbe_v8_3.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
cme_ebs_ilink3_sbe_v8_3.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Last Rpt Requested
cme_ebs_ilink3_sbe_v8_3.last_rpt_requested = {}

-- Size: Last Rpt Requested
cme_ebs_ilink3_sbe_v8_3.last_rpt_requested.size = 1

-- Display: Last Rpt Requested
cme_ebs_ilink3_sbe_v8_3.last_rpt_requested.display = function(value)
  if value == 255 then
    return "Last Rpt Requested: No Value"
  end
  if value == 0 then
    return "Last Rpt Requested: False (0)"
  end
  if value == 1 then
    return "Last Rpt Requested: True (1)"
  end

  return "Last Rpt Requested: Unknown("..value..")"
end

-- Dissect: Last Rpt Requested
cme_ebs_ilink3_sbe_v8_3.last_rpt_requested.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.last_rpt_requested.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.last_rpt_requested.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.last_rpt_requested, range, value, display)

  return offset + length, value
end

-- Last Uuid
cme_ebs_ilink3_sbe_v8_3.last_uuid = {}

-- Size: Last Uuid
cme_ebs_ilink3_sbe_v8_3.last_uuid.size = 8

-- Display: Last Uuid
cme_ebs_ilink3_sbe_v8_3.last_uuid.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Last Uuid: No Value"
  end

  return "Last Uuid: "..value
end

-- Dissect: Last Uuid
cme_ebs_ilink3_sbe_v8_3.last_uuid.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.last_uuid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.last_uuid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.last_uuid, range, value, display)

  return offset + length, value
end

-- Leaves Qty
cme_ebs_ilink3_sbe_v8_3.leaves_qty = {}

-- Size: Leaves Qty
cme_ebs_ilink3_sbe_v8_3.leaves_qty.size = 4

-- Display: Leaves Qty
cme_ebs_ilink3_sbe_v8_3.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
cme_ebs_ilink3_sbe_v8_3.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Leg Exec Id
cme_ebs_ilink3_sbe_v8_3.leg_exec_id = {}

-- Size: Leg Exec Id
cme_ebs_ilink3_sbe_v8_3.leg_exec_id.size = 8

-- Display: Leg Exec Id
cme_ebs_ilink3_sbe_v8_3.leg_exec_id.display = function(value)
  return "Leg Exec Id: "..value
end

-- Dissect: Leg Exec Id
cme_ebs_ilink3_sbe_v8_3.leg_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.leg_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.leg_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_exec_id, range, value, display)

  return offset + length, value
end

-- Leg Exec Ref Id
cme_ebs_ilink3_sbe_v8_3.leg_exec_ref_id = {}

-- Size: Leg Exec Ref Id
cme_ebs_ilink3_sbe_v8_3.leg_exec_ref_id.size = 8

-- Display: Leg Exec Ref Id
cme_ebs_ilink3_sbe_v8_3.leg_exec_ref_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Leg Exec Ref Id: No Value"
  end

  return "Leg Exec Ref Id: "..value
end

-- Dissect: Leg Exec Ref Id
cme_ebs_ilink3_sbe_v8_3.leg_exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.leg_exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.leg_exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_exec_ref_id, range, value, display)

  return offset + length, value
end

-- Leg Last Px
cme_ebs_ilink3_sbe_v8_3.leg_last_px = {}

-- Size: Leg Last Px
cme_ebs_ilink3_sbe_v8_3.leg_last_px.size = 8

-- Display: Leg Last Px
cme_ebs_ilink3_sbe_v8_3.leg_last_px.display = function(value)
  return "Leg Last Px: "..value
end

-- Translate: Leg Last Px
cme_ebs_ilink3_sbe_v8_3.leg_last_px.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Leg Last Px
cme_ebs_ilink3_sbe_v8_3.leg_last_px.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.leg_last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_ebs_ilink3_sbe_v8_3.leg_last_px.translate(raw)
  local display = cme_ebs_ilink3_sbe_v8_3.leg_last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_last_px, range, value, display)

  return offset + length, value
end

-- Leg Last Qty
cme_ebs_ilink3_sbe_v8_3.leg_last_qty = {}

-- Size: Leg Last Qty
cme_ebs_ilink3_sbe_v8_3.leg_last_qty.size = 4

-- Display: Leg Last Qty
cme_ebs_ilink3_sbe_v8_3.leg_last_qty.display = function(value)
  return "Leg Last Qty: "..value
end

-- Dissect: Leg Last Qty
cme_ebs_ilink3_sbe_v8_3.leg_last_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.leg_last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.leg_last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_last_qty, range, value, display)

  return offset + length, value
end

-- Leg Price
cme_ebs_ilink3_sbe_v8_3.leg_price = {}

-- Size: Leg Price
cme_ebs_ilink3_sbe_v8_3.leg_price.size = 8

-- Display: Leg Price
cme_ebs_ilink3_sbe_v8_3.leg_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Leg Price: No Value"
  end

  return "Leg Price: "..value
end

-- Translate: Leg Price
cme_ebs_ilink3_sbe_v8_3.leg_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Leg Price
cme_ebs_ilink3_sbe_v8_3.leg_price.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.leg_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_ebs_ilink3_sbe_v8_3.leg_price.translate(raw)
  local display = cme_ebs_ilink3_sbe_v8_3.leg_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
cme_ebs_ilink3_sbe_v8_3.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
cme_ebs_ilink3_sbe_v8_3.leg_ratio_qty.size = 1

-- Display: Leg Ratio Qty
cme_ebs_ilink3_sbe_v8_3.leg_ratio_qty.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Leg Ratio Qty: No Value"
  end

  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
cme_ebs_ilink3_sbe_v8_3.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Security Id
cme_ebs_ilink3_sbe_v8_3.leg_security_id = {}

-- Size: Leg Security Id
cme_ebs_ilink3_sbe_v8_3.leg_security_id.size = 4

-- Display: Leg Security Id
cme_ebs_ilink3_sbe_v8_3.leg_security_id.display = function(value)
  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
cme_ebs_ilink3_sbe_v8_3.leg_security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.leg_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_ebs_ilink3_sbe_v8_3.leg_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Leg Side
cme_ebs_ilink3_sbe_v8_3.leg_side = {}

-- Size: Leg Side
cme_ebs_ilink3_sbe_v8_3.leg_side.size = 1

-- Display: Leg Side
cme_ebs_ilink3_sbe_v8_3.leg_side.labels = {
  [1] = "Leg Side: Buy (1)",
  [2] = "Leg Side: Sell (2)",
}

cme_ebs_ilink3_sbe_v8_3.leg_side.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.leg_side.labels[value] or "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
cme_ebs_ilink3_sbe_v8_3.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.leg_side.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Trade Id
cme_ebs_ilink3_sbe_v8_3.leg_trade_id = {}

-- Size: Leg Trade Id
cme_ebs_ilink3_sbe_v8_3.leg_trade_id.size = 4

-- Display: Leg Trade Id
cme_ebs_ilink3_sbe_v8_3.leg_trade_id.display = function(value)
  return "Leg Trade Id: "..value
end

-- Dissect: Leg Trade Id
cme_ebs_ilink3_sbe_v8_3.leg_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.leg_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.leg_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_trade_id, range, value, display)

  return offset + length, value
end

-- Leg Trade Ref Id
cme_ebs_ilink3_sbe_v8_3.leg_trade_ref_id = {}

-- Size: Leg Trade Ref Id
cme_ebs_ilink3_sbe_v8_3.leg_trade_ref_id.size = 4

-- Display: Leg Trade Ref Id
cme_ebs_ilink3_sbe_v8_3.leg_trade_ref_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Leg Trade Ref Id: No Value"
  end

  return "Leg Trade Ref Id: "..value
end

-- Dissect: Leg Trade Ref Id
cme_ebs_ilink3_sbe_v8_3.leg_trade_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.leg_trade_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.leg_trade_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_trade_ref_id, range, value, display)

  return offset + length, value
end

-- Liquidity Flag
cme_ebs_ilink3_sbe_v8_3.liquidity_flag = {}

-- Size: Liquidity Flag
cme_ebs_ilink3_sbe_v8_3.liquidity_flag.size = 1

-- Display: Liquidity Flag
cme_ebs_ilink3_sbe_v8_3.liquidity_flag.display = function(value)
  if value == 255 then
    return "Liquidity Flag: No Value"
  end
  if value == 0 then
    return "Liquidity Flag: False (0)"
  end
  if value == 1 then
    return "Liquidity Flag: True (1)"
  end

  return "Liquidity Flag: Unknown("..value..")"
end

-- Dissect: Liquidity Flag
cme_ebs_ilink3_sbe_v8_3.liquidity_flag.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.liquidity_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.liquidity_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.liquidity_flag, range, value, display)

  return offset + length, value
end

-- List Update Action
cme_ebs_ilink3_sbe_v8_3.list_update_action = {}

-- Size: List Update Action
cme_ebs_ilink3_sbe_v8_3.list_update_action.size = 1

-- Display: List Update Action
cme_ebs_ilink3_sbe_v8_3.list_update_action.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "List Update Action: No Value"
  end

  if value == "A" then
    return "List Update Action: Add (A)"
  end
  if value == "D" then
    return "List Update Action: Delete (D)"
  end

  return "List Update Action: Unknown("..value..")"
end

-- Dissect: List Update Action
cme_ebs_ilink3_sbe_v8_3.list_update_action.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.list_update_action.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.list_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.list_update_action, range, value, display)

  return offset + length, value
end

-- Location
cme_ebs_ilink3_sbe_v8_3.location = {}

-- Size: Location
cme_ebs_ilink3_sbe_v8_3.location.size = 5

-- Display: Location
cme_ebs_ilink3_sbe_v8_3.location.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Location: No Value"
  end

  return "Location: "..value
end

-- Dissect: Location
cme_ebs_ilink3_sbe_v8_3.location.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.location.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.location.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.location, range, value, display)

  return offset + length, value
end

-- Location Optional
cme_ebs_ilink3_sbe_v8_3.location_optional = {}

-- Size: Location Optional
cme_ebs_ilink3_sbe_v8_3.location_optional.size = 5

-- Display: Location Optional
cme_ebs_ilink3_sbe_v8_3.location_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Location Optional: No Value"
  end

  return "Location Optional: "..value
end

-- Dissect: Location Optional
cme_ebs_ilink3_sbe_v8_3.location_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.location_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.location_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.location_optional, range, value, display)

  return offset + length, value
end

-- Managed Order
cme_ebs_ilink3_sbe_v8_3.managed_order = {}

-- Size: Managed Order
cme_ebs_ilink3_sbe_v8_3.managed_order.size = 1

-- Display: Managed Order
cme_ebs_ilink3_sbe_v8_3.managed_order.display = function(value)
  if value == 255 then
    return "Managed Order: No Value"
  end
  if value == 0 then
    return "Managed Order: False (0)"
  end
  if value == 1 then
    return "Managed Order: True (1)"
  end

  return "Managed Order: Unknown("..value..")"
end

-- Dissect: Managed Order
cme_ebs_ilink3_sbe_v8_3.managed_order.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.managed_order.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.managed_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.managed_order, range, value, display)

  return offset + length, value
end

-- Mantissa
cme_ebs_ilink3_sbe_v8_3.mantissa = {}

-- Size: Mantissa
cme_ebs_ilink3_sbe_v8_3.mantissa.size = 8

-- Display: Mantissa
cme_ebs_ilink3_sbe_v8_3.mantissa.display = function(value)
  -- Check if field has value
  if value == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Mantissa: No Value"
  end

  return "Mantissa: "..value
end

-- Dissect: Mantissa
cme_ebs_ilink3_sbe_v8_3.mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cme_ebs_ilink3_sbe_v8_3.mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.mantissa, range, value, display)

  return offset + length, value
end

-- Mantissa 32
cme_ebs_ilink3_sbe_v8_3.mantissa_32 = {}

-- Size: Mantissa 32
cme_ebs_ilink3_sbe_v8_3.mantissa_32.size = 4

-- Display: Mantissa 32
cme_ebs_ilink3_sbe_v8_3.mantissa_32.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Mantissa 32: No Value"
  end

  return "Mantissa 32: "..value
end

-- Dissect: Mantissa 32
cme_ebs_ilink3_sbe_v8_3.mantissa_32.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.mantissa_32.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_ebs_ilink3_sbe_v8_3.mantissa_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.mantissa_32, range, value, display)

  return offset + length, value
end

-- Manual Order Indicator
cme_ebs_ilink3_sbe_v8_3.manual_order_indicator = {}

-- Size: Manual Order Indicator
cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size = 1

-- Display: Manual Order Indicator
cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.labels = {
  [0] = "Manual Order Indicator: Automated (0)",
  [1] = "Manual Order Indicator: Manual (1)",
}

cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.labels[value] or "Manual Order Indicator: Unknown("..value..")"
end

-- Dissect: Manual Order Indicator
cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.manual_order_indicator, range, value, display)

  return offset + length, value
end

-- Manual Order Indicator Optional
cme_ebs_ilink3_sbe_v8_3.manual_order_indicator_optional = {}

-- Size: Manual Order Indicator Optional
cme_ebs_ilink3_sbe_v8_3.manual_order_indicator_optional.size = 1

-- Display: Manual Order Indicator Optional
cme_ebs_ilink3_sbe_v8_3.manual_order_indicator_optional.display = function(value)
  if value == 255 then
    return "Manual Order Indicator Optional: No Value"
  end
  if value == 0 then
    return "Manual Order Indicator Optional: Automated (0)"
  end
  if value == 1 then
    return "Manual Order Indicator Optional: Manual (1)"
  end

  return "Manual Order Indicator Optional: Unknown("..value..")"
end

-- Dissect: Manual Order Indicator Optional
cme_ebs_ilink3_sbe_v8_3.manual_order_indicator_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator_optional.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.manual_order_indicator_optional, range, value, display)

  return offset + length, value
end

-- Market Segment Id
cme_ebs_ilink3_sbe_v8_3.market_segment_id = {}

-- Size: Market Segment Id
cme_ebs_ilink3_sbe_v8_3.market_segment_id.size = 1

-- Display: Market Segment Id
cme_ebs_ilink3_sbe_v8_3.market_segment_id.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Market Segment Id: No Value"
  end

  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
cme_ebs_ilink3_sbe_v8_3.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.market_segment_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Mass Status Req Id
cme_ebs_ilink3_sbe_v8_3.mass_status_req_id = {}

-- Size: Mass Status Req Id
cme_ebs_ilink3_sbe_v8_3.mass_status_req_id.size = 8

-- Display: Mass Status Req Id
cme_ebs_ilink3_sbe_v8_3.mass_status_req_id.display = function(value)
  return "Mass Status Req Id: "..value
end

-- Dissect: Mass Status Req Id
cme_ebs_ilink3_sbe_v8_3.mass_status_req_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.mass_status_req_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.mass_status_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.mass_status_req_id, range, value, display)

  return offset + length, value
end

-- Mass Status Req Id Optional
cme_ebs_ilink3_sbe_v8_3.mass_status_req_id_optional = {}

-- Size: Mass Status Req Id Optional
cme_ebs_ilink3_sbe_v8_3.mass_status_req_id_optional.size = 8

-- Display: Mass Status Req Id Optional
cme_ebs_ilink3_sbe_v8_3.mass_status_req_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Mass Status Req Id Optional: No Value"
  end

  return "Mass Status Req Id Optional: "..value
end

-- Dissect: Mass Status Req Id Optional
cme_ebs_ilink3_sbe_v8_3.mass_status_req_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.mass_status_req_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.mass_status_req_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.mass_status_req_id_optional, range, value, display)

  return offset + length, value
end

-- Mass Status Req Type
cme_ebs_ilink3_sbe_v8_3.mass_status_req_type = {}

-- Size: Mass Status Req Type
cme_ebs_ilink3_sbe_v8_3.mass_status_req_type.size = 1

-- Display: Mass Status Req Type
cme_ebs_ilink3_sbe_v8_3.mass_status_req_type.labels = {
  [1] = "Mass Status Req Type: Instrument (1)",
  [3] = "Mass Status Req Type: Instrument Group (3)",
  [100] = "Mass Status Req Type: Market Segment (100)",
}

cme_ebs_ilink3_sbe_v8_3.mass_status_req_type.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.mass_status_req_type.labels[value] or "Mass Status Req Type: Unknown("..value..")"
end

-- Dissect: Mass Status Req Type
cme_ebs_ilink3_sbe_v8_3.mass_status_req_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.mass_status_req_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.mass_status_req_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.mass_status_req_type, range, value, display)

  return offset + length, value
end

-- Mass Status Tif
cme_ebs_ilink3_sbe_v8_3.mass_status_tif = {}

-- Size: Mass Status Tif
cme_ebs_ilink3_sbe_v8_3.mass_status_tif.size = 1

-- Display: Mass Status Tif
cme_ebs_ilink3_sbe_v8_3.mass_status_tif.display = function(value)
  if value == 255 then
    return "Mass Status Tif: No Value"
  end
  if value == 0 then
    return "Mass Status Tif: Day (0)"
  end
  if value == 1 then
    return "Mass Status Tif: Gtc (1)"
  end
  if value == 6 then
    return "Mass Status Tif: Gtd (6)"
  end

  return "Mass Status Tif: Unknown("..value..")"
end

-- Dissect: Mass Status Tif
cme_ebs_ilink3_sbe_v8_3.mass_status_tif.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.mass_status_tif.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.mass_status_tif.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.mass_status_tif, range, value, display)

  return offset + length, value
end

-- Max No Of Substitutions
cme_ebs_ilink3_sbe_v8_3.max_no_of_substitutions = {}

-- Size: Max No Of Substitutions
cme_ebs_ilink3_sbe_v8_3.max_no_of_substitutions.size = 1

-- Display: Max No Of Substitutions
cme_ebs_ilink3_sbe_v8_3.max_no_of_substitutions.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Max No Of Substitutions: No Value"
  end

  return "Max No Of Substitutions: "..value
end

-- Dissect: Max No Of Substitutions
cme_ebs_ilink3_sbe_v8_3.max_no_of_substitutions.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.max_no_of_substitutions.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.max_no_of_substitutions.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.max_no_of_substitutions, range, value, display)

  return offset + length, value
end

-- Md Trade Entry Id
cme_ebs_ilink3_sbe_v8_3.md_trade_entry_id = {}

-- Size: Md Trade Entry Id
cme_ebs_ilink3_sbe_v8_3.md_trade_entry_id.size = 4

-- Display: Md Trade Entry Id
cme_ebs_ilink3_sbe_v8_3.md_trade_entry_id.display = function(value)
  return "Md Trade Entry Id: "..value
end

-- Dissect: Md Trade Entry Id
cme_ebs_ilink3_sbe_v8_3.md_trade_entry_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.md_trade_entry_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.md_trade_entry_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.md_trade_entry_id, range, value, display)

  return offset + length, value
end

-- Memo
cme_ebs_ilink3_sbe_v8_3.memo = {}

-- Size: Memo
cme_ebs_ilink3_sbe_v8_3.memo.size = 75

-- Display: Memo
cme_ebs_ilink3_sbe_v8_3.memo.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Memo: No Value"
  end

  return "Memo: "..value
end

-- Dissect: Memo
cme_ebs_ilink3_sbe_v8_3.memo.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.memo.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.memo.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.memo, range, value, display)

  return offset + length, value
end

-- Message Length
cme_ebs_ilink3_sbe_v8_3.message_length = {}

-- Size: Message Length
cme_ebs_ilink3_sbe_v8_3.message_length.size = 2

-- Display: Message Length
cme_ebs_ilink3_sbe_v8_3.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cme_ebs_ilink3_sbe_v8_3.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.message_length, range, value, display)

  return offset + length, value
end

-- Min Qty
cme_ebs_ilink3_sbe_v8_3.min_qty = {}

-- Size: Min Qty
cme_ebs_ilink3_sbe_v8_3.min_qty.size = 4

-- Display: Min Qty
cme_ebs_ilink3_sbe_v8_3.min_qty.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Min Qty: No Value"
  end

  return "Min Qty: "..value
end

-- Dissect: Min Qty
cme_ebs_ilink3_sbe_v8_3.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Mm Protection Reset
cme_ebs_ilink3_sbe_v8_3.mm_protection_reset = {}

-- Size: Mm Protection Reset
cme_ebs_ilink3_sbe_v8_3.mm_protection_reset.size = 1

-- Display: Mm Protection Reset
cme_ebs_ilink3_sbe_v8_3.mm_protection_reset.labels = {
  [0] = "Mm Protection Reset: False (0)",
  [1] = "Mm Protection Reset: True (1)",
}

cme_ebs_ilink3_sbe_v8_3.mm_protection_reset.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.mm_protection_reset.labels[value] or "Mm Protection Reset: Unknown("..value..")"
end

-- Dissect: Mm Protection Reset
cme_ebs_ilink3_sbe_v8_3.mm_protection_reset.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.mm_protection_reset.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.mm_protection_reset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.mm_protection_reset, range, value, display)

  return offset + length, value
end

-- Month
cme_ebs_ilink3_sbe_v8_3.month = {}

-- Size: Month
cme_ebs_ilink3_sbe_v8_3.month.size = 1

-- Display: Month
cme_ebs_ilink3_sbe_v8_3.month.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Month: No Value"
  end

  return "Month: "..value
end

-- Dissect: Month
cme_ebs_ilink3_sbe_v8_3.month.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.month.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.month, range, value, display)

  return offset + length, value
end

-- Msg Count
cme_ebs_ilink3_sbe_v8_3.msg_count = {}

-- Size: Msg Count
cme_ebs_ilink3_sbe_v8_3.msg_count.size = 4

-- Display: Msg Count
cme_ebs_ilink3_sbe_v8_3.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
cme_ebs_ilink3_sbe_v8_3.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.msg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Msg Count 16
cme_ebs_ilink3_sbe_v8_3.msg_count_16 = {}

-- Size: Msg Count 16
cme_ebs_ilink3_sbe_v8_3.msg_count_16.size = 2

-- Display: Msg Count 16
cme_ebs_ilink3_sbe_v8_3.msg_count_16.display = function(value)
  return "Msg Count 16: "..value
end

-- Dissect: Msg Count 16
cme_ebs_ilink3_sbe_v8_3.msg_count_16.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.msg_count_16.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.msg_count_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.msg_count_16, range, value, display)

  return offset + length, value
end

-- Next Seq No
cme_ebs_ilink3_sbe_v8_3.next_seq_no = {}

-- Size: Next Seq No
cme_ebs_ilink3_sbe_v8_3.next_seq_no.size = 4

-- Display: Next Seq No
cme_ebs_ilink3_sbe_v8_3.next_seq_no.display = function(value)
  return "Next Seq No: "..value
end

-- Dissect: Next Seq No
cme_ebs_ilink3_sbe_v8_3.next_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.next_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.next_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.next_seq_no, range, value, display)

  return offset + length, value
end

-- No Processed Entries
cme_ebs_ilink3_sbe_v8_3.no_processed_entries = {}

-- Size: No Processed Entries
cme_ebs_ilink3_sbe_v8_3.no_processed_entries.size = 1

-- Display: No Processed Entries
cme_ebs_ilink3_sbe_v8_3.no_processed_entries.display = function(value)
  return "No Processed Entries: "..value
end

-- Dissect: No Processed Entries
cme_ebs_ilink3_sbe_v8_3.no_processed_entries.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.no_processed_entries.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.no_processed_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.no_processed_entries, range, value, display)

  return offset + length, value
end

-- Num In Group
cme_ebs_ilink3_sbe_v8_3.num_in_group = {}

-- Size: Num In Group
cme_ebs_ilink3_sbe_v8_3.num_in_group.size = 1

-- Display: Num In Group
cme_ebs_ilink3_sbe_v8_3.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
cme_ebs_ilink3_sbe_v8_3.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.num_in_group.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Offer Size
cme_ebs_ilink3_sbe_v8_3.offer_size = {}

-- Size: Offer Size
cme_ebs_ilink3_sbe_v8_3.offer_size.size = 4

-- Display: Offer Size
cme_ebs_ilink3_sbe_v8_3.offer_size.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Offer Size: No Value"
  end

  return "Offer Size: "..value
end

-- Dissect: Offer Size
cme_ebs_ilink3_sbe_v8_3.offer_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.offer_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Ofm Override
cme_ebs_ilink3_sbe_v8_3.ofm_override = {}

-- Size: Ofm Override
cme_ebs_ilink3_sbe_v8_3.ofm_override.size = 1

-- Display: Ofm Override
cme_ebs_ilink3_sbe_v8_3.ofm_override.labels = {
  [0] = "Ofm Override: Disabled (0)",
  [1] = "Ofm Override: Enabled (1)",
}

cme_ebs_ilink3_sbe_v8_3.ofm_override.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.ofm_override.labels[value] or "Ofm Override: Unknown("..value..")"
end

-- Dissect: Ofm Override
cme_ebs_ilink3_sbe_v8_3.ofm_override.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.ofm_override.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.ofm_override.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.ofm_override, range, value, display)

  return offset + length, value
end

-- Ord Rej Reason
cme_ebs_ilink3_sbe_v8_3.ord_rej_reason = {}

-- Size: Ord Rej Reason
cme_ebs_ilink3_sbe_v8_3.ord_rej_reason.size = 2

-- Display: Ord Rej Reason
cme_ebs_ilink3_sbe_v8_3.ord_rej_reason.display = function(value)
  return "Ord Rej Reason: "..value
end

-- Dissect: Ord Rej Reason
cme_ebs_ilink3_sbe_v8_3.ord_rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.ord_rej_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.ord_rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.ord_rej_reason, range, value, display)

  return offset + length, value
end

-- Ord Status
cme_ebs_ilink3_sbe_v8_3.ord_status = {}

-- Size: Ord Status
cme_ebs_ilink3_sbe_v8_3.ord_status.size = 1

-- Display: Ord Status
cme_ebs_ilink3_sbe_v8_3.ord_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ord Status: No Value"
  end

  if value == "0" then
    return "Ord Status: New (0)"
  end
  if value == "1" then
    return "Ord Status: Partially Filled (1)"
  end
  if value == "2" then
    return "Ord Status: Filled (2)"
  end
  if value == "4" then
    return "Ord Status: Cancelled (4)"
  end
  if value == "5" then
    return "Ord Status: Replaced (5)"
  end
  if value == "8" then
    return "Ord Status: Rejected (8)"
  end
  if value == "C" then
    return "Ord Status: Expired (C)"
  end
  if value == "U" then
    return "Ord Status: Undefined (U)"
  end

  return "Ord Status: Unknown("..value..")"
end

-- Dissect: Ord Status
cme_ebs_ilink3_sbe_v8_3.ord_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.ord_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.ord_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Ord Status Req Id
cme_ebs_ilink3_sbe_v8_3.ord_status_req_id = {}

-- Size: Ord Status Req Id
cme_ebs_ilink3_sbe_v8_3.ord_status_req_id.size = 8

-- Display: Ord Status Req Id
cme_ebs_ilink3_sbe_v8_3.ord_status_req_id.display = function(value)
  return "Ord Status Req Id: "..value
end

-- Dissect: Ord Status Req Id
cme_ebs_ilink3_sbe_v8_3.ord_status_req_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.ord_status_req_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.ord_status_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.ord_status_req_id, range, value, display)

  return offset + length, value
end

-- Ord Status Req Id Optional
cme_ebs_ilink3_sbe_v8_3.ord_status_req_id_optional = {}

-- Size: Ord Status Req Id Optional
cme_ebs_ilink3_sbe_v8_3.ord_status_req_id_optional.size = 8

-- Display: Ord Status Req Id Optional
cme_ebs_ilink3_sbe_v8_3.ord_status_req_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Ord Status Req Id Optional: No Value"
  end

  return "Ord Status Req Id Optional: "..value
end

-- Dissect: Ord Status Req Id Optional
cme_ebs_ilink3_sbe_v8_3.ord_status_req_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.ord_status_req_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.ord_status_req_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.ord_status_req_id_optional, range, value, display)

  return offset + length, value
end

-- Ord Status Req Type
cme_ebs_ilink3_sbe_v8_3.ord_status_req_type = {}

-- Size: Ord Status Req Type
cme_ebs_ilink3_sbe_v8_3.ord_status_req_type.size = 1

-- Display: Ord Status Req Type
cme_ebs_ilink3_sbe_v8_3.ord_status_req_type.display = function(value)
  if value == 255 then
    return "Ord Status Req Type: No Value"
  end
  if value == 100 then
    return "Ord Status Req Type: Sender Sub Id (100)"
  end
  if value == 101 then
    return "Ord Status Req Type: Account (101)"
  end

  return "Ord Status Req Type: Unknown("..value..")"
end

-- Dissect: Ord Status Req Type
cme_ebs_ilink3_sbe_v8_3.ord_status_req_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.ord_status_req_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.ord_status_req_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.ord_status_req_type, range, value, display)

  return offset + length, value
end

-- Ord Status Trd
cme_ebs_ilink3_sbe_v8_3.ord_status_trd = {}

-- Size: Ord Status Trd
cme_ebs_ilink3_sbe_v8_3.ord_status_trd.size = 1

-- Display: Ord Status Trd
cme_ebs_ilink3_sbe_v8_3.ord_status_trd.labels = {
  [1] = "Ord Status Trd: Partially Filled (1)",
  [2] = "Ord Status Trd: Filled (2)",
}

cme_ebs_ilink3_sbe_v8_3.ord_status_trd.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.ord_status_trd.labels[value] or "Ord Status Trd: Unknown("..value..")"
end

-- Dissect: Ord Status Trd
cme_ebs_ilink3_sbe_v8_3.ord_status_trd.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.ord_status_trd.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.ord_status_trd.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.ord_status_trd, range, value, display)

  return offset + length, value
end

-- Ord Status Trd Cxl
cme_ebs_ilink3_sbe_v8_3.ord_status_trd_cxl = {}

-- Size: Ord Status Trd Cxl
cme_ebs_ilink3_sbe_v8_3.ord_status_trd_cxl.size = 1

-- Display: Ord Status Trd Cxl
cme_ebs_ilink3_sbe_v8_3.ord_status_trd_cxl.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ord Status Trd Cxl: No Value"
  end

  if value == "G" then
    return "Ord Status Trd Cxl: Trade Correction (G)"
  end
  if value == "H" then
    return "Ord Status Trd Cxl: Trade Cancel (H)"
  end

  return "Ord Status Trd Cxl: Unknown("..value..")"
end

-- Dissect: Ord Status Trd Cxl
cme_ebs_ilink3_sbe_v8_3.ord_status_trd_cxl.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.ord_status_trd_cxl.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.ord_status_trd_cxl.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.ord_status_trd_cxl, range, value, display)

  return offset + length, value
end

-- Ord Type
cme_ebs_ilink3_sbe_v8_3.ord_type = {}

-- Size: Ord Type
cme_ebs_ilink3_sbe_v8_3.ord_type.size = 1

-- Display: Ord Type
cme_ebs_ilink3_sbe_v8_3.ord_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ord Type: No Value"
  end

  if value == "1" then
    return "Ord Type: Marketwith Protection (1)"
  end
  if value == "2" then
    return "Ord Type: Limit (2)"
  end
  if value == "3" then
    return "Ord Type: Stopwith Protection (3)"
  end
  if value == "4" then
    return "Ord Type: Stop Limit (4)"
  end
  if value == "K" then
    return "Ord Type: Market With Leftover As Limit (K)"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
cme_ebs_ilink3_sbe_v8_3.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.ord_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Ord Type Optional
cme_ebs_ilink3_sbe_v8_3.ord_type_optional = {}

-- Size: Ord Type Optional
cme_ebs_ilink3_sbe_v8_3.ord_type_optional.size = 1

-- Display: Ord Type Optional
cme_ebs_ilink3_sbe_v8_3.ord_type_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ord Type Optional: No Value"
  end

  if value == "1" then
    return "Ord Type Optional: Market With Protection (1)"
  end
  if value == "2" then
    return "Ord Type Optional: Limit (2)"
  end
  if value == "4" then
    return "Ord Type Optional: Stop Limit (4)"
  end
  if value == "K" then
    return "Ord Type Optional: Market With Leftover As Limit (K)"
  end

  return "Ord Type Optional: Unknown("..value..")"
end

-- Dissect: Ord Type Optional
cme_ebs_ilink3_sbe_v8_3.ord_type_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.ord_type_optional.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.ord_type_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.ord_type_optional, range, value, display)

  return offset + length, value
end

-- Order Event Exec Id
cme_ebs_ilink3_sbe_v8_3.order_event_exec_id = {}

-- Size: Order Event Exec Id
cme_ebs_ilink3_sbe_v8_3.order_event_exec_id.size = 4

-- Display: Order Event Exec Id
cme_ebs_ilink3_sbe_v8_3.order_event_exec_id.display = function(value)
  return "Order Event Exec Id: "..value
end

-- Dissect: Order Event Exec Id
cme_ebs_ilink3_sbe_v8_3.order_event_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.order_event_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.order_event_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.order_event_exec_id, range, value, display)

  return offset + length, value
end

-- Order Event Px
cme_ebs_ilink3_sbe_v8_3.order_event_px = {}

-- Size: Order Event Px
cme_ebs_ilink3_sbe_v8_3.order_event_px.size = 8

-- Display: Order Event Px
cme_ebs_ilink3_sbe_v8_3.order_event_px.display = function(value)
  return "Order Event Px: "..value
end

-- Translate: Order Event Px
cme_ebs_ilink3_sbe_v8_3.order_event_px.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Order Event Px
cme_ebs_ilink3_sbe_v8_3.order_event_px.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.order_event_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_ebs_ilink3_sbe_v8_3.order_event_px.translate(raw)
  local display = cme_ebs_ilink3_sbe_v8_3.order_event_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.order_event_px, range, value, display)

  return offset + length, value
end

-- Order Event Qty
cme_ebs_ilink3_sbe_v8_3.order_event_qty = {}

-- Size: Order Event Qty
cme_ebs_ilink3_sbe_v8_3.order_event_qty.size = 4

-- Display: Order Event Qty
cme_ebs_ilink3_sbe_v8_3.order_event_qty.display = function(value)
  return "Order Event Qty: "..value
end

-- Dissect: Order Event Qty
cme_ebs_ilink3_sbe_v8_3.order_event_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.order_event_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.order_event_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.order_event_qty, range, value, display)

  return offset + length, value
end

-- Order Event Reason
cme_ebs_ilink3_sbe_v8_3.order_event_reason = {}

-- Size: Order Event Reason
cme_ebs_ilink3_sbe_v8_3.order_event_reason.size = 1

-- Display: Order Event Reason
cme_ebs_ilink3_sbe_v8_3.order_event_reason.display = function(value)
  return "Order Event Reason: "..value
end

-- Dissect: Order Event Reason
cme_ebs_ilink3_sbe_v8_3.order_event_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.order_event_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.order_event_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.order_event_reason, range, value, display)

  return offset + length, value
end

-- Order Event Text
cme_ebs_ilink3_sbe_v8_3.order_event_text = {}

-- Size: Order Event Text
cme_ebs_ilink3_sbe_v8_3.order_event_text.size = 5

-- Display: Order Event Text
cme_ebs_ilink3_sbe_v8_3.order_event_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Order Event Text: No Value"
  end

  return "Order Event Text: "..value
end

-- Dissect: Order Event Text
cme_ebs_ilink3_sbe_v8_3.order_event_text.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.order_event_text.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.order_event_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.order_event_text, range, value, display)

  return offset + length, value
end

-- Order Event Type
cme_ebs_ilink3_sbe_v8_3.order_event_type = {}

-- Size: Order Event Type
cme_ebs_ilink3_sbe_v8_3.order_event_type.size = 1

-- Display: Order Event Type
cme_ebs_ilink3_sbe_v8_3.order_event_type.display = function(value)
  if value == 255 then
    return "Order Event Type: No Value"
  end
  if value == 4 then
    return "Order Event Type: Partially Filled (4)"
  end
  if value == 5 then
    return "Order Event Type: Filled (5)"
  end

  return "Order Event Type: Unknown("..value..")"
end

-- Dissect: Order Event Type
cme_ebs_ilink3_sbe_v8_3.order_event_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.order_event_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.order_event_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.order_event_type, range, value, display)

  return offset + length, value
end

-- Order Id
cme_ebs_ilink3_sbe_v8_3.order_id = {}

-- Size: Order Id
cme_ebs_ilink3_sbe_v8_3.order_id.size = 8

-- Display: Order Id
cme_ebs_ilink3_sbe_v8_3.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cme_ebs_ilink3_sbe_v8_3.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Qty
cme_ebs_ilink3_sbe_v8_3.order_qty = {}

-- Size: Order Qty
cme_ebs_ilink3_sbe_v8_3.order_qty.size = 4

-- Display: Order Qty
cme_ebs_ilink3_sbe_v8_3.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
cme_ebs_ilink3_sbe_v8_3.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Qty Optional
cme_ebs_ilink3_sbe_v8_3.order_qty_optional = {}

-- Size: Order Qty Optional
cme_ebs_ilink3_sbe_v8_3.order_qty_optional.size = 4

-- Display: Order Qty Optional
cme_ebs_ilink3_sbe_v8_3.order_qty_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Order Qty Optional: No Value"
  end

  return "Order Qty Optional: "..value
end

-- Dissect: Order Qty Optional
cme_ebs_ilink3_sbe_v8_3.order_qty_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.order_qty_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.order_qty_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.order_qty_optional, range, value, display)

  return offset + length, value
end

-- Order Request Id
cme_ebs_ilink3_sbe_v8_3.order_request_id = {}

-- Size: Order Request Id
cme_ebs_ilink3_sbe_v8_3.order_request_id.size = 8

-- Display: Order Request Id
cme_ebs_ilink3_sbe_v8_3.order_request_id.display = function(value)
  return "Order Request Id: "..value
end

-- Dissect: Order Request Id
cme_ebs_ilink3_sbe_v8_3.order_request_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.order_request_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.order_request_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.order_request_id, range, value, display)

  return offset + length, value
end

-- Orig Secondary Execution Id
cme_ebs_ilink3_sbe_v8_3.orig_secondary_execution_id = {}

-- Size: Orig Secondary Execution Id
cme_ebs_ilink3_sbe_v8_3.orig_secondary_execution_id.size = 8

-- Display: Orig Secondary Execution Id
cme_ebs_ilink3_sbe_v8_3.orig_secondary_execution_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Orig Secondary Execution Id: No Value"
  end

  return "Orig Secondary Execution Id: "..value
end

-- Dissect: Orig Secondary Execution Id
cme_ebs_ilink3_sbe_v8_3.orig_secondary_execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.orig_secondary_execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.orig_secondary_execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.orig_secondary_execution_id, range, value, display)

  return offset + length, value
end

-- Orig Side Trade Id
cme_ebs_ilink3_sbe_v8_3.orig_side_trade_id = {}

-- Size: Orig Side Trade Id
cme_ebs_ilink3_sbe_v8_3.orig_side_trade_id.size = 4

-- Display: Orig Side Trade Id
cme_ebs_ilink3_sbe_v8_3.orig_side_trade_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Orig Side Trade Id: No Value"
  end

  return "Orig Side Trade Id: "..value
end

-- Dissect: Orig Side Trade Id
cme_ebs_ilink3_sbe_v8_3.orig_side_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.orig_side_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.orig_side_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.orig_side_trade_id, range, value, display)

  return offset + length, value
end

-- Original Order Event Exec Id
cme_ebs_ilink3_sbe_v8_3.original_order_event_exec_id = {}

-- Size: Original Order Event Exec Id
cme_ebs_ilink3_sbe_v8_3.original_order_event_exec_id.size = 4

-- Display: Original Order Event Exec Id
cme_ebs_ilink3_sbe_v8_3.original_order_event_exec_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Original Order Event Exec Id: No Value"
  end

  return "Original Order Event Exec Id: "..value
end

-- Dissect: Original Order Event Exec Id
cme_ebs_ilink3_sbe_v8_3.original_order_event_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.original_order_event_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.original_order_event_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.original_order_event_exec_id, range, value, display)

  return offset + length, value
end

-- Ownership
cme_ebs_ilink3_sbe_v8_3.ownership = {}

-- Size: Ownership
cme_ebs_ilink3_sbe_v8_3.ownership.size = 1

-- Display: Ownership
cme_ebs_ilink3_sbe_v8_3.ownership.display = function(value)
  return "Ownership: "..value
end

-- Dissect: Ownership
cme_ebs_ilink3_sbe_v8_3.ownership.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.ownership.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.ownership.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.ownership, range, value, display)

  return offset + length, value
end

-- Party Detail Definition Status
cme_ebs_ilink3_sbe_v8_3.party_detail_definition_status = {}

-- Size: Party Detail Definition Status
cme_ebs_ilink3_sbe_v8_3.party_detail_definition_status.size = 1

-- Display: Party Detail Definition Status
cme_ebs_ilink3_sbe_v8_3.party_detail_definition_status.display = function(value)
  return "Party Detail Definition Status: "..value
end

-- Dissect: Party Detail Definition Status
cme_ebs_ilink3_sbe_v8_3.party_detail_definition_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.party_detail_definition_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.party_detail_definition_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.party_detail_definition_status, range, value, display)

  return offset + length, value
end

-- Party Detail Id
cme_ebs_ilink3_sbe_v8_3.party_detail_id = {}

-- Size: Party Detail Id
cme_ebs_ilink3_sbe_v8_3.party_detail_id.size = 20

-- Display: Party Detail Id
cme_ebs_ilink3_sbe_v8_3.party_detail_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Detail Id: No Value"
  end

  return "Party Detail Id: "..value
end

-- Dissect: Party Detail Id
cme_ebs_ilink3_sbe_v8_3.party_detail_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.party_detail_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.party_detail_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.party_detail_id, range, value, display)

  return offset + length, value
end

-- Party Detail Request Status
cme_ebs_ilink3_sbe_v8_3.party_detail_request_status = {}

-- Size: Party Detail Request Status
cme_ebs_ilink3_sbe_v8_3.party_detail_request_status.size = 1

-- Display: Party Detail Request Status
cme_ebs_ilink3_sbe_v8_3.party_detail_request_status.display = function(value)
  return "Party Detail Request Status: "..value
end

-- Dissect: Party Detail Request Status
cme_ebs_ilink3_sbe_v8_3.party_detail_request_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.party_detail_request_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.party_detail_request_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.party_detail_request_status, range, value, display)

  return offset + length, value
end

-- Party Detail Role
cme_ebs_ilink3_sbe_v8_3.party_detail_role = {}

-- Size: Party Detail Role
cme_ebs_ilink3_sbe_v8_3.party_detail_role.size = 2

-- Display: Party Detail Role
cme_ebs_ilink3_sbe_v8_3.party_detail_role.labels = {
  [1] = "Party Detail Role: Executing Firm (1)",
  [24] = "Party Detail Role: Customer Account (24)",
  [96] = "Party Detail Role: Take Up Firm (96)",
  [118] = "Party Detail Role: Operator (118)",
  [1000] = "Party Detail Role: Take Up Account (1000)",
}

cme_ebs_ilink3_sbe_v8_3.party_detail_role.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.party_detail_role.labels[value] or "Party Detail Role: Unknown("..value..")"
end

-- Dissect: Party Detail Role
cme_ebs_ilink3_sbe_v8_3.party_detail_role.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.party_detail_role.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.party_detail_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.party_detail_role, range, value, display)

  return offset + length, value
end

-- Party Details List Report Id
cme_ebs_ilink3_sbe_v8_3.party_details_list_report_id = {}

-- Size: Party Details List Report Id
cme_ebs_ilink3_sbe_v8_3.party_details_list_report_id.size = 8

-- Display: Party Details List Report Id
cme_ebs_ilink3_sbe_v8_3.party_details_list_report_id.display = function(value)
  return "Party Details List Report Id: "..value
end

-- Dissect: Party Details List Report Id
cme_ebs_ilink3_sbe_v8_3.party_details_list_report_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.party_details_list_report_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.party_details_list_report_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.party_details_list_report_id, range, value, display)

  return offset + length, value
end

-- Party Details List Req Id
cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id = {}

-- Size: Party Details List Req Id
cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size = 8

-- Display: Party Details List Req Id
cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.display = function(value)
  return "Party Details List Req Id: "..value
end

-- Dissect: Party Details List Req Id
cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.party_details_list_req_id, range, value, display)

  return offset + length, value
end

-- Party Details List Req Id Optional
cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id_optional = {}

-- Size: Party Details List Req Id Optional
cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id_optional.size = 8

-- Display: Party Details List Req Id Optional
cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Party Details List Req Id Optional: No Value"
  end

  return "Party Details List Req Id Optional: "..value
end

-- Dissect: Party Details List Req Id Optional
cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.party_details_list_req_id_optional, range, value, display)

  return offset + length, value
end

-- Party Id
cme_ebs_ilink3_sbe_v8_3.party_id = {}

-- Size: Party Id
cme_ebs_ilink3_sbe_v8_3.party_id.size = 8

-- Display: Party Id
cme_ebs_ilink3_sbe_v8_3.party_id.display = function(value)
  return "Party Id: "..value
end

-- Dissect: Party Id
cme_ebs_ilink3_sbe_v8_3.party_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.party_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.party_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.party_id, range, value, display)

  return offset + length, value
end

-- Party Id Source
cme_ebs_ilink3_sbe_v8_3.party_id_source = {}

-- Size: Party Id Source
cme_ebs_ilink3_sbe_v8_3.party_id_source.size = 1

-- Display: Party Id Source
cme_ebs_ilink3_sbe_v8_3.party_id_source.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Party Id Source: No Value"
  end

  return "Party Id Source: "..value
end

-- Dissect: Party Id Source
cme_ebs_ilink3_sbe_v8_3.party_id_source.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.party_id_source.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.party_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.party_id_source, range, value, display)

  return offset + length, value
end

-- Party Role
cme_ebs_ilink3_sbe_v8_3.party_role = {}

-- Size: Party Role
cme_ebs_ilink3_sbe_v8_3.party_role.size = 2

-- Display: Party Role
cme_ebs_ilink3_sbe_v8_3.party_role.display = function(value)
  return "Party Role: "..value
end

-- Dissect: Party Role
cme_ebs_ilink3_sbe_v8_3.party_role.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.party_role.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.party_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.party_role, range, value, display)

  return offset + length, value
end

-- Poss Retrans Flag
cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag = {}

-- Size: Poss Retrans Flag
cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size = 1

-- Display: Poss Retrans Flag
cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.labels = {
  [0] = "Poss Retrans Flag: False (0)",
  [1] = "Poss Retrans Flag: True (1)",
}

cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.labels[value] or "Poss Retrans Flag: Unknown("..value..")"
end

-- Dissect: Poss Retrans Flag
cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.poss_retrans_flag, range, value, display)

  return offset + length, value
end

-- Previous Seq No
cme_ebs_ilink3_sbe_v8_3.previous_seq_no = {}

-- Size: Previous Seq No
cme_ebs_ilink3_sbe_v8_3.previous_seq_no.size = 4

-- Display: Previous Seq No
cme_ebs_ilink3_sbe_v8_3.previous_seq_no.display = function(value)
  return "Previous Seq No: "..value
end

-- Dissect: Previous Seq No
cme_ebs_ilink3_sbe_v8_3.previous_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.previous_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.previous_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.previous_seq_no, range, value, display)

  return offset + length, value
end

-- Previous Uuid
cme_ebs_ilink3_sbe_v8_3.previous_uuid = {}

-- Size: Previous Uuid
cme_ebs_ilink3_sbe_v8_3.previous_uuid.size = 8

-- Display: Previous Uuid
cme_ebs_ilink3_sbe_v8_3.previous_uuid.display = function(value)
  return "Previous Uuid: "..value
end

-- Dissect: Previous Uuid
cme_ebs_ilink3_sbe_v8_3.previous_uuid.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.previous_uuid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.previous_uuid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.previous_uuid, range, value, display)

  return offset + length, value
end

-- Price
cme_ebs_ilink3_sbe_v8_3.price = {}

-- Size: Price
cme_ebs_ilink3_sbe_v8_3.price.size = 8

-- Display: Price
cme_ebs_ilink3_sbe_v8_3.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cme_ebs_ilink3_sbe_v8_3.price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Price
cme_ebs_ilink3_sbe_v8_3.price.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_ebs_ilink3_sbe_v8_3.price.translate(raw)
  local display = cme_ebs_ilink3_sbe_v8_3.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.price, range, value, display)

  return offset + length, value
end

-- Price Optional
cme_ebs_ilink3_sbe_v8_3.price_optional = {}

-- Size: Price Optional
cme_ebs_ilink3_sbe_v8_3.price_optional.size = 8

-- Display: Price Optional
cme_ebs_ilink3_sbe_v8_3.price_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Price Optional: No Value"
  end

  return "Price Optional: "..value
end

-- Translate: Price Optional
cme_ebs_ilink3_sbe_v8_3.price_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Price Optional
cme_ebs_ilink3_sbe_v8_3.price_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.price_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_ebs_ilink3_sbe_v8_3.price_optional.translate(raw)
  local display = cme_ebs_ilink3_sbe_v8_3.price_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.price_optional, range, value, display)

  return offset + length, value
end

-- Quote Ack Status
cme_ebs_ilink3_sbe_v8_3.quote_ack_status = {}

-- Size: Quote Ack Status
cme_ebs_ilink3_sbe_v8_3.quote_ack_status.size = 1

-- Display: Quote Ack Status
cme_ebs_ilink3_sbe_v8_3.quote_ack_status.labels = {
  [0] = "Quote Ack Status: Accepted (0)",
  [5] = "Quote Ack Status: Rejected (5)",
}

cme_ebs_ilink3_sbe_v8_3.quote_ack_status.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.quote_ack_status.labels[value] or "Quote Ack Status: Unknown("..value..")"
end

-- Dissect: Quote Ack Status
cme_ebs_ilink3_sbe_v8_3.quote_ack_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.quote_ack_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.quote_ack_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_ack_status, range, value, display)

  return offset + length, value
end

-- Quote Cancel Type
cme_ebs_ilink3_sbe_v8_3.quote_cancel_type = {}

-- Size: Quote Cancel Type
cme_ebs_ilink3_sbe_v8_3.quote_cancel_type.size = 1

-- Display: Quote Cancel Type
cme_ebs_ilink3_sbe_v8_3.quote_cancel_type.labels = {
  [1] = "Quote Cancel Type: Cancelper Instrument (1)",
  [3] = "Quote Cancel Type: Cancelper Instrumentgroup (3)",
  [4] = "Quote Cancel Type: Cancelallquotes (4)",
  [100] = "Quote Cancel Type: Cancelper Quote Set (100)",
}

cme_ebs_ilink3_sbe_v8_3.quote_cancel_type.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.quote_cancel_type.labels[value] or "Quote Cancel Type: Unknown("..value..")"
end

-- Dissect: Quote Cancel Type
cme_ebs_ilink3_sbe_v8_3.quote_cancel_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.quote_cancel_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.quote_cancel_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_type, range, value, display)

  return offset + length, value
end

-- Quote Cxl Status
cme_ebs_ilink3_sbe_v8_3.quote_cxl_status = {}

-- Size: Quote Cxl Status
cme_ebs_ilink3_sbe_v8_3.quote_cxl_status.size = 1

-- Display: Quote Cxl Status
cme_ebs_ilink3_sbe_v8_3.quote_cxl_status.labels = {
  [1] = "Quote Cxl Status: Cancelper Instrument (1)",
  [3] = "Quote Cxl Status: Cancelper Instrumentgroup (3)",
  [4] = "Quote Cxl Status: Cancelallquotes (4)",
  [5] = "Quote Cxl Status: Rejected (5)",
  [100] = "Quote Cxl Status: Cancelper Quote Set (100)",
}

cme_ebs_ilink3_sbe_v8_3.quote_cxl_status.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.quote_cxl_status.labels[value] or "Quote Cxl Status: Unknown("..value..")"
end

-- Dissect: Quote Cxl Status
cme_ebs_ilink3_sbe_v8_3.quote_cxl_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.quote_cxl_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.quote_cxl_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cxl_status, range, value, display)

  return offset + length, value
end

-- Quote Entry Id
cme_ebs_ilink3_sbe_v8_3.quote_entry_id = {}

-- Size: Quote Entry Id
cme_ebs_ilink3_sbe_v8_3.quote_entry_id.size = 4

-- Display: Quote Entry Id
cme_ebs_ilink3_sbe_v8_3.quote_entry_id.display = function(value)
  return "Quote Entry Id: "..value
end

-- Dissect: Quote Entry Id
cme_ebs_ilink3_sbe_v8_3.quote_entry_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.quote_entry_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.quote_entry_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_entry_id, range, value, display)

  return offset + length, value
end

-- Quote Entry Reject Reason
cme_ebs_ilink3_sbe_v8_3.quote_entry_reject_reason = {}

-- Size: Quote Entry Reject Reason
cme_ebs_ilink3_sbe_v8_3.quote_entry_reject_reason.size = 1

-- Display: Quote Entry Reject Reason
cme_ebs_ilink3_sbe_v8_3.quote_entry_reject_reason.display = function(value)
  return "Quote Entry Reject Reason: "..value
end

-- Dissect: Quote Entry Reject Reason
cme_ebs_ilink3_sbe_v8_3.quote_entry_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.quote_entry_reject_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.quote_entry_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_entry_reject_reason, range, value, display)

  return offset + length, value
end

-- Quote Error Code
cme_ebs_ilink3_sbe_v8_3.quote_error_code = {}

-- Size: Quote Error Code
cme_ebs_ilink3_sbe_v8_3.quote_error_code.size = 2

-- Display: Quote Error Code
cme_ebs_ilink3_sbe_v8_3.quote_error_code.display = function(value)
  return "Quote Error Code: "..value
end

-- Dissect: Quote Error Code
cme_ebs_ilink3_sbe_v8_3.quote_error_code.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.quote_error_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.quote_error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_error_code, range, value, display)

  return offset + length, value
end

-- Quote Id
cme_ebs_ilink3_sbe_v8_3.quote_id = {}

-- Size: Quote Id
cme_ebs_ilink3_sbe_v8_3.quote_id.size = 4

-- Display: Quote Id
cme_ebs_ilink3_sbe_v8_3.quote_id.display = function(value)
  return "Quote Id: "..value
end

-- Dissect: Quote Id
cme_ebs_ilink3_sbe_v8_3.quote_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.quote_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.quote_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Quote Reject Reason
cme_ebs_ilink3_sbe_v8_3.quote_reject_reason = {}

-- Size: Quote Reject Reason
cme_ebs_ilink3_sbe_v8_3.quote_reject_reason.size = 2

-- Display: Quote Reject Reason
cme_ebs_ilink3_sbe_v8_3.quote_reject_reason.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Quote Reject Reason: No Value"
  end

  return "Quote Reject Reason: "..value
end

-- Dissect: Quote Reject Reason
cme_ebs_ilink3_sbe_v8_3.quote_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.quote_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.quote_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_reject_reason, range, value, display)

  return offset + length, value
end

-- Quote Req Id
cme_ebs_ilink3_sbe_v8_3.quote_req_id = {}

-- Size: Quote Req Id
cme_ebs_ilink3_sbe_v8_3.quote_req_id.size = 8

-- Display: Quote Req Id
cme_ebs_ilink3_sbe_v8_3.quote_req_id.display = function(value)
  return "Quote Req Id: "..value
end

-- Dissect: Quote Req Id
cme_ebs_ilink3_sbe_v8_3.quote_req_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.quote_req_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.quote_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_req_id, range, value, display)

  return offset + length, value
end

-- Quote Set Id
cme_ebs_ilink3_sbe_v8_3.quote_set_id = {}

-- Size: Quote Set Id
cme_ebs_ilink3_sbe_v8_3.quote_set_id.size = 2

-- Display: Quote Set Id
cme_ebs_ilink3_sbe_v8_3.quote_set_id.display = function(value)
  return "Quote Set Id: "..value
end

-- Dissect: Quote Set Id
cme_ebs_ilink3_sbe_v8_3.quote_set_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.quote_set_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.quote_set_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_set_id, range, value, display)

  return offset + length, value
end

-- Quote Type
cme_ebs_ilink3_sbe_v8_3.quote_type = {}

-- Size: Quote Type
cme_ebs_ilink3_sbe_v8_3.quote_type.size = 1

-- Display: Quote Type
cme_ebs_ilink3_sbe_v8_3.quote_type.display = function(value)
  if value == 255 then
    return "Quote Type: No Value"
  end
  if value == 1 then
    return "Quote Type: Tradeable (1)"
  end

  return "Quote Type: Unknown("..value..")"
end

-- Dissect: Quote Type
cme_ebs_ilink3_sbe_v8_3.quote_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.quote_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.quote_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_type, range, value, display)

  return offset + length, value
end

-- Reason
cme_ebs_ilink3_sbe_v8_3.reason = {}

-- Size: Reason
cme_ebs_ilink3_sbe_v8_3.reason.size = 48

-- Display: Reason
cme_ebs_ilink3_sbe_v8_3.reason.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reason: No Value"
  end

  return "Reason: "..value
end

-- Dissect: Reason
cme_ebs_ilink3_sbe_v8_3.reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.reason.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.reason, range, value, display)

  return offset + length, value
end

-- Ref Msg Type
cme_ebs_ilink3_sbe_v8_3.ref_msg_type = {}

-- Size: Ref Msg Type
cme_ebs_ilink3_sbe_v8_3.ref_msg_type.size = 2

-- Display: Ref Msg Type
cme_ebs_ilink3_sbe_v8_3.ref_msg_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Ref Msg Type: No Value"
  end

  return "Ref Msg Type: "..value
end

-- Dissect: Ref Msg Type
cme_ebs_ilink3_sbe_v8_3.ref_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.ref_msg_type.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.ref_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.ref_msg_type, range, value, display)

  return offset + length, value
end

-- Ref Seq Num
cme_ebs_ilink3_sbe_v8_3.ref_seq_num = {}

-- Size: Ref Seq Num
cme_ebs_ilink3_sbe_v8_3.ref_seq_num.size = 4

-- Display: Ref Seq Num
cme_ebs_ilink3_sbe_v8_3.ref_seq_num.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Ref Seq Num: No Value"
  end

  return "Ref Seq Num: "..value
end

-- Dissect: Ref Seq Num
cme_ebs_ilink3_sbe_v8_3.ref_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.ref_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.ref_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.ref_seq_num, range, value, display)

  return offset + length, value
end

-- Ref Tag Id
cme_ebs_ilink3_sbe_v8_3.ref_tag_id = {}

-- Size: Ref Tag Id
cme_ebs_ilink3_sbe_v8_3.ref_tag_id.size = 2

-- Display: Ref Tag Id
cme_ebs_ilink3_sbe_v8_3.ref_tag_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Ref Tag Id: No Value"
  end

  return "Ref Tag Id: "..value
end

-- Dissect: Ref Tag Id
cme_ebs_ilink3_sbe_v8_3.ref_tag_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.ref_tag_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.ref_tag_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.ref_tag_id, range, value, display)

  return offset + length, value
end

-- Request Result
cme_ebs_ilink3_sbe_v8_3.request_result = {}

-- Size: Request Result
cme_ebs_ilink3_sbe_v8_3.request_result.size = 1

-- Display: Request Result
cme_ebs_ilink3_sbe_v8_3.request_result.labels = {
  [0] = "Request Result: Valid Request (0)",
  [2] = "Request Result: No Data Found That Matched Selection Criteria (2)",
  [3] = "Request Result: Not Authorizedto Retrieve Data (3)",
  [4] = "Request Result: Data Temporarily Unavailable (4)",
}

cme_ebs_ilink3_sbe_v8_3.request_result.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.request_result.labels[value] or "Request Result: Unknown("..value..")"
end

-- Dissect: Request Result
cme_ebs_ilink3_sbe_v8_3.request_result.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.request_result.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.request_result.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.request_result, range, value, display)

  return offset + length, value
end

-- Request Time
cme_ebs_ilink3_sbe_v8_3.request_time = {}

-- Size: Request Time
cme_ebs_ilink3_sbe_v8_3.request_time.size = 8

-- Display: Request Time
cme_ebs_ilink3_sbe_v8_3.request_time.display = function(value)
  return "Request Time: "..value
end

-- Dissect: Request Time
cme_ebs_ilink3_sbe_v8_3.request_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.request_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.request_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.request_time, range, value, display)

  return offset + length, value
end

-- Request Timestamp
cme_ebs_ilink3_sbe_v8_3.request_timestamp = {}

-- Size: Request Timestamp
cme_ebs_ilink3_sbe_v8_3.request_timestamp.size = 8

-- Dissect: Request Timestamp
cme_ebs_ilink3_sbe_v8_3.request_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.request_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cme_ebs_ilink3_sbe_v8_3.fields.request_timestamp
  if cme_ebs_ilink3_sbe_v8_3.absolute_time_base == 1 then field = omi_cme_ebs_ilink3_sbe_v8_3.fields.request_timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Requesting Party Id
cme_ebs_ilink3_sbe_v8_3.requesting_party_id = {}

-- Size: Requesting Party Id
cme_ebs_ilink3_sbe_v8_3.requesting_party_id.size = 5

-- Display: Requesting Party Id
cme_ebs_ilink3_sbe_v8_3.requesting_party_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Requesting Party Id: No Value"
  end

  return "Requesting Party Id: "..value
end

-- Dissect: Requesting Party Id
cme_ebs_ilink3_sbe_v8_3.requesting_party_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.requesting_party_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.requesting_party_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.requesting_party_id, range, value, display)

  return offset + length, value
end

-- Requesting Party Id Source
cme_ebs_ilink3_sbe_v8_3.requesting_party_id_source = {}

-- Size: Requesting Party Id Source
cme_ebs_ilink3_sbe_v8_3.requesting_party_id_source.size = 1

-- Display: Requesting Party Id Source
cme_ebs_ilink3_sbe_v8_3.requesting_party_id_source.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Requesting Party Id Source: No Value"
  end

  return "Requesting Party Id Source: "..value
end

-- Dissect: Requesting Party Id Source
cme_ebs_ilink3_sbe_v8_3.requesting_party_id_source.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.requesting_party_id_source.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.requesting_party_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.requesting_party_id_source, range, value, display)

  return offset + length, value
end

-- Requesting Party Role
cme_ebs_ilink3_sbe_v8_3.requesting_party_role = {}

-- Size: Requesting Party Role
cme_ebs_ilink3_sbe_v8_3.requesting_party_role.size = 1

-- Display: Requesting Party Role
cme_ebs_ilink3_sbe_v8_3.requesting_party_role.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Requesting Party Role: No Value"
  end

  return "Requesting Party Role: "..value
end

-- Dissect: Requesting Party Role
cme_ebs_ilink3_sbe_v8_3.requesting_party_role.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.requesting_party_role.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.requesting_party_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.requesting_party_role, range, value, display)

  return offset + length, value
end

-- Rfq Side
cme_ebs_ilink3_sbe_v8_3.rfq_side = {}

-- Size: Rfq Side
cme_ebs_ilink3_sbe_v8_3.rfq_side.size = 1

-- Display: Rfq Side
cme_ebs_ilink3_sbe_v8_3.rfq_side.labels = {
  [1] = "Rfq Side: Buy (1)",
  [2] = "Rfq Side: Sell (2)",
  [8] = "Rfq Side: Cross (8)",
}

cme_ebs_ilink3_sbe_v8_3.rfq_side.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.rfq_side.labels[value] or "Rfq Side: Unknown("..value..")"
end

-- Dissect: Rfq Side
cme_ebs_ilink3_sbe_v8_3.rfq_side.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.rfq_side.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.rfq_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.rfq_side, range, value, display)

  return offset + length, value
end

-- Schema Id
cme_ebs_ilink3_sbe_v8_3.schema_id = {}

-- Size: Schema Id
cme_ebs_ilink3_sbe_v8_3.schema_id.size = 2

-- Display: Schema Id
cme_ebs_ilink3_sbe_v8_3.schema_id.display = function(value)
  if value == 8 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
cme_ebs_ilink3_sbe_v8_3.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Sec Exec Id
cme_ebs_ilink3_sbe_v8_3.sec_exec_id = {}

-- Size: Sec Exec Id
cme_ebs_ilink3_sbe_v8_3.sec_exec_id.size = 8

-- Display: Sec Exec Id
cme_ebs_ilink3_sbe_v8_3.sec_exec_id.display = function(value)
  return "Sec Exec Id: "..value
end

-- Dissect: Sec Exec Id
cme_ebs_ilink3_sbe_v8_3.sec_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.sec_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.sec_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.sec_exec_id, range, value, display)

  return offset + length, value
end

-- Secret Key Secure Id Expiration
cme_ebs_ilink3_sbe_v8_3.secret_key_secure_id_expiration = {}

-- Size: Secret Key Secure Id Expiration
cme_ebs_ilink3_sbe_v8_3.secret_key_secure_id_expiration.size = 2

-- Display: Secret Key Secure Id Expiration
cme_ebs_ilink3_sbe_v8_3.secret_key_secure_id_expiration.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Secret Key Secure Id Expiration: No Value"
  end

  return "Secret Key Secure Id Expiration: "..value
end

-- Dissect: Secret Key Secure Id Expiration
cme_ebs_ilink3_sbe_v8_3.secret_key_secure_id_expiration.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.secret_key_secure_id_expiration.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.secret_key_secure_id_expiration.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.secret_key_secure_id_expiration, range, value, display)

  return offset + length, value
end

-- Security Group
cme_ebs_ilink3_sbe_v8_3.security_group = {}

-- Size: Security Group
cme_ebs_ilink3_sbe_v8_3.security_group.size = 6

-- Display: Security Group
cme_ebs_ilink3_sbe_v8_3.security_group.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group: No Value"
  end

  return "Security Group: "..value
end

-- Dissect: Security Group
cme_ebs_ilink3_sbe_v8_3.security_group.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.security_group.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.security_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.security_group, range, value, display)

  return offset + length, value
end

-- Security Id
cme_ebs_ilink3_sbe_v8_3.security_id = {}

-- Size: Security Id
cme_ebs_ilink3_sbe_v8_3.security_id.size = 4

-- Display: Security Id
cme_ebs_ilink3_sbe_v8_3.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
cme_ebs_ilink3_sbe_v8_3.security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_ebs_ilink3_sbe_v8_3.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Id Optional
cme_ebs_ilink3_sbe_v8_3.security_id_optional = {}

-- Size: Security Id Optional
cme_ebs_ilink3_sbe_v8_3.security_id_optional.size = 4

-- Display: Security Id Optional
cme_ebs_ilink3_sbe_v8_3.security_id_optional.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Security Id Optional: No Value"
  end

  return "Security Id Optional: "..value
end

-- Dissect: Security Id Optional
cme_ebs_ilink3_sbe_v8_3.security_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.security_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_ebs_ilink3_sbe_v8_3.security_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.security_id_optional, range, value, display)

  return offset + length, value
end

-- Security Req Id
cme_ebs_ilink3_sbe_v8_3.security_req_id = {}

-- Size: Security Req Id
cme_ebs_ilink3_sbe_v8_3.security_req_id.size = 8

-- Display: Security Req Id
cme_ebs_ilink3_sbe_v8_3.security_req_id.display = function(value)
  return "Security Req Id: "..value
end

-- Dissect: Security Req Id
cme_ebs_ilink3_sbe_v8_3.security_req_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.security_req_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.security_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.security_req_id, range, value, display)

  return offset + length, value
end

-- Security Response Id
cme_ebs_ilink3_sbe_v8_3.security_response_id = {}

-- Size: Security Response Id
cme_ebs_ilink3_sbe_v8_3.security_response_id.size = 8

-- Display: Security Response Id
cme_ebs_ilink3_sbe_v8_3.security_response_id.display = function(value)
  return "Security Response Id: "..value
end

-- Dissect: Security Response Id
cme_ebs_ilink3_sbe_v8_3.security_response_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.security_response_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.security_response_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.security_response_id, range, value, display)

  return offset + length, value
end

-- Security Response Type
cme_ebs_ilink3_sbe_v8_3.security_response_type = {}

-- Size: Security Response Type
cme_ebs_ilink3_sbe_v8_3.security_response_type.size = 1

-- Display: Security Response Type
cme_ebs_ilink3_sbe_v8_3.security_response_type.labels = {
  [1] = "Security Response Type: Accept Security Proposalasis (1)",
  [2] = "Security Response Type: Accept Securityproposalwithrevisionsasindicatedinthemessage (2)",
  [5] = "Security Response Type: Reject Security Proposal (5)",
}

cme_ebs_ilink3_sbe_v8_3.security_response_type.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.security_response_type.labels[value] or "Security Response Type: Unknown("..value..")"
end

-- Dissect: Security Response Type
cme_ebs_ilink3_sbe_v8_3.security_response_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.security_response_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.security_response_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.security_response_type, range, value, display)

  return offset + length, value
end

-- Security Sub Type
cme_ebs_ilink3_sbe_v8_3.security_sub_type = {}

-- Size: Security Sub Type
cme_ebs_ilink3_sbe_v8_3.security_sub_type.size = 8

-- Display: Security Sub Type
cme_ebs_ilink3_sbe_v8_3.security_sub_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Sub Type: No Value"
  end

  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
cme_ebs_ilink3_sbe_v8_3.security_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.security_sub_type.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.security_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Security Type
cme_ebs_ilink3_sbe_v8_3.security_type = {}

-- Size: Security Type
cme_ebs_ilink3_sbe_v8_3.security_type.size = 6

-- Display: Security Type
cme_ebs_ilink3_sbe_v8_3.security_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Type: No Value"
  end

  return "Security Type: "..value
end

-- Dissect: Security Type
cme_ebs_ilink3_sbe_v8_3.security_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.security_type.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.security_type, range, value, display)

  return offset + length, value
end

-- Self Match Prevention Id
cme_ebs_ilink3_sbe_v8_3.self_match_prevention_id = {}

-- Size: Self Match Prevention Id
cme_ebs_ilink3_sbe_v8_3.self_match_prevention_id.size = 8

-- Display: Self Match Prevention Id
cme_ebs_ilink3_sbe_v8_3.self_match_prevention_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Self Match Prevention Id: No Value"
  end

  return "Self Match Prevention Id: "..value
end

-- Dissect: Self Match Prevention Id
cme_ebs_ilink3_sbe_v8_3.self_match_prevention_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.self_match_prevention_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.self_match_prevention_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.self_match_prevention_id, range, value, display)

  return offset + length, value
end

-- Self Match Prevention Instruction
cme_ebs_ilink3_sbe_v8_3.self_match_prevention_instruction = {}

-- Size: Self Match Prevention Instruction
cme_ebs_ilink3_sbe_v8_3.self_match_prevention_instruction.size = 1

-- Display: Self Match Prevention Instruction
cme_ebs_ilink3_sbe_v8_3.self_match_prevention_instruction.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Self Match Prevention Instruction: No Value"
  end

  if value == "N" then
    return "Self Match Prevention Instruction: Cancel Newest (N)"
  end
  if value == "O" then
    return "Self Match Prevention Instruction: Cancel Oldest (O)"
  end

  return "Self Match Prevention Instruction: Unknown("..value..")"
end

-- Dissect: Self Match Prevention Instruction
cme_ebs_ilink3_sbe_v8_3.self_match_prevention_instruction.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.self_match_prevention_instruction.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.self_match_prevention_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.self_match_prevention_instruction, range, value, display)

  return offset + length, value
end

-- Sender Id
cme_ebs_ilink3_sbe_v8_3.sender_id = {}

-- Size: Sender Id
cme_ebs_ilink3_sbe_v8_3.sender_id.size = 20

-- Display: Sender Id
cme_ebs_ilink3_sbe_v8_3.sender_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sender Id: No Value"
  end

  return "Sender Id: "..value
end

-- Dissect: Sender Id
cme_ebs_ilink3_sbe_v8_3.sender_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.sender_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.sender_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.sender_id, range, value, display)

  return offset + length, value
end

-- Sender Id Optional
cme_ebs_ilink3_sbe_v8_3.sender_id_optional = {}

-- Size: Sender Id Optional
cme_ebs_ilink3_sbe_v8_3.sender_id_optional.size = 20

-- Display: Sender Id Optional
cme_ebs_ilink3_sbe_v8_3.sender_id_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sender Id Optional: No Value"
  end

  return "Sender Id Optional: "..value
end

-- Dissect: Sender Id Optional
cme_ebs_ilink3_sbe_v8_3.sender_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.sender_id_optional.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.sender_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.sender_id_optional, range, value, display)

  return offset + length, value
end

-- Sending Time Epoch
cme_ebs_ilink3_sbe_v8_3.sending_time_epoch = {}

-- Size: Sending Time Epoch
cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size = 8

-- Dissect: Sending Time Epoch
cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cme_ebs_ilink3_sbe_v8_3.fields.sending_time_epoch
  if cme_ebs_ilink3_sbe_v8_3.absolute_time_base == 1 then field = omi_cme_ebs_ilink3_sbe_v8_3.fields.sending_time_epoch_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Seq Num
cme_ebs_ilink3_sbe_v8_3.seq_num = {}

-- Size: Seq Num
cme_ebs_ilink3_sbe_v8_3.seq_num.size = 4

-- Display: Seq Num
cme_ebs_ilink3_sbe_v8_3.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
cme_ebs_ilink3_sbe_v8_3.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Session
cme_ebs_ilink3_sbe_v8_3.session = {}

-- Size: Session
cme_ebs_ilink3_sbe_v8_3.session.size = 3

-- Display: Session
cme_ebs_ilink3_sbe_v8_3.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
cme_ebs_ilink3_sbe_v8_3.session.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.session.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.session, range, value, display)

  return offset + length, value
end

-- Short Sale Type
cme_ebs_ilink3_sbe_v8_3.short_sale_type = {}

-- Size: Short Sale Type
cme_ebs_ilink3_sbe_v8_3.short_sale_type.size = 1

-- Display: Short Sale Type
cme_ebs_ilink3_sbe_v8_3.short_sale_type.display = function(value)
  if value == 255 then
    return "Short Sale Type: No Value"
  end
  if value == 0 then
    return "Short Sale Type: Long Sell (0)"
  end
  if value == 1 then
    return "Short Sale Type: Short Sale With No Exemption Sesh (1)"
  end
  if value == 2 then
    return "Short Sale Type: Short Sale With Exemption Ssex (2)"
  end
  if value == 3 then
    return "Short Sale Type: Undisclosed Sell Information Not Available Undi (3)"
  end

  return "Short Sale Type: Unknown("..value..")"
end

-- Dissect: Short Sale Type
cme_ebs_ilink3_sbe_v8_3.short_sale_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.short_sale_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.short_sale_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.short_sale_type, range, value, display)

  return offset + length, value
end

-- Side
cme_ebs_ilink3_sbe_v8_3.side = {}

-- Size: Side
cme_ebs_ilink3_sbe_v8_3.side.size = 1

-- Display: Side
cme_ebs_ilink3_sbe_v8_3.side.labels = {
  [1] = "Side: Buy (1)",
  [2] = "Side: Sell (2)",
}

cme_ebs_ilink3_sbe_v8_3.side.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
cme_ebs_ilink3_sbe_v8_3.side.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.side.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.side, range, value, display)

  return offset + length, value
end

-- Side Time In Force
cme_ebs_ilink3_sbe_v8_3.side_time_in_force = {}

-- Size: Side Time In Force
cme_ebs_ilink3_sbe_v8_3.side_time_in_force.size = 1

-- Display: Side Time In Force
cme_ebs_ilink3_sbe_v8_3.side_time_in_force.labels = {
  [0] = "Side Time In Force: Day (0)",
  [3] = "Side Time In Force: Fak (3)",
}

cme_ebs_ilink3_sbe_v8_3.side_time_in_force.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.side_time_in_force.labels[value] or "Side Time In Force: Unknown("..value..")"
end

-- Dissect: Side Time In Force
cme_ebs_ilink3_sbe_v8_3.side_time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.side_time_in_force.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.side_time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.side_time_in_force, range, value, display)

  return offset + length, value
end

-- Side Trade Id
cme_ebs_ilink3_sbe_v8_3.side_trade_id = {}

-- Size: Side Trade Id
cme_ebs_ilink3_sbe_v8_3.side_trade_id.size = 4

-- Display: Side Trade Id
cme_ebs_ilink3_sbe_v8_3.side_trade_id.display = function(value)
  return "Side Trade Id: "..value
end

-- Dissect: Side Trade Id
cme_ebs_ilink3_sbe_v8_3.side_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.side_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.side_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.side_trade_id, range, value, display)

  return offset + length, value
end

-- Source Repo Id
cme_ebs_ilink3_sbe_v8_3.source_repo_id = {}

-- Size: Source Repo Id
cme_ebs_ilink3_sbe_v8_3.source_repo_id.size = 4

-- Display: Source Repo Id
cme_ebs_ilink3_sbe_v8_3.source_repo_id.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Source Repo Id: No Value"
  end

  return "Source Repo Id: "..value
end

-- Dissect: Source Repo Id
cme_ebs_ilink3_sbe_v8_3.source_repo_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.source_repo_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_ebs_ilink3_sbe_v8_3.source_repo_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.source_repo_id, range, value, display)

  return offset + length, value
end

-- Split Msg
cme_ebs_ilink3_sbe_v8_3.split_msg = {}

-- Size: Split Msg
cme_ebs_ilink3_sbe_v8_3.split_msg.size = 1

-- Display: Split Msg
cme_ebs_ilink3_sbe_v8_3.split_msg.display = function(value)
  if value == 255 then
    return "Split Msg: No Value"
  end
  if value == 0 then
    return "Split Msg: Split Message Delayed (0)"
  end
  if value == 1 then
    return "Split Msg: Outof Order Message Delayed (1)"
  end
  if value == 2 then
    return "Split Msg: Complete Message Delayed (2)"
  end

  return "Split Msg: Unknown("..value..")"
end

-- Dissect: Split Msg
cme_ebs_ilink3_sbe_v8_3.split_msg.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.split_msg.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.split_msg.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.split_msg, range, value, display)

  return offset + length, value
end

-- Start Date
cme_ebs_ilink3_sbe_v8_3.start_date = {}

-- Size: Start Date
cme_ebs_ilink3_sbe_v8_3.start_date.size = 2

-- Display: Start Date
cme_ebs_ilink3_sbe_v8_3.start_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Start Date: No Value"
  end

  return "Start Date: "..value
end

-- Dissect: Start Date
cme_ebs_ilink3_sbe_v8_3.start_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.start_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.start_date, range, value, display)

  return offset + length, value
end

-- Stop Px
cme_ebs_ilink3_sbe_v8_3.stop_px = {}

-- Size: Stop Px
cme_ebs_ilink3_sbe_v8_3.stop_px.size = 8

-- Display: Stop Px
cme_ebs_ilink3_sbe_v8_3.stop_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Stop Px: No Value"
  end

  return "Stop Px: "..value
end

-- Translate: Stop Px
cme_ebs_ilink3_sbe_v8_3.stop_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Stop Px
cme_ebs_ilink3_sbe_v8_3.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.stop_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_ebs_ilink3_sbe_v8_3.stop_px.translate(raw)
  local display = cme_ebs_ilink3_sbe_v8_3.stop_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Symbol
cme_ebs_ilink3_sbe_v8_3.symbol = {}

-- Size: Symbol
cme_ebs_ilink3_sbe_v8_3.symbol.size = 20

-- Display: Symbol
cme_ebs_ilink3_sbe_v8_3.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cme_ebs_ilink3_sbe_v8_3.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.symbol.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Template Id
cme_ebs_ilink3_sbe_v8_3.template_id = {}

-- Size: Template Id
cme_ebs_ilink3_sbe_v8_3.template_id.size = 2

-- Display: Template Id
cme_ebs_ilink3_sbe_v8_3.template_id.labels = {
  [500] = "Template Id: Negotiate (500)",
  [501] = "Template Id: Negotiation Response (501)",
  [502] = "Template Id: Negotiation Reject (502)",
  [503] = "Template Id: Establish (503)",
  [504] = "Template Id: Establishment Ack (504)",
  [505] = "Template Id: Establishment Reject (505)",
  [506] = "Template Id: Sequence (506)",
  [507] = "Template Id: Terminate (507)",
  [508] = "Template Id: Retransmit Request (508)",
  [509] = "Template Id: Retransmission (509)",
  [510] = "Template Id: Retransmit Reject (510)",
  [513] = "Template Id: Not Applied (513)",
  [514] = "Template Id: New Order Single (514)",
  [515] = "Template Id: Order Cancel Replace Request (515)",
  [516] = "Template Id: Order Cancel Request (516)",
  [517] = "Template Id: Mass Quote (517)",
  [518] = "Template Id: Party Details Definition Request (518)",
  [519] = "Template Id: Party Details Definition Request Ack (519)",
  [521] = "Template Id: Business Reject (521)",
  [522] = "Template Id: Execution Report New (522)",
  [523] = "Template Id: Execution Report Reject (523)",
  [524] = "Template Id: Execution Report Elimination (524)",
  [525] = "Template Id: Execution Report Trade Outright (525)",
  [526] = "Template Id: Execution Report Trade Spread (526)",
  [527] = "Template Id: Execution Report Trade Spread Leg (527)",
  [528] = "Template Id: Quote Cancel (528)",
  [529] = "Template Id: Order Mass Action Request (529)",
  [530] = "Template Id: Order Mass Status Request (530)",
  [531] = "Template Id: Execution Report Modify (531)",
  [532] = "Template Id: Execution Report Status (532)",
  [533] = "Template Id: Order Status Request (533)",
  [534] = "Template Id: Execution Report Cancel (534)",
  [535] = "Template Id: Order Cancel Reject (535)",
  [536] = "Template Id: Order Cancel Replace Reject (536)",
  [537] = "Template Id: Party Details List Request (537)",
  [538] = "Template Id: Party Details List Report (538)",
  [539] = "Template Id: Execution Ack (539)",
  [543] = "Template Id: Request For Quote (543)",
  [544] = "Template Id: New Order Cross (544)",
  [545] = "Template Id: Mass Quote Ack (545)",
  [546] = "Template Id: Request For Quote Ack (546)",
  [547] = "Template Id: Quote Cancel Ack (547)",
  [548] = "Template Id: Execution Report Trade Addendum Outright (548)",
  [549] = "Template Id: Execution Report Trade Addendum Spread (549)",
  [550] = "Template Id: Execution Report Trade Addendum Spread Leg (550)",
  [558] = "Template Id: Order Mass Action Report (558)",
  [560] = "Template Id: Security Definition Request (560)",
  [561] = "Template Id: Security Definition Response (561)",
}

cme_ebs_ilink3_sbe_v8_3.template_id.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.template_id.labels[value] or "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
cme_ebs_ilink3_sbe_v8_3.template_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.template_id, range, value, display)

  return offset + length, value
end

-- Termination Type
cme_ebs_ilink3_sbe_v8_3.termination_type = {}

-- Size: Termination Type
cme_ebs_ilink3_sbe_v8_3.termination_type.size = 8

-- Display: Termination Type
cme_ebs_ilink3_sbe_v8_3.termination_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Termination Type: No Value"
  end

  return "Termination Type: "..value
end

-- Dissect: Termination Type
cme_ebs_ilink3_sbe_v8_3.termination_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.termination_type.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.termination_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.termination_type, range, value, display)

  return offset + length, value
end

-- Text
cme_ebs_ilink3_sbe_v8_3.text = {}

-- Size: Text
cme_ebs_ilink3_sbe_v8_3.text.size = 256

-- Display: Text
cme_ebs_ilink3_sbe_v8_3.text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
cme_ebs_ilink3_sbe_v8_3.text.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.text.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.text, range, value, display)

  return offset + length, value
end

-- Time In Force
cme_ebs_ilink3_sbe_v8_3.time_in_force = {}

-- Size: Time In Force
cme_ebs_ilink3_sbe_v8_3.time_in_force.size = 1

-- Display: Time In Force
cme_ebs_ilink3_sbe_v8_3.time_in_force.labels = {
  [0] = "Time In Force: Day (0)",
  [1] = "Time In Force: Good Till Cancel (1)",
  [3] = "Time In Force: Fill And Kill (3)",
  [4] = "Time In Force: Fill Or Kill (4)",
  [6] = "Time In Force: Good Till Date (6)",
}

cme_ebs_ilink3_sbe_v8_3.time_in_force.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.time_in_force.labels[value] or "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
cme_ebs_ilink3_sbe_v8_3.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.time_in_force.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Tot No Quote Entries Optional
cme_ebs_ilink3_sbe_v8_3.tot_no_quote_entries_optional = {}

-- Size: Tot No Quote Entries Optional
cme_ebs_ilink3_sbe_v8_3.tot_no_quote_entries_optional.size = 1

-- Display: Tot No Quote Entries Optional
cme_ebs_ilink3_sbe_v8_3.tot_no_quote_entries_optional.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Tot No Quote Entries Optional: No Value"
  end

  return "Tot No Quote Entries Optional: "..value
end

-- Dissect: Tot No Quote Entries Optional
cme_ebs_ilink3_sbe_v8_3.tot_no_quote_entries_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.tot_no_quote_entries_optional.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.tot_no_quote_entries_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.tot_no_quote_entries_optional, range, value, display)

  return offset + length, value
end

-- Tot Num Parties
cme_ebs_ilink3_sbe_v8_3.tot_num_parties = {}

-- Size: Tot Num Parties
cme_ebs_ilink3_sbe_v8_3.tot_num_parties.size = 2

-- Display: Tot Num Parties
cme_ebs_ilink3_sbe_v8_3.tot_num_parties.display = function(value)
  return "Tot Num Parties: "..value
end

-- Dissect: Tot Num Parties
cme_ebs_ilink3_sbe_v8_3.tot_num_parties.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.tot_num_parties.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.tot_num_parties.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.tot_num_parties, range, value, display)

  return offset + length, value
end

-- Total Num Securities
cme_ebs_ilink3_sbe_v8_3.total_num_securities = {}

-- Size: Total Num Securities
cme_ebs_ilink3_sbe_v8_3.total_num_securities.size = 1

-- Display: Total Num Securities
cme_ebs_ilink3_sbe_v8_3.total_num_securities.display = function(value)
  return "Total Num Securities: "..value
end

-- Dissect: Total Num Securities
cme_ebs_ilink3_sbe_v8_3.total_num_securities.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.total_num_securities.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.total_num_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.total_num_securities, range, value, display)

  return offset + length, value
end

-- Trade Addendum
cme_ebs_ilink3_sbe_v8_3.trade_addendum = {}

-- Size: Trade Addendum
cme_ebs_ilink3_sbe_v8_3.trade_addendum.size = 1

-- Display: Trade Addendum
cme_ebs_ilink3_sbe_v8_3.trade_addendum.labels = {
  [4] = "Trade Addendum: Partially Filled (4)",
  [5] = "Trade Addendum: Filled (5)",
  [100] = "Trade Addendum: Trade Cancel (100)",
  [101] = "Trade Addendum: Trade Correction (101)",
}

cme_ebs_ilink3_sbe_v8_3.trade_addendum.display = function(value)
  return cme_ebs_ilink3_sbe_v8_3.trade_addendum.labels[value] or "Trade Addendum: Unknown("..value..")"
end

-- Dissect: Trade Addendum
cme_ebs_ilink3_sbe_v8_3.trade_addendum.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.trade_addendum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.trade_addendum.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.trade_addendum, range, value, display)

  return offset + length, value
end

-- Trade Date
cme_ebs_ilink3_sbe_v8_3.trade_date = {}

-- Size: Trade Date
cme_ebs_ilink3_sbe_v8_3.trade_date.size = 2

-- Display: Trade Date
cme_ebs_ilink3_sbe_v8_3.trade_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trade Date: No Value"
  end

  return "Trade Date: "..value
end

-- Dissect: Trade Date
cme_ebs_ilink3_sbe_v8_3.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Link Id
cme_ebs_ilink3_sbe_v8_3.trade_link_id = {}

-- Size: Trade Link Id
cme_ebs_ilink3_sbe_v8_3.trade_link_id.size = 4

-- Display: Trade Link Id
cme_ebs_ilink3_sbe_v8_3.trade_link_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Trade Link Id: No Value"
  end

  return "Trade Link Id: "..value
end

-- Dissect: Trade Link Id
cme_ebs_ilink3_sbe_v8_3.trade_link_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.trade_link_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.trade_link_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.trade_link_id, range, value, display)

  return offset + length, value
end

-- Trading System Name
cme_ebs_ilink3_sbe_v8_3.trading_system_name = {}

-- Size: Trading System Name
cme_ebs_ilink3_sbe_v8_3.trading_system_name.size = 30

-- Display: Trading System Name
cme_ebs_ilink3_sbe_v8_3.trading_system_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading System Name: No Value"
  end

  return "Trading System Name: "..value
end

-- Dissect: Trading System Name
cme_ebs_ilink3_sbe_v8_3.trading_system_name.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.trading_system_name.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.trading_system_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.trading_system_name, range, value, display)

  return offset + length, value
end

-- Trading System Vendor
cme_ebs_ilink3_sbe_v8_3.trading_system_vendor = {}

-- Size: Trading System Vendor
cme_ebs_ilink3_sbe_v8_3.trading_system_vendor.size = 10

-- Display: Trading System Vendor
cme_ebs_ilink3_sbe_v8_3.trading_system_vendor.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading System Vendor: No Value"
  end

  return "Trading System Vendor: "..value
end

-- Dissect: Trading System Vendor
cme_ebs_ilink3_sbe_v8_3.trading_system_vendor.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.trading_system_vendor.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.trading_system_vendor.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.trading_system_vendor, range, value, display)

  return offset + length, value
end

-- Trading System Version
cme_ebs_ilink3_sbe_v8_3.trading_system_version = {}

-- Size: Trading System Version
cme_ebs_ilink3_sbe_v8_3.trading_system_version.size = 10

-- Display: Trading System Version
cme_ebs_ilink3_sbe_v8_3.trading_system_version.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading System Version: No Value"
  end

  return "Trading System Version: "..value
end

-- Dissect: Trading System Version
cme_ebs_ilink3_sbe_v8_3.trading_system_version.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.trading_system_version.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.trading_system_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.trading_system_version, range, value, display)

  return offset + length, value
end

-- Trans Bkd Time
cme_ebs_ilink3_sbe_v8_3.trans_bkd_time = {}

-- Size: Trans Bkd Time
cme_ebs_ilink3_sbe_v8_3.trans_bkd_time.size = 8

-- Display: Trans Bkd Time
cme_ebs_ilink3_sbe_v8_3.trans_bkd_time.display = function(value)
  return "Trans Bkd Time: "..value
end

-- Dissect: Trans Bkd Time
cme_ebs_ilink3_sbe_v8_3.trans_bkd_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.trans_bkd_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.trans_bkd_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.trans_bkd_time, range, value, display)

  return offset + length, value
end

-- Transact Time
cme_ebs_ilink3_sbe_v8_3.transact_time = {}

-- Size: Transact Time
cme_ebs_ilink3_sbe_v8_3.transact_time.size = 8

-- Dissect: Transact Time
cme_ebs_ilink3_sbe_v8_3.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cme_ebs_ilink3_sbe_v8_3.fields.transact_time
  if cme_ebs_ilink3_sbe_v8_3.absolute_time_base == 1 then field = omi_cme_ebs_ilink3_sbe_v8_3.fields.transact_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trd Reg Publication Reason
cme_ebs_ilink3_sbe_v8_3.trd_reg_publication_reason = {}

-- Size: Trd Reg Publication Reason
cme_ebs_ilink3_sbe_v8_3.trd_reg_publication_reason.size = 1

-- Display: Trd Reg Publication Reason
cme_ebs_ilink3_sbe_v8_3.trd_reg_publication_reason.display = function(value)
  return "Trd Reg Publication Reason: "..value
end

-- Dissect: Trd Reg Publication Reason
cme_ebs_ilink3_sbe_v8_3.trd_reg_publication_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.trd_reg_publication_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.trd_reg_publication_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.trd_reg_publication_reason, range, value, display)

  return offset + length, value
end

-- Trd Reg Publication Type
cme_ebs_ilink3_sbe_v8_3.trd_reg_publication_type = {}

-- Size: Trd Reg Publication Type
cme_ebs_ilink3_sbe_v8_3.trd_reg_publication_type.size = 1

-- Display: Trd Reg Publication Type
cme_ebs_ilink3_sbe_v8_3.trd_reg_publication_type.display = function(value)
  return "Trd Reg Publication Type: "..value
end

-- Dissect: Trd Reg Publication Type
cme_ebs_ilink3_sbe_v8_3.trd_reg_publication_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.trd_reg_publication_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.trd_reg_publication_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.trd_reg_publication_type, range, value, display)

  return offset + length, value
end

-- Underlying Px
cme_ebs_ilink3_sbe_v8_3.underlying_px = {}

-- Size: Underlying Px
cme_ebs_ilink3_sbe_v8_3.underlying_px.size = 8

-- Display: Underlying Px
cme_ebs_ilink3_sbe_v8_3.underlying_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Underlying Px: No Value"
  end

  return "Underlying Px: "..value
end

-- Translate: Underlying Px
cme_ebs_ilink3_sbe_v8_3.underlying_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Underlying Px
cme_ebs_ilink3_sbe_v8_3.underlying_px.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.underlying_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_ebs_ilink3_sbe_v8_3.underlying_px.translate(raw)
  local display = cme_ebs_ilink3_sbe_v8_3.underlying_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.underlying_px, range, value, display)

  return offset + length, value
end

-- Unsolicited Cancel Type
cme_ebs_ilink3_sbe_v8_3.unsolicited_cancel_type = {}

-- Size: Unsolicited Cancel Type
cme_ebs_ilink3_sbe_v8_3.unsolicited_cancel_type.size = 1

-- Display: Unsolicited Cancel Type
cme_ebs_ilink3_sbe_v8_3.unsolicited_cancel_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Unsolicited Cancel Type: No Value"
  end

  return "Unsolicited Cancel Type: "..value
end

-- Dissect: Unsolicited Cancel Type
cme_ebs_ilink3_sbe_v8_3.unsolicited_cancel_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.unsolicited_cancel_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_ebs_ilink3_sbe_v8_3.unsolicited_cancel_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.unsolicited_cancel_type, range, value, display)

  return offset + length, value
end

-- Uuid
cme_ebs_ilink3_sbe_v8_3.uuid = {}

-- Size: Uuid
cme_ebs_ilink3_sbe_v8_3.uuid.size = 8

-- Display: Uuid
cme_ebs_ilink3_sbe_v8_3.uuid.display = function(value)
  return "Uuid: "..value
end

-- Dissect: Uuid
cme_ebs_ilink3_sbe_v8_3.uuid.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.uuid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_ilink3_sbe_v8_3.uuid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.uuid, range, value, display)

  return offset + length, value
end

-- Version
cme_ebs_ilink3_sbe_v8_3.version = {}

-- Size: Version
cme_ebs_ilink3_sbe_v8_3.version.size = 2

-- Display: Version
cme_ebs_ilink3_sbe_v8_3.version.display = function(value)
  if value == 3 then
    return "Version: Version"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
cme_ebs_ilink3_sbe_v8_3.version.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.version, range, value, display)

  return offset + length, value
end

-- Week
cme_ebs_ilink3_sbe_v8_3.week = {}

-- Size: Week
cme_ebs_ilink3_sbe_v8_3.week.size = 1

-- Display: Week
cme_ebs_ilink3_sbe_v8_3.week.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Week: No Value"
  end

  return "Week: "..value
end

-- Dissect: Week
cme_ebs_ilink3_sbe_v8_3.week.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.week.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_ebs_ilink3_sbe_v8_3.week.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.week, range, value, display)

  return offset + length, value
end

-- Year
cme_ebs_ilink3_sbe_v8_3.year = {}

-- Size: Year
cme_ebs_ilink3_sbe_v8_3.year.size = 2

-- Display: Year
cme_ebs_ilink3_sbe_v8_3.year.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Year: No Value"
  end

  return "Year: "..value
end

-- Dissect: Year
cme_ebs_ilink3_sbe_v8_3.year.dissect = function(buffer, offset, packet, parent)
  local length = cme_ebs_ilink3_sbe_v8_3.year.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.year.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.year, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cme Ebs iLink3 Sbe 8.3
-----------------------------------------------------------------------

-- Leg Option Delta
cme_ebs_ilink3_sbe_v8_3.leg_option_delta = {}

-- Size: Leg Option Delta
cme_ebs_ilink3_sbe_v8_3.leg_option_delta.size =
  cme_ebs_ilink3_sbe_v8_3.mantissa_32.size + 
  cme_ebs_ilink3_sbe_v8_3.exponent.size

-- Display: Leg Option Delta
cme_ebs_ilink3_sbe_v8_3.leg_option_delta.display = function(packet, parent, value, length)
  if value == nil then
    return ": No Value"
  end

  return ": " .. tostring(value)
end

-- Dissect Fields: Leg Option Delta
cme_ebs_ilink3_sbe_v8_3.leg_option_delta.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa 32: int32
  index, mantissa_32 = cme_ebs_ilink3_sbe_v8_3.mantissa_32.dissect(buffer, index, packet, parent)

  -- Exponent: int8
  index, exponent = cme_ebs_ilink3_sbe_v8_3.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local leg_option_delta = mantissa_32 * 10 ^ exponent

  -- Null check (composite is null when child is null sentinel)
  if mantissa_32 == 2147483647 then leg_option_delta = nil end

  return index, leg_option_delta
end

-- Dissect: Leg Option Delta
cme_ebs_ilink3_sbe_v8_3.leg_option_delta.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.leg_option_delta, buffer(offset, 0))
    local index, value = cme_ebs_ilink3_sbe_v8_3.leg_option_delta.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.leg_option_delta.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.leg_option_delta.fields(buffer, offset, packet, parent)
  end
end

-- Response Legs Group
cme_ebs_ilink3_sbe_v8_3.response_legs_group = {}

-- Size: Response Legs Group
cme_ebs_ilink3_sbe_v8_3.response_legs_group.size =
  cme_ebs_ilink3_sbe_v8_3.leg_price.size + 
  cme_ebs_ilink3_sbe_v8_3.leg_option_delta.size + 
  cme_ebs_ilink3_sbe_v8_3.leg_security_id.size + 
  cme_ebs_ilink3_sbe_v8_3.leg_side.size + 
  cme_ebs_ilink3_sbe_v8_3.leg_ratio_qty.size

-- Display: Response Legs Group
cme_ebs_ilink3_sbe_v8_3.response_legs_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Response Legs Group
cme_ebs_ilink3_sbe_v8_3.response_legs_group.fields = function(buffer, offset, packet, parent, response_legs_group_index)
  local index = offset

  -- Implicit Response Legs Group Index
  if response_legs_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.response_legs_group_index, response_legs_group_index)
    iteration:set_generated()
  end

  -- Leg Price: PRICENULL9
  index, leg_price = cme_ebs_ilink3_sbe_v8_3.leg_price.dissect(buffer, index, packet, parent)

  -- Leg Option Delta: Struct of 2 fields
  index, leg_option_delta = cme_ebs_ilink3_sbe_v8_3.leg_option_delta.dissect(buffer, index, packet, parent)

  -- Leg Security Id: Int32
  index, leg_security_id = cme_ebs_ilink3_sbe_v8_3.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Side: SideReq
  index, leg_side = cme_ebs_ilink3_sbe_v8_3.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: uInt8NULL
  index, leg_ratio_qty = cme_ebs_ilink3_sbe_v8_3.leg_ratio_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Response Legs Group
cme_ebs_ilink3_sbe_v8_3.response_legs_group.dissect = function(buffer, offset, packet, parent, response_legs_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.response_legs_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.response_legs_group.fields(buffer, offset, packet, parent, response_legs_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.response_legs_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.response_legs_group.fields(buffer, offset, packet, parent, response_legs_group_index)
  end
end

-- Group Size
cme_ebs_ilink3_sbe_v8_3.group_size = {}

-- Size: Group Size
cme_ebs_ilink3_sbe_v8_3.group_size.size =
  cme_ebs_ilink3_sbe_v8_3.block_length.size + 
  cme_ebs_ilink3_sbe_v8_3.num_in_group.size

-- Display: Group Size
cme_ebs_ilink3_sbe_v8_3.group_size.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size
cme_ebs_ilink3_sbe_v8_3.group_size.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = cme_ebs_ilink3_sbe_v8_3.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group: uint8
  index, num_in_group = cme_ebs_ilink3_sbe_v8_3.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
cme_ebs_ilink3_sbe_v8_3.group_size.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.group_size, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.group_size.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.group_size.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.group_size.fields(buffer, offset, packet, parent)
  end
end

-- Response Legs Groups
cme_ebs_ilink3_sbe_v8_3.response_legs_groups = {}

-- Calculate size of: Response Legs Groups
cme_ebs_ilink3_sbe_v8_3.response_legs_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local response_legs_group_count = buffer(offset + index - 1, 1):uint()
  index = index + response_legs_group_count * 19

  return index
end

-- Display: Response Legs Groups
cme_ebs_ilink3_sbe_v8_3.response_legs_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Response Legs Groups
cme_ebs_ilink3_sbe_v8_3.response_legs_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Response Legs Group
  for response_legs_group_index = 1, num_in_group do
    index, response_legs_group = cme_ebs_ilink3_sbe_v8_3.response_legs_group.dissect(buffer, index, packet, parent, response_legs_group_index)
  end

  return index
end

-- Dissect: Response Legs Groups
cme_ebs_ilink3_sbe_v8_3.response_legs_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.response_legs_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.response_legs_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.response_legs_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.response_legs_groups.fields(buffer, offset, packet, parent)
  end
end

-- Maturity Month Year
cme_ebs_ilink3_sbe_v8_3.maturity_month_year = {}

-- Size: Maturity Month Year
cme_ebs_ilink3_sbe_v8_3.maturity_month_year.size =
  cme_ebs_ilink3_sbe_v8_3.year.size + 
  cme_ebs_ilink3_sbe_v8_3.month.size + 
  cme_ebs_ilink3_sbe_v8_3.day.size + 
  cme_ebs_ilink3_sbe_v8_3.week.size

-- Display: Maturity Month Year
cme_ebs_ilink3_sbe_v8_3.maturity_month_year.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Maturity Month Year
cme_ebs_ilink3_sbe_v8_3.maturity_month_year.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: uint16
  index, year = cme_ebs_ilink3_sbe_v8_3.year.dissect(buffer, index, packet, parent)

  -- Month: uint8
  index, month = cme_ebs_ilink3_sbe_v8_3.month.dissect(buffer, index, packet, parent)

  -- Day: uint8
  index, day = cme_ebs_ilink3_sbe_v8_3.day.dissect(buffer, index, packet, parent)

  -- Week: uint8
  index, week = cme_ebs_ilink3_sbe_v8_3.week.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Maturity Month Year
cme_ebs_ilink3_sbe_v8_3.maturity_month_year.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.maturity_month_year, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.maturity_month_year.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.maturity_month_year.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.maturity_month_year.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Response
cme_ebs_ilink3_sbe_v8_3.security_definition_response = {}

-- Calculate size of: Security Definition Response
cme_ebs_ilink3_sbe_v8_3.security_definition_response.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.seq_num.size

  index = index + cme_ebs_ilink3_sbe_v8_3.uuid.size

  index = index + cme_ebs_ilink3_sbe_v8_3.text.size

  index = index + cme_ebs_ilink3_sbe_v8_3.financial_instrument_full_name.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sender_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.symbol.size

  index = index + cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.security_req_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.security_response_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size

  index = index + cme_ebs_ilink3_sbe_v8_3.security_group.size

  index = index + cme_ebs_ilink3_sbe_v8_3.security_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.location.size

  index = index + cme_ebs_ilink3_sbe_v8_3.security_id_optional.size

  index = index + cme_ebs_ilink3_sbe_v8_3.currency.size

  index = index + cme_ebs_ilink3_sbe_v8_3.maturity_month_year.size

  index = index + cme_ebs_ilink3_sbe_v8_3.delay_duration.size

  index = index + cme_ebs_ilink3_sbe_v8_3.start_date.size

  index = index + cme_ebs_ilink3_sbe_v8_3.end_date.size

  index = index + cme_ebs_ilink3_sbe_v8_3.max_no_of_substitutions.size

  index = index + cme_ebs_ilink3_sbe_v8_3.source_repo_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.termination_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.security_response_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.expiration_cycle.size

  index = index + cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size

  index = index + cme_ebs_ilink3_sbe_v8_3.split_msg.size

  index = index + cme_ebs_ilink3_sbe_v8_3.auto_quote_request.size

  index = index + cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size

  index = index + cme_ebs_ilink3_sbe_v8_3.response_legs_groups.size(buffer, offset + index)

  return index
end

-- Display: Security Definition Response
cme_ebs_ilink3_sbe_v8_3.security_definition_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Response
cme_ebs_ilink3_sbe_v8_3.security_definition_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Text: String256
  index, text = cme_ebs_ilink3_sbe_v8_3.text.dissect(buffer, index, packet, parent)

  -- Financial Instrument Full Name: StringLength35
  index, financial_instrument_full_name = cme_ebs_ilink3_sbe_v8_3.financial_instrument_full_name.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- Symbol: String20
  index, symbol = cme_ebs_ilink3_sbe_v8_3.symbol.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Security Req Id: uInt64
  index, security_req_id = cme_ebs_ilink3_sbe_v8_3.security_req_id.dissect(buffer, index, packet, parent)

  -- Security Response Id: uInt64
  index, security_response_id = cme_ebs_ilink3_sbe_v8_3.security_response_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Security Group: StringLength6
  index, security_group = cme_ebs_ilink3_sbe_v8_3.security_group.dissect(buffer, index, packet, parent)

  -- Security Type: StringLength6
  index, security_type = cme_ebs_ilink3_sbe_v8_3.security_type.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Security Id Optional: Int32NULL
  index, security_id_optional = cme_ebs_ilink3_sbe_v8_3.security_id_optional.dissect(buffer, index, packet, parent)

  -- Currency: String3
  index, currency = cme_ebs_ilink3_sbe_v8_3.currency.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_ebs_ilink3_sbe_v8_3.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Delay Duration: uInt16NULL
  index, delay_duration = cme_ebs_ilink3_sbe_v8_3.delay_duration.dissect(buffer, index, packet, parent)

  -- Start Date: LocalMktDate
  index, start_date = cme_ebs_ilink3_sbe_v8_3.start_date.dissect(buffer, index, packet, parent)

  -- End Date: LocalMktDate
  index, end_date = cme_ebs_ilink3_sbe_v8_3.end_date.dissect(buffer, index, packet, parent)

  -- Max No Of Substitutions: uInt8NULL
  index, max_no_of_substitutions = cme_ebs_ilink3_sbe_v8_3.max_no_of_substitutions.dissect(buffer, index, packet, parent)

  -- Source Repo Id: Int32NULL
  index, source_repo_id = cme_ebs_ilink3_sbe_v8_3.source_repo_id.dissect(buffer, index, packet, parent)

  -- Termination Type: String8
  index, termination_type = cme_ebs_ilink3_sbe_v8_3.termination_type.dissect(buffer, index, packet, parent)

  -- Security Response Type: SecRspTyp
  index, security_response_type = cme_ebs_ilink3_sbe_v8_3.security_response_type.dissect(buffer, index, packet, parent)

  -- Expiration Cycle: ExpCycle
  index, expiration_cycle = cme_ebs_ilink3_sbe_v8_3.expiration_cycle.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Split Msg: SplitMsg
  index, split_msg = cme_ebs_ilink3_sbe_v8_3.split_msg.dissect(buffer, index, packet, parent)

  -- Auto Quote Request: BooleanFlag
  index, auto_quote_request = cme_ebs_ilink3_sbe_v8_3.auto_quote_request.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: BooleanFlag
  index, poss_retrans_flag = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Response Legs Groups: Struct of 2 fields
  index, response_legs_groups = cme_ebs_ilink3_sbe_v8_3.response_legs_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Response
cme_ebs_ilink3_sbe_v8_3.security_definition_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.security_definition_response, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.security_definition_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.security_definition_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.security_definition_response.fields(buffer, offset, packet, parent)
  end
end

-- Spread Leg Trade Events Group
cme_ebs_ilink3_sbe_v8_3.spread_leg_trade_events_group = {}

-- Size: Spread Leg Trade Events Group
cme_ebs_ilink3_sbe_v8_3.spread_leg_trade_events_group.size =
  cme_ebs_ilink3_sbe_v8_3.order_event_px.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_text.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_exec_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.trade_addendum.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_reason.size + 
  cme_ebs_ilink3_sbe_v8_3.original_order_event_exec_id.size

-- Display: Spread Leg Trade Events Group
cme_ebs_ilink3_sbe_v8_3.spread_leg_trade_events_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Leg Trade Events Group
cme_ebs_ilink3_sbe_v8_3.spread_leg_trade_events_group.fields = function(buffer, offset, packet, parent, spread_leg_trade_events_group_index)
  local index = offset

  -- Implicit Spread Leg Trade Events Group Index
  if spread_leg_trade_events_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_leg_trade_events_group_index, spread_leg_trade_events_group_index)
    iteration:set_generated()
  end

  -- Order Event Px: PRICE9
  index, order_event_px = cme_ebs_ilink3_sbe_v8_3.order_event_px.dissect(buffer, index, packet, parent)

  -- Order Event Text: String5
  index, order_event_text = cme_ebs_ilink3_sbe_v8_3.order_event_text.dissect(buffer, index, packet, parent)

  -- Order Event Exec Id: uInt32
  index, order_event_exec_id = cme_ebs_ilink3_sbe_v8_3.order_event_exec_id.dissect(buffer, index, packet, parent)

  -- Order Event Qty: uInt32
  index, order_event_qty = cme_ebs_ilink3_sbe_v8_3.order_event_qty.dissect(buffer, index, packet, parent)

  -- Trade Addendum: TradeAddendum
  index, trade_addendum = cme_ebs_ilink3_sbe_v8_3.trade_addendum.dissect(buffer, index, packet, parent)

  -- Order Event Reason: uInt8
  index, order_event_reason = cme_ebs_ilink3_sbe_v8_3.order_event_reason.dissect(buffer, index, packet, parent)

  -- Original Order Event Exec Id: uInt32NULL
  index, original_order_event_exec_id = cme_ebs_ilink3_sbe_v8_3.original_order_event_exec_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Leg Trade Events Group
cme_ebs_ilink3_sbe_v8_3.spread_leg_trade_events_group.dissect = function(buffer, offset, packet, parent, spread_leg_trade_events_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_leg_trade_events_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.spread_leg_trade_events_group.fields(buffer, offset, packet, parent, spread_leg_trade_events_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.spread_leg_trade_events_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.spread_leg_trade_events_group.fields(buffer, offset, packet, parent, spread_leg_trade_events_group_index)
  end
end

-- Spread Leg Trade Events Groups
cme_ebs_ilink3_sbe_v8_3.spread_leg_trade_events_groups = {}

-- Calculate size of: Spread Leg Trade Events Groups
cme_ebs_ilink3_sbe_v8_3.spread_leg_trade_events_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local spread_leg_trade_events_group_count = buffer(offset + index - 1, 1):uint()
  index = index + spread_leg_trade_events_group_count * 27

  return index
end

-- Display: Spread Leg Trade Events Groups
cme_ebs_ilink3_sbe_v8_3.spread_leg_trade_events_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Leg Trade Events Groups
cme_ebs_ilink3_sbe_v8_3.spread_leg_trade_events_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Spread Leg Trade Events Group
  for spread_leg_trade_events_group_index = 1, num_in_group do
    index, spread_leg_trade_events_group = cme_ebs_ilink3_sbe_v8_3.spread_leg_trade_events_group.dissect(buffer, index, packet, parent, spread_leg_trade_events_group_index)
  end

  return index
end

-- Dissect: Spread Leg Trade Events Groups
cme_ebs_ilink3_sbe_v8_3.spread_leg_trade_events_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_leg_trade_events_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.spread_leg_trade_events_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.spread_leg_trade_events_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.spread_leg_trade_events_groups.fields(buffer, offset, packet, parent)
  end
end

-- Fills Group
cme_ebs_ilink3_sbe_v8_3.fills_group = {}

-- Size: Fills Group
cme_ebs_ilink3_sbe_v8_3.fills_group.size =
  cme_ebs_ilink3_sbe_v8_3.fill_px.size + 
  cme_ebs_ilink3_sbe_v8_3.fill_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.fill_exec_id.size + 
  cme_ebs_ilink3_sbe_v8_3.fill_yield_type.size

-- Display: Fills Group
cme_ebs_ilink3_sbe_v8_3.fills_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fills Group
cme_ebs_ilink3_sbe_v8_3.fills_group.fields = function(buffer, offset, packet, parent, fills_group_index)
  local index = offset

  -- Implicit Fills Group Index
  if fills_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.fills_group_index, fills_group_index)
    iteration:set_generated()
  end

  -- Fill Px: PRICE9
  index, fill_px = cme_ebs_ilink3_sbe_v8_3.fill_px.dissect(buffer, index, packet, parent)

  -- Fill Qty: uInt32
  index, fill_qty = cme_ebs_ilink3_sbe_v8_3.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Exec Id: String2
  index, fill_exec_id = cme_ebs_ilink3_sbe_v8_3.fill_exec_id.dissect(buffer, index, packet, parent)

  -- Fill Yield Type: uInt8
  index, fill_yield_type = cme_ebs_ilink3_sbe_v8_3.fill_yield_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fills Group
cme_ebs_ilink3_sbe_v8_3.fills_group.dissect = function(buffer, offset, packet, parent, fills_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.fills_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.fills_group.fields(buffer, offset, packet, parent, fills_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.fills_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.fills_group.fields(buffer, offset, packet, parent, fills_group_index)
  end
end

-- Fills Groups
cme_ebs_ilink3_sbe_v8_3.fills_groups = {}

-- Calculate size of: Fills Groups
cme_ebs_ilink3_sbe_v8_3.fills_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local fills_group_count = buffer(offset + index - 1, 1):uint()
  index = index + fills_group_count * 15

  return index
end

-- Display: Fills Groups
cme_ebs_ilink3_sbe_v8_3.fills_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fills Groups
cme_ebs_ilink3_sbe_v8_3.fills_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Fills Group
  for fills_group_index = 1, num_in_group do
    index, fills_group = cme_ebs_ilink3_sbe_v8_3.fills_group.dissect(buffer, index, packet, parent, fills_group_index)
  end

  return index
end

-- Dissect: Fills Groups
cme_ebs_ilink3_sbe_v8_3.fills_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.fills_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.fills_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.fills_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.fills_groups.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Trade Addendum Spread Leg
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_spread_leg = {}

-- Calculate size of: Execution Report Trade Addendum Spread Leg
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_spread_leg.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.seq_num.size

  index = index + cme_ebs_ilink3_sbe_v8_3.uuid.size

  index = index + cme_ebs_ilink3_sbe_v8_3.exec_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sender_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.clordid.size

  index = index + cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.last_px.size

  index = index + cme_ebs_ilink3_sbe_v8_3.order_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.transact_time.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sec_exec_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.orig_secondary_execution_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.location.size

  index = index + cme_ebs_ilink3_sbe_v8_3.security_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.last_qty.size

  index = index + cme_ebs_ilink3_sbe_v8_3.side_trade_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.orig_side_trade_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.trade_date.size

  index = index + cme_ebs_ilink3_sbe_v8_3.ord_status_trd_cxl.size

  index = index + cme_ebs_ilink3_sbe_v8_3.exec_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size

  index = index + cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size

  index = index + cme_ebs_ilink3_sbe_v8_3.fills_groups.size(buffer, offset + index)

  index = index + cme_ebs_ilink3_sbe_v8_3.spread_leg_trade_events_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Addendum Spread Leg
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_spread_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Spread Leg
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_spread_leg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Exec Id: String40
  index, exec_id = cme_ebs_ilink3_sbe_v8_3.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: String20Req
  index, clordid = cme_ebs_ilink3_sbe_v8_3.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Last Px: PRICE9
  index, last_px = cme_ebs_ilink3_sbe_v8_3.last_px.dissect(buffer, index, packet, parent)

  -- Order Id: uInt64
  index, order_id = cme_ebs_ilink3_sbe_v8_3.order_id.dissect(buffer, index, packet, parent)

  -- Transact Time: uInt64
  index, transact_time = cme_ebs_ilink3_sbe_v8_3.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Sec Exec Id: uInt64
  index, sec_exec_id = cme_ebs_ilink3_sbe_v8_3.sec_exec_id.dissect(buffer, index, packet, parent)

  -- Orig Secondary Execution Id: uInt64NULL
  index, orig_secondary_execution_id = cme_ebs_ilink3_sbe_v8_3.orig_secondary_execution_id.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_ebs_ilink3_sbe_v8_3.security_id.dissect(buffer, index, packet, parent)

  -- Last Qty: uInt32
  index, last_qty = cme_ebs_ilink3_sbe_v8_3.last_qty.dissect(buffer, index, packet, parent)

  -- Side Trade Id: uInt32
  index, side_trade_id = cme_ebs_ilink3_sbe_v8_3.side_trade_id.dissect(buffer, index, packet, parent)

  -- Orig Side Trade Id: uInt32NULL
  index, orig_side_trade_id = cme_ebs_ilink3_sbe_v8_3.orig_side_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Date: LocalMktDate
  index, trade_date = cme_ebs_ilink3_sbe_v8_3.trade_date.dissect(buffer, index, packet, parent)

  -- Ord Status Trd Cxl: OrdStatusTrdCxl
  index, ord_status_trd_cxl = cme_ebs_ilink3_sbe_v8_3.ord_status_trd_cxl.dissect(buffer, index, packet, parent)

  -- Exec Type: ExecTypTrdCxl
  index, exec_type = cme_ebs_ilink3_sbe_v8_3.exec_type.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: BooleanFlag
  index, poss_retrans_flag = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index, fills_groups = cme_ebs_ilink3_sbe_v8_3.fills_groups.dissect(buffer, index, packet, parent)

  -- Spread Leg Trade Events Groups: Struct of 2 fields
  index, spread_leg_trade_events_groups = cme_ebs_ilink3_sbe_v8_3.spread_leg_trade_events_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Addendum Spread Leg
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_spread_leg.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_trade_addendum_spread_leg, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_spread_leg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_spread_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_spread_leg.fields(buffer, offset, packet, parent)
  end
end

-- Spread Trade Events Group
cme_ebs_ilink3_sbe_v8_3.spread_trade_events_group = {}

-- Size: Spread Trade Events Group
cme_ebs_ilink3_sbe_v8_3.spread_trade_events_group.size =
  cme_ebs_ilink3_sbe_v8_3.order_event_px.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_text.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_exec_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.trade_addendum.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_reason.size + 
  cme_ebs_ilink3_sbe_v8_3.original_order_event_exec_id.size

-- Display: Spread Trade Events Group
cme_ebs_ilink3_sbe_v8_3.spread_trade_events_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Trade Events Group
cme_ebs_ilink3_sbe_v8_3.spread_trade_events_group.fields = function(buffer, offset, packet, parent, spread_trade_events_group_index)
  local index = offset

  -- Implicit Spread Trade Events Group Index
  if spread_trade_events_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_trade_events_group_index, spread_trade_events_group_index)
    iteration:set_generated()
  end

  -- Order Event Px: PRICE9
  index, order_event_px = cme_ebs_ilink3_sbe_v8_3.order_event_px.dissect(buffer, index, packet, parent)

  -- Order Event Text: String5
  index, order_event_text = cme_ebs_ilink3_sbe_v8_3.order_event_text.dissect(buffer, index, packet, parent)

  -- Order Event Exec Id: uInt32
  index, order_event_exec_id = cme_ebs_ilink3_sbe_v8_3.order_event_exec_id.dissect(buffer, index, packet, parent)

  -- Order Event Qty: uInt32
  index, order_event_qty = cme_ebs_ilink3_sbe_v8_3.order_event_qty.dissect(buffer, index, packet, parent)

  -- Trade Addendum: TradeAddendum
  index, trade_addendum = cme_ebs_ilink3_sbe_v8_3.trade_addendum.dissect(buffer, index, packet, parent)

  -- Order Event Reason: uInt8
  index, order_event_reason = cme_ebs_ilink3_sbe_v8_3.order_event_reason.dissect(buffer, index, packet, parent)

  -- Original Order Event Exec Id: uInt32NULL
  index, original_order_event_exec_id = cme_ebs_ilink3_sbe_v8_3.original_order_event_exec_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Trade Events Group
cme_ebs_ilink3_sbe_v8_3.spread_trade_events_group.dissect = function(buffer, offset, packet, parent, spread_trade_events_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_trade_events_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.spread_trade_events_group.fields(buffer, offset, packet, parent, spread_trade_events_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.spread_trade_events_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.spread_trade_events_group.fields(buffer, offset, packet, parent, spread_trade_events_group_index)
  end
end

-- Spread Trade Events Groups
cme_ebs_ilink3_sbe_v8_3.spread_trade_events_groups = {}

-- Calculate size of: Spread Trade Events Groups
cme_ebs_ilink3_sbe_v8_3.spread_trade_events_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local spread_trade_events_group_count = buffer(offset + index - 1, 1):uint()
  index = index + spread_trade_events_group_count * 27

  return index
end

-- Display: Spread Trade Events Groups
cme_ebs_ilink3_sbe_v8_3.spread_trade_events_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Trade Events Groups
cme_ebs_ilink3_sbe_v8_3.spread_trade_events_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Spread Trade Events Group
  for spread_trade_events_group_index = 1, num_in_group do
    index, spread_trade_events_group = cme_ebs_ilink3_sbe_v8_3.spread_trade_events_group.dissect(buffer, index, packet, parent, spread_trade_events_group_index)
  end

  return index
end

-- Dissect: Spread Trade Events Groups
cme_ebs_ilink3_sbe_v8_3.spread_trade_events_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_trade_events_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.spread_trade_events_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.spread_trade_events_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.spread_trade_events_groups.fields(buffer, offset, packet, parent)
  end
end

-- Trade Addendum Legs Group
cme_ebs_ilink3_sbe_v8_3.trade_addendum_legs_group = {}

-- Size: Trade Addendum Legs Group
cme_ebs_ilink3_sbe_v8_3.trade_addendum_legs_group.size =
  cme_ebs_ilink3_sbe_v8_3.leg_exec_id.size + 
  cme_ebs_ilink3_sbe_v8_3.leg_last_px.size + 
  cme_ebs_ilink3_sbe_v8_3.leg_exec_ref_id.size + 
  cme_ebs_ilink3_sbe_v8_3.leg_trade_id.size + 
  cme_ebs_ilink3_sbe_v8_3.leg_trade_ref_id.size + 
  cme_ebs_ilink3_sbe_v8_3.leg_security_id.size + 
  cme_ebs_ilink3_sbe_v8_3.leg_last_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.leg_side.size

-- Display: Trade Addendum Legs Group
cme_ebs_ilink3_sbe_v8_3.trade_addendum_legs_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Addendum Legs Group
cme_ebs_ilink3_sbe_v8_3.trade_addendum_legs_group.fields = function(buffer, offset, packet, parent, trade_addendum_legs_group_index)
  local index = offset

  -- Implicit Trade Addendum Legs Group Index
  if trade_addendum_legs_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.trade_addendum_legs_group_index, trade_addendum_legs_group_index)
    iteration:set_generated()
  end

  -- Leg Exec Id: uInt64
  index, leg_exec_id = cme_ebs_ilink3_sbe_v8_3.leg_exec_id.dissect(buffer, index, packet, parent)

  -- Leg Last Px: PRICE9
  index, leg_last_px = cme_ebs_ilink3_sbe_v8_3.leg_last_px.dissect(buffer, index, packet, parent)

  -- Leg Exec Ref Id: uInt64NULL
  index, leg_exec_ref_id = cme_ebs_ilink3_sbe_v8_3.leg_exec_ref_id.dissect(buffer, index, packet, parent)

  -- Leg Trade Id: uInt32
  index, leg_trade_id = cme_ebs_ilink3_sbe_v8_3.leg_trade_id.dissect(buffer, index, packet, parent)

  -- Leg Trade Ref Id: uInt32NULL
  index, leg_trade_ref_id = cme_ebs_ilink3_sbe_v8_3.leg_trade_ref_id.dissect(buffer, index, packet, parent)

  -- Leg Security Id: Int32
  index, leg_security_id = cme_ebs_ilink3_sbe_v8_3.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Last Qty: uInt32
  index, leg_last_qty = cme_ebs_ilink3_sbe_v8_3.leg_last_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: SideReq
  index, leg_side = cme_ebs_ilink3_sbe_v8_3.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Addendum Legs Group
cme_ebs_ilink3_sbe_v8_3.trade_addendum_legs_group.dissect = function(buffer, offset, packet, parent, trade_addendum_legs_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.trade_addendum_legs_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.trade_addendum_legs_group.fields(buffer, offset, packet, parent, trade_addendum_legs_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.trade_addendum_legs_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.trade_addendum_legs_group.fields(buffer, offset, packet, parent, trade_addendum_legs_group_index)
  end
end

-- Trade Addendum Legs Groups
cme_ebs_ilink3_sbe_v8_3.trade_addendum_legs_groups = {}

-- Calculate size of: Trade Addendum Legs Groups
cme_ebs_ilink3_sbe_v8_3.trade_addendum_legs_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local trade_addendum_legs_group_count = buffer(offset + index - 1, 1):uint()
  index = index + trade_addendum_legs_group_count * 41

  return index
end

-- Display: Trade Addendum Legs Groups
cme_ebs_ilink3_sbe_v8_3.trade_addendum_legs_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Addendum Legs Groups
cme_ebs_ilink3_sbe_v8_3.trade_addendum_legs_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Trade Addendum Legs Group
  for trade_addendum_legs_group_index = 1, num_in_group do
    index, trade_addendum_legs_group = cme_ebs_ilink3_sbe_v8_3.trade_addendum_legs_group.dissect(buffer, index, packet, parent, trade_addendum_legs_group_index)
  end

  return index
end

-- Dissect: Trade Addendum Legs Groups
cme_ebs_ilink3_sbe_v8_3.trade_addendum_legs_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.trade_addendum_legs_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.trade_addendum_legs_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.trade_addendum_legs_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.trade_addendum_legs_groups.fields(buffer, offset, packet, parent)
  end
end

-- Exec Inst
cme_ebs_ilink3_sbe_v8_3.exec_inst = {}

-- Size: Exec Inst
cme_ebs_ilink3_sbe_v8_3.exec_inst.size = 1

-- Display: Exec Inst
cme_ebs_ilink3_sbe_v8_3.exec_inst.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Aon flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Aon"
  end
  -- Is Ob flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Ob"
  end
  -- Is Nh flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Nh"
  end
  -- Is Exec Inst Reserved 1 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Exec Inst Reserved 1"
  end
  -- Is Exec Inst Reserved 2 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Exec Inst Reserved 2"
  end
  -- Is Exec Inst Reserved 3 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Exec Inst Reserved 3"
  end
  -- Is Exec Inst Reserved 4 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Exec Inst Reserved 4"
  end
  -- Is Exec Inst Reserved 5 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Exec Inst Reserved 5"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Exec Inst
cme_ebs_ilink3_sbe_v8_3.exec_inst.bits = function(range, value, packet, parent)

  -- Aon: 1 Bit
  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.aon, range, value)

  -- Ob: 1 Bit
  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.ob, range, value)

  -- Nh: 1 Bit
  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.nh, range, value)

  -- Exec Inst Reserved 1: 1 Bit
  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.exec_inst_reserved_1, range, value)

  -- Exec Inst Reserved 2: 1 Bit
  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.exec_inst_reserved_2, range, value)

  -- Exec Inst Reserved 3: 1 Bit
  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.exec_inst_reserved_3, range, value)

  -- Exec Inst Reserved 4: 1 Bit
  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.exec_inst_reserved_4, range, value)

  -- Exec Inst Reserved 5: 1 Bit
  parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.exec_inst_reserved_5, range, value)
end

-- Dissect: Exec Inst
cme_ebs_ilink3_sbe_v8_3.exec_inst.dissect = function(buffer, offset, packet, parent)
  local size = cme_ebs_ilink3_sbe_v8_3.exec_inst.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cme_ebs_ilink3_sbe_v8_3.exec_inst.display(range, value, packet, parent)
  local element = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.exec_inst, range, display)

  if show.structs then
    cme_ebs_ilink3_sbe_v8_3.exec_inst.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Execution Report Trade Addendum Spread
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_spread = {}

-- Calculate size of: Execution Report Trade Addendum Spread
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_spread.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.seq_num.size

  index = index + cme_ebs_ilink3_sbe_v8_3.uuid.size

  index = index + cme_ebs_ilink3_sbe_v8_3.exec_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sender_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.clordid.size

  index = index + cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.last_px.size

  index = index + cme_ebs_ilink3_sbe_v8_3.order_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.transact_time.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sec_exec_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.orig_secondary_execution_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.location.size

  index = index + cme_ebs_ilink3_sbe_v8_3.security_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.md_trade_entry_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.last_qty.size

  index = index + cme_ebs_ilink3_sbe_v8_3.side_trade_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.orig_side_trade_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.trade_date.size

  index = index + cme_ebs_ilink3_sbe_v8_3.ord_status_trd_cxl.size

  index = index + cme_ebs_ilink3_sbe_v8_3.exec_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.ord_type_optional.size

  index = index + cme_ebs_ilink3_sbe_v8_3.side.size

  index = index + cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size

  index = index + cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size

  index = index + cme_ebs_ilink3_sbe_v8_3.total_num_securities.size

  index = index + cme_ebs_ilink3_sbe_v8_3.exec_inst.size

  index = index + cme_ebs_ilink3_sbe_v8_3.execution_mode.size

  index = index + cme_ebs_ilink3_sbe_v8_3.liquidity_flag.size

  index = index + cme_ebs_ilink3_sbe_v8_3.managed_order.size

  index = index + cme_ebs_ilink3_sbe_v8_3.short_sale_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.fills_groups.size(buffer, offset + index)

  index = index + cme_ebs_ilink3_sbe_v8_3.trade_addendum_legs_groups.size(buffer, offset + index)

  index = index + cme_ebs_ilink3_sbe_v8_3.spread_trade_events_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Addendum Spread
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_spread.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Spread
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_spread.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Exec Id: String40
  index, exec_id = cme_ebs_ilink3_sbe_v8_3.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: String20Req
  index, clordid = cme_ebs_ilink3_sbe_v8_3.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Last Px: PRICE9
  index, last_px = cme_ebs_ilink3_sbe_v8_3.last_px.dissect(buffer, index, packet, parent)

  -- Order Id: uInt64
  index, order_id = cme_ebs_ilink3_sbe_v8_3.order_id.dissect(buffer, index, packet, parent)

  -- Transact Time: uInt64
  index, transact_time = cme_ebs_ilink3_sbe_v8_3.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Sec Exec Id: uInt64
  index, sec_exec_id = cme_ebs_ilink3_sbe_v8_3.sec_exec_id.dissect(buffer, index, packet, parent)

  -- Orig Secondary Execution Id: uInt64NULL
  index, orig_secondary_execution_id = cme_ebs_ilink3_sbe_v8_3.orig_secondary_execution_id.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_ebs_ilink3_sbe_v8_3.security_id.dissect(buffer, index, packet, parent)

  -- Md Trade Entry Id: uInt32
  index, md_trade_entry_id = cme_ebs_ilink3_sbe_v8_3.md_trade_entry_id.dissect(buffer, index, packet, parent)

  -- Last Qty: uInt32
  index, last_qty = cme_ebs_ilink3_sbe_v8_3.last_qty.dissect(buffer, index, packet, parent)

  -- Side Trade Id: uInt32
  index, side_trade_id = cme_ebs_ilink3_sbe_v8_3.side_trade_id.dissect(buffer, index, packet, parent)

  -- Orig Side Trade Id: uInt32NULL
  index, orig_side_trade_id = cme_ebs_ilink3_sbe_v8_3.orig_side_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Date: LocalMktDate
  index, trade_date = cme_ebs_ilink3_sbe_v8_3.trade_date.dissect(buffer, index, packet, parent)

  -- Ord Status Trd Cxl: OrdStatusTrdCxl
  index, ord_status_trd_cxl = cme_ebs_ilink3_sbe_v8_3.ord_status_trd_cxl.dissect(buffer, index, packet, parent)

  -- Exec Type: ExecTypTrdCxl
  index, exec_type = cme_ebs_ilink3_sbe_v8_3.exec_type.dissect(buffer, index, packet, parent)

  -- Ord Type Optional: OrderType
  index, ord_type_optional = cme_ebs_ilink3_sbe_v8_3.ord_type_optional.dissect(buffer, index, packet, parent)

  -- Side: SideReq
  index, side = cme_ebs_ilink3_sbe_v8_3.side.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: BooleanFlag
  index, poss_retrans_flag = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Total Num Securities: uInt8
  index, total_num_securities = cme_ebs_ilink3_sbe_v8_3.total_num_securities.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_ebs_ilink3_sbe_v8_3.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: ExecMode
  index, execution_mode = cme_ebs_ilink3_sbe_v8_3.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: BooleanNULL
  index, liquidity_flag = cme_ebs_ilink3_sbe_v8_3.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: BooleanNULL
  index, managed_order = cme_ebs_ilink3_sbe_v8_3.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: ShortSaleType
  index, short_sale_type = cme_ebs_ilink3_sbe_v8_3.short_sale_type.dissect(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index, fills_groups = cme_ebs_ilink3_sbe_v8_3.fills_groups.dissect(buffer, index, packet, parent)

  -- Trade Addendum Legs Groups: Struct of 2 fields
  index, trade_addendum_legs_groups = cme_ebs_ilink3_sbe_v8_3.trade_addendum_legs_groups.dissect(buffer, index, packet, parent)

  -- Spread Trade Events Groups: Struct of 2 fields
  index, spread_trade_events_groups = cme_ebs_ilink3_sbe_v8_3.spread_trade_events_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Addendum Spread
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_spread.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_trade_addendum_spread, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_spread.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_spread.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_spread.fields(buffer, offset, packet, parent)
  end
end

-- Outright Trade Events Group
cme_ebs_ilink3_sbe_v8_3.outright_trade_events_group = {}

-- Size: Outright Trade Events Group
cme_ebs_ilink3_sbe_v8_3.outright_trade_events_group.size =
  cme_ebs_ilink3_sbe_v8_3.order_event_px.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_text.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_exec_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.trade_addendum.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_reason.size + 
  cme_ebs_ilink3_sbe_v8_3.original_order_event_exec_id.size

-- Display: Outright Trade Events Group
cme_ebs_ilink3_sbe_v8_3.outright_trade_events_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Trade Events Group
cme_ebs_ilink3_sbe_v8_3.outright_trade_events_group.fields = function(buffer, offset, packet, parent, outright_trade_events_group_index)
  local index = offset

  -- Implicit Outright Trade Events Group Index
  if outright_trade_events_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.outright_trade_events_group_index, outright_trade_events_group_index)
    iteration:set_generated()
  end

  -- Order Event Px: PRICE9
  index, order_event_px = cme_ebs_ilink3_sbe_v8_3.order_event_px.dissect(buffer, index, packet, parent)

  -- Order Event Text: String5
  index, order_event_text = cme_ebs_ilink3_sbe_v8_3.order_event_text.dissect(buffer, index, packet, parent)

  -- Order Event Exec Id: uInt32
  index, order_event_exec_id = cme_ebs_ilink3_sbe_v8_3.order_event_exec_id.dissect(buffer, index, packet, parent)

  -- Order Event Qty: uInt32
  index, order_event_qty = cme_ebs_ilink3_sbe_v8_3.order_event_qty.dissect(buffer, index, packet, parent)

  -- Trade Addendum: TradeAddendum
  index, trade_addendum = cme_ebs_ilink3_sbe_v8_3.trade_addendum.dissect(buffer, index, packet, parent)

  -- Order Event Reason: uInt8
  index, order_event_reason = cme_ebs_ilink3_sbe_v8_3.order_event_reason.dissect(buffer, index, packet, parent)

  -- Original Order Event Exec Id: uInt32NULL
  index, original_order_event_exec_id = cme_ebs_ilink3_sbe_v8_3.original_order_event_exec_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Trade Events Group
cme_ebs_ilink3_sbe_v8_3.outright_trade_events_group.dissect = function(buffer, offset, packet, parent, outright_trade_events_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.outright_trade_events_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.outright_trade_events_group.fields(buffer, offset, packet, parent, outright_trade_events_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.outright_trade_events_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.outright_trade_events_group.fields(buffer, offset, packet, parent, outright_trade_events_group_index)
  end
end

-- Outright Trade Events Groups
cme_ebs_ilink3_sbe_v8_3.outright_trade_events_groups = {}

-- Calculate size of: Outright Trade Events Groups
cme_ebs_ilink3_sbe_v8_3.outright_trade_events_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local outright_trade_events_group_count = buffer(offset + index - 1, 1):uint()
  index = index + outright_trade_events_group_count * 27

  return index
end

-- Display: Outright Trade Events Groups
cme_ebs_ilink3_sbe_v8_3.outright_trade_events_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Trade Events Groups
cme_ebs_ilink3_sbe_v8_3.outright_trade_events_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Outright Trade Events Group
  for outright_trade_events_group_index = 1, num_in_group do
    index, outright_trade_events_group = cme_ebs_ilink3_sbe_v8_3.outright_trade_events_group.dissect(buffer, index, packet, parent, outright_trade_events_group_index)
  end

  return index
end

-- Dissect: Outright Trade Events Groups
cme_ebs_ilink3_sbe_v8_3.outright_trade_events_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.outright_trade_events_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.outright_trade_events_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.outright_trade_events_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.outright_trade_events_groups.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Trade Addendum Outright
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_outright = {}

-- Calculate size of: Execution Report Trade Addendum Outright
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_outright.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.seq_num.size

  index = index + cme_ebs_ilink3_sbe_v8_3.uuid.size

  index = index + cme_ebs_ilink3_sbe_v8_3.exec_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sender_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.clordid.size

  index = index + cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.last_px.size

  index = index + cme_ebs_ilink3_sbe_v8_3.order_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.transact_time.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sec_exec_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.orig_secondary_execution_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.location.size

  index = index + cme_ebs_ilink3_sbe_v8_3.security_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.last_qty.size

  index = index + cme_ebs_ilink3_sbe_v8_3.side_trade_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.orig_side_trade_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.trade_date.size

  index = index + cme_ebs_ilink3_sbe_v8_3.ord_status_trd_cxl.size

  index = index + cme_ebs_ilink3_sbe_v8_3.exec_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.side.size

  index = index + cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size

  index = index + cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size

  index = index + cme_ebs_ilink3_sbe_v8_3.exec_inst.size

  index = index + cme_ebs_ilink3_sbe_v8_3.execution_mode.size

  index = index + cme_ebs_ilink3_sbe_v8_3.liquidity_flag.size

  index = index + cme_ebs_ilink3_sbe_v8_3.managed_order.size

  index = index + cme_ebs_ilink3_sbe_v8_3.short_sale_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.fills_groups.size(buffer, offset + index)

  index = index + cme_ebs_ilink3_sbe_v8_3.outright_trade_events_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Addendum Outright
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_outright.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Outright
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_outright.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Exec Id: String40
  index, exec_id = cme_ebs_ilink3_sbe_v8_3.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: String20Req
  index, clordid = cme_ebs_ilink3_sbe_v8_3.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Last Px: PRICE9
  index, last_px = cme_ebs_ilink3_sbe_v8_3.last_px.dissect(buffer, index, packet, parent)

  -- Order Id: uInt64
  index, order_id = cme_ebs_ilink3_sbe_v8_3.order_id.dissect(buffer, index, packet, parent)

  -- Transact Time: uInt64
  index, transact_time = cme_ebs_ilink3_sbe_v8_3.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Sec Exec Id: uInt64
  index, sec_exec_id = cme_ebs_ilink3_sbe_v8_3.sec_exec_id.dissect(buffer, index, packet, parent)

  -- Orig Secondary Execution Id: uInt64NULL
  index, orig_secondary_execution_id = cme_ebs_ilink3_sbe_v8_3.orig_secondary_execution_id.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_ebs_ilink3_sbe_v8_3.security_id.dissect(buffer, index, packet, parent)

  -- Last Qty: uInt32
  index, last_qty = cme_ebs_ilink3_sbe_v8_3.last_qty.dissect(buffer, index, packet, parent)

  -- Side Trade Id: uInt32
  index, side_trade_id = cme_ebs_ilink3_sbe_v8_3.side_trade_id.dissect(buffer, index, packet, parent)

  -- Orig Side Trade Id: uInt32NULL
  index, orig_side_trade_id = cme_ebs_ilink3_sbe_v8_3.orig_side_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Date: LocalMktDate
  index, trade_date = cme_ebs_ilink3_sbe_v8_3.trade_date.dissect(buffer, index, packet, parent)

  -- Ord Status Trd Cxl: OrdStatusTrdCxl
  index, ord_status_trd_cxl = cme_ebs_ilink3_sbe_v8_3.ord_status_trd_cxl.dissect(buffer, index, packet, parent)

  -- Exec Type: ExecTypTrdCxl
  index, exec_type = cme_ebs_ilink3_sbe_v8_3.exec_type.dissect(buffer, index, packet, parent)

  -- Side: SideReq
  index, side = cme_ebs_ilink3_sbe_v8_3.side.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: BooleanFlag
  index, poss_retrans_flag = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_ebs_ilink3_sbe_v8_3.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: ExecMode
  index, execution_mode = cme_ebs_ilink3_sbe_v8_3.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: BooleanNULL
  index, liquidity_flag = cme_ebs_ilink3_sbe_v8_3.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: BooleanNULL
  index, managed_order = cme_ebs_ilink3_sbe_v8_3.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: ShortSaleType
  index, short_sale_type = cme_ebs_ilink3_sbe_v8_3.short_sale_type.dissect(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index, fills_groups = cme_ebs_ilink3_sbe_v8_3.fills_groups.dissect(buffer, index, packet, parent)

  -- Outright Trade Events Groups: Struct of 2 fields
  index, outright_trade_events_groups = cme_ebs_ilink3_sbe_v8_3.outright_trade_events_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Addendum Outright
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_outright.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_trade_addendum_outright, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_outright.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_outright.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_outright.fields(buffer, offset, packet, parent)
  end
end

-- Quote Cancel Ack Sets Group
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_sets_group = {}

-- Size: Quote Cancel Ack Sets Group
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_sets_group.size =
  cme_ebs_ilink3_sbe_v8_3.quote_set_id.size + 
  cme_ebs_ilink3_sbe_v8_3.quote_error_code.size

-- Display: Quote Cancel Ack Sets Group
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_sets_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Ack Sets Group
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_sets_group.fields = function(buffer, offset, packet, parent, quote_cancel_ack_sets_group_index)
  local index = offset

  -- Implicit Quote Cancel Ack Sets Group Index
  if quote_cancel_ack_sets_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_ack_sets_group_index, quote_cancel_ack_sets_group_index)
    iteration:set_generated()
  end

  -- Quote Set Id: uInt16
  index, quote_set_id = cme_ebs_ilink3_sbe_v8_3.quote_set_id.dissect(buffer, index, packet, parent)

  -- Quote Error Code: uInt16
  index, quote_error_code = cme_ebs_ilink3_sbe_v8_3.quote_error_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Ack Sets Group
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_sets_group.dissect = function(buffer, offset, packet, parent, quote_cancel_ack_sets_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_ack_sets_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_sets_group.fields(buffer, offset, packet, parent, quote_cancel_ack_sets_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_sets_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_sets_group.fields(buffer, offset, packet, parent, quote_cancel_ack_sets_group_index)
  end
end

-- Quote Cancel Ack Sets Groups
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_sets_groups = {}

-- Calculate size of: Quote Cancel Ack Sets Groups
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_sets_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local quote_cancel_ack_sets_group_count = buffer(offset + index - 1, 1):uint()
  index = index + quote_cancel_ack_sets_group_count * 4

  return index
end

-- Display: Quote Cancel Ack Sets Groups
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_sets_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Ack Sets Groups
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_sets_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Quote Cancel Ack Sets Group
  for quote_cancel_ack_sets_group_index = 1, num_in_group do
    index, quote_cancel_ack_sets_group = cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_sets_group.dissect(buffer, index, packet, parent, quote_cancel_ack_sets_group_index)
  end

  return index
end

-- Dissect: Quote Cancel Ack Sets Groups
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_sets_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_ack_sets_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_sets_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_sets_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_sets_groups.fields(buffer, offset, packet, parent)
  end
end

-- Quote Cancel Ack Entries Group
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_entries_group = {}

-- Size: Quote Cancel Ack Entries Group
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_entries_group.size =
  cme_ebs_ilink3_sbe_v8_3.quote_entry_id.size + 
  cme_ebs_ilink3_sbe_v8_3.security_id.size + 
  cme_ebs_ilink3_sbe_v8_3.quote_entry_reject_reason.size

-- Display: Quote Cancel Ack Entries Group
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_entries_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Ack Entries Group
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_entries_group.fields = function(buffer, offset, packet, parent, quote_cancel_ack_entries_group_index)
  local index = offset

  -- Implicit Quote Cancel Ack Entries Group Index
  if quote_cancel_ack_entries_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_ack_entries_group_index, quote_cancel_ack_entries_group_index)
    iteration:set_generated()
  end

  -- Quote Entry Id: uInt32
  index, quote_entry_id = cme_ebs_ilink3_sbe_v8_3.quote_entry_id.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_ebs_ilink3_sbe_v8_3.security_id.dissect(buffer, index, packet, parent)

  -- Quote Entry Reject Reason: uInt8
  index, quote_entry_reject_reason = cme_ebs_ilink3_sbe_v8_3.quote_entry_reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Ack Entries Group
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_entries_group.dissect = function(buffer, offset, packet, parent, quote_cancel_ack_entries_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_ack_entries_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_entries_group.fields(buffer, offset, packet, parent, quote_cancel_ack_entries_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_entries_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_entries_group.fields(buffer, offset, packet, parent, quote_cancel_ack_entries_group_index)
  end
end

-- Quote Cancel Ack Entries Groups
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_entries_groups = {}

-- Calculate size of: Quote Cancel Ack Entries Groups
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_entries_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local quote_cancel_ack_entries_group_count = buffer(offset + index - 1, 1):uint()
  index = index + quote_cancel_ack_entries_group_count * 9

  return index
end

-- Display: Quote Cancel Ack Entries Groups
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_entries_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Ack Entries Groups
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_entries_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Quote Cancel Ack Entries Group
  for quote_cancel_ack_entries_group_index = 1, num_in_group do
    index, quote_cancel_ack_entries_group = cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_entries_group.dissect(buffer, index, packet, parent, quote_cancel_ack_entries_group_index)
  end

  return index
end

-- Dissect: Quote Cancel Ack Entries Groups
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_entries_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_ack_entries_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_entries_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_entries_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_entries_groups.fields(buffer, offset, packet, parent)
  end
end

-- Quote Cancel Ack
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack = {}

-- Calculate size of: Quote Cancel Ack
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.seq_num.size

  index = index + cme_ebs_ilink3_sbe_v8_3.uuid.size

  index = index + cme_ebs_ilink3_sbe_v8_3.text.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sender_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.request_time.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size

  index = index + cme_ebs_ilink3_sbe_v8_3.cancelled_symbol.size

  index = index + cme_ebs_ilink3_sbe_v8_3.location.size

  index = index + cme_ebs_ilink3_sbe_v8_3.quote_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.quote_reject_reason.size

  index = index + cme_ebs_ilink3_sbe_v8_3.delay_duration.size

  index = index + cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size

  index = index + cme_ebs_ilink3_sbe_v8_3.quote_cxl_status.size

  index = index + cme_ebs_ilink3_sbe_v8_3.no_processed_entries.size

  index = index + cme_ebs_ilink3_sbe_v8_3.mm_protection_reset.size

  index = index + cme_ebs_ilink3_sbe_v8_3.unsolicited_cancel_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.split_msg.size

  index = index + cme_ebs_ilink3_sbe_v8_3.tot_no_quote_entries_optional.size

  index = index + cme_ebs_ilink3_sbe_v8_3.liquidity_flag.size

  index = index + cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size

  index = index + cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_entries_groups.size(buffer, offset + index)

  index = index + cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_sets_groups.size(buffer, offset + index)

  return index
end

-- Display: Quote Cancel Ack
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Ack
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Text: String256
  index, text = cme_ebs_ilink3_sbe_v8_3.text.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Request Time: uInt64
  index, request_time = cme_ebs_ilink3_sbe_v8_3.request_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Cancelled Symbol: StringLength6
  index, cancelled_symbol = cme_ebs_ilink3_sbe_v8_3.cancelled_symbol.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Quote Id: uInt32
  index, quote_id = cme_ebs_ilink3_sbe_v8_3.quote_id.dissect(buffer, index, packet, parent)

  -- Quote Reject Reason: uInt16NULL
  index, quote_reject_reason = cme_ebs_ilink3_sbe_v8_3.quote_reject_reason.dissect(buffer, index, packet, parent)

  -- Delay Duration: uInt16NULL
  index, delay_duration = cme_ebs_ilink3_sbe_v8_3.delay_duration.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Quote Cxl Status: QuoteCxlStatus
  index, quote_cxl_status = cme_ebs_ilink3_sbe_v8_3.quote_cxl_status.dissect(buffer, index, packet, parent)

  -- No Processed Entries: uInt8
  index, no_processed_entries = cme_ebs_ilink3_sbe_v8_3.no_processed_entries.dissect(buffer, index, packet, parent)

  -- Mm Protection Reset: BooleanFlag
  index, mm_protection_reset = cme_ebs_ilink3_sbe_v8_3.mm_protection_reset.dissect(buffer, index, packet, parent)

  -- Unsolicited Cancel Type: charNULL
  index, unsolicited_cancel_type = cme_ebs_ilink3_sbe_v8_3.unsolicited_cancel_type.dissect(buffer, index, packet, parent)

  -- Split Msg: SplitMsg
  index, split_msg = cme_ebs_ilink3_sbe_v8_3.split_msg.dissect(buffer, index, packet, parent)

  -- Tot No Quote Entries Optional: uInt8NULL
  index, tot_no_quote_entries_optional = cme_ebs_ilink3_sbe_v8_3.tot_no_quote_entries_optional.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: BooleanNULL
  index, liquidity_flag = cme_ebs_ilink3_sbe_v8_3.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: BooleanFlag
  index, poss_retrans_flag = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Quote Cancel Ack Entries Groups: Struct of 2 fields
  index, quote_cancel_ack_entries_groups = cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_entries_groups.dissect(buffer, index, packet, parent)

  -- Quote Cancel Ack Sets Groups: Struct of 2 fields
  index, quote_cancel_ack_sets_groups = cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack_sets_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Ack
cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_ack, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack.fields(buffer, offset, packet, parent)
  end
end

-- Request For Quote Ack
cme_ebs_ilink3_sbe_v8_3.request_for_quote_ack = {}

-- Size: Request For Quote Ack
cme_ebs_ilink3_sbe_v8_3.request_for_quote_ack.size =
  cme_ebs_ilink3_sbe_v8_3.seq_num.size + 
  cme_ebs_ilink3_sbe_v8_3.uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.text.size + 
  cme_ebs_ilink3_sbe_v8_3.sender_id.size + 
  cme_ebs_ilink3_sbe_v8_3.exchange_quote_req_id.size + 
  cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size + 
  cme_ebs_ilink3_sbe_v8_3.request_time.size + 
  cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size + 
  cme_ebs_ilink3_sbe_v8_3.quote_req_id.size + 
  cme_ebs_ilink3_sbe_v8_3.location.size + 
  cme_ebs_ilink3_sbe_v8_3.quote_reject_reason.size + 
  cme_ebs_ilink3_sbe_v8_3.delay_duration.size + 
  cme_ebs_ilink3_sbe_v8_3.quote_ack_status.size + 
  cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size + 
  cme_ebs_ilink3_sbe_v8_3.split_msg.size + 
  cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size

-- Display: Request For Quote Ack
cme_ebs_ilink3_sbe_v8_3.request_for_quote_ack.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request For Quote Ack
cme_ebs_ilink3_sbe_v8_3.request_for_quote_ack.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Text: String256
  index, text = cme_ebs_ilink3_sbe_v8_3.text.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- Exchange Quote Req Id: String17
  index, exchange_quote_req_id = cme_ebs_ilink3_sbe_v8_3.exchange_quote_req_id.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Request Time: uInt64
  index, request_time = cme_ebs_ilink3_sbe_v8_3.request_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Quote Req Id: uInt64
  index, quote_req_id = cme_ebs_ilink3_sbe_v8_3.quote_req_id.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Quote Reject Reason: uInt16NULL
  index, quote_reject_reason = cme_ebs_ilink3_sbe_v8_3.quote_reject_reason.dissect(buffer, index, packet, parent)

  -- Delay Duration: uInt16NULL
  index, delay_duration = cme_ebs_ilink3_sbe_v8_3.delay_duration.dissect(buffer, index, packet, parent)

  -- Quote Ack Status: QuoteAckStatus
  index, quote_ack_status = cme_ebs_ilink3_sbe_v8_3.quote_ack_status.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Split Msg: SplitMsg
  index, split_msg = cme_ebs_ilink3_sbe_v8_3.split_msg.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: BooleanFlag
  index, poss_retrans_flag = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Quote Ack
cme_ebs_ilink3_sbe_v8_3.request_for_quote_ack.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.request_for_quote_ack, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.request_for_quote_ack.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.request_for_quote_ack.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.request_for_quote_ack.fields(buffer, offset, packet, parent)
  end
end

-- Trd Reg Publications Group
cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_group = {}

-- Size: Trd Reg Publications Group
cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_group.size =
  cme_ebs_ilink3_sbe_v8_3.trd_reg_publication_type.size + 
  cme_ebs_ilink3_sbe_v8_3.trd_reg_publication_reason.size

-- Display: Trd Reg Publications Group
cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trd Reg Publications Group
cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_group.fields = function(buffer, offset, packet, parent, trd_reg_publications_group_index)
  local index = offset

  -- Implicit Trd Reg Publications Group Index
  if trd_reg_publications_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.trd_reg_publications_group_index, trd_reg_publications_group_index)
    iteration:set_generated()
  end

  -- Trd Reg Publication Type: uInt8
  index, trd_reg_publication_type = cme_ebs_ilink3_sbe_v8_3.trd_reg_publication_type.dissect(buffer, index, packet, parent)

  -- Trd Reg Publication Reason: uInt8
  index, trd_reg_publication_reason = cme_ebs_ilink3_sbe_v8_3.trd_reg_publication_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trd Reg Publications Group
cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_group.dissect = function(buffer, offset, packet, parent, trd_reg_publications_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.trd_reg_publications_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_group.fields(buffer, offset, packet, parent, trd_reg_publications_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_group.fields(buffer, offset, packet, parent, trd_reg_publications_group_index)
  end
end

-- Trd Reg Publications Groups
cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_groups = {}

-- Calculate size of: Trd Reg Publications Groups
cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local trd_reg_publications_group_count = buffer(offset + index - 1, 1):uint()
  index = index + trd_reg_publications_group_count * 2

  return index
end

-- Display: Trd Reg Publications Groups
cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trd Reg Publications Groups
cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Trd Reg Publications Group
  for trd_reg_publications_group_index = 1, num_in_group do
    index, trd_reg_publications_group = cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_group.dissect(buffer, index, packet, parent, trd_reg_publications_group_index)
  end

  return index
end

-- Dissect: Trd Reg Publications Groups
cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.trd_reg_publications_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_groups.fields(buffer, offset, packet, parent)
  end
end

-- Party Details Group
cme_ebs_ilink3_sbe_v8_3.party_details_group = {}

-- Size: Party Details Group
cme_ebs_ilink3_sbe_v8_3.party_details_group.size =
  cme_ebs_ilink3_sbe_v8_3.party_detail_id.size + 
  cme_ebs_ilink3_sbe_v8_3.party_detail_role.size

-- Display: Party Details Group
cme_ebs_ilink3_sbe_v8_3.party_details_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Party Details Group
cme_ebs_ilink3_sbe_v8_3.party_details_group.fields = function(buffer, offset, packet, parent, party_details_group_index)
  local index = offset

  -- Implicit Party Details Group Index
  if party_details_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.party_details_group_index, party_details_group_index)
    iteration:set_generated()
  end

  -- Party Detail Id: String20Req
  index, party_detail_id = cme_ebs_ilink3_sbe_v8_3.party_detail_id.dissect(buffer, index, packet, parent)

  -- Party Detail Role: PartyDetailRole
  index, party_detail_role = cme_ebs_ilink3_sbe_v8_3.party_detail_role.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details Group
cme_ebs_ilink3_sbe_v8_3.party_details_group.dissect = function(buffer, offset, packet, parent, party_details_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.party_details_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.party_details_group.fields(buffer, offset, packet, parent, party_details_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.party_details_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.party_details_group.fields(buffer, offset, packet, parent, party_details_group_index)
  end
end

-- Party Details Groups
cme_ebs_ilink3_sbe_v8_3.party_details_groups = {}

-- Calculate size of: Party Details Groups
cme_ebs_ilink3_sbe_v8_3.party_details_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local party_details_group_count = buffer(offset + index - 1, 1):uint()
  index = index + party_details_group_count * 22

  return index
end

-- Display: Party Details Groups
cme_ebs_ilink3_sbe_v8_3.party_details_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Party Details Groups
cme_ebs_ilink3_sbe_v8_3.party_details_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Party Details Group
  for party_details_group_index = 1, num_in_group do
    index, party_details_group = cme_ebs_ilink3_sbe_v8_3.party_details_group.dissect(buffer, index, packet, parent, party_details_group_index)
  end

  return index
end

-- Dissect: Party Details Groups
cme_ebs_ilink3_sbe_v8_3.party_details_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.party_details_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.party_details_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.party_details_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.party_details_groups.fields(buffer, offset, packet, parent)
  end
end

-- Party Details List Report
cme_ebs_ilink3_sbe_v8_3.party_details_list_report = {}

-- Calculate size of: Party Details List Report
cme_ebs_ilink3_sbe_v8_3.party_details_list_report.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.seq_num.size

  index = index + cme_ebs_ilink3_sbe_v8_3.uuid.size

  index = index + cme_ebs_ilink3_sbe_v8_3.avg_px_group_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.party_details_list_report_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size

  index = index + cme_ebs_ilink3_sbe_v8_3.self_match_prevention_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.tot_num_parties.size

  index = index + cme_ebs_ilink3_sbe_v8_3.request_result.size

  index = index + cme_ebs_ilink3_sbe_v8_3.last_fragment.size

  index = index + cme_ebs_ilink3_sbe_v8_3.cust_order_capacity.size

  index = index + cme_ebs_ilink3_sbe_v8_3.clearing_account_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.self_match_prevention_instruction.size

  index = index + cme_ebs_ilink3_sbe_v8_3.avg_px_indicator.size

  index = index + cme_ebs_ilink3_sbe_v8_3.clearing_trade_price_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.cmta_giveup_cd.size

  index = index + cme_ebs_ilink3_sbe_v8_3.cust_order_handling_inst.size

  index = index + cme_ebs_ilink3_sbe_v8_3.executor.size

  index = index + cme_ebs_ilink3_sbe_v8_3.idm_short_code.size

  index = index + cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size

  index = index + cme_ebs_ilink3_sbe_v8_3.split_msg.size

  index = index + cme_ebs_ilink3_sbe_v8_3.party_details_groups.size(buffer, offset + index)

  index = index + cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_groups.size(buffer, offset + index)

  return index
end

-- Display: Party Details List Report
cme_ebs_ilink3_sbe_v8_3.party_details_list_report.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Party Details List Report
cme_ebs_ilink3_sbe_v8_3.party_details_list_report.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Avg Px Group Id: String20
  index, avg_px_group_id = cme_ebs_ilink3_sbe_v8_3.avg_px_group_id.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Party Details List Report Id: uInt64
  index, party_details_list_report_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_report_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id: uInt64NULL
  index, self_match_prevention_id = cme_ebs_ilink3_sbe_v8_3.self_match_prevention_id.dissect(buffer, index, packet, parent)

  -- Tot Num Parties: uInt16
  index, tot_num_parties = cme_ebs_ilink3_sbe_v8_3.tot_num_parties.dissect(buffer, index, packet, parent)

  -- Request Result: ReqResult
  index, request_result = cme_ebs_ilink3_sbe_v8_3.request_result.dissect(buffer, index, packet, parent)

  -- Last Fragment: BooleanFlag
  index, last_fragment = cme_ebs_ilink3_sbe_v8_3.last_fragment.dissect(buffer, index, packet, parent)

  -- Cust Order Capacity: CustOrderCapacity
  index, cust_order_capacity = cme_ebs_ilink3_sbe_v8_3.cust_order_capacity.dissect(buffer, index, packet, parent)

  -- Clearing Account Type: ClearingAcctType
  index, clearing_account_type = cme_ebs_ilink3_sbe_v8_3.clearing_account_type.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Instruction: SMPI
  index, self_match_prevention_instruction = cme_ebs_ilink3_sbe_v8_3.self_match_prevention_instruction.dissect(buffer, index, packet, parent)

  -- Avg Px Indicator: AvgPxInd
  index, avg_px_indicator = cme_ebs_ilink3_sbe_v8_3.avg_px_indicator.dissect(buffer, index, packet, parent)

  -- Clearing Trade Price Type: SLEDS
  index, clearing_trade_price_type = cme_ebs_ilink3_sbe_v8_3.clearing_trade_price_type.dissect(buffer, index, packet, parent)

  -- Cmta Giveup Cd: CmtaGiveUpCD
  index, cmta_giveup_cd = cme_ebs_ilink3_sbe_v8_3.cmta_giveup_cd.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: CustOrdHandlInst
  index, cust_order_handling_inst = cme_ebs_ilink3_sbe_v8_3.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Executor: uInt64NULL
  index, executor = cme_ebs_ilink3_sbe_v8_3.executor.dissect(buffer, index, packet, parent)

  -- Idm Short Code: uInt64NULL
  index, idm_short_code = cme_ebs_ilink3_sbe_v8_3.idm_short_code.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: BooleanFlag
  index, poss_retrans_flag = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Split Msg: SplitMsg
  index, split_msg = cme_ebs_ilink3_sbe_v8_3.split_msg.dissect(buffer, index, packet, parent)

  -- Party Details Groups: Struct of 2 fields
  index, party_details_groups = cme_ebs_ilink3_sbe_v8_3.party_details_groups.dissect(buffer, index, packet, parent)

  -- Trd Reg Publications Groups: Struct of 2 fields
  index, trd_reg_publications_groups = cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details List Report
cme_ebs_ilink3_sbe_v8_3.party_details_list_report.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.party_details_list_report, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.party_details_list_report.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.party_details_list_report.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.party_details_list_report.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Replace Reject
cme_ebs_ilink3_sbe_v8_3.order_cancel_replace_reject = {}

-- Size: Order Cancel Replace Reject
cme_ebs_ilink3_sbe_v8_3.order_cancel_replace_reject.size =
  cme_ebs_ilink3_sbe_v8_3.seq_num.size + 
  cme_ebs_ilink3_sbe_v8_3.uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.text.size + 
  cme_ebs_ilink3_sbe_v8_3.exec_id.size + 
  cme_ebs_ilink3_sbe_v8_3.sender_id.size + 
  cme_ebs_ilink3_sbe_v8_3.clordid.size + 
  cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_id.size + 
  cme_ebs_ilink3_sbe_v8_3.transact_time.size + 
  cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size + 
  cme_ebs_ilink3_sbe_v8_3.order_request_id.size + 
  cme_ebs_ilink3_sbe_v8_3.location.size + 
  cme_ebs_ilink3_sbe_v8_3.cxl_rej_reason.size + 
  cme_ebs_ilink3_sbe_v8_3.delay_duration.size + 
  cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size + 
  cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size + 
  cme_ebs_ilink3_sbe_v8_3.split_msg.size + 
  cme_ebs_ilink3_sbe_v8_3.liquidity_flag.size

-- Display: Order Cancel Replace Reject
cme_ebs_ilink3_sbe_v8_3.order_cancel_replace_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Replace Reject
cme_ebs_ilink3_sbe_v8_3.order_cancel_replace_reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Text: String256
  index, text = cme_ebs_ilink3_sbe_v8_3.text.dissect(buffer, index, packet, parent)

  -- Exec Id: String40
  index, exec_id = cme_ebs_ilink3_sbe_v8_3.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: String20Req
  index, clordid = cme_ebs_ilink3_sbe_v8_3.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Id: uInt64
  index, order_id = cme_ebs_ilink3_sbe_v8_3.order_id.dissect(buffer, index, packet, parent)

  -- Transact Time: uInt64
  index, transact_time = cme_ebs_ilink3_sbe_v8_3.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: uInt64
  index, order_request_id = cme_ebs_ilink3_sbe_v8_3.order_request_id.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Cxl Rej Reason: uInt16
  index, cxl_rej_reason = cme_ebs_ilink3_sbe_v8_3.cxl_rej_reason.dissect(buffer, index, packet, parent)

  -- Delay Duration: uInt16NULL
  index, delay_duration = cme_ebs_ilink3_sbe_v8_3.delay_duration.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: BooleanFlag
  index, poss_retrans_flag = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Split Msg: SplitMsg
  index, split_msg = cme_ebs_ilink3_sbe_v8_3.split_msg.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: BooleanNULL
  index, liquidity_flag = cme_ebs_ilink3_sbe_v8_3.liquidity_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Reject
cme_ebs_ilink3_sbe_v8_3.order_cancel_replace_reject.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.order_cancel_replace_reject, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.order_cancel_replace_reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.order_cancel_replace_reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.order_cancel_replace_reject.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Reject
cme_ebs_ilink3_sbe_v8_3.order_cancel_reject = {}

-- Size: Order Cancel Reject
cme_ebs_ilink3_sbe_v8_3.order_cancel_reject.size =
  cme_ebs_ilink3_sbe_v8_3.seq_num.size + 
  cme_ebs_ilink3_sbe_v8_3.uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.text.size + 
  cme_ebs_ilink3_sbe_v8_3.exec_id.size + 
  cme_ebs_ilink3_sbe_v8_3.sender_id.size + 
  cme_ebs_ilink3_sbe_v8_3.clordid.size + 
  cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_id.size + 
  cme_ebs_ilink3_sbe_v8_3.transact_time.size + 
  cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size + 
  cme_ebs_ilink3_sbe_v8_3.order_request_id.size + 
  cme_ebs_ilink3_sbe_v8_3.location.size + 
  cme_ebs_ilink3_sbe_v8_3.cxl_rej_reason.size + 
  cme_ebs_ilink3_sbe_v8_3.delay_duration.size + 
  cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size + 
  cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size + 
  cme_ebs_ilink3_sbe_v8_3.split_msg.size + 
  cme_ebs_ilink3_sbe_v8_3.liquidity_flag.size

-- Display: Order Cancel Reject
cme_ebs_ilink3_sbe_v8_3.order_cancel_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Reject
cme_ebs_ilink3_sbe_v8_3.order_cancel_reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Text: String256
  index, text = cme_ebs_ilink3_sbe_v8_3.text.dissect(buffer, index, packet, parent)

  -- Exec Id: String40
  index, exec_id = cme_ebs_ilink3_sbe_v8_3.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: String20Req
  index, clordid = cme_ebs_ilink3_sbe_v8_3.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Id: uInt64
  index, order_id = cme_ebs_ilink3_sbe_v8_3.order_id.dissect(buffer, index, packet, parent)

  -- Transact Time: uInt64
  index, transact_time = cme_ebs_ilink3_sbe_v8_3.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: uInt64
  index, order_request_id = cme_ebs_ilink3_sbe_v8_3.order_request_id.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Cxl Rej Reason: uInt16
  index, cxl_rej_reason = cme_ebs_ilink3_sbe_v8_3.cxl_rej_reason.dissect(buffer, index, packet, parent)

  -- Delay Duration: uInt16NULL
  index, delay_duration = cme_ebs_ilink3_sbe_v8_3.delay_duration.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: BooleanFlag
  index, poss_retrans_flag = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Split Msg: SplitMsg
  index, split_msg = cme_ebs_ilink3_sbe_v8_3.split_msg.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: BooleanNULL
  index, liquidity_flag = cme_ebs_ilink3_sbe_v8_3.liquidity_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject
cme_ebs_ilink3_sbe_v8_3.order_cancel_reject.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.order_cancel_reject, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.order_cancel_reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.order_cancel_reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.order_cancel_reject.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Cancel
cme_ebs_ilink3_sbe_v8_3.execution_report_cancel = {}

-- Size: Execution Report Cancel
cme_ebs_ilink3_sbe_v8_3.execution_report_cancel.size =
  cme_ebs_ilink3_sbe_v8_3.seq_num.size + 
  cme_ebs_ilink3_sbe_v8_3.uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.exec_id.size + 
  cme_ebs_ilink3_sbe_v8_3.sender_id.size + 
  cme_ebs_ilink3_sbe_v8_3.clordid.size + 
  cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_id.size + 
  cme_ebs_ilink3_sbe_v8_3.price.size + 
  cme_ebs_ilink3_sbe_v8_3.stop_px.size + 
  cme_ebs_ilink3_sbe_v8_3.transact_time.size + 
  cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size + 
  cme_ebs_ilink3_sbe_v8_3.order_request_id.size + 
  cme_ebs_ilink3_sbe_v8_3.cross_id_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.host_cross_id.size + 
  cme_ebs_ilink3_sbe_v8_3.location.size + 
  cme_ebs_ilink3_sbe_v8_3.security_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.cum_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.min_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.display_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.expire_date.size + 
  cme_ebs_ilink3_sbe_v8_3.delay_duration.size + 
  cme_ebs_ilink3_sbe_v8_3.ord_type_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.side.size + 
  cme_ebs_ilink3_sbe_v8_3.time_in_force.size + 
  cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size + 
  cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size + 
  cme_ebs_ilink3_sbe_v8_3.split_msg.size + 
  cme_ebs_ilink3_sbe_v8_3.exec_restatement_reason.size + 
  cme_ebs_ilink3_sbe_v8_3.cross_type.size + 
  cme_ebs_ilink3_sbe_v8_3.exec_inst.size + 
  cme_ebs_ilink3_sbe_v8_3.execution_mode.size + 
  cme_ebs_ilink3_sbe_v8_3.liquidity_flag.size + 
  cme_ebs_ilink3_sbe_v8_3.managed_order.size + 
  cme_ebs_ilink3_sbe_v8_3.short_sale_type.size

-- Display: Execution Report Cancel
cme_ebs_ilink3_sbe_v8_3.execution_report_cancel.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Cancel
cme_ebs_ilink3_sbe_v8_3.execution_report_cancel.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Exec Id: String40
  index, exec_id = cme_ebs_ilink3_sbe_v8_3.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: String20Req
  index, clordid = cme_ebs_ilink3_sbe_v8_3.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Id: uInt64
  index, order_id = cme_ebs_ilink3_sbe_v8_3.order_id.dissect(buffer, index, packet, parent)

  -- Price: PRICE9
  index, price = cme_ebs_ilink3_sbe_v8_3.price.dissect(buffer, index, packet, parent)

  -- Stop Px: PRICENULL9
  index, stop_px = cme_ebs_ilink3_sbe_v8_3.stop_px.dissect(buffer, index, packet, parent)

  -- Transact Time: uInt64
  index, transact_time = cme_ebs_ilink3_sbe_v8_3.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: uInt64
  index, order_request_id = cme_ebs_ilink3_sbe_v8_3.order_request_id.dissect(buffer, index, packet, parent)

  -- Cross Id Optional: uInt64NULL
  index, cross_id_optional = cme_ebs_ilink3_sbe_v8_3.cross_id_optional.dissect(buffer, index, packet, parent)

  -- Host Cross Id: uInt64NULL
  index, host_cross_id = cme_ebs_ilink3_sbe_v8_3.host_cross_id.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_ebs_ilink3_sbe_v8_3.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: uInt32
  index, order_qty = cme_ebs_ilink3_sbe_v8_3.order_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uInt32
  index, cum_qty = cme_ebs_ilink3_sbe_v8_3.cum_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: uInt32NULL
  index, min_qty = cme_ebs_ilink3_sbe_v8_3.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: uInt32NULL
  index, display_qty = cme_ebs_ilink3_sbe_v8_3.display_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: LocalMktDate
  index, expire_date = cme_ebs_ilink3_sbe_v8_3.expire_date.dissect(buffer, index, packet, parent)

  -- Delay Duration: uInt16NULL
  index, delay_duration = cme_ebs_ilink3_sbe_v8_3.delay_duration.dissect(buffer, index, packet, parent)

  -- Ord Type Optional: OrderType
  index, ord_type_optional = cme_ebs_ilink3_sbe_v8_3.ord_type_optional.dissect(buffer, index, packet, parent)

  -- Side: SideReq
  index, side = cme_ebs_ilink3_sbe_v8_3.side.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = cme_ebs_ilink3_sbe_v8_3.time_in_force.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: BooleanFlag
  index, poss_retrans_flag = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Split Msg: SplitMsg
  index, split_msg = cme_ebs_ilink3_sbe_v8_3.split_msg.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: ExecReason
  index, exec_restatement_reason = cme_ebs_ilink3_sbe_v8_3.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Cross Type: uInt8NULL
  index, cross_type = cme_ebs_ilink3_sbe_v8_3.cross_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_ebs_ilink3_sbe_v8_3.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: ExecMode
  index, execution_mode = cme_ebs_ilink3_sbe_v8_3.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: BooleanNULL
  index, liquidity_flag = cme_ebs_ilink3_sbe_v8_3.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: BooleanNULL
  index, managed_order = cme_ebs_ilink3_sbe_v8_3.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: ShortSaleType
  index, short_sale_type = cme_ebs_ilink3_sbe_v8_3.short_sale_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Cancel
cme_ebs_ilink3_sbe_v8_3.execution_report_cancel.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_cancel, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.execution_report_cancel.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.execution_report_cancel.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.execution_report_cancel.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Status
cme_ebs_ilink3_sbe_v8_3.execution_report_status = {}

-- Size: Execution Report Status
cme_ebs_ilink3_sbe_v8_3.execution_report_status.size =
  cme_ebs_ilink3_sbe_v8_3.seq_num.size + 
  cme_ebs_ilink3_sbe_v8_3.uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.text.size + 
  cme_ebs_ilink3_sbe_v8_3.exec_id.size + 
  cme_ebs_ilink3_sbe_v8_3.sender_id.size + 
  cme_ebs_ilink3_sbe_v8_3.clordid.size + 
  cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_id.size + 
  cme_ebs_ilink3_sbe_v8_3.price_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.stop_px.size + 
  cme_ebs_ilink3_sbe_v8_3.transact_time.size + 
  cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size + 
  cme_ebs_ilink3_sbe_v8_3.order_request_id.size + 
  cme_ebs_ilink3_sbe_v8_3.ord_status_req_id_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.mass_status_req_id_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.cross_id_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.host_cross_id.size + 
  cme_ebs_ilink3_sbe_v8_3.location.size + 
  cme_ebs_ilink3_sbe_v8_3.security_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.cum_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.leaves_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.min_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.display_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.expire_date.size + 
  cme_ebs_ilink3_sbe_v8_3.ord_status.size + 
  cme_ebs_ilink3_sbe_v8_3.ord_type_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.side.size + 
  cme_ebs_ilink3_sbe_v8_3.time_in_force.size + 
  cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size + 
  cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size + 
  cme_ebs_ilink3_sbe_v8_3.last_rpt_requested.size + 
  cme_ebs_ilink3_sbe_v8_3.cross_type.size + 
  cme_ebs_ilink3_sbe_v8_3.exec_inst.size + 
  cme_ebs_ilink3_sbe_v8_3.execution_mode.size + 
  cme_ebs_ilink3_sbe_v8_3.liquidity_flag.size + 
  cme_ebs_ilink3_sbe_v8_3.managed_order.size + 
  cme_ebs_ilink3_sbe_v8_3.short_sale_type.size

-- Display: Execution Report Status
cme_ebs_ilink3_sbe_v8_3.execution_report_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Status
cme_ebs_ilink3_sbe_v8_3.execution_report_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Text: String256
  index, text = cme_ebs_ilink3_sbe_v8_3.text.dissect(buffer, index, packet, parent)

  -- Exec Id: String40
  index, exec_id = cme_ebs_ilink3_sbe_v8_3.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: String20Req
  index, clordid = cme_ebs_ilink3_sbe_v8_3.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Id: uInt64
  index, order_id = cme_ebs_ilink3_sbe_v8_3.order_id.dissect(buffer, index, packet, parent)

  -- Price Optional: PRICENULL9
  index, price_optional = cme_ebs_ilink3_sbe_v8_3.price_optional.dissect(buffer, index, packet, parent)

  -- Stop Px: PRICENULL9
  index, stop_px = cme_ebs_ilink3_sbe_v8_3.stop_px.dissect(buffer, index, packet, parent)

  -- Transact Time: uInt64
  index, transact_time = cme_ebs_ilink3_sbe_v8_3.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: uInt64
  index, order_request_id = cme_ebs_ilink3_sbe_v8_3.order_request_id.dissect(buffer, index, packet, parent)

  -- Ord Status Req Id Optional: uInt64NULL
  index, ord_status_req_id_optional = cme_ebs_ilink3_sbe_v8_3.ord_status_req_id_optional.dissect(buffer, index, packet, parent)

  -- Mass Status Req Id Optional: uInt64NULL
  index, mass_status_req_id_optional = cme_ebs_ilink3_sbe_v8_3.mass_status_req_id_optional.dissect(buffer, index, packet, parent)

  -- Cross Id Optional: uInt64NULL
  index, cross_id_optional = cme_ebs_ilink3_sbe_v8_3.cross_id_optional.dissect(buffer, index, packet, parent)

  -- Host Cross Id: uInt64NULL
  index, host_cross_id = cme_ebs_ilink3_sbe_v8_3.host_cross_id.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_ebs_ilink3_sbe_v8_3.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: uInt32
  index, order_qty = cme_ebs_ilink3_sbe_v8_3.order_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uInt32
  index, cum_qty = cme_ebs_ilink3_sbe_v8_3.cum_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uInt32
  index, leaves_qty = cme_ebs_ilink3_sbe_v8_3.leaves_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: uInt32NULL
  index, min_qty = cme_ebs_ilink3_sbe_v8_3.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: uInt32NULL
  index, display_qty = cme_ebs_ilink3_sbe_v8_3.display_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: LocalMktDate
  index, expire_date = cme_ebs_ilink3_sbe_v8_3.expire_date.dissect(buffer, index, packet, parent)

  -- Ord Status: OrderStatus
  index, ord_status = cme_ebs_ilink3_sbe_v8_3.ord_status.dissect(buffer, index, packet, parent)

  -- Ord Type Optional: OrderType
  index, ord_type_optional = cme_ebs_ilink3_sbe_v8_3.ord_type_optional.dissect(buffer, index, packet, parent)

  -- Side: SideReq
  index, side = cme_ebs_ilink3_sbe_v8_3.side.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = cme_ebs_ilink3_sbe_v8_3.time_in_force.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: BooleanFlag
  index, poss_retrans_flag = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Last Rpt Requested: BooleanNULL
  index, last_rpt_requested = cme_ebs_ilink3_sbe_v8_3.last_rpt_requested.dissect(buffer, index, packet, parent)

  -- Cross Type: uInt8NULL
  index, cross_type = cme_ebs_ilink3_sbe_v8_3.cross_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_ebs_ilink3_sbe_v8_3.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: ExecMode
  index, execution_mode = cme_ebs_ilink3_sbe_v8_3.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: BooleanNULL
  index, liquidity_flag = cme_ebs_ilink3_sbe_v8_3.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: BooleanNULL
  index, managed_order = cme_ebs_ilink3_sbe_v8_3.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: ShortSaleType
  index, short_sale_type = cme_ebs_ilink3_sbe_v8_3.short_sale_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Status
cme_ebs_ilink3_sbe_v8_3.execution_report_status.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_status, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.execution_report_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.execution_report_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.execution_report_status.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Modify
cme_ebs_ilink3_sbe_v8_3.execution_report_modify = {}

-- Size: Execution Report Modify
cme_ebs_ilink3_sbe_v8_3.execution_report_modify.size =
  cme_ebs_ilink3_sbe_v8_3.seq_num.size + 
  cme_ebs_ilink3_sbe_v8_3.uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.exec_id.size + 
  cme_ebs_ilink3_sbe_v8_3.sender_id.size + 
  cme_ebs_ilink3_sbe_v8_3.clordid.size + 
  cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_id.size + 
  cme_ebs_ilink3_sbe_v8_3.price.size + 
  cme_ebs_ilink3_sbe_v8_3.stop_px.size + 
  cme_ebs_ilink3_sbe_v8_3.transact_time.size + 
  cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size + 
  cme_ebs_ilink3_sbe_v8_3.order_request_id.size + 
  cme_ebs_ilink3_sbe_v8_3.cross_id_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.host_cross_id.size + 
  cme_ebs_ilink3_sbe_v8_3.location.size + 
  cme_ebs_ilink3_sbe_v8_3.security_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.cum_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.leaves_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.min_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.display_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.expire_date.size + 
  cme_ebs_ilink3_sbe_v8_3.delay_duration.size + 
  cme_ebs_ilink3_sbe_v8_3.ord_type_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.side.size + 
  cme_ebs_ilink3_sbe_v8_3.time_in_force.size + 
  cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size + 
  cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size + 
  cme_ebs_ilink3_sbe_v8_3.split_msg.size + 
  cme_ebs_ilink3_sbe_v8_3.cross_type.size + 
  cme_ebs_ilink3_sbe_v8_3.exec_inst.size + 
  cme_ebs_ilink3_sbe_v8_3.execution_mode.size + 
  cme_ebs_ilink3_sbe_v8_3.liquidity_flag.size + 
  cme_ebs_ilink3_sbe_v8_3.managed_order.size + 
  cme_ebs_ilink3_sbe_v8_3.short_sale_type.size

-- Display: Execution Report Modify
cme_ebs_ilink3_sbe_v8_3.execution_report_modify.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Modify
cme_ebs_ilink3_sbe_v8_3.execution_report_modify.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Exec Id: String40
  index, exec_id = cme_ebs_ilink3_sbe_v8_3.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: String20Req
  index, clordid = cme_ebs_ilink3_sbe_v8_3.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Id: uInt64
  index, order_id = cme_ebs_ilink3_sbe_v8_3.order_id.dissect(buffer, index, packet, parent)

  -- Price: PRICE9
  index, price = cme_ebs_ilink3_sbe_v8_3.price.dissect(buffer, index, packet, parent)

  -- Stop Px: PRICENULL9
  index, stop_px = cme_ebs_ilink3_sbe_v8_3.stop_px.dissect(buffer, index, packet, parent)

  -- Transact Time: uInt64
  index, transact_time = cme_ebs_ilink3_sbe_v8_3.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: uInt64
  index, order_request_id = cme_ebs_ilink3_sbe_v8_3.order_request_id.dissect(buffer, index, packet, parent)

  -- Cross Id Optional: uInt64NULL
  index, cross_id_optional = cme_ebs_ilink3_sbe_v8_3.cross_id_optional.dissect(buffer, index, packet, parent)

  -- Host Cross Id: uInt64NULL
  index, host_cross_id = cme_ebs_ilink3_sbe_v8_3.host_cross_id.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_ebs_ilink3_sbe_v8_3.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: uInt32
  index, order_qty = cme_ebs_ilink3_sbe_v8_3.order_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uInt32
  index, cum_qty = cme_ebs_ilink3_sbe_v8_3.cum_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uInt32
  index, leaves_qty = cme_ebs_ilink3_sbe_v8_3.leaves_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: uInt32NULL
  index, min_qty = cme_ebs_ilink3_sbe_v8_3.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: uInt32NULL
  index, display_qty = cme_ebs_ilink3_sbe_v8_3.display_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: LocalMktDate
  index, expire_date = cme_ebs_ilink3_sbe_v8_3.expire_date.dissect(buffer, index, packet, parent)

  -- Delay Duration: uInt16NULL
  index, delay_duration = cme_ebs_ilink3_sbe_v8_3.delay_duration.dissect(buffer, index, packet, parent)

  -- Ord Type Optional: OrderType
  index, ord_type_optional = cme_ebs_ilink3_sbe_v8_3.ord_type_optional.dissect(buffer, index, packet, parent)

  -- Side: SideReq
  index, side = cme_ebs_ilink3_sbe_v8_3.side.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = cme_ebs_ilink3_sbe_v8_3.time_in_force.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: BooleanFlag
  index, poss_retrans_flag = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Split Msg: SplitMsg
  index, split_msg = cme_ebs_ilink3_sbe_v8_3.split_msg.dissect(buffer, index, packet, parent)

  -- Cross Type: uInt8NULL
  index, cross_type = cme_ebs_ilink3_sbe_v8_3.cross_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_ebs_ilink3_sbe_v8_3.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: ExecMode
  index, execution_mode = cme_ebs_ilink3_sbe_v8_3.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: BooleanNULL
  index, liquidity_flag = cme_ebs_ilink3_sbe_v8_3.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: BooleanNULL
  index, managed_order = cme_ebs_ilink3_sbe_v8_3.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: ShortSaleType
  index, short_sale_type = cme_ebs_ilink3_sbe_v8_3.short_sale_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Modify
cme_ebs_ilink3_sbe_v8_3.execution_report_modify.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_modify, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.execution_report_modify.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.execution_report_modify.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.execution_report_modify.fields(buffer, offset, packet, parent)
  end
end

-- Spread Leg Order Events Group
cme_ebs_ilink3_sbe_v8_3.spread_leg_order_events_group = {}

-- Size: Spread Leg Order Events Group
cme_ebs_ilink3_sbe_v8_3.spread_leg_order_events_group.size =
  cme_ebs_ilink3_sbe_v8_3.order_event_px.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_text.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_exec_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_type.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_reason.size

-- Display: Spread Leg Order Events Group
cme_ebs_ilink3_sbe_v8_3.spread_leg_order_events_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Leg Order Events Group
cme_ebs_ilink3_sbe_v8_3.spread_leg_order_events_group.fields = function(buffer, offset, packet, parent, spread_leg_order_events_group_index)
  local index = offset

  -- Implicit Spread Leg Order Events Group Index
  if spread_leg_order_events_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_leg_order_events_group_index, spread_leg_order_events_group_index)
    iteration:set_generated()
  end

  -- Order Event Px: PRICE9
  index, order_event_px = cme_ebs_ilink3_sbe_v8_3.order_event_px.dissect(buffer, index, packet, parent)

  -- Order Event Text: String5
  index, order_event_text = cme_ebs_ilink3_sbe_v8_3.order_event_text.dissect(buffer, index, packet, parent)

  -- Order Event Exec Id: uInt32
  index, order_event_exec_id = cme_ebs_ilink3_sbe_v8_3.order_event_exec_id.dissect(buffer, index, packet, parent)

  -- Order Event Qty: uInt32
  index, order_event_qty = cme_ebs_ilink3_sbe_v8_3.order_event_qty.dissect(buffer, index, packet, parent)

  -- Order Event Type: OrderEventType
  index, order_event_type = cme_ebs_ilink3_sbe_v8_3.order_event_type.dissect(buffer, index, packet, parent)

  -- Order Event Reason: uInt8
  index, order_event_reason = cme_ebs_ilink3_sbe_v8_3.order_event_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Leg Order Events Group
cme_ebs_ilink3_sbe_v8_3.spread_leg_order_events_group.dissect = function(buffer, offset, packet, parent, spread_leg_order_events_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_leg_order_events_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.spread_leg_order_events_group.fields(buffer, offset, packet, parent, spread_leg_order_events_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.spread_leg_order_events_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.spread_leg_order_events_group.fields(buffer, offset, packet, parent, spread_leg_order_events_group_index)
  end
end

-- Spread Leg Order Events Groups
cme_ebs_ilink3_sbe_v8_3.spread_leg_order_events_groups = {}

-- Calculate size of: Spread Leg Order Events Groups
cme_ebs_ilink3_sbe_v8_3.spread_leg_order_events_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local spread_leg_order_events_group_count = buffer(offset + index - 1, 1):uint()
  index = index + spread_leg_order_events_group_count * 23

  return index
end

-- Display: Spread Leg Order Events Groups
cme_ebs_ilink3_sbe_v8_3.spread_leg_order_events_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Leg Order Events Groups
cme_ebs_ilink3_sbe_v8_3.spread_leg_order_events_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Spread Leg Order Events Group
  for spread_leg_order_events_group_index = 1, num_in_group do
    index, spread_leg_order_events_group = cme_ebs_ilink3_sbe_v8_3.spread_leg_order_events_group.dissect(buffer, index, packet, parent, spread_leg_order_events_group_index)
  end

  return index
end

-- Dissect: Spread Leg Order Events Groups
cme_ebs_ilink3_sbe_v8_3.spread_leg_order_events_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_leg_order_events_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.spread_leg_order_events_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.spread_leg_order_events_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.spread_leg_order_events_groups.fields(buffer, offset, packet, parent)
  end
end

-- Risk Free Rate
cme_ebs_ilink3_sbe_v8_3.risk_free_rate = {}

-- Size: Risk Free Rate
cme_ebs_ilink3_sbe_v8_3.risk_free_rate.size =
  cme_ebs_ilink3_sbe_v8_3.mantissa_32.size + 
  cme_ebs_ilink3_sbe_v8_3.exponent.size

-- Display: Risk Free Rate
cme_ebs_ilink3_sbe_v8_3.risk_free_rate.display = function(packet, parent, value, length)
  if value == nil then
    return ": No Value"
  end

  return ": " .. tostring(value)
end

-- Dissect Fields: Risk Free Rate
cme_ebs_ilink3_sbe_v8_3.risk_free_rate.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa 32: int32
  index, mantissa_32 = cme_ebs_ilink3_sbe_v8_3.mantissa_32.dissect(buffer, index, packet, parent)

  -- Exponent: int8
  index, exponent = cme_ebs_ilink3_sbe_v8_3.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local risk_free_rate = mantissa_32 * 10 ^ exponent

  -- Null check (composite is null when child is null sentinel)
  if mantissa_32 == 2147483647 then risk_free_rate = nil end

  return index, risk_free_rate
end

-- Dissect: Risk Free Rate
cme_ebs_ilink3_sbe_v8_3.risk_free_rate.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.risk_free_rate, buffer(offset, 0))
    local index, value = cme_ebs_ilink3_sbe_v8_3.risk_free_rate.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.risk_free_rate.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.risk_free_rate.fields(buffer, offset, packet, parent)
  end
end

-- Time To Expiration
cme_ebs_ilink3_sbe_v8_3.time_to_expiration = {}

-- Size: Time To Expiration
cme_ebs_ilink3_sbe_v8_3.time_to_expiration.size =
  cme_ebs_ilink3_sbe_v8_3.mantissa_32.size + 
  cme_ebs_ilink3_sbe_v8_3.exponent.size

-- Display: Time To Expiration
cme_ebs_ilink3_sbe_v8_3.time_to_expiration.display = function(packet, parent, value, length)
  if value == nil then
    return ": No Value"
  end

  return ": " .. tostring(value)
end

-- Dissect Fields: Time To Expiration
cme_ebs_ilink3_sbe_v8_3.time_to_expiration.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa 32: int32
  index, mantissa_32 = cme_ebs_ilink3_sbe_v8_3.mantissa_32.dissect(buffer, index, packet, parent)

  -- Exponent: int8
  index, exponent = cme_ebs_ilink3_sbe_v8_3.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local time_to_expiration = mantissa_32 * 10 ^ exponent

  -- Null check (composite is null when child is null sentinel)
  if mantissa_32 == 2147483647 then time_to_expiration = nil end

  return index, time_to_expiration
end

-- Dissect: Time To Expiration
cme_ebs_ilink3_sbe_v8_3.time_to_expiration.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.time_to_expiration, buffer(offset, 0))
    local index, value = cme_ebs_ilink3_sbe_v8_3.time_to_expiration.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.time_to_expiration.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.time_to_expiration.fields(buffer, offset, packet, parent)
  end
end

-- Option Delta
cme_ebs_ilink3_sbe_v8_3.option_delta = {}

-- Size: Option Delta
cme_ebs_ilink3_sbe_v8_3.option_delta.size =
  cme_ebs_ilink3_sbe_v8_3.mantissa_32.size + 
  cme_ebs_ilink3_sbe_v8_3.exponent.size

-- Display: Option Delta
cme_ebs_ilink3_sbe_v8_3.option_delta.display = function(packet, parent, value, length)
  if value == nil then
    return ": No Value"
  end

  return ": " .. tostring(value)
end

-- Dissect Fields: Option Delta
cme_ebs_ilink3_sbe_v8_3.option_delta.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa 32: int32
  index, mantissa_32 = cme_ebs_ilink3_sbe_v8_3.mantissa_32.dissect(buffer, index, packet, parent)

  -- Exponent: int8
  index, exponent = cme_ebs_ilink3_sbe_v8_3.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local option_delta = mantissa_32 * 10 ^ exponent

  -- Null check (composite is null when child is null sentinel)
  if mantissa_32 == 2147483647 then option_delta = nil end

  return index, option_delta
end

-- Dissect: Option Delta
cme_ebs_ilink3_sbe_v8_3.option_delta.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.option_delta, buffer(offset, 0))
    local index, value = cme_ebs_ilink3_sbe_v8_3.option_delta.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.option_delta.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.option_delta.fields(buffer, offset, packet, parent)
  end
end

-- Volatility
cme_ebs_ilink3_sbe_v8_3.volatility = {}

-- Size: Volatility
cme_ebs_ilink3_sbe_v8_3.volatility.size =
  cme_ebs_ilink3_sbe_v8_3.mantissa.size + 
  cme_ebs_ilink3_sbe_v8_3.exponent.size

-- Display: Volatility
cme_ebs_ilink3_sbe_v8_3.volatility.display = function(packet, parent, value, length)
  if value == nil then
    return ": No Value"
  end

  return ": " .. tostring(value)
end

-- Dissect Fields: Volatility
cme_ebs_ilink3_sbe_v8_3.volatility.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: int64
  index, mantissa = cme_ebs_ilink3_sbe_v8_3.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: int8
  index, exponent = cme_ebs_ilink3_sbe_v8_3.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local volatility = mantissa * 10 ^ exponent

  -- Null check (composite is null when child is null sentinel)
  if mantissa == Int64(0xFFFFFFFF, 0x7FFFFFFF) then volatility = nil end

  return index, volatility
end

-- Dissect: Volatility
cme_ebs_ilink3_sbe_v8_3.volatility.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.volatility, buffer(offset, 0))
    local index, value = cme_ebs_ilink3_sbe_v8_3.volatility.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.volatility.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.volatility.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Trade Spread Leg
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_spread_leg = {}

-- Calculate size of: Execution Report Trade Spread Leg
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_spread_leg.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.seq_num.size

  index = index + cme_ebs_ilink3_sbe_v8_3.uuid.size

  index = index + cme_ebs_ilink3_sbe_v8_3.exec_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sender_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.clordid.size

  index = index + cme_ebs_ilink3_sbe_v8_3.volatility.size

  index = index + cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.last_px.size

  index = index + cme_ebs_ilink3_sbe_v8_3.order_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.underlying_px.size

  index = index + cme_ebs_ilink3_sbe_v8_3.transact_time.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sec_exec_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.location.size

  index = index + cme_ebs_ilink3_sbe_v8_3.option_delta.size

  index = index + cme_ebs_ilink3_sbe_v8_3.time_to_expiration.size

  index = index + cme_ebs_ilink3_sbe_v8_3.risk_free_rate.size

  index = index + cme_ebs_ilink3_sbe_v8_3.security_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.last_qty.size

  index = index + cme_ebs_ilink3_sbe_v8_3.cum_qty.size

  index = index + cme_ebs_ilink3_sbe_v8_3.side_trade_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.trade_date.size

  index = index + cme_ebs_ilink3_sbe_v8_3.ord_status_trd.size

  index = index + cme_ebs_ilink3_sbe_v8_3.ord_type_optional.size

  index = index + cme_ebs_ilink3_sbe_v8_3.side.size

  index = index + cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size

  index = index + cme_ebs_ilink3_sbe_v8_3.fills_groups.size(buffer, offset + index)

  index = index + cme_ebs_ilink3_sbe_v8_3.spread_leg_order_events_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Spread Leg
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_spread_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Spread Leg
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_spread_leg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Exec Id: String40
  index, exec_id = cme_ebs_ilink3_sbe_v8_3.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: String20Req
  index, clordid = cme_ebs_ilink3_sbe_v8_3.clordid.dissect(buffer, index, packet, parent)

  -- Volatility: Struct of 2 fields
  index, volatility = cme_ebs_ilink3_sbe_v8_3.volatility.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Last Px: PRICE9
  index, last_px = cme_ebs_ilink3_sbe_v8_3.last_px.dissect(buffer, index, packet, parent)

  -- Order Id: uInt64
  index, order_id = cme_ebs_ilink3_sbe_v8_3.order_id.dissect(buffer, index, packet, parent)

  -- Underlying Px: PRICENULL9
  index, underlying_px = cme_ebs_ilink3_sbe_v8_3.underlying_px.dissect(buffer, index, packet, parent)

  -- Transact Time: uInt64
  index, transact_time = cme_ebs_ilink3_sbe_v8_3.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Sec Exec Id: uInt64
  index, sec_exec_id = cme_ebs_ilink3_sbe_v8_3.sec_exec_id.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Option Delta: Struct of 2 fields
  index, option_delta = cme_ebs_ilink3_sbe_v8_3.option_delta.dissect(buffer, index, packet, parent)

  -- Time To Expiration: Struct of 2 fields
  index, time_to_expiration = cme_ebs_ilink3_sbe_v8_3.time_to_expiration.dissect(buffer, index, packet, parent)

  -- Risk Free Rate: Struct of 2 fields
  index, risk_free_rate = cme_ebs_ilink3_sbe_v8_3.risk_free_rate.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_ebs_ilink3_sbe_v8_3.security_id.dissect(buffer, index, packet, parent)

  -- Last Qty: uInt32
  index, last_qty = cme_ebs_ilink3_sbe_v8_3.last_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uInt32
  index, cum_qty = cme_ebs_ilink3_sbe_v8_3.cum_qty.dissect(buffer, index, packet, parent)

  -- Side Trade Id: uInt32
  index, side_trade_id = cme_ebs_ilink3_sbe_v8_3.side_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Date: LocalMktDate
  index, trade_date = cme_ebs_ilink3_sbe_v8_3.trade_date.dissect(buffer, index, packet, parent)

  -- Ord Status Trd: OrdStatusTrd
  index, ord_status_trd = cme_ebs_ilink3_sbe_v8_3.ord_status_trd.dissect(buffer, index, packet, parent)

  -- Ord Type Optional: OrderType
  index, ord_type_optional = cme_ebs_ilink3_sbe_v8_3.ord_type_optional.dissect(buffer, index, packet, parent)

  -- Side: SideReq
  index, side = cme_ebs_ilink3_sbe_v8_3.side.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: BooleanFlag
  index, poss_retrans_flag = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index, fills_groups = cme_ebs_ilink3_sbe_v8_3.fills_groups.dissect(buffer, index, packet, parent)

  -- Spread Leg Order Events Groups: Struct of 2 fields
  index, spread_leg_order_events_groups = cme_ebs_ilink3_sbe_v8_3.spread_leg_order_events_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Spread Leg
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_spread_leg.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_trade_spread_leg, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.execution_report_trade_spread_leg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.execution_report_trade_spread_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.execution_report_trade_spread_leg.fields(buffer, offset, packet, parent)
  end
end

-- Spread Order Events Group
cme_ebs_ilink3_sbe_v8_3.spread_order_events_group = {}

-- Size: Spread Order Events Group
cme_ebs_ilink3_sbe_v8_3.spread_order_events_group.size =
  cme_ebs_ilink3_sbe_v8_3.order_event_px.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_text.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_exec_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_type.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_reason.size

-- Display: Spread Order Events Group
cme_ebs_ilink3_sbe_v8_3.spread_order_events_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Order Events Group
cme_ebs_ilink3_sbe_v8_3.spread_order_events_group.fields = function(buffer, offset, packet, parent, spread_order_events_group_index)
  local index = offset

  -- Implicit Spread Order Events Group Index
  if spread_order_events_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_order_events_group_index, spread_order_events_group_index)
    iteration:set_generated()
  end

  -- Order Event Px: PRICE9
  index, order_event_px = cme_ebs_ilink3_sbe_v8_3.order_event_px.dissect(buffer, index, packet, parent)

  -- Order Event Text: String5
  index, order_event_text = cme_ebs_ilink3_sbe_v8_3.order_event_text.dissect(buffer, index, packet, parent)

  -- Order Event Exec Id: uInt32
  index, order_event_exec_id = cme_ebs_ilink3_sbe_v8_3.order_event_exec_id.dissect(buffer, index, packet, parent)

  -- Order Event Qty: uInt32
  index, order_event_qty = cme_ebs_ilink3_sbe_v8_3.order_event_qty.dissect(buffer, index, packet, parent)

  -- Order Event Type: OrderEventType
  index, order_event_type = cme_ebs_ilink3_sbe_v8_3.order_event_type.dissect(buffer, index, packet, parent)

  -- Order Event Reason: uInt8
  index, order_event_reason = cme_ebs_ilink3_sbe_v8_3.order_event_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Order Events Group
cme_ebs_ilink3_sbe_v8_3.spread_order_events_group.dissect = function(buffer, offset, packet, parent, spread_order_events_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_order_events_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.spread_order_events_group.fields(buffer, offset, packet, parent, spread_order_events_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.spread_order_events_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.spread_order_events_group.fields(buffer, offset, packet, parent, spread_order_events_group_index)
  end
end

-- Spread Order Events Groups
cme_ebs_ilink3_sbe_v8_3.spread_order_events_groups = {}

-- Calculate size of: Spread Order Events Groups
cme_ebs_ilink3_sbe_v8_3.spread_order_events_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local spread_order_events_group_count = buffer(offset + index - 1, 1):uint()
  index = index + spread_order_events_group_count * 23

  return index
end

-- Display: Spread Order Events Groups
cme_ebs_ilink3_sbe_v8_3.spread_order_events_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Order Events Groups
cme_ebs_ilink3_sbe_v8_3.spread_order_events_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Spread Order Events Group
  for spread_order_events_group_index = 1, num_in_group do
    index, spread_order_events_group = cme_ebs_ilink3_sbe_v8_3.spread_order_events_group.dissect(buffer, index, packet, parent, spread_order_events_group_index)
  end

  return index
end

-- Dissect: Spread Order Events Groups
cme_ebs_ilink3_sbe_v8_3.spread_order_events_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.spread_order_events_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.spread_order_events_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.spread_order_events_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.spread_order_events_groups.fields(buffer, offset, packet, parent)
  end
end

-- Trade Legs Group
cme_ebs_ilink3_sbe_v8_3.trade_legs_group = {}

-- Size: Trade Legs Group
cme_ebs_ilink3_sbe_v8_3.trade_legs_group.size =
  cme_ebs_ilink3_sbe_v8_3.leg_exec_id.size + 
  cme_ebs_ilink3_sbe_v8_3.leg_last_px.size + 
  cme_ebs_ilink3_sbe_v8_3.leg_security_id.size + 
  cme_ebs_ilink3_sbe_v8_3.leg_trade_id.size + 
  cme_ebs_ilink3_sbe_v8_3.leg_last_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.leg_side.size

-- Display: Trade Legs Group
cme_ebs_ilink3_sbe_v8_3.trade_legs_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Legs Group
cme_ebs_ilink3_sbe_v8_3.trade_legs_group.fields = function(buffer, offset, packet, parent, trade_legs_group_index)
  local index = offset

  -- Implicit Trade Legs Group Index
  if trade_legs_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.trade_legs_group_index, trade_legs_group_index)
    iteration:set_generated()
  end

  -- Leg Exec Id: uInt64
  index, leg_exec_id = cme_ebs_ilink3_sbe_v8_3.leg_exec_id.dissect(buffer, index, packet, parent)

  -- Leg Last Px: PRICE9
  index, leg_last_px = cme_ebs_ilink3_sbe_v8_3.leg_last_px.dissect(buffer, index, packet, parent)

  -- Leg Security Id: Int32
  index, leg_security_id = cme_ebs_ilink3_sbe_v8_3.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Trade Id: uInt32
  index, leg_trade_id = cme_ebs_ilink3_sbe_v8_3.leg_trade_id.dissect(buffer, index, packet, parent)

  -- Leg Last Qty: uInt32
  index, leg_last_qty = cme_ebs_ilink3_sbe_v8_3.leg_last_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: SideReq
  index, leg_side = cme_ebs_ilink3_sbe_v8_3.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Legs Group
cme_ebs_ilink3_sbe_v8_3.trade_legs_group.dissect = function(buffer, offset, packet, parent, trade_legs_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.trade_legs_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.trade_legs_group.fields(buffer, offset, packet, parent, trade_legs_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.trade_legs_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.trade_legs_group.fields(buffer, offset, packet, parent, trade_legs_group_index)
  end
end

-- Trade Legs Groups
cme_ebs_ilink3_sbe_v8_3.trade_legs_groups = {}

-- Calculate size of: Trade Legs Groups
cme_ebs_ilink3_sbe_v8_3.trade_legs_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local trade_legs_group_count = buffer(offset + index - 1, 1):uint()
  index = index + trade_legs_group_count * 29

  return index
end

-- Display: Trade Legs Groups
cme_ebs_ilink3_sbe_v8_3.trade_legs_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Legs Groups
cme_ebs_ilink3_sbe_v8_3.trade_legs_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Trade Legs Group
  for trade_legs_group_index = 1, num_in_group do
    index, trade_legs_group = cme_ebs_ilink3_sbe_v8_3.trade_legs_group.dissect(buffer, index, packet, parent, trade_legs_group_index)
  end

  return index
end

-- Dissect: Trade Legs Groups
cme_ebs_ilink3_sbe_v8_3.trade_legs_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.trade_legs_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.trade_legs_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.trade_legs_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.trade_legs_groups.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Trade Spread
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_spread = {}

-- Calculate size of: Execution Report Trade Spread
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_spread.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.seq_num.size

  index = index + cme_ebs_ilink3_sbe_v8_3.uuid.size

  index = index + cme_ebs_ilink3_sbe_v8_3.exec_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sender_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.clordid.size

  index = index + cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.last_px.size

  index = index + cme_ebs_ilink3_sbe_v8_3.order_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.price.size

  index = index + cme_ebs_ilink3_sbe_v8_3.stop_px.size

  index = index + cme_ebs_ilink3_sbe_v8_3.transact_time.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size

  index = index + cme_ebs_ilink3_sbe_v8_3.order_request_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sec_exec_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.cross_id_optional.size

  index = index + cme_ebs_ilink3_sbe_v8_3.host_cross_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.location.size

  index = index + cme_ebs_ilink3_sbe_v8_3.security_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.order_qty.size

  index = index + cme_ebs_ilink3_sbe_v8_3.last_qty.size

  index = index + cme_ebs_ilink3_sbe_v8_3.cum_qty.size

  index = index + cme_ebs_ilink3_sbe_v8_3.md_trade_entry_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.side_trade_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.leaves_qty.size

  index = index + cme_ebs_ilink3_sbe_v8_3.trade_date.size

  index = index + cme_ebs_ilink3_sbe_v8_3.expire_date.size

  index = index + cme_ebs_ilink3_sbe_v8_3.ord_status_trd.size

  index = index + cme_ebs_ilink3_sbe_v8_3.ord_type_optional.size

  index = index + cme_ebs_ilink3_sbe_v8_3.side.size

  index = index + cme_ebs_ilink3_sbe_v8_3.time_in_force.size

  index = index + cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size

  index = index + cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size

  index = index + cme_ebs_ilink3_sbe_v8_3.aggressor_indicator.size

  index = index + cme_ebs_ilink3_sbe_v8_3.cross_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.total_num_securities.size

  index = index + cme_ebs_ilink3_sbe_v8_3.exec_inst.size

  index = index + cme_ebs_ilink3_sbe_v8_3.execution_mode.size

  index = index + cme_ebs_ilink3_sbe_v8_3.liquidity_flag.size

  index = index + cme_ebs_ilink3_sbe_v8_3.short_sale_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.fills_groups.size(buffer, offset + index)

  index = index + cme_ebs_ilink3_sbe_v8_3.trade_legs_groups.size(buffer, offset + index)

  index = index + cme_ebs_ilink3_sbe_v8_3.spread_order_events_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Spread
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_spread.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Spread
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_spread.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Exec Id: String40
  index, exec_id = cme_ebs_ilink3_sbe_v8_3.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: String20Req
  index, clordid = cme_ebs_ilink3_sbe_v8_3.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Last Px: PRICE9
  index, last_px = cme_ebs_ilink3_sbe_v8_3.last_px.dissect(buffer, index, packet, parent)

  -- Order Id: uInt64
  index, order_id = cme_ebs_ilink3_sbe_v8_3.order_id.dissect(buffer, index, packet, parent)

  -- Price: PRICE9
  index, price = cme_ebs_ilink3_sbe_v8_3.price.dissect(buffer, index, packet, parent)

  -- Stop Px: PRICENULL9
  index, stop_px = cme_ebs_ilink3_sbe_v8_3.stop_px.dissect(buffer, index, packet, parent)

  -- Transact Time: uInt64
  index, transact_time = cme_ebs_ilink3_sbe_v8_3.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: uInt64
  index, order_request_id = cme_ebs_ilink3_sbe_v8_3.order_request_id.dissect(buffer, index, packet, parent)

  -- Sec Exec Id: uInt64
  index, sec_exec_id = cme_ebs_ilink3_sbe_v8_3.sec_exec_id.dissect(buffer, index, packet, parent)

  -- Cross Id Optional: uInt64NULL
  index, cross_id_optional = cme_ebs_ilink3_sbe_v8_3.cross_id_optional.dissect(buffer, index, packet, parent)

  -- Host Cross Id: uInt64NULL
  index, host_cross_id = cme_ebs_ilink3_sbe_v8_3.host_cross_id.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_ebs_ilink3_sbe_v8_3.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: uInt32
  index, order_qty = cme_ebs_ilink3_sbe_v8_3.order_qty.dissect(buffer, index, packet, parent)

  -- Last Qty: uInt32
  index, last_qty = cme_ebs_ilink3_sbe_v8_3.last_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uInt32
  index, cum_qty = cme_ebs_ilink3_sbe_v8_3.cum_qty.dissect(buffer, index, packet, parent)

  -- Md Trade Entry Id: uInt32
  index, md_trade_entry_id = cme_ebs_ilink3_sbe_v8_3.md_trade_entry_id.dissect(buffer, index, packet, parent)

  -- Side Trade Id: uInt32
  index, side_trade_id = cme_ebs_ilink3_sbe_v8_3.side_trade_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uInt32
  index, leaves_qty = cme_ebs_ilink3_sbe_v8_3.leaves_qty.dissect(buffer, index, packet, parent)

  -- Trade Date: LocalMktDate
  index, trade_date = cme_ebs_ilink3_sbe_v8_3.trade_date.dissect(buffer, index, packet, parent)

  -- Expire Date: LocalMktDate
  index, expire_date = cme_ebs_ilink3_sbe_v8_3.expire_date.dissect(buffer, index, packet, parent)

  -- Ord Status Trd: OrdStatusTrd
  index, ord_status_trd = cme_ebs_ilink3_sbe_v8_3.ord_status_trd.dissect(buffer, index, packet, parent)

  -- Ord Type Optional: OrderType
  index, ord_type_optional = cme_ebs_ilink3_sbe_v8_3.ord_type_optional.dissect(buffer, index, packet, parent)

  -- Side: SideReq
  index, side = cme_ebs_ilink3_sbe_v8_3.side.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = cme_ebs_ilink3_sbe_v8_3.time_in_force.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: BooleanFlag
  index, poss_retrans_flag = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: BooleanFlag
  index, aggressor_indicator = cme_ebs_ilink3_sbe_v8_3.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- Cross Type: uInt8NULL
  index, cross_type = cme_ebs_ilink3_sbe_v8_3.cross_type.dissect(buffer, index, packet, parent)

  -- Total Num Securities: uInt8
  index, total_num_securities = cme_ebs_ilink3_sbe_v8_3.total_num_securities.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_ebs_ilink3_sbe_v8_3.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: ExecMode
  index, execution_mode = cme_ebs_ilink3_sbe_v8_3.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: BooleanNULL
  index, liquidity_flag = cme_ebs_ilink3_sbe_v8_3.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Short Sale Type: ShortSaleType
  index, short_sale_type = cme_ebs_ilink3_sbe_v8_3.short_sale_type.dissect(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index, fills_groups = cme_ebs_ilink3_sbe_v8_3.fills_groups.dissect(buffer, index, packet, parent)

  -- Trade Legs Groups: Struct of 2 fields
  index, trade_legs_groups = cme_ebs_ilink3_sbe_v8_3.trade_legs_groups.dissect(buffer, index, packet, parent)

  -- Spread Order Events Groups: Struct of 2 fields
  index, spread_order_events_groups = cme_ebs_ilink3_sbe_v8_3.spread_order_events_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Spread
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_spread.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_trade_spread, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.execution_report_trade_spread.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.execution_report_trade_spread.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.execution_report_trade_spread.fields(buffer, offset, packet, parent)
  end
end

-- Outright Order Events Group
cme_ebs_ilink3_sbe_v8_3.outright_order_events_group = {}

-- Size: Outright Order Events Group
cme_ebs_ilink3_sbe_v8_3.outright_order_events_group.size =
  cme_ebs_ilink3_sbe_v8_3.order_event_px.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_text.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_exec_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_type.size + 
  cme_ebs_ilink3_sbe_v8_3.order_event_reason.size

-- Display: Outright Order Events Group
cme_ebs_ilink3_sbe_v8_3.outright_order_events_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Order Events Group
cme_ebs_ilink3_sbe_v8_3.outright_order_events_group.fields = function(buffer, offset, packet, parent, outright_order_events_group_index)
  local index = offset

  -- Implicit Outright Order Events Group Index
  if outright_order_events_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.outright_order_events_group_index, outright_order_events_group_index)
    iteration:set_generated()
  end

  -- Order Event Px: PRICE9
  index, order_event_px = cme_ebs_ilink3_sbe_v8_3.order_event_px.dissect(buffer, index, packet, parent)

  -- Order Event Text: String5
  index, order_event_text = cme_ebs_ilink3_sbe_v8_3.order_event_text.dissect(buffer, index, packet, parent)

  -- Order Event Exec Id: uInt32
  index, order_event_exec_id = cme_ebs_ilink3_sbe_v8_3.order_event_exec_id.dissect(buffer, index, packet, parent)

  -- Order Event Qty: uInt32
  index, order_event_qty = cme_ebs_ilink3_sbe_v8_3.order_event_qty.dissect(buffer, index, packet, parent)

  -- Order Event Type: OrderEventType
  index, order_event_type = cme_ebs_ilink3_sbe_v8_3.order_event_type.dissect(buffer, index, packet, parent)

  -- Order Event Reason: uInt8
  index, order_event_reason = cme_ebs_ilink3_sbe_v8_3.order_event_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Order Events Group
cme_ebs_ilink3_sbe_v8_3.outright_order_events_group.dissect = function(buffer, offset, packet, parent, outright_order_events_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.outright_order_events_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.outright_order_events_group.fields(buffer, offset, packet, parent, outright_order_events_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.outright_order_events_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.outright_order_events_group.fields(buffer, offset, packet, parent, outright_order_events_group_index)
  end
end

-- Outright Order Events Groups
cme_ebs_ilink3_sbe_v8_3.outright_order_events_groups = {}

-- Calculate size of: Outright Order Events Groups
cme_ebs_ilink3_sbe_v8_3.outright_order_events_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local outright_order_events_group_count = buffer(offset + index - 1, 1):uint()
  index = index + outright_order_events_group_count * 23

  return index
end

-- Display: Outright Order Events Groups
cme_ebs_ilink3_sbe_v8_3.outright_order_events_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Order Events Groups
cme_ebs_ilink3_sbe_v8_3.outright_order_events_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Outright Order Events Group
  for outright_order_events_group_index = 1, num_in_group do
    index, outright_order_events_group = cme_ebs_ilink3_sbe_v8_3.outright_order_events_group.dissect(buffer, index, packet, parent, outright_order_events_group_index)
  end

  return index
end

-- Dissect: Outright Order Events Groups
cme_ebs_ilink3_sbe_v8_3.outright_order_events_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.outright_order_events_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.outright_order_events_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.outright_order_events_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.outright_order_events_groups.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Trade Outright
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_outright = {}

-- Calculate size of: Execution Report Trade Outright
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_outright.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.seq_num.size

  index = index + cme_ebs_ilink3_sbe_v8_3.uuid.size

  index = index + cme_ebs_ilink3_sbe_v8_3.exec_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sender_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.clordid.size

  index = index + cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.last_px.size

  index = index + cme_ebs_ilink3_sbe_v8_3.order_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.price.size

  index = index + cme_ebs_ilink3_sbe_v8_3.stop_px.size

  index = index + cme_ebs_ilink3_sbe_v8_3.transact_time.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size

  index = index + cme_ebs_ilink3_sbe_v8_3.order_request_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sec_exec_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.cross_id_optional.size

  index = index + cme_ebs_ilink3_sbe_v8_3.host_cross_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.location.size

  index = index + cme_ebs_ilink3_sbe_v8_3.security_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.order_qty.size

  index = index + cme_ebs_ilink3_sbe_v8_3.last_qty.size

  index = index + cme_ebs_ilink3_sbe_v8_3.cum_qty.size

  index = index + cme_ebs_ilink3_sbe_v8_3.md_trade_entry_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.side_trade_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.trade_link_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.leaves_qty.size

  index = index + cme_ebs_ilink3_sbe_v8_3.trade_date.size

  index = index + cme_ebs_ilink3_sbe_v8_3.expire_date.size

  index = index + cme_ebs_ilink3_sbe_v8_3.ord_status_trd.size

  index = index + cme_ebs_ilink3_sbe_v8_3.ord_type_optional.size

  index = index + cme_ebs_ilink3_sbe_v8_3.side.size

  index = index + cme_ebs_ilink3_sbe_v8_3.time_in_force.size

  index = index + cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size

  index = index + cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size

  index = index + cme_ebs_ilink3_sbe_v8_3.aggressor_indicator.size

  index = index + cme_ebs_ilink3_sbe_v8_3.cross_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.exec_inst.size

  index = index + cme_ebs_ilink3_sbe_v8_3.execution_mode.size

  index = index + cme_ebs_ilink3_sbe_v8_3.liquidity_flag.size

  index = index + cme_ebs_ilink3_sbe_v8_3.managed_order.size

  index = index + cme_ebs_ilink3_sbe_v8_3.short_sale_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.ownership.size

  index = index + cme_ebs_ilink3_sbe_v8_3.fills_groups.size(buffer, offset + index)

  index = index + cme_ebs_ilink3_sbe_v8_3.outright_order_events_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Outright
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_outright.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Outright
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_outright.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Exec Id: String40
  index, exec_id = cme_ebs_ilink3_sbe_v8_3.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: String20Req
  index, clordid = cme_ebs_ilink3_sbe_v8_3.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Last Px: PRICE9
  index, last_px = cme_ebs_ilink3_sbe_v8_3.last_px.dissect(buffer, index, packet, parent)

  -- Order Id: uInt64
  index, order_id = cme_ebs_ilink3_sbe_v8_3.order_id.dissect(buffer, index, packet, parent)

  -- Price: PRICE9
  index, price = cme_ebs_ilink3_sbe_v8_3.price.dissect(buffer, index, packet, parent)

  -- Stop Px: PRICENULL9
  index, stop_px = cme_ebs_ilink3_sbe_v8_3.stop_px.dissect(buffer, index, packet, parent)

  -- Transact Time: uInt64
  index, transact_time = cme_ebs_ilink3_sbe_v8_3.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: uInt64
  index, order_request_id = cme_ebs_ilink3_sbe_v8_3.order_request_id.dissect(buffer, index, packet, parent)

  -- Sec Exec Id: uInt64
  index, sec_exec_id = cme_ebs_ilink3_sbe_v8_3.sec_exec_id.dissect(buffer, index, packet, parent)

  -- Cross Id Optional: uInt64NULL
  index, cross_id_optional = cme_ebs_ilink3_sbe_v8_3.cross_id_optional.dissect(buffer, index, packet, parent)

  -- Host Cross Id: uInt64NULL
  index, host_cross_id = cme_ebs_ilink3_sbe_v8_3.host_cross_id.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_ebs_ilink3_sbe_v8_3.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: uInt32
  index, order_qty = cme_ebs_ilink3_sbe_v8_3.order_qty.dissect(buffer, index, packet, parent)

  -- Last Qty: uInt32
  index, last_qty = cme_ebs_ilink3_sbe_v8_3.last_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uInt32
  index, cum_qty = cme_ebs_ilink3_sbe_v8_3.cum_qty.dissect(buffer, index, packet, parent)

  -- Md Trade Entry Id: uInt32
  index, md_trade_entry_id = cme_ebs_ilink3_sbe_v8_3.md_trade_entry_id.dissect(buffer, index, packet, parent)

  -- Side Trade Id: uInt32
  index, side_trade_id = cme_ebs_ilink3_sbe_v8_3.side_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Link Id: uInt32NULL
  index, trade_link_id = cme_ebs_ilink3_sbe_v8_3.trade_link_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uInt32
  index, leaves_qty = cme_ebs_ilink3_sbe_v8_3.leaves_qty.dissect(buffer, index, packet, parent)

  -- Trade Date: LocalMktDate
  index, trade_date = cme_ebs_ilink3_sbe_v8_3.trade_date.dissect(buffer, index, packet, parent)

  -- Expire Date: LocalMktDate
  index, expire_date = cme_ebs_ilink3_sbe_v8_3.expire_date.dissect(buffer, index, packet, parent)

  -- Ord Status Trd: OrdStatusTrd
  index, ord_status_trd = cme_ebs_ilink3_sbe_v8_3.ord_status_trd.dissect(buffer, index, packet, parent)

  -- Ord Type Optional: OrderType
  index, ord_type_optional = cme_ebs_ilink3_sbe_v8_3.ord_type_optional.dissect(buffer, index, packet, parent)

  -- Side: SideReq
  index, side = cme_ebs_ilink3_sbe_v8_3.side.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = cme_ebs_ilink3_sbe_v8_3.time_in_force.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: BooleanFlag
  index, poss_retrans_flag = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: BooleanFlag
  index, aggressor_indicator = cme_ebs_ilink3_sbe_v8_3.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- Cross Type: uInt8NULL
  index, cross_type = cme_ebs_ilink3_sbe_v8_3.cross_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_ebs_ilink3_sbe_v8_3.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: ExecMode
  index, execution_mode = cme_ebs_ilink3_sbe_v8_3.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: BooleanNULL
  index, liquidity_flag = cme_ebs_ilink3_sbe_v8_3.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: BooleanNULL
  index, managed_order = cme_ebs_ilink3_sbe_v8_3.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: ShortSaleType
  index, short_sale_type = cme_ebs_ilink3_sbe_v8_3.short_sale_type.dissect(buffer, index, packet, parent)

  -- Ownership: uInt8
  index, ownership = cme_ebs_ilink3_sbe_v8_3.ownership.dissect(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index, fills_groups = cme_ebs_ilink3_sbe_v8_3.fills_groups.dissect(buffer, index, packet, parent)

  -- Outright Order Events Groups: Struct of 2 fields
  index, outright_order_events_groups = cme_ebs_ilink3_sbe_v8_3.outright_order_events_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Outright
cme_ebs_ilink3_sbe_v8_3.execution_report_trade_outright.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_trade_outright, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.execution_report_trade_outright.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.execution_report_trade_outright.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.execution_report_trade_outright.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Elimination
cme_ebs_ilink3_sbe_v8_3.execution_report_elimination = {}

-- Size: Execution Report Elimination
cme_ebs_ilink3_sbe_v8_3.execution_report_elimination.size =
  cme_ebs_ilink3_sbe_v8_3.seq_num.size + 
  cme_ebs_ilink3_sbe_v8_3.uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.exec_id.size + 
  cme_ebs_ilink3_sbe_v8_3.sender_id.size + 
  cme_ebs_ilink3_sbe_v8_3.clordid.size + 
  cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_id.size + 
  cme_ebs_ilink3_sbe_v8_3.price.size + 
  cme_ebs_ilink3_sbe_v8_3.stop_px.size + 
  cme_ebs_ilink3_sbe_v8_3.transact_time.size + 
  cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size + 
  cme_ebs_ilink3_sbe_v8_3.order_request_id.size + 
  cme_ebs_ilink3_sbe_v8_3.cross_id_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.host_cross_id.size + 
  cme_ebs_ilink3_sbe_v8_3.location.size + 
  cme_ebs_ilink3_sbe_v8_3.security_id.size + 
  cme_ebs_ilink3_sbe_v8_3.cum_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.order_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.min_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.display_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.expire_date.size + 
  cme_ebs_ilink3_sbe_v8_3.ord_type_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.side.size + 
  cme_ebs_ilink3_sbe_v8_3.time_in_force.size + 
  cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size + 
  cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size + 
  cme_ebs_ilink3_sbe_v8_3.cross_type.size + 
  cme_ebs_ilink3_sbe_v8_3.exec_inst.size + 
  cme_ebs_ilink3_sbe_v8_3.execution_mode.size + 
  cme_ebs_ilink3_sbe_v8_3.liquidity_flag.size + 
  cme_ebs_ilink3_sbe_v8_3.managed_order.size + 
  cme_ebs_ilink3_sbe_v8_3.short_sale_type.size

-- Display: Execution Report Elimination
cme_ebs_ilink3_sbe_v8_3.execution_report_elimination.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Elimination
cme_ebs_ilink3_sbe_v8_3.execution_report_elimination.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Exec Id: String40
  index, exec_id = cme_ebs_ilink3_sbe_v8_3.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: String20Req
  index, clordid = cme_ebs_ilink3_sbe_v8_3.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Id: uInt64
  index, order_id = cme_ebs_ilink3_sbe_v8_3.order_id.dissect(buffer, index, packet, parent)

  -- Price: PRICE9
  index, price = cme_ebs_ilink3_sbe_v8_3.price.dissect(buffer, index, packet, parent)

  -- Stop Px: PRICENULL9
  index, stop_px = cme_ebs_ilink3_sbe_v8_3.stop_px.dissect(buffer, index, packet, parent)

  -- Transact Time: uInt64
  index, transact_time = cme_ebs_ilink3_sbe_v8_3.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: uInt64
  index, order_request_id = cme_ebs_ilink3_sbe_v8_3.order_request_id.dissect(buffer, index, packet, parent)

  -- Cross Id Optional: uInt64NULL
  index, cross_id_optional = cme_ebs_ilink3_sbe_v8_3.cross_id_optional.dissect(buffer, index, packet, parent)

  -- Host Cross Id: uInt64NULL
  index, host_cross_id = cme_ebs_ilink3_sbe_v8_3.host_cross_id.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_ebs_ilink3_sbe_v8_3.security_id.dissect(buffer, index, packet, parent)

  -- Cum Qty: uInt32
  index, cum_qty = cme_ebs_ilink3_sbe_v8_3.cum_qty.dissect(buffer, index, packet, parent)

  -- Order Qty: uInt32
  index, order_qty = cme_ebs_ilink3_sbe_v8_3.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: uInt32NULL
  index, min_qty = cme_ebs_ilink3_sbe_v8_3.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: uInt32NULL
  index, display_qty = cme_ebs_ilink3_sbe_v8_3.display_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: LocalMktDate
  index, expire_date = cme_ebs_ilink3_sbe_v8_3.expire_date.dissect(buffer, index, packet, parent)

  -- Ord Type Optional: OrderType
  index, ord_type_optional = cme_ebs_ilink3_sbe_v8_3.ord_type_optional.dissect(buffer, index, packet, parent)

  -- Side: SideReq
  index, side = cme_ebs_ilink3_sbe_v8_3.side.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = cme_ebs_ilink3_sbe_v8_3.time_in_force.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: BooleanFlag
  index, poss_retrans_flag = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Cross Type: uInt8NULL
  index, cross_type = cme_ebs_ilink3_sbe_v8_3.cross_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_ebs_ilink3_sbe_v8_3.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: ExecMode
  index, execution_mode = cme_ebs_ilink3_sbe_v8_3.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: BooleanNULL
  index, liquidity_flag = cme_ebs_ilink3_sbe_v8_3.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: BooleanNULL
  index, managed_order = cme_ebs_ilink3_sbe_v8_3.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: ShortSaleType
  index, short_sale_type = cme_ebs_ilink3_sbe_v8_3.short_sale_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Elimination
cme_ebs_ilink3_sbe_v8_3.execution_report_elimination.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_elimination, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.execution_report_elimination.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.execution_report_elimination.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.execution_report_elimination.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Reject
cme_ebs_ilink3_sbe_v8_3.execution_report_reject = {}

-- Size: Execution Report Reject
cme_ebs_ilink3_sbe_v8_3.execution_report_reject.size =
  cme_ebs_ilink3_sbe_v8_3.seq_num.size + 
  cme_ebs_ilink3_sbe_v8_3.uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.text.size + 
  cme_ebs_ilink3_sbe_v8_3.exec_id.size + 
  cme_ebs_ilink3_sbe_v8_3.sender_id.size + 
  cme_ebs_ilink3_sbe_v8_3.clordid.size + 
  cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_id.size + 
  cme_ebs_ilink3_sbe_v8_3.price_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.stop_px.size + 
  cme_ebs_ilink3_sbe_v8_3.transact_time.size + 
  cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size + 
  cme_ebs_ilink3_sbe_v8_3.order_request_id.size + 
  cme_ebs_ilink3_sbe_v8_3.cross_id_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.host_cross_id.size + 
  cme_ebs_ilink3_sbe_v8_3.location.size + 
  cme_ebs_ilink3_sbe_v8_3.security_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.min_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.display_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.ord_rej_reason.size + 
  cme_ebs_ilink3_sbe_v8_3.expire_date.size + 
  cme_ebs_ilink3_sbe_v8_3.delay_duration.size + 
  cme_ebs_ilink3_sbe_v8_3.ord_type_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.side.size + 
  cme_ebs_ilink3_sbe_v8_3.time_in_force.size + 
  cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size + 
  cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size + 
  cme_ebs_ilink3_sbe_v8_3.split_msg.size + 
  cme_ebs_ilink3_sbe_v8_3.cross_type.size + 
  cme_ebs_ilink3_sbe_v8_3.exec_inst.size + 
  cme_ebs_ilink3_sbe_v8_3.execution_mode.size + 
  cme_ebs_ilink3_sbe_v8_3.liquidity_flag.size + 
  cme_ebs_ilink3_sbe_v8_3.managed_order.size + 
  cme_ebs_ilink3_sbe_v8_3.short_sale_type.size

-- Display: Execution Report Reject
cme_ebs_ilink3_sbe_v8_3.execution_report_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Reject
cme_ebs_ilink3_sbe_v8_3.execution_report_reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Text: String256
  index, text = cme_ebs_ilink3_sbe_v8_3.text.dissect(buffer, index, packet, parent)

  -- Exec Id: String40
  index, exec_id = cme_ebs_ilink3_sbe_v8_3.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: String20Req
  index, clordid = cme_ebs_ilink3_sbe_v8_3.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Id: uInt64
  index, order_id = cme_ebs_ilink3_sbe_v8_3.order_id.dissect(buffer, index, packet, parent)

  -- Price Optional: PRICENULL9
  index, price_optional = cme_ebs_ilink3_sbe_v8_3.price_optional.dissect(buffer, index, packet, parent)

  -- Stop Px: PRICENULL9
  index, stop_px = cme_ebs_ilink3_sbe_v8_3.stop_px.dissect(buffer, index, packet, parent)

  -- Transact Time: uInt64
  index, transact_time = cme_ebs_ilink3_sbe_v8_3.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: uInt64
  index, order_request_id = cme_ebs_ilink3_sbe_v8_3.order_request_id.dissect(buffer, index, packet, parent)

  -- Cross Id Optional: uInt64NULL
  index, cross_id_optional = cme_ebs_ilink3_sbe_v8_3.cross_id_optional.dissect(buffer, index, packet, parent)

  -- Host Cross Id: uInt64NULL
  index, host_cross_id = cme_ebs_ilink3_sbe_v8_3.host_cross_id.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_ebs_ilink3_sbe_v8_3.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: uInt32
  index, order_qty = cme_ebs_ilink3_sbe_v8_3.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: uInt32NULL
  index, min_qty = cme_ebs_ilink3_sbe_v8_3.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: uInt32NULL
  index, display_qty = cme_ebs_ilink3_sbe_v8_3.display_qty.dissect(buffer, index, packet, parent)

  -- Ord Rej Reason: uInt16
  index, ord_rej_reason = cme_ebs_ilink3_sbe_v8_3.ord_rej_reason.dissect(buffer, index, packet, parent)

  -- Expire Date: LocalMktDate
  index, expire_date = cme_ebs_ilink3_sbe_v8_3.expire_date.dissect(buffer, index, packet, parent)

  -- Delay Duration: uInt16NULL
  index, delay_duration = cme_ebs_ilink3_sbe_v8_3.delay_duration.dissect(buffer, index, packet, parent)

  -- Ord Type Optional: OrderType
  index, ord_type_optional = cme_ebs_ilink3_sbe_v8_3.ord_type_optional.dissect(buffer, index, packet, parent)

  -- Side: SideReq
  index, side = cme_ebs_ilink3_sbe_v8_3.side.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = cme_ebs_ilink3_sbe_v8_3.time_in_force.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: BooleanFlag
  index, poss_retrans_flag = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Split Msg: SplitMsg
  index, split_msg = cme_ebs_ilink3_sbe_v8_3.split_msg.dissect(buffer, index, packet, parent)

  -- Cross Type: uInt8NULL
  index, cross_type = cme_ebs_ilink3_sbe_v8_3.cross_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_ebs_ilink3_sbe_v8_3.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: ExecMode
  index, execution_mode = cme_ebs_ilink3_sbe_v8_3.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: BooleanNULL
  index, liquidity_flag = cme_ebs_ilink3_sbe_v8_3.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: BooleanNULL
  index, managed_order = cme_ebs_ilink3_sbe_v8_3.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: ShortSaleType
  index, short_sale_type = cme_ebs_ilink3_sbe_v8_3.short_sale_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Reject
cme_ebs_ilink3_sbe_v8_3.execution_report_reject.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_reject, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.execution_report_reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.execution_report_reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.execution_report_reject.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report New
cme_ebs_ilink3_sbe_v8_3.execution_report_new = {}

-- Size: Execution Report New
cme_ebs_ilink3_sbe_v8_3.execution_report_new.size =
  cme_ebs_ilink3_sbe_v8_3.seq_num.size + 
  cme_ebs_ilink3_sbe_v8_3.uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.exec_id.size + 
  cme_ebs_ilink3_sbe_v8_3.sender_id.size + 
  cme_ebs_ilink3_sbe_v8_3.clordid.size + 
  cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_id.size + 
  cme_ebs_ilink3_sbe_v8_3.price.size + 
  cme_ebs_ilink3_sbe_v8_3.stop_px.size + 
  cme_ebs_ilink3_sbe_v8_3.transact_time.size + 
  cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size + 
  cme_ebs_ilink3_sbe_v8_3.order_request_id.size + 
  cme_ebs_ilink3_sbe_v8_3.cross_id_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.host_cross_id.size + 
  cme_ebs_ilink3_sbe_v8_3.location.size + 
  cme_ebs_ilink3_sbe_v8_3.security_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.min_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.display_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.expire_date.size + 
  cme_ebs_ilink3_sbe_v8_3.delay_duration.size + 
  cme_ebs_ilink3_sbe_v8_3.ord_type_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.side.size + 
  cme_ebs_ilink3_sbe_v8_3.time_in_force.size + 
  cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size + 
  cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size + 
  cme_ebs_ilink3_sbe_v8_3.split_msg.size + 
  cme_ebs_ilink3_sbe_v8_3.cross_type.size + 
  cme_ebs_ilink3_sbe_v8_3.exec_inst.size + 
  cme_ebs_ilink3_sbe_v8_3.execution_mode.size + 
  cme_ebs_ilink3_sbe_v8_3.liquidity_flag.size + 
  cme_ebs_ilink3_sbe_v8_3.managed_order.size + 
  cme_ebs_ilink3_sbe_v8_3.short_sale_type.size

-- Display: Execution Report New
cme_ebs_ilink3_sbe_v8_3.execution_report_new.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report New
cme_ebs_ilink3_sbe_v8_3.execution_report_new.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Exec Id: String40
  index, exec_id = cme_ebs_ilink3_sbe_v8_3.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: String20Req
  index, clordid = cme_ebs_ilink3_sbe_v8_3.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Id: uInt64
  index, order_id = cme_ebs_ilink3_sbe_v8_3.order_id.dissect(buffer, index, packet, parent)

  -- Price: PRICE9
  index, price = cme_ebs_ilink3_sbe_v8_3.price.dissect(buffer, index, packet, parent)

  -- Stop Px: PRICENULL9
  index, stop_px = cme_ebs_ilink3_sbe_v8_3.stop_px.dissect(buffer, index, packet, parent)

  -- Transact Time: uInt64
  index, transact_time = cme_ebs_ilink3_sbe_v8_3.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: uInt64
  index, order_request_id = cme_ebs_ilink3_sbe_v8_3.order_request_id.dissect(buffer, index, packet, parent)

  -- Cross Id Optional: uInt64NULL
  index, cross_id_optional = cme_ebs_ilink3_sbe_v8_3.cross_id_optional.dissect(buffer, index, packet, parent)

  -- Host Cross Id: uInt64NULL
  index, host_cross_id = cme_ebs_ilink3_sbe_v8_3.host_cross_id.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_ebs_ilink3_sbe_v8_3.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: uInt32
  index, order_qty = cme_ebs_ilink3_sbe_v8_3.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: uInt32NULL
  index, min_qty = cme_ebs_ilink3_sbe_v8_3.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: uInt32NULL
  index, display_qty = cme_ebs_ilink3_sbe_v8_3.display_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: LocalMktDate
  index, expire_date = cme_ebs_ilink3_sbe_v8_3.expire_date.dissect(buffer, index, packet, parent)

  -- Delay Duration: uInt16NULL
  index, delay_duration = cme_ebs_ilink3_sbe_v8_3.delay_duration.dissect(buffer, index, packet, parent)

  -- Ord Type Optional: OrderType
  index, ord_type_optional = cme_ebs_ilink3_sbe_v8_3.ord_type_optional.dissect(buffer, index, packet, parent)

  -- Side: SideReq
  index, side = cme_ebs_ilink3_sbe_v8_3.side.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = cme_ebs_ilink3_sbe_v8_3.time_in_force.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: BooleanFlag
  index, poss_retrans_flag = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Split Msg: SplitMsg
  index, split_msg = cme_ebs_ilink3_sbe_v8_3.split_msg.dissect(buffer, index, packet, parent)

  -- Cross Type: uInt8NULL
  index, cross_type = cme_ebs_ilink3_sbe_v8_3.cross_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_ebs_ilink3_sbe_v8_3.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: ExecMode
  index, execution_mode = cme_ebs_ilink3_sbe_v8_3.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: BooleanNULL
  index, liquidity_flag = cme_ebs_ilink3_sbe_v8_3.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: BooleanNULL
  index, managed_order = cme_ebs_ilink3_sbe_v8_3.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: ShortSaleType
  index, short_sale_type = cme_ebs_ilink3_sbe_v8_3.short_sale_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report New
cme_ebs_ilink3_sbe_v8_3.execution_report_new.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_report_new, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.execution_report_new.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.execution_report_new.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.execution_report_new.fields(buffer, offset, packet, parent)
  end
end

-- Business Reject
cme_ebs_ilink3_sbe_v8_3.business_reject = {}

-- Size: Business Reject
cme_ebs_ilink3_sbe_v8_3.business_reject.size =
  cme_ebs_ilink3_sbe_v8_3.seq_num.size + 
  cme_ebs_ilink3_sbe_v8_3.uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.text.size + 
  cme_ebs_ilink3_sbe_v8_3.sender_id_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size + 
  cme_ebs_ilink3_sbe_v8_3.business_reject_ref_id.size + 
  cme_ebs_ilink3_sbe_v8_3.location_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.ref_seq_num.size + 
  cme_ebs_ilink3_sbe_v8_3.ref_tag_id.size + 
  cme_ebs_ilink3_sbe_v8_3.business_reject_reason.size + 
  cme_ebs_ilink3_sbe_v8_3.ref_msg_type.size + 
  cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size + 
  cme_ebs_ilink3_sbe_v8_3.manual_order_indicator_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.split_msg.size

-- Display: Business Reject
cme_ebs_ilink3_sbe_v8_3.business_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Reject
cme_ebs_ilink3_sbe_v8_3.business_reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Text: String256
  index, text = cme_ebs_ilink3_sbe_v8_3.text.dissect(buffer, index, packet, parent)

  -- Sender Id Optional: String20
  index, sender_id_optional = cme_ebs_ilink3_sbe_v8_3.sender_id_optional.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id Optional: uInt64NULL
  index, party_details_list_req_id_optional = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id_optional.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Business Reject Ref Id: uInt64NULL
  index, business_reject_ref_id = cme_ebs_ilink3_sbe_v8_3.business_reject_ref_id.dissect(buffer, index, packet, parent)

  -- Location Optional: String5
  index, location_optional = cme_ebs_ilink3_sbe_v8_3.location_optional.dissect(buffer, index, packet, parent)

  -- Ref Seq Num: uInt32NULL
  index, ref_seq_num = cme_ebs_ilink3_sbe_v8_3.ref_seq_num.dissect(buffer, index, packet, parent)

  -- Ref Tag Id: uInt16NULL
  index, ref_tag_id = cme_ebs_ilink3_sbe_v8_3.ref_tag_id.dissect(buffer, index, packet, parent)

  -- Business Reject Reason: uInt16
  index, business_reject_reason = cme_ebs_ilink3_sbe_v8_3.business_reject_reason.dissect(buffer, index, packet, parent)

  -- Ref Msg Type: String2
  index, ref_msg_type = cme_ebs_ilink3_sbe_v8_3.ref_msg_type.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: BooleanFlag
  index, poss_retrans_flag = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator Optional: ManualOrdInd
  index, manual_order_indicator_optional = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator_optional.dissect(buffer, index, packet, parent)

  -- Split Msg: SplitMsg
  index, split_msg = cme_ebs_ilink3_sbe_v8_3.split_msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Reject
cme_ebs_ilink3_sbe_v8_3.business_reject.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.business_reject, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.business_reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.business_reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.business_reject.fields(buffer, offset, packet, parent)
  end
end

-- Party Details Definition Request Ack
cme_ebs_ilink3_sbe_v8_3.party_details_definition_request_ack = {}

-- Calculate size of: Party Details Definition Request Ack
cme_ebs_ilink3_sbe_v8_3.party_details_definition_request_ack.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.seq_num.size

  index = index + cme_ebs_ilink3_sbe_v8_3.uuid.size

  index = index + cme_ebs_ilink3_sbe_v8_3.memo.size

  index = index + cme_ebs_ilink3_sbe_v8_3.avg_px_group_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size

  index = index + cme_ebs_ilink3_sbe_v8_3.self_match_prevention_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.party_detail_request_status.size

  index = index + cme_ebs_ilink3_sbe_v8_3.cust_order_capacity.size

  index = index + cme_ebs_ilink3_sbe_v8_3.clearing_account_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.self_match_prevention_instruction.size

  index = index + cme_ebs_ilink3_sbe_v8_3.avg_px_indicator.size

  index = index + cme_ebs_ilink3_sbe_v8_3.clearing_trade_price_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.cmta_giveup_cd.size

  index = index + cme_ebs_ilink3_sbe_v8_3.cust_order_handling_inst.size

  index = index + cme_ebs_ilink3_sbe_v8_3.list_update_action.size

  index = index + cme_ebs_ilink3_sbe_v8_3.party_detail_definition_status.size

  index = index + cme_ebs_ilink3_sbe_v8_3.executor.size

  index = index + cme_ebs_ilink3_sbe_v8_3.idm_short_code.size

  index = index + cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.size

  index = index + cme_ebs_ilink3_sbe_v8_3.split_msg.size

  index = index + cme_ebs_ilink3_sbe_v8_3.party_details_groups.size(buffer, offset + index)

  index = index + cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_groups.size(buffer, offset + index)

  return index
end

-- Display: Party Details Definition Request Ack
cme_ebs_ilink3_sbe_v8_3.party_details_definition_request_ack.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Party Details Definition Request Ack
cme_ebs_ilink3_sbe_v8_3.party_details_definition_request_ack.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Memo: String75
  index, memo = cme_ebs_ilink3_sbe_v8_3.memo.dissect(buffer, index, packet, parent)

  -- Avg Px Group Id: String20
  index, avg_px_group_id = cme_ebs_ilink3_sbe_v8_3.avg_px_group_id.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id: uInt64NULL
  index, self_match_prevention_id = cme_ebs_ilink3_sbe_v8_3.self_match_prevention_id.dissect(buffer, index, packet, parent)

  -- Party Detail Request Status: uInt8
  index, party_detail_request_status = cme_ebs_ilink3_sbe_v8_3.party_detail_request_status.dissect(buffer, index, packet, parent)

  -- Cust Order Capacity: CustOrderCapacity
  index, cust_order_capacity = cme_ebs_ilink3_sbe_v8_3.cust_order_capacity.dissect(buffer, index, packet, parent)

  -- Clearing Account Type: ClearingAcctType
  index, clearing_account_type = cme_ebs_ilink3_sbe_v8_3.clearing_account_type.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Instruction: SMPI
  index, self_match_prevention_instruction = cme_ebs_ilink3_sbe_v8_3.self_match_prevention_instruction.dissect(buffer, index, packet, parent)

  -- Avg Px Indicator: AvgPxInd
  index, avg_px_indicator = cme_ebs_ilink3_sbe_v8_3.avg_px_indicator.dissect(buffer, index, packet, parent)

  -- Clearing Trade Price Type: SLEDS
  index, clearing_trade_price_type = cme_ebs_ilink3_sbe_v8_3.clearing_trade_price_type.dissect(buffer, index, packet, parent)

  -- Cmta Giveup Cd: CmtaGiveUpCD
  index, cmta_giveup_cd = cme_ebs_ilink3_sbe_v8_3.cmta_giveup_cd.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: CustOrdHandlInst
  index, cust_order_handling_inst = cme_ebs_ilink3_sbe_v8_3.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- List Update Action: ListUpdAct
  index, list_update_action = cme_ebs_ilink3_sbe_v8_3.list_update_action.dissect(buffer, index, packet, parent)

  -- Party Detail Definition Status: uInt8
  index, party_detail_definition_status = cme_ebs_ilink3_sbe_v8_3.party_detail_definition_status.dissect(buffer, index, packet, parent)

  -- Executor: uInt64NULL
  index, executor = cme_ebs_ilink3_sbe_v8_3.executor.dissect(buffer, index, packet, parent)

  -- Idm Short Code: uInt64NULL
  index, idm_short_code = cme_ebs_ilink3_sbe_v8_3.idm_short_code.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: BooleanFlag
  index, poss_retrans_flag = cme_ebs_ilink3_sbe_v8_3.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Split Msg: SplitMsg
  index, split_msg = cme_ebs_ilink3_sbe_v8_3.split_msg.dissect(buffer, index, packet, parent)

  -- Party Details Groups: Struct of 2 fields
  index, party_details_groups = cme_ebs_ilink3_sbe_v8_3.party_details_groups.dissect(buffer, index, packet, parent)

  -- Trd Reg Publications Groups: Struct of 2 fields
  index, trd_reg_publications_groups = cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details Definition Request Ack
cme_ebs_ilink3_sbe_v8_3.party_details_definition_request_ack.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.party_details_definition_request_ack, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.party_details_definition_request_ack.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.party_details_definition_request_ack.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.party_details_definition_request_ack.fields(buffer, offset, packet, parent)
  end
end

-- Not Applied
cme_ebs_ilink3_sbe_v8_3.not_applied = {}

-- Size: Not Applied
cme_ebs_ilink3_sbe_v8_3.not_applied.size =
  cme_ebs_ilink3_sbe_v8_3.uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.from_seq_no.size + 
  cme_ebs_ilink3_sbe_v8_3.msg_count.size + 
  cme_ebs_ilink3_sbe_v8_3.split_msg.size

-- Display: Not Applied
cme_ebs_ilink3_sbe_v8_3.not_applied.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Not Applied
cme_ebs_ilink3_sbe_v8_3.not_applied.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- From Seq No: uInt32
  index, from_seq_no = cme_ebs_ilink3_sbe_v8_3.from_seq_no.dissect(buffer, index, packet, parent)

  -- Msg Count: uInt32
  index, msg_count = cme_ebs_ilink3_sbe_v8_3.msg_count.dissect(buffer, index, packet, parent)

  -- Split Msg: SplitMsg
  index, split_msg = cme_ebs_ilink3_sbe_v8_3.split_msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Not Applied
cme_ebs_ilink3_sbe_v8_3.not_applied.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.not_applied, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.not_applied.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.not_applied.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.not_applied.fields(buffer, offset, packet, parent)
  end
end

-- Retransmit Reject
cme_ebs_ilink3_sbe_v8_3.retransmit_reject = {}

-- Size: Retransmit Reject
cme_ebs_ilink3_sbe_v8_3.retransmit_reject.size =
  cme_ebs_ilink3_sbe_v8_3.reason.size + 
  cme_ebs_ilink3_sbe_v8_3.uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.last_uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.request_timestamp.size + 
  cme_ebs_ilink3_sbe_v8_3.error_codes.size + 
  cme_ebs_ilink3_sbe_v8_3.split_msg.size

-- Display: Retransmit Reject
cme_ebs_ilink3_sbe_v8_3.retransmit_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Reject
cme_ebs_ilink3_sbe_v8_3.retransmit_reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: String48
  index, reason = cme_ebs_ilink3_sbe_v8_3.reason.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Last Uuid: uInt64NULL
  index, last_uuid = cme_ebs_ilink3_sbe_v8_3.last_uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: uInt64
  index, request_timestamp = cme_ebs_ilink3_sbe_v8_3.request_timestamp.dissect(buffer, index, packet, parent)

  -- Error Codes: uInt16
  index, error_codes = cme_ebs_ilink3_sbe_v8_3.error_codes.dissect(buffer, index, packet, parent)

  -- Split Msg: SplitMsg
  index, split_msg = cme_ebs_ilink3_sbe_v8_3.split_msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Reject
cme_ebs_ilink3_sbe_v8_3.retransmit_reject.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.retransmit_reject, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.retransmit_reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.retransmit_reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.retransmit_reject.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission
cme_ebs_ilink3_sbe_v8_3.retransmission = {}

-- Size: Retransmission
cme_ebs_ilink3_sbe_v8_3.retransmission.size =
  cme_ebs_ilink3_sbe_v8_3.uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.last_uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.request_timestamp.size + 
  cme_ebs_ilink3_sbe_v8_3.from_seq_no.size + 
  cme_ebs_ilink3_sbe_v8_3.msg_count_16.size + 
  cme_ebs_ilink3_sbe_v8_3.split_msg.size

-- Display: Retransmission
cme_ebs_ilink3_sbe_v8_3.retransmission.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission
cme_ebs_ilink3_sbe_v8_3.retransmission.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Last Uuid: uInt64NULL
  index, last_uuid = cme_ebs_ilink3_sbe_v8_3.last_uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: uInt64
  index, request_timestamp = cme_ebs_ilink3_sbe_v8_3.request_timestamp.dissect(buffer, index, packet, parent)

  -- From Seq No: uInt32
  index, from_seq_no = cme_ebs_ilink3_sbe_v8_3.from_seq_no.dissect(buffer, index, packet, parent)

  -- Msg Count 16: uInt16
  index, msg_count_16 = cme_ebs_ilink3_sbe_v8_3.msg_count_16.dissect(buffer, index, packet, parent)

  -- Split Msg: SplitMsg
  index, split_msg = cme_ebs_ilink3_sbe_v8_3.split_msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission
cme_ebs_ilink3_sbe_v8_3.retransmission.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.retransmission, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.retransmission.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.retransmission.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.retransmission.fields(buffer, offset, packet, parent)
  end
end

-- Terminate
cme_ebs_ilink3_sbe_v8_3.terminate = {}

-- Size: Terminate
cme_ebs_ilink3_sbe_v8_3.terminate.size =
  cme_ebs_ilink3_sbe_v8_3.reason.size + 
  cme_ebs_ilink3_sbe_v8_3.uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.request_timestamp.size + 
  cme_ebs_ilink3_sbe_v8_3.error_codes.size + 
  cme_ebs_ilink3_sbe_v8_3.split_msg.size

-- Display: Terminate
cme_ebs_ilink3_sbe_v8_3.terminate.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Terminate
cme_ebs_ilink3_sbe_v8_3.terminate.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: String48
  index, reason = cme_ebs_ilink3_sbe_v8_3.reason.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: uInt64
  index, request_timestamp = cme_ebs_ilink3_sbe_v8_3.request_timestamp.dissect(buffer, index, packet, parent)

  -- Error Codes: uInt16
  index, error_codes = cme_ebs_ilink3_sbe_v8_3.error_codes.dissect(buffer, index, packet, parent)

  -- Split Msg: SplitMsg
  index, split_msg = cme_ebs_ilink3_sbe_v8_3.split_msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Terminate
cme_ebs_ilink3_sbe_v8_3.terminate.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.terminate, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.terminate.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.terminate.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.terminate.fields(buffer, offset, packet, parent)
  end
end

-- Sequence
cme_ebs_ilink3_sbe_v8_3.sequence = {}

-- Size: Sequence
cme_ebs_ilink3_sbe_v8_3.sequence.size =
  cme_ebs_ilink3_sbe_v8_3.uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.next_seq_no.size + 
  cme_ebs_ilink3_sbe_v8_3.fault_tolerance_indicator.size + 
  cme_ebs_ilink3_sbe_v8_3.keep_alive_interval_lapsed.size

-- Display: Sequence
cme_ebs_ilink3_sbe_v8_3.sequence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence
cme_ebs_ilink3_sbe_v8_3.sequence.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Next Seq No: uInt32
  index, next_seq_no = cme_ebs_ilink3_sbe_v8_3.next_seq_no.dissect(buffer, index, packet, parent)

  -- Fault Tolerance Indicator: FTI
  index, fault_tolerance_indicator = cme_ebs_ilink3_sbe_v8_3.fault_tolerance_indicator.dissect(buffer, index, packet, parent)

  -- Keep Alive Interval Lapsed: KeepAliveLapsed
  index, keep_alive_interval_lapsed = cme_ebs_ilink3_sbe_v8_3.keep_alive_interval_lapsed.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence
cme_ebs_ilink3_sbe_v8_3.sequence.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.sequence, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.sequence.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.sequence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.sequence.fields(buffer, offset, packet, parent)
  end
end

-- Establishment Reject
cme_ebs_ilink3_sbe_v8_3.establishment_reject = {}

-- Size: Establishment Reject
cme_ebs_ilink3_sbe_v8_3.establishment_reject.size =
  cme_ebs_ilink3_sbe_v8_3.reason.size + 
  cme_ebs_ilink3_sbe_v8_3.uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.request_timestamp.size + 
  cme_ebs_ilink3_sbe_v8_3.next_seq_no.size + 
  cme_ebs_ilink3_sbe_v8_3.error_codes.size + 
  cme_ebs_ilink3_sbe_v8_3.fault_tolerance_indicator.size + 
  cme_ebs_ilink3_sbe_v8_3.split_msg.size

-- Display: Establishment Reject
cme_ebs_ilink3_sbe_v8_3.establishment_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Establishment Reject
cme_ebs_ilink3_sbe_v8_3.establishment_reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: String48
  index, reason = cme_ebs_ilink3_sbe_v8_3.reason.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: uInt64
  index, request_timestamp = cme_ebs_ilink3_sbe_v8_3.request_timestamp.dissect(buffer, index, packet, parent)

  -- Next Seq No: uInt32
  index, next_seq_no = cme_ebs_ilink3_sbe_v8_3.next_seq_no.dissect(buffer, index, packet, parent)

  -- Error Codes: uInt16
  index, error_codes = cme_ebs_ilink3_sbe_v8_3.error_codes.dissect(buffer, index, packet, parent)

  -- Fault Tolerance Indicator: FTI
  index, fault_tolerance_indicator = cme_ebs_ilink3_sbe_v8_3.fault_tolerance_indicator.dissect(buffer, index, packet, parent)

  -- Split Msg: SplitMsg
  index, split_msg = cme_ebs_ilink3_sbe_v8_3.split_msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Establishment Reject
cme_ebs_ilink3_sbe_v8_3.establishment_reject.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.establishment_reject, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.establishment_reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.establishment_reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.establishment_reject.fields(buffer, offset, packet, parent)
  end
end

-- Establishment Ack
cme_ebs_ilink3_sbe_v8_3.establishment_ack = {}

-- Size: Establishment Ack
cme_ebs_ilink3_sbe_v8_3.establishment_ack.size =
  cme_ebs_ilink3_sbe_v8_3.uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.request_timestamp.size + 
  cme_ebs_ilink3_sbe_v8_3.next_seq_no.size + 
  cme_ebs_ilink3_sbe_v8_3.previous_seq_no.size + 
  cme_ebs_ilink3_sbe_v8_3.previous_uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.keep_alive_interval.size + 
  cme_ebs_ilink3_sbe_v8_3.secret_key_secure_id_expiration.size + 
  cme_ebs_ilink3_sbe_v8_3.fault_tolerance_indicator.size + 
  cme_ebs_ilink3_sbe_v8_3.split_msg.size

-- Display: Establishment Ack
cme_ebs_ilink3_sbe_v8_3.establishment_ack.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Establishment Ack
cme_ebs_ilink3_sbe_v8_3.establishment_ack.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: uInt64
  index, request_timestamp = cme_ebs_ilink3_sbe_v8_3.request_timestamp.dissect(buffer, index, packet, parent)

  -- Next Seq No: uInt32
  index, next_seq_no = cme_ebs_ilink3_sbe_v8_3.next_seq_no.dissect(buffer, index, packet, parent)

  -- Previous Seq No: uInt32
  index, previous_seq_no = cme_ebs_ilink3_sbe_v8_3.previous_seq_no.dissect(buffer, index, packet, parent)

  -- Previous Uuid: uInt64
  index, previous_uuid = cme_ebs_ilink3_sbe_v8_3.previous_uuid.dissect(buffer, index, packet, parent)

  -- Keep Alive Interval: uInt16
  index, keep_alive_interval = cme_ebs_ilink3_sbe_v8_3.keep_alive_interval.dissect(buffer, index, packet, parent)

  -- Secret Key Secure Id Expiration: uInt16NULL
  index, secret_key_secure_id_expiration = cme_ebs_ilink3_sbe_v8_3.secret_key_secure_id_expiration.dissect(buffer, index, packet, parent)

  -- Fault Tolerance Indicator: FTI
  index, fault_tolerance_indicator = cme_ebs_ilink3_sbe_v8_3.fault_tolerance_indicator.dissect(buffer, index, packet, parent)

  -- Split Msg: SplitMsg
  index, split_msg = cme_ebs_ilink3_sbe_v8_3.split_msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Establishment Ack
cme_ebs_ilink3_sbe_v8_3.establishment_ack.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.establishment_ack, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.establishment_ack.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.establishment_ack.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.establishment_ack.fields(buffer, offset, packet, parent)
  end
end

-- Negotiation Reject
cme_ebs_ilink3_sbe_v8_3.negotiation_reject = {}

-- Size: Negotiation Reject
cme_ebs_ilink3_sbe_v8_3.negotiation_reject.size =
  cme_ebs_ilink3_sbe_v8_3.reason.size + 
  cme_ebs_ilink3_sbe_v8_3.uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.request_timestamp.size + 
  cme_ebs_ilink3_sbe_v8_3.error_codes.size + 
  cme_ebs_ilink3_sbe_v8_3.fault_tolerance_indicator.size + 
  cme_ebs_ilink3_sbe_v8_3.split_msg.size

-- Display: Negotiation Reject
cme_ebs_ilink3_sbe_v8_3.negotiation_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Negotiation Reject
cme_ebs_ilink3_sbe_v8_3.negotiation_reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: String48
  index, reason = cme_ebs_ilink3_sbe_v8_3.reason.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: uInt64
  index, request_timestamp = cme_ebs_ilink3_sbe_v8_3.request_timestamp.dissect(buffer, index, packet, parent)

  -- Error Codes: uInt16
  index, error_codes = cme_ebs_ilink3_sbe_v8_3.error_codes.dissect(buffer, index, packet, parent)

  -- Fault Tolerance Indicator: FTI
  index, fault_tolerance_indicator = cme_ebs_ilink3_sbe_v8_3.fault_tolerance_indicator.dissect(buffer, index, packet, parent)

  -- Split Msg: SplitMsg
  index, split_msg = cme_ebs_ilink3_sbe_v8_3.split_msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiation Reject
cme_ebs_ilink3_sbe_v8_3.negotiation_reject.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.negotiation_reject, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.negotiation_reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.negotiation_reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.negotiation_reject.fields(buffer, offset, packet, parent)
  end
end

-- Credentials
cme_ebs_ilink3_sbe_v8_3.credentials = {}

-- Calculate size of: Credentials
cme_ebs_ilink3_sbe_v8_3.credentials.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.credentials_length.size

  local credentials_length = buffer(offset + 0, 2):le_uint()

  if credentials_length > 0 then
    -- Parse runtime size of: Credentials Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Credentials
cme_ebs_ilink3_sbe_v8_3.credentials.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Credentials
cme_ebs_ilink3_sbe_v8_3.credentials.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Credentials Length: uint16
  index, credentials_length = cme_ebs_ilink3_sbe_v8_3.credentials_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Credentials Data
  local credentials_data = nil

  local credentials_data_exists = credentials_length > 0

  if credentials_data_exists then

    -- Runtime Size Of: Credentials Data
    index, credentials_data = cme_ebs_ilink3_sbe_v8_3.credentials_data.dissect(buffer, index, packet, parent, credentials_length)
  end

  -- Composite value
  local credentials = credentials_data

  return index, credentials
end

-- Dissect: Credentials
cme_ebs_ilink3_sbe_v8_3.credentials.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.credentials, buffer(offset, 0))
    local index, value = cme_ebs_ilink3_sbe_v8_3.credentials.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.credentials.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.credentials.fields(buffer, offset, packet, parent)
  end
end

-- Negotiation Response
cme_ebs_ilink3_sbe_v8_3.negotiation_response = {}

-- Calculate size of: Negotiation Response
cme_ebs_ilink3_sbe_v8_3.negotiation_response.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.uuid.size

  index = index + cme_ebs_ilink3_sbe_v8_3.request_timestamp.size

  index = index + cme_ebs_ilink3_sbe_v8_3.secret_key_secure_id_expiration.size

  index = index + cme_ebs_ilink3_sbe_v8_3.fault_tolerance_indicator.size

  index = index + cme_ebs_ilink3_sbe_v8_3.split_msg.size

  index = index + cme_ebs_ilink3_sbe_v8_3.previous_seq_no.size

  index = index + cme_ebs_ilink3_sbe_v8_3.previous_uuid.size

  index = index + cme_ebs_ilink3_sbe_v8_3.credentials.size(buffer, offset + index)

  return index
end

-- Display: Negotiation Response
cme_ebs_ilink3_sbe_v8_3.negotiation_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Negotiation Response
cme_ebs_ilink3_sbe_v8_3.negotiation_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: uInt64
  index, request_timestamp = cme_ebs_ilink3_sbe_v8_3.request_timestamp.dissect(buffer, index, packet, parent)

  -- Secret Key Secure Id Expiration: uInt16NULL
  index, secret_key_secure_id_expiration = cme_ebs_ilink3_sbe_v8_3.secret_key_secure_id_expiration.dissect(buffer, index, packet, parent)

  -- Fault Tolerance Indicator: FTI
  index, fault_tolerance_indicator = cme_ebs_ilink3_sbe_v8_3.fault_tolerance_indicator.dissect(buffer, index, packet, parent)

  -- Split Msg: SplitMsg
  index, split_msg = cme_ebs_ilink3_sbe_v8_3.split_msg.dissect(buffer, index, packet, parent)

  -- Previous Seq No: uInt32
  index, previous_seq_no = cme_ebs_ilink3_sbe_v8_3.previous_seq_no.dissect(buffer, index, packet, parent)

  -- Previous Uuid: uInt64
  index, previous_uuid = cme_ebs_ilink3_sbe_v8_3.previous_uuid.dissect(buffer, index, packet, parent)

  -- Credentials: Struct of 2 fields
  index, credentials = cme_ebs_ilink3_sbe_v8_3.credentials.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiation Response
cme_ebs_ilink3_sbe_v8_3.negotiation_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.negotiation_response, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.negotiation_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.negotiation_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.negotiation_response.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
cme_ebs_ilink3_sbe_v8_3.server_payload = {}

-- Dissect: Server Payload
cme_ebs_ilink3_sbe_v8_3.server_payload.dispatch = {
  [501] = cme_ebs_ilink3_sbe_v8_3.negotiation_response.dissect,
  [502] = cme_ebs_ilink3_sbe_v8_3.negotiation_reject.dissect,
  [504] = cme_ebs_ilink3_sbe_v8_3.establishment_ack.dissect,
  [505] = cme_ebs_ilink3_sbe_v8_3.establishment_reject.dissect,
  [506] = cme_ebs_ilink3_sbe_v8_3.sequence.dissect,
  [507] = cme_ebs_ilink3_sbe_v8_3.terminate.dissect,
  [509] = cme_ebs_ilink3_sbe_v8_3.retransmission.dissect,
  [510] = cme_ebs_ilink3_sbe_v8_3.retransmit_reject.dissect,
  [513] = cme_ebs_ilink3_sbe_v8_3.not_applied.dissect,
  [519] = cme_ebs_ilink3_sbe_v8_3.party_details_definition_request_ack.dissect,
  [521] = cme_ebs_ilink3_sbe_v8_3.business_reject.dissect,
  [522] = cme_ebs_ilink3_sbe_v8_3.execution_report_new.dissect,
  [523] = cme_ebs_ilink3_sbe_v8_3.execution_report_reject.dissect,
  [524] = cme_ebs_ilink3_sbe_v8_3.execution_report_elimination.dissect,
  [525] = cme_ebs_ilink3_sbe_v8_3.execution_report_trade_outright.dissect,
  [526] = cme_ebs_ilink3_sbe_v8_3.execution_report_trade_spread.dissect,
  [527] = cme_ebs_ilink3_sbe_v8_3.execution_report_trade_spread_leg.dissect,
  [531] = cme_ebs_ilink3_sbe_v8_3.execution_report_modify.dissect,
  [532] = cme_ebs_ilink3_sbe_v8_3.execution_report_status.dissect,
  [534] = cme_ebs_ilink3_sbe_v8_3.execution_report_cancel.dissect,
  [535] = cme_ebs_ilink3_sbe_v8_3.order_cancel_reject.dissect,
  [536] = cme_ebs_ilink3_sbe_v8_3.order_cancel_replace_reject.dissect,
  [538] = cme_ebs_ilink3_sbe_v8_3.party_details_list_report.dissect,
  [546] = cme_ebs_ilink3_sbe_v8_3.request_for_quote_ack.dissect,
  [547] = cme_ebs_ilink3_sbe_v8_3.quote_cancel_ack.dissect,
  [548] = cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_outright.dissect,
  [549] = cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_spread.dissect,
  [550] = cme_ebs_ilink3_sbe_v8_3.execution_report_trade_addendum_spread_leg.dissect,
  [561] = cme_ebs_ilink3_sbe_v8_3.security_definition_response.dissect,
}

cme_ebs_ilink3_sbe_v8_3.server_payload.dissect = function(buffer, offset, packet, parent, template_id)
  local dissect = cme_ebs_ilink3_sbe_v8_3.server_payload.dispatch[template_id]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cme_ebs_ilink3_sbe_v8_3.message_header = {}

-- Size: Message Header
cme_ebs_ilink3_sbe_v8_3.message_header.size =
  cme_ebs_ilink3_sbe_v8_3.block_length.size + 
  cme_ebs_ilink3_sbe_v8_3.template_id.size + 
  cme_ebs_ilink3_sbe_v8_3.schema_id.size + 
  cme_ebs_ilink3_sbe_v8_3.version.size

-- Display: Message Header
cme_ebs_ilink3_sbe_v8_3.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cme_ebs_ilink3_sbe_v8_3.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = cme_ebs_ilink3_sbe_v8_3.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint16
  index, template_id = cme_ebs_ilink3_sbe_v8_3.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint16
  index, schema_id = cme_ebs_ilink3_sbe_v8_3.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = cme_ebs_ilink3_sbe_v8_3.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cme_ebs_ilink3_sbe_v8_3.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.message_header, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Simple Open Framing Header
cme_ebs_ilink3_sbe_v8_3.simple_open_framing_header = {}

-- Size: Simple Open Framing Header
cme_ebs_ilink3_sbe_v8_3.simple_open_framing_header.size =
  cme_ebs_ilink3_sbe_v8_3.message_length.size + 
  cme_ebs_ilink3_sbe_v8_3.encoding_type.size

-- Display: Simple Open Framing Header
cme_ebs_ilink3_sbe_v8_3.simple_open_framing_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Open Framing Header
cme_ebs_ilink3_sbe_v8_3.simple_open_framing_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cme_ebs_ilink3_sbe_v8_3.message_length.dissect(buffer, index, packet, parent)

  -- Encoding Type: 2 Byte Unsigned Fixed Width Integer
  index, encoding_type = cme_ebs_ilink3_sbe_v8_3.encoding_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Open Framing Header
cme_ebs_ilink3_sbe_v8_3.simple_open_framing_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.simple_open_framing_header, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.simple_open_framing_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.simple_open_framing_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.simple_open_framing_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Simple Open Frame
cme_ebs_ilink3_sbe_v8_3.server_simple_open_frame = {}

-- Display: Server Simple Open Frame
cme_ebs_ilink3_sbe_v8_3.server_simple_open_frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Simple Open Frame
cme_ebs_ilink3_sbe_v8_3.server_simple_open_frame.fields = function(buffer, offset, packet, parent, size_of_server_simple_open_frame)
  local index = offset

  -- Simple Open Framing Header: Struct of 2 fields
  index, simple_open_framing_header = cme_ebs_ilink3_sbe_v8_3.simple_open_framing_header.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_ebs_ilink3_sbe_v8_3.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Server Payload: Runtime Type with 29 branches
  index = cme_ebs_ilink3_sbe_v8_3.server_payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Server Simple Open Frame
cme_ebs_ilink3_sbe_v8_3.server_simple_open_frame.dissect = function(buffer, offset, packet, parent, size_of_server_simple_open_frame)
  local index = offset + size_of_server_simple_open_frame

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.server_simple_open_frame, buffer(offset, 0))
    local current = cme_ebs_ilink3_sbe_v8_3.server_simple_open_frame.fields(buffer, offset, packet, parent, size_of_server_simple_open_frame)
    parent:set_len(size_of_server_simple_open_frame)
    local display = cme_ebs_ilink3_sbe_v8_3.server_simple_open_frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cme_ebs_ilink3_sbe_v8_3.server_simple_open_frame.fields(buffer, offset, packet, parent, size_of_server_simple_open_frame)

    return index
  end
end

-- Remaining Bytes For: Server Simple Open Frame
local server_simple_open_frame_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < cme_ebs_ilink3_sbe_v8_3.simple_open_framing_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Server Packet
cme_ebs_ilink3_sbe_v8_3.server_packet = {}

-- Verify required size of Tcp packet
cme_ebs_ilink3_sbe_v8_3.server_packet.requiredsize = function(buffer)
  return buffer:len() >= cme_ebs_ilink3_sbe_v8_3.simple_open_framing_header.size + cme_ebs_ilink3_sbe_v8_3.message_header.size
end

-- Dissect Server Packet
cme_ebs_ilink3_sbe_v8_3.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Simple Open Frame
  local end_of_payload = buffer:len()

  -- Server Simple Open Frame: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_simple_open_frame = server_simple_open_frame_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_server_simple_open_frame):tvb()
      index = cme_ebs_ilink3_sbe_v8_3.server_simple_open_frame.dissect(frame, index, packet, parent, size_of_server_simple_open_frame)
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

-- Request Legs Group
cme_ebs_ilink3_sbe_v8_3.request_legs_group = {}

-- Size: Request Legs Group
cme_ebs_ilink3_sbe_v8_3.request_legs_group.size =
  cme_ebs_ilink3_sbe_v8_3.leg_price.size + 
  cme_ebs_ilink3_sbe_v8_3.leg_security_id.size + 
  cme_ebs_ilink3_sbe_v8_3.leg_option_delta.size + 
  cme_ebs_ilink3_sbe_v8_3.leg_side.size + 
  cme_ebs_ilink3_sbe_v8_3.leg_ratio_qty.size

-- Display: Request Legs Group
cme_ebs_ilink3_sbe_v8_3.request_legs_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Legs Group
cme_ebs_ilink3_sbe_v8_3.request_legs_group.fields = function(buffer, offset, packet, parent, request_legs_group_index)
  local index = offset

  -- Implicit Request Legs Group Index
  if request_legs_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.request_legs_group_index, request_legs_group_index)
    iteration:set_generated()
  end

  -- Leg Price: PRICENULL9
  index, leg_price = cme_ebs_ilink3_sbe_v8_3.leg_price.dissect(buffer, index, packet, parent)

  -- Leg Security Id: Int32
  index, leg_security_id = cme_ebs_ilink3_sbe_v8_3.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Option Delta: Struct of 2 fields
  index, leg_option_delta = cme_ebs_ilink3_sbe_v8_3.leg_option_delta.dissect(buffer, index, packet, parent)

  -- Leg Side: SideReq
  index, leg_side = cme_ebs_ilink3_sbe_v8_3.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: uInt8NULL
  index, leg_ratio_qty = cme_ebs_ilink3_sbe_v8_3.leg_ratio_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Legs Group
cme_ebs_ilink3_sbe_v8_3.request_legs_group.dissect = function(buffer, offset, packet, parent, request_legs_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.request_legs_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.request_legs_group.fields(buffer, offset, packet, parent, request_legs_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.request_legs_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.request_legs_group.fields(buffer, offset, packet, parent, request_legs_group_index)
  end
end

-- Request Legs Groups
cme_ebs_ilink3_sbe_v8_3.request_legs_groups = {}

-- Calculate size of: Request Legs Groups
cme_ebs_ilink3_sbe_v8_3.request_legs_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local request_legs_group_count = buffer(offset + index - 1, 1):uint()
  index = index + request_legs_group_count * 19

  return index
end

-- Display: Request Legs Groups
cme_ebs_ilink3_sbe_v8_3.request_legs_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Legs Groups
cme_ebs_ilink3_sbe_v8_3.request_legs_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Request Legs Group
  for request_legs_group_index = 1, num_in_group do
    index, request_legs_group = cme_ebs_ilink3_sbe_v8_3.request_legs_group.dissect(buffer, index, packet, parent, request_legs_group_index)
  end

  return index
end

-- Dissect: Request Legs Groups
cme_ebs_ilink3_sbe_v8_3.request_legs_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.request_legs_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.request_legs_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.request_legs_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.request_legs_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Request
cme_ebs_ilink3_sbe_v8_3.security_definition_request = {}

-- Calculate size of: Security Definition Request
cme_ebs_ilink3_sbe_v8_3.security_definition_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.security_req_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size

  index = index + cme_ebs_ilink3_sbe_v8_3.seq_num.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sender_id_optional.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size

  index = index + cme_ebs_ilink3_sbe_v8_3.security_sub_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.location.size

  index = index + cme_ebs_ilink3_sbe_v8_3.start_date.size

  index = index + cme_ebs_ilink3_sbe_v8_3.end_date.size

  index = index + cme_ebs_ilink3_sbe_v8_3.max_no_of_substitutions.size

  index = index + cme_ebs_ilink3_sbe_v8_3.source_repo_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.request_legs_groups.size(buffer, offset + index)

  return index
end

-- Display: Security Definition Request
cme_ebs_ilink3_sbe_v8_3.security_definition_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Request
cme_ebs_ilink3_sbe_v8_3.security_definition_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Security Req Id: uInt64
  index, security_req_id = cme_ebs_ilink3_sbe_v8_3.security_req_id.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Sender Id Optional: String20
  index, sender_id_optional = cme_ebs_ilink3_sbe_v8_3.sender_id_optional.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Security Sub Type: String8Req
  index, security_sub_type = cme_ebs_ilink3_sbe_v8_3.security_sub_type.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Start Date: LocalMktDate
  index, start_date = cme_ebs_ilink3_sbe_v8_3.start_date.dissect(buffer, index, packet, parent)

  -- End Date: LocalMktDate
  index, end_date = cme_ebs_ilink3_sbe_v8_3.end_date.dissect(buffer, index, packet, parent)

  -- Max No Of Substitutions: uInt8NULL
  index, max_no_of_substitutions = cme_ebs_ilink3_sbe_v8_3.max_no_of_substitutions.dissect(buffer, index, packet, parent)

  -- Source Repo Id: Int32NULL
  index, source_repo_id = cme_ebs_ilink3_sbe_v8_3.source_repo_id.dissect(buffer, index, packet, parent)

  -- Request Legs Groups: Struct of 2 fields
  index, request_legs_groups = cme_ebs_ilink3_sbe_v8_3.request_legs_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Request
cme_ebs_ilink3_sbe_v8_3.security_definition_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.security_definition_request, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.security_definition_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.security_definition_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.security_definition_request.fields(buffer, offset, packet, parent)
  end
end

-- Sides Group
cme_ebs_ilink3_sbe_v8_3.sides_group = {}

-- Size: Sides Group
cme_ebs_ilink3_sbe_v8_3.sides_group.size =
  cme_ebs_ilink3_sbe_v8_3.clordid.size + 
  cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.side.size + 
  cme_ebs_ilink3_sbe_v8_3.side_time_in_force.size

-- Display: Sides Group
cme_ebs_ilink3_sbe_v8_3.sides_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sides Group
cme_ebs_ilink3_sbe_v8_3.sides_group.fields = function(buffer, offset, packet, parent, sides_group_index)
  local index = offset

  -- Implicit Sides Group Index
  if sides_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.sides_group_index, sides_group_index)
    iteration:set_generated()
  end

  -- ClOrdId: String20Req
  index, clordid = cme_ebs_ilink3_sbe_v8_3.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Qty: uInt32
  index, order_qty = cme_ebs_ilink3_sbe_v8_3.order_qty.dissect(buffer, index, packet, parent)

  -- Side: SideReq
  index, side = cme_ebs_ilink3_sbe_v8_3.side.dissect(buffer, index, packet, parent)

  -- Side Time In Force: SideTimeInForce
  index, side_time_in_force = cme_ebs_ilink3_sbe_v8_3.side_time_in_force.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sides Group
cme_ebs_ilink3_sbe_v8_3.sides_group.dissect = function(buffer, offset, packet, parent, sides_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.sides_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.sides_group.fields(buffer, offset, packet, parent, sides_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.sides_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.sides_group.fields(buffer, offset, packet, parent, sides_group_index)
  end
end

-- Sides Groups
cme_ebs_ilink3_sbe_v8_3.sides_groups = {}

-- Calculate size of: Sides Groups
cme_ebs_ilink3_sbe_v8_3.sides_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local sides_group_count = buffer(offset + index - 1, 1):uint()
  index = index + sides_group_count * 34

  return index
end

-- Display: Sides Groups
cme_ebs_ilink3_sbe_v8_3.sides_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sides Groups
cme_ebs_ilink3_sbe_v8_3.sides_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Sides Group
  for sides_group_index = 1, num_in_group do
    index, sides_group = cme_ebs_ilink3_sbe_v8_3.sides_group.dissect(buffer, index, packet, parent, sides_group_index)
  end

  return index
end

-- Dissect: Sides Groups
cme_ebs_ilink3_sbe_v8_3.sides_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.sides_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.sides_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.sides_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.sides_groups.fields(buffer, offset, packet, parent)
  end
end

-- New Order Cross
cme_ebs_ilink3_sbe_v8_3.new_order_cross = {}

-- Calculate size of: New Order Cross
cme_ebs_ilink3_sbe_v8_3.new_order_cross.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.cross_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.order_request_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size

  index = index + cme_ebs_ilink3_sbe_v8_3.seq_num.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sender_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.price.size

  index = index + cme_ebs_ilink3_sbe_v8_3.trans_bkd_time.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size

  index = index + cme_ebs_ilink3_sbe_v8_3.location.size

  index = index + cme_ebs_ilink3_sbe_v8_3.security_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sides_groups.size(buffer, offset + index)

  return index
end

-- Display: New Order Cross
cme_ebs_ilink3_sbe_v8_3.new_order_cross.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Cross
cme_ebs_ilink3_sbe_v8_3.new_order_cross.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cross Id: uInt64
  index, cross_id = cme_ebs_ilink3_sbe_v8_3.cross_id.dissect(buffer, index, packet, parent)

  -- Order Request Id: uInt64
  index, order_request_id = cme_ebs_ilink3_sbe_v8_3.order_request_id.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- Price: PRICE9
  index, price = cme_ebs_ilink3_sbe_v8_3.price.dissect(buffer, index, packet, parent)

  -- Trans Bkd Time: uInt64
  index, trans_bkd_time = cme_ebs_ilink3_sbe_v8_3.trans_bkd_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_ebs_ilink3_sbe_v8_3.security_id.dissect(buffer, index, packet, parent)

  -- Sides Groups: Struct of 2 fields
  index, sides_groups = cme_ebs_ilink3_sbe_v8_3.sides_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Cross
cme_ebs_ilink3_sbe_v8_3.new_order_cross.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.new_order_cross, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.new_order_cross.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.new_order_cross.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.new_order_cross.fields(buffer, offset, packet, parent)
  end
end

-- Related Sym Group
cme_ebs_ilink3_sbe_v8_3.related_sym_group = {}

-- Size: Related Sym Group
cme_ebs_ilink3_sbe_v8_3.related_sym_group.size =
  cme_ebs_ilink3_sbe_v8_3.security_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_qty_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.rfq_side.size

-- Display: Related Sym Group
cme_ebs_ilink3_sbe_v8_3.related_sym_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Related Sym Group
cme_ebs_ilink3_sbe_v8_3.related_sym_group.fields = function(buffer, offset, packet, parent, related_sym_group_index)
  local index = offset

  -- Implicit Related Sym Group Index
  if related_sym_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.related_sym_group_index, related_sym_group_index)
    iteration:set_generated()
  end

  -- Security Id: Int32
  index, security_id = cme_ebs_ilink3_sbe_v8_3.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty Optional: uInt32NULL
  index, order_qty_optional = cme_ebs_ilink3_sbe_v8_3.order_qty_optional.dissect(buffer, index, packet, parent)

  -- Rfq Side: RFQSide
  index, rfq_side = cme_ebs_ilink3_sbe_v8_3.rfq_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Related Sym Group
cme_ebs_ilink3_sbe_v8_3.related_sym_group.dissect = function(buffer, offset, packet, parent, related_sym_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.related_sym_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.related_sym_group.fields(buffer, offset, packet, parent, related_sym_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.related_sym_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.related_sym_group.fields(buffer, offset, packet, parent, related_sym_group_index)
  end
end

-- Related Sym Groups
cme_ebs_ilink3_sbe_v8_3.related_sym_groups = {}

-- Calculate size of: Related Sym Groups
cme_ebs_ilink3_sbe_v8_3.related_sym_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local related_sym_group_count = buffer(offset + index - 1, 1):uint()
  index = index + related_sym_group_count * 9

  return index
end

-- Display: Related Sym Groups
cme_ebs_ilink3_sbe_v8_3.related_sym_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Related Sym Groups
cme_ebs_ilink3_sbe_v8_3.related_sym_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Related Sym Group
  for related_sym_group_index = 1, num_in_group do
    index, related_sym_group = cme_ebs_ilink3_sbe_v8_3.related_sym_group.dissect(buffer, index, packet, parent, related_sym_group_index)
  end

  return index
end

-- Dissect: Related Sym Groups
cme_ebs_ilink3_sbe_v8_3.related_sym_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.related_sym_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.related_sym_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.related_sym_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.related_sym_groups.fields(buffer, offset, packet, parent)
  end
end

-- Request For Quote
cme_ebs_ilink3_sbe_v8_3.request_for_quote = {}

-- Calculate size of: Request For Quote
cme_ebs_ilink3_sbe_v8_3.request_for_quote.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.quote_req_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size

  index = index + cme_ebs_ilink3_sbe_v8_3.seq_num.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sender_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size

  index = index + cme_ebs_ilink3_sbe_v8_3.location.size

  index = index + cme_ebs_ilink3_sbe_v8_3.quote_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.related_sym_groups.size(buffer, offset + index)

  return index
end

-- Display: Request For Quote
cme_ebs_ilink3_sbe_v8_3.request_for_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request For Quote
cme_ebs_ilink3_sbe_v8_3.request_for_quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Quote Req Id: uInt64
  index, quote_req_id = cme_ebs_ilink3_sbe_v8_3.quote_req_id.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Quote Type: QuoteTyp
  index, quote_type = cme_ebs_ilink3_sbe_v8_3.quote_type.dissect(buffer, index, packet, parent)

  -- Related Sym Groups: Struct of 2 fields
  index, related_sym_groups = cme_ebs_ilink3_sbe_v8_3.related_sym_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Quote
cme_ebs_ilink3_sbe_v8_3.request_for_quote.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.request_for_quote, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.request_for_quote.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.request_for_quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.request_for_quote.fields(buffer, offset, packet, parent)
  end
end

-- Execution Ack
cme_ebs_ilink3_sbe_v8_3.execution_ack = {}

-- Size: Execution Ack
cme_ebs_ilink3_sbe_v8_3.execution_ack.size =
  cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_id.size + 
  cme_ebs_ilink3_sbe_v8_3.exec_ack_status.size + 
  cme_ebs_ilink3_sbe_v8_3.seq_num.size + 
  cme_ebs_ilink3_sbe_v8_3.clordid.size + 
  cme_ebs_ilink3_sbe_v8_3.sec_exec_id.size + 
  cme_ebs_ilink3_sbe_v8_3.last_px.size + 
  cme_ebs_ilink3_sbe_v8_3.security_id.size + 
  cme_ebs_ilink3_sbe_v8_3.last_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.dk_reason.size + 
  cme_ebs_ilink3_sbe_v8_3.side.size

-- Display: Execution Ack
cme_ebs_ilink3_sbe_v8_3.execution_ack.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Ack
cme_ebs_ilink3_sbe_v8_3.execution_ack.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Id: uInt64
  index, order_id = cme_ebs_ilink3_sbe_v8_3.order_id.dissect(buffer, index, packet, parent)

  -- Exec Ack Status: ExecAckStatus
  index, exec_ack_status = cme_ebs_ilink3_sbe_v8_3.exec_ack_status.dissect(buffer, index, packet, parent)

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- ClOrdId: String20Req
  index, clordid = cme_ebs_ilink3_sbe_v8_3.clordid.dissect(buffer, index, packet, parent)

  -- Sec Exec Id: uInt64
  index, sec_exec_id = cme_ebs_ilink3_sbe_v8_3.sec_exec_id.dissect(buffer, index, packet, parent)

  -- Last Px: PRICE9
  index, last_px = cme_ebs_ilink3_sbe_v8_3.last_px.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_ebs_ilink3_sbe_v8_3.security_id.dissect(buffer, index, packet, parent)

  -- Last Qty: uInt32
  index, last_qty = cme_ebs_ilink3_sbe_v8_3.last_qty.dissect(buffer, index, packet, parent)

  -- Dk Reason: DKReason
  index, dk_reason = cme_ebs_ilink3_sbe_v8_3.dk_reason.dissect(buffer, index, packet, parent)

  -- Side: SideReq
  index, side = cme_ebs_ilink3_sbe_v8_3.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Ack
cme_ebs_ilink3_sbe_v8_3.execution_ack.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.execution_ack, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.execution_ack.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.execution_ack.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.execution_ack.fields(buffer, offset, packet, parent)
  end
end

-- Party Ids Group
cme_ebs_ilink3_sbe_v8_3.party_ids_group = {}

-- Size: Party Ids Group
cme_ebs_ilink3_sbe_v8_3.party_ids_group.size =
  cme_ebs_ilink3_sbe_v8_3.party_id.size + 
  cme_ebs_ilink3_sbe_v8_3.party_id_source.size + 
  cme_ebs_ilink3_sbe_v8_3.party_role.size

-- Display: Party Ids Group
cme_ebs_ilink3_sbe_v8_3.party_ids_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Party Ids Group
cme_ebs_ilink3_sbe_v8_3.party_ids_group.fields = function(buffer, offset, packet, parent, party_ids_group_index)
  local index = offset

  -- Implicit Party Ids Group Index
  if party_ids_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.party_ids_group_index, party_ids_group_index)
    iteration:set_generated()
  end

  -- Party Id: uInt64
  index, party_id = cme_ebs_ilink3_sbe_v8_3.party_id.dissect(buffer, index, packet, parent)

  -- Party Id Source: CHAR
  index, party_id_source = cme_ebs_ilink3_sbe_v8_3.party_id_source.dissect(buffer, index, packet, parent)

  -- Party Role: uInt16
  index, party_role = cme_ebs_ilink3_sbe_v8_3.party_role.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Ids Group
cme_ebs_ilink3_sbe_v8_3.party_ids_group.dissect = function(buffer, offset, packet, parent, party_ids_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.party_ids_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.party_ids_group.fields(buffer, offset, packet, parent, party_ids_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.party_ids_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.party_ids_group.fields(buffer, offset, packet, parent, party_ids_group_index)
  end
end

-- Party Ids Groups
cme_ebs_ilink3_sbe_v8_3.party_ids_groups = {}

-- Calculate size of: Party Ids Groups
cme_ebs_ilink3_sbe_v8_3.party_ids_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local party_ids_group_count = buffer(offset + index - 1, 1):uint()
  index = index + party_ids_group_count * 11

  return index
end

-- Display: Party Ids Groups
cme_ebs_ilink3_sbe_v8_3.party_ids_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Party Ids Groups
cme_ebs_ilink3_sbe_v8_3.party_ids_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Party Ids Group
  for party_ids_group_index = 1, num_in_group do
    index, party_ids_group = cme_ebs_ilink3_sbe_v8_3.party_ids_group.dissect(buffer, index, packet, parent, party_ids_group_index)
  end

  return index
end

-- Dissect: Party Ids Groups
cme_ebs_ilink3_sbe_v8_3.party_ids_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.party_ids_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.party_ids_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.party_ids_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.party_ids_groups.fields(buffer, offset, packet, parent)
  end
end

-- Requesting Party Ids Group
cme_ebs_ilink3_sbe_v8_3.requesting_party_ids_group = {}

-- Size: Requesting Party Ids Group
cme_ebs_ilink3_sbe_v8_3.requesting_party_ids_group.size =
  cme_ebs_ilink3_sbe_v8_3.requesting_party_id.size + 
  cme_ebs_ilink3_sbe_v8_3.requesting_party_id_source.size + 
  cme_ebs_ilink3_sbe_v8_3.requesting_party_role.size

-- Display: Requesting Party Ids Group
cme_ebs_ilink3_sbe_v8_3.requesting_party_ids_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Requesting Party Ids Group
cme_ebs_ilink3_sbe_v8_3.requesting_party_ids_group.fields = function(buffer, offset, packet, parent, requesting_party_ids_group_index)
  local index = offset

  -- Implicit Requesting Party Ids Group Index
  if requesting_party_ids_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.requesting_party_ids_group_index, requesting_party_ids_group_index)
    iteration:set_generated()
  end

  -- Requesting Party Id: String5
  index, requesting_party_id = cme_ebs_ilink3_sbe_v8_3.requesting_party_id.dissect(buffer, index, packet, parent)

  -- Requesting Party Id Source: CHAR
  index, requesting_party_id_source = cme_ebs_ilink3_sbe_v8_3.requesting_party_id_source.dissect(buffer, index, packet, parent)

  -- Requesting Party Role: CHAR
  index, requesting_party_role = cme_ebs_ilink3_sbe_v8_3.requesting_party_role.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Requesting Party Ids Group
cme_ebs_ilink3_sbe_v8_3.requesting_party_ids_group.dissect = function(buffer, offset, packet, parent, requesting_party_ids_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.requesting_party_ids_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.requesting_party_ids_group.fields(buffer, offset, packet, parent, requesting_party_ids_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.requesting_party_ids_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.requesting_party_ids_group.fields(buffer, offset, packet, parent, requesting_party_ids_group_index)
  end
end

-- Requesting Party Ids Groups
cme_ebs_ilink3_sbe_v8_3.requesting_party_ids_groups = {}

-- Calculate size of: Requesting Party Ids Groups
cme_ebs_ilink3_sbe_v8_3.requesting_party_ids_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local requesting_party_ids_group_count = buffer(offset + index - 1, 1):uint()
  index = index + requesting_party_ids_group_count * 7

  return index
end

-- Display: Requesting Party Ids Groups
cme_ebs_ilink3_sbe_v8_3.requesting_party_ids_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Requesting Party Ids Groups
cme_ebs_ilink3_sbe_v8_3.requesting_party_ids_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Requesting Party Ids Group
  for requesting_party_ids_group_index = 1, num_in_group do
    index, requesting_party_ids_group = cme_ebs_ilink3_sbe_v8_3.requesting_party_ids_group.dissect(buffer, index, packet, parent, requesting_party_ids_group_index)
  end

  return index
end

-- Dissect: Requesting Party Ids Groups
cme_ebs_ilink3_sbe_v8_3.requesting_party_ids_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.requesting_party_ids_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.requesting_party_ids_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.requesting_party_ids_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.requesting_party_ids_groups.fields(buffer, offset, packet, parent)
  end
end

-- Party Details List Request
cme_ebs_ilink3_sbe_v8_3.party_details_list_request = {}

-- Calculate size of: Party Details List Request
cme_ebs_ilink3_sbe_v8_3.party_details_list_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size

  index = index + cme_ebs_ilink3_sbe_v8_3.seq_num.size

  index = index + cme_ebs_ilink3_sbe_v8_3.requesting_party_ids_groups.size(buffer, offset + index)

  index = index + cme_ebs_ilink3_sbe_v8_3.party_ids_groups.size(buffer, offset + index)

  return index
end

-- Display: Party Details List Request
cme_ebs_ilink3_sbe_v8_3.party_details_list_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Party Details List Request
cme_ebs_ilink3_sbe_v8_3.party_details_list_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Requesting Party Ids Groups: Struct of 2 fields
  index, requesting_party_ids_groups = cme_ebs_ilink3_sbe_v8_3.requesting_party_ids_groups.dissect(buffer, index, packet, parent)

  -- Party Ids Groups: Struct of 2 fields
  index, party_ids_groups = cme_ebs_ilink3_sbe_v8_3.party_ids_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details List Request
cme_ebs_ilink3_sbe_v8_3.party_details_list_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.party_details_list_request, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.party_details_list_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.party_details_list_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.party_details_list_request.fields(buffer, offset, packet, parent)
  end
end

-- Order Status Request
cme_ebs_ilink3_sbe_v8_3.order_status_request = {}

-- Size: Order Status Request
cme_ebs_ilink3_sbe_v8_3.order_status_request.size =
  cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size + 
  cme_ebs_ilink3_sbe_v8_3.ord_status_req_id.size + 
  cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size + 
  cme_ebs_ilink3_sbe_v8_3.seq_num.size + 
  cme_ebs_ilink3_sbe_v8_3.sender_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_id.size + 
  cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size + 
  cme_ebs_ilink3_sbe_v8_3.location.size

-- Display: Order Status Request
cme_ebs_ilink3_sbe_v8_3.order_status_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Status Request
cme_ebs_ilink3_sbe_v8_3.order_status_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Ord Status Req Id: uInt64
  index, ord_status_req_id = cme_ebs_ilink3_sbe_v8_3.ord_status_req_id.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- Order Id: uInt64
  index, order_id = cme_ebs_ilink3_sbe_v8_3.order_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Status Request
cme_ebs_ilink3_sbe_v8_3.order_status_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.order_status_request, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.order_status_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.order_status_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.order_status_request.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Status Request
cme_ebs_ilink3_sbe_v8_3.order_mass_status_request = {}

-- Size: Order Mass Status Request
cme_ebs_ilink3_sbe_v8_3.order_mass_status_request.size =
  cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size + 
  cme_ebs_ilink3_sbe_v8_3.mass_status_req_id.size + 
  cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size + 
  cme_ebs_ilink3_sbe_v8_3.seq_num.size + 
  cme_ebs_ilink3_sbe_v8_3.sender_id.size + 
  cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size + 
  cme_ebs_ilink3_sbe_v8_3.security_group.size + 
  cme_ebs_ilink3_sbe_v8_3.location.size + 
  cme_ebs_ilink3_sbe_v8_3.security_id_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.mass_status_req_type.size + 
  cme_ebs_ilink3_sbe_v8_3.ord_status_req_type.size + 
  cme_ebs_ilink3_sbe_v8_3.mass_status_tif.size + 
  cme_ebs_ilink3_sbe_v8_3.market_segment_id.size

-- Display: Order Mass Status Request
cme_ebs_ilink3_sbe_v8_3.order_mass_status_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Status Request
cme_ebs_ilink3_sbe_v8_3.order_mass_status_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Mass Status Req Id: uInt64
  index, mass_status_req_id = cme_ebs_ilink3_sbe_v8_3.mass_status_req_id.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Security Group: StringLength6
  index, security_group = cme_ebs_ilink3_sbe_v8_3.security_group.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Security Id Optional: Int32NULL
  index, security_id_optional = cme_ebs_ilink3_sbe_v8_3.security_id_optional.dissect(buffer, index, packet, parent)

  -- Mass Status Req Type: MassStatusReqTyp
  index, mass_status_req_type = cme_ebs_ilink3_sbe_v8_3.mass_status_req_type.dissect(buffer, index, packet, parent)

  -- Ord Status Req Type: MassStatusOrdTyp
  index, ord_status_req_type = cme_ebs_ilink3_sbe_v8_3.ord_status_req_type.dissect(buffer, index, packet, parent)

  -- Mass Status Tif: MassStatusTIF
  index, mass_status_tif = cme_ebs_ilink3_sbe_v8_3.mass_status_tif.dissect(buffer, index, packet, parent)

  -- Market Segment Id: uInt8NULL
  index, market_segment_id = cme_ebs_ilink3_sbe_v8_3.market_segment_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Status Request
cme_ebs_ilink3_sbe_v8_3.order_mass_status_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.order_mass_status_request, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.order_mass_status_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.order_mass_status_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.order_mass_status_request.fields(buffer, offset, packet, parent)
  end
end

-- Quote Cancel Sets Group
cme_ebs_ilink3_sbe_v8_3.quote_cancel_sets_group = {}

-- Size: Quote Cancel Sets Group
cme_ebs_ilink3_sbe_v8_3.quote_cancel_sets_group.size =
  cme_ebs_ilink3_sbe_v8_3.bid_size.size + 
  cme_ebs_ilink3_sbe_v8_3.offer_size.size + 
  cme_ebs_ilink3_sbe_v8_3.quote_set_id.size

-- Display: Quote Cancel Sets Group
cme_ebs_ilink3_sbe_v8_3.quote_cancel_sets_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Sets Group
cme_ebs_ilink3_sbe_v8_3.quote_cancel_sets_group.fields = function(buffer, offset, packet, parent, quote_cancel_sets_group_index)
  local index = offset

  -- Implicit Quote Cancel Sets Group Index
  if quote_cancel_sets_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_sets_group_index, quote_cancel_sets_group_index)
    iteration:set_generated()
  end

  -- Bid Size: uInt32NULL
  index, bid_size = cme_ebs_ilink3_sbe_v8_3.bid_size.dissect(buffer, index, packet, parent)

  -- Offer Size: uInt32NULL
  index, offer_size = cme_ebs_ilink3_sbe_v8_3.offer_size.dissect(buffer, index, packet, parent)

  -- Quote Set Id: uInt16
  index, quote_set_id = cme_ebs_ilink3_sbe_v8_3.quote_set_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Sets Group
cme_ebs_ilink3_sbe_v8_3.quote_cancel_sets_group.dissect = function(buffer, offset, packet, parent, quote_cancel_sets_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_sets_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.quote_cancel_sets_group.fields(buffer, offset, packet, parent, quote_cancel_sets_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.quote_cancel_sets_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.quote_cancel_sets_group.fields(buffer, offset, packet, parent, quote_cancel_sets_group_index)
  end
end

-- Quote Cancel Sets Groups
cme_ebs_ilink3_sbe_v8_3.quote_cancel_sets_groups = {}

-- Calculate size of: Quote Cancel Sets Groups
cme_ebs_ilink3_sbe_v8_3.quote_cancel_sets_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local quote_cancel_sets_group_count = buffer(offset + index - 1, 1):uint()
  index = index + quote_cancel_sets_group_count * 10

  return index
end

-- Display: Quote Cancel Sets Groups
cme_ebs_ilink3_sbe_v8_3.quote_cancel_sets_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Sets Groups
cme_ebs_ilink3_sbe_v8_3.quote_cancel_sets_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Quote Cancel Sets Group
  for quote_cancel_sets_group_index = 1, num_in_group do
    index, quote_cancel_sets_group = cme_ebs_ilink3_sbe_v8_3.quote_cancel_sets_group.dissect(buffer, index, packet, parent, quote_cancel_sets_group_index)
  end

  return index
end

-- Dissect: Quote Cancel Sets Groups
cme_ebs_ilink3_sbe_v8_3.quote_cancel_sets_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_sets_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.quote_cancel_sets_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.quote_cancel_sets_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.quote_cancel_sets_groups.fields(buffer, offset, packet, parent)
  end
end

-- Quote Cancel Entries Group
cme_ebs_ilink3_sbe_v8_3.quote_cancel_entries_group = {}

-- Size: Quote Cancel Entries Group
cme_ebs_ilink3_sbe_v8_3.quote_cancel_entries_group.size =
  cme_ebs_ilink3_sbe_v8_3.security_group.size + 
  cme_ebs_ilink3_sbe_v8_3.security_id_optional.size

-- Display: Quote Cancel Entries Group
cme_ebs_ilink3_sbe_v8_3.quote_cancel_entries_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Entries Group
cme_ebs_ilink3_sbe_v8_3.quote_cancel_entries_group.fields = function(buffer, offset, packet, parent, quote_cancel_entries_group_index)
  local index = offset

  -- Implicit Quote Cancel Entries Group Index
  if quote_cancel_entries_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_entries_group_index, quote_cancel_entries_group_index)
    iteration:set_generated()
  end

  -- Security Group: StringLength6
  index, security_group = cme_ebs_ilink3_sbe_v8_3.security_group.dissect(buffer, index, packet, parent)

  -- Security Id Optional: Int32NULL
  index, security_id_optional = cme_ebs_ilink3_sbe_v8_3.security_id_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Entries Group
cme_ebs_ilink3_sbe_v8_3.quote_cancel_entries_group.dissect = function(buffer, offset, packet, parent, quote_cancel_entries_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_entries_group, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.quote_cancel_entries_group.fields(buffer, offset, packet, parent, quote_cancel_entries_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.quote_cancel_entries_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.quote_cancel_entries_group.fields(buffer, offset, packet, parent, quote_cancel_entries_group_index)
  end
end

-- Quote Cancel Entries Groups
cme_ebs_ilink3_sbe_v8_3.quote_cancel_entries_groups = {}

-- Calculate size of: Quote Cancel Entries Groups
cme_ebs_ilink3_sbe_v8_3.quote_cancel_entries_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.group_size.size

  -- Calculate field size from count
  local quote_cancel_entries_group_count = buffer(offset + index - 1, 1):uint()
  index = index + quote_cancel_entries_group_count * 10

  return index
end

-- Display: Quote Cancel Entries Groups
cme_ebs_ilink3_sbe_v8_3.quote_cancel_entries_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Entries Groups
cme_ebs_ilink3_sbe_v8_3.quote_cancel_entries_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_ilink3_sbe_v8_3.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Quote Cancel Entries Group
  for quote_cancel_entries_group_index = 1, num_in_group do
    index, quote_cancel_entries_group = cme_ebs_ilink3_sbe_v8_3.quote_cancel_entries_group.dissect(buffer, index, packet, parent, quote_cancel_entries_group_index)
  end

  return index
end

-- Dissect: Quote Cancel Entries Groups
cme_ebs_ilink3_sbe_v8_3.quote_cancel_entries_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel_entries_groups, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.quote_cancel_entries_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.quote_cancel_entries_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.quote_cancel_entries_groups.fields(buffer, offset, packet, parent)
  end
end

-- Quote Cancel
cme_ebs_ilink3_sbe_v8_3.quote_cancel = {}

-- Calculate size of: Quote Cancel
cme_ebs_ilink3_sbe_v8_3.quote_cancel.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size

  index = index + cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size

  index = index + cme_ebs_ilink3_sbe_v8_3.seq_num.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sender_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.location.size

  index = index + cme_ebs_ilink3_sbe_v8_3.quote_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.quote_cancel_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.liquidity_flag.size

  index = index + cme_ebs_ilink3_sbe_v8_3.quote_cancel_entries_groups.size(buffer, offset + index)

  index = index + cme_ebs_ilink3_sbe_v8_3.quote_cancel_sets_groups.size(buffer, offset + index)

  return index
end

-- Display: Quote Cancel
cme_ebs_ilink3_sbe_v8_3.quote_cancel.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel
cme_ebs_ilink3_sbe_v8_3.quote_cancel.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Quote Id: uInt32
  index, quote_id = cme_ebs_ilink3_sbe_v8_3.quote_id.dissect(buffer, index, packet, parent)

  -- Quote Cancel Type: QuoteCxlTyp
  index, quote_cancel_type = cme_ebs_ilink3_sbe_v8_3.quote_cancel_type.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: BooleanNULL
  index, liquidity_flag = cme_ebs_ilink3_sbe_v8_3.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Quote Cancel Entries Groups: Struct of 2 fields
  index, quote_cancel_entries_groups = cme_ebs_ilink3_sbe_v8_3.quote_cancel_entries_groups.dissect(buffer, index, packet, parent)

  -- Quote Cancel Sets Groups: Struct of 2 fields
  index, quote_cancel_sets_groups = cme_ebs_ilink3_sbe_v8_3.quote_cancel_sets_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel
cme_ebs_ilink3_sbe_v8_3.quote_cancel.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.quote_cancel, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.quote_cancel.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.quote_cancel.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.quote_cancel.fields(buffer, offset, packet, parent)
  end
end

-- Party Details Definition Request
cme_ebs_ilink3_sbe_v8_3.party_details_definition_request = {}

-- Calculate size of: Party Details Definition Request
cme_ebs_ilink3_sbe_v8_3.party_details_definition_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size

  index = index + cme_ebs_ilink3_sbe_v8_3.list_update_action.size

  index = index + cme_ebs_ilink3_sbe_v8_3.seq_num.size

  index = index + cme_ebs_ilink3_sbe_v8_3.memo.size

  index = index + cme_ebs_ilink3_sbe_v8_3.avg_px_group_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.self_match_prevention_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.cmta_giveup_cd.size

  index = index + cme_ebs_ilink3_sbe_v8_3.cust_order_capacity.size

  index = index + cme_ebs_ilink3_sbe_v8_3.clearing_account_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.self_match_prevention_instruction.size

  index = index + cme_ebs_ilink3_sbe_v8_3.avg_px_indicator.size

  index = index + cme_ebs_ilink3_sbe_v8_3.clearing_trade_price_type.size

  index = index + cme_ebs_ilink3_sbe_v8_3.cust_order_handling_inst.size

  index = index + cme_ebs_ilink3_sbe_v8_3.executor.size

  index = index + cme_ebs_ilink3_sbe_v8_3.idm_short_code.size

  index = index + cme_ebs_ilink3_sbe_v8_3.party_details_groups.size(buffer, offset + index)

  index = index + cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_groups.size(buffer, offset + index)

  return index
end

-- Display: Party Details Definition Request
cme_ebs_ilink3_sbe_v8_3.party_details_definition_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Party Details Definition Request
cme_ebs_ilink3_sbe_v8_3.party_details_definition_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- List Update Action: ListUpdAct
  index, list_update_action = cme_ebs_ilink3_sbe_v8_3.list_update_action.dissect(buffer, index, packet, parent)

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Memo: String75
  index, memo = cme_ebs_ilink3_sbe_v8_3.memo.dissect(buffer, index, packet, parent)

  -- Avg Px Group Id: String20
  index, avg_px_group_id = cme_ebs_ilink3_sbe_v8_3.avg_px_group_id.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id: uInt64NULL
  index, self_match_prevention_id = cme_ebs_ilink3_sbe_v8_3.self_match_prevention_id.dissect(buffer, index, packet, parent)

  -- Cmta Giveup Cd: CmtaGiveUpCD
  index, cmta_giveup_cd = cme_ebs_ilink3_sbe_v8_3.cmta_giveup_cd.dissect(buffer, index, packet, parent)

  -- Cust Order Capacity: CustOrderCapacity
  index, cust_order_capacity = cme_ebs_ilink3_sbe_v8_3.cust_order_capacity.dissect(buffer, index, packet, parent)

  -- Clearing Account Type: ClearingAcctType
  index, clearing_account_type = cme_ebs_ilink3_sbe_v8_3.clearing_account_type.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Instruction: SMPI
  index, self_match_prevention_instruction = cme_ebs_ilink3_sbe_v8_3.self_match_prevention_instruction.dissect(buffer, index, packet, parent)

  -- Avg Px Indicator: AvgPxInd
  index, avg_px_indicator = cme_ebs_ilink3_sbe_v8_3.avg_px_indicator.dissect(buffer, index, packet, parent)

  -- Clearing Trade Price Type: SLEDS
  index, clearing_trade_price_type = cme_ebs_ilink3_sbe_v8_3.clearing_trade_price_type.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: CustOrdHandlInst
  index, cust_order_handling_inst = cme_ebs_ilink3_sbe_v8_3.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Executor: uInt64NULL
  index, executor = cme_ebs_ilink3_sbe_v8_3.executor.dissect(buffer, index, packet, parent)

  -- Idm Short Code: uInt64NULL
  index, idm_short_code = cme_ebs_ilink3_sbe_v8_3.idm_short_code.dissect(buffer, index, packet, parent)

  -- Party Details Groups: Struct of 2 fields
  index, party_details_groups = cme_ebs_ilink3_sbe_v8_3.party_details_groups.dissect(buffer, index, packet, parent)

  -- Trd Reg Publications Groups: Struct of 2 fields
  index, trd_reg_publications_groups = cme_ebs_ilink3_sbe_v8_3.trd_reg_publications_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details Definition Request
cme_ebs_ilink3_sbe_v8_3.party_details_definition_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.party_details_definition_request, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.party_details_definition_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.party_details_definition_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.party_details_definition_request.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Request
cme_ebs_ilink3_sbe_v8_3.order_cancel_request = {}

-- Size: Order Cancel Request
cme_ebs_ilink3_sbe_v8_3.order_cancel_request.size =
  cme_ebs_ilink3_sbe_v8_3.order_id.size + 
  cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size + 
  cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size + 
  cme_ebs_ilink3_sbe_v8_3.seq_num.size + 
  cme_ebs_ilink3_sbe_v8_3.sender_id.size + 
  cme_ebs_ilink3_sbe_v8_3.clordid.size + 
  cme_ebs_ilink3_sbe_v8_3.order_request_id.size + 
  cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size + 
  cme_ebs_ilink3_sbe_v8_3.location.size + 
  cme_ebs_ilink3_sbe_v8_3.security_id.size + 
  cme_ebs_ilink3_sbe_v8_3.side.size + 
  cme_ebs_ilink3_sbe_v8_3.liquidity_flag.size

-- Display: Order Cancel Request
cme_ebs_ilink3_sbe_v8_3.order_cancel_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request
cme_ebs_ilink3_sbe_v8_3.order_cancel_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: uInt64
  index, order_id = cme_ebs_ilink3_sbe_v8_3.order_id.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: String20Req
  index, clordid = cme_ebs_ilink3_sbe_v8_3.clordid.dissect(buffer, index, packet, parent)

  -- Order Request Id: uInt64
  index, order_request_id = cme_ebs_ilink3_sbe_v8_3.order_request_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_ebs_ilink3_sbe_v8_3.security_id.dissect(buffer, index, packet, parent)

  -- Side: SideReq
  index, side = cme_ebs_ilink3_sbe_v8_3.side.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: BooleanNULL
  index, liquidity_flag = cme_ebs_ilink3_sbe_v8_3.liquidity_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request
cme_ebs_ilink3_sbe_v8_3.order_cancel_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.order_cancel_request, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.order_cancel_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.order_cancel_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.order_cancel_request.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Replace Request
cme_ebs_ilink3_sbe_v8_3.order_cancel_replace_request = {}

-- Size: Order Cancel Replace Request
cme_ebs_ilink3_sbe_v8_3.order_cancel_replace_request.size =
  cme_ebs_ilink3_sbe_v8_3.price_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.order_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.security_id.size + 
  cme_ebs_ilink3_sbe_v8_3.side.size + 
  cme_ebs_ilink3_sbe_v8_3.seq_num.size + 
  cme_ebs_ilink3_sbe_v8_3.sender_id.size + 
  cme_ebs_ilink3_sbe_v8_3.clordid.size + 
  cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_id.size + 
  cme_ebs_ilink3_sbe_v8_3.stop_px.size + 
  cme_ebs_ilink3_sbe_v8_3.order_request_id.size + 
  cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size + 
  cme_ebs_ilink3_sbe_v8_3.location.size + 
  cme_ebs_ilink3_sbe_v8_3.min_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.display_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.expire_date.size + 
  cme_ebs_ilink3_sbe_v8_3.ord_type.size + 
  cme_ebs_ilink3_sbe_v8_3.time_in_force.size + 
  cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size + 
  cme_ebs_ilink3_sbe_v8_3.ofm_override.size + 
  cme_ebs_ilink3_sbe_v8_3.exec_inst.size + 
  cme_ebs_ilink3_sbe_v8_3.execution_mode.size + 
  cme_ebs_ilink3_sbe_v8_3.liquidity_flag.size + 
  cme_ebs_ilink3_sbe_v8_3.managed_order.size + 
  cme_ebs_ilink3_sbe_v8_3.short_sale_type.size

-- Display: Order Cancel Replace Request
cme_ebs_ilink3_sbe_v8_3.order_cancel_replace_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Replace Request
cme_ebs_ilink3_sbe_v8_3.order_cancel_replace_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Optional: PRICENULL9
  index, price_optional = cme_ebs_ilink3_sbe_v8_3.price_optional.dissect(buffer, index, packet, parent)

  -- Order Qty: uInt32
  index, order_qty = cme_ebs_ilink3_sbe_v8_3.order_qty.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_ebs_ilink3_sbe_v8_3.security_id.dissect(buffer, index, packet, parent)

  -- Side: SideReq
  index, side = cme_ebs_ilink3_sbe_v8_3.side.dissect(buffer, index, packet, parent)

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: String20Req
  index, clordid = cme_ebs_ilink3_sbe_v8_3.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Id: uInt64
  index, order_id = cme_ebs_ilink3_sbe_v8_3.order_id.dissect(buffer, index, packet, parent)

  -- Stop Px: PRICENULL9
  index, stop_px = cme_ebs_ilink3_sbe_v8_3.stop_px.dissect(buffer, index, packet, parent)

  -- Order Request Id: uInt64
  index, order_request_id = cme_ebs_ilink3_sbe_v8_3.order_request_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Min Qty: uInt32NULL
  index, min_qty = cme_ebs_ilink3_sbe_v8_3.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: uInt32NULL
  index, display_qty = cme_ebs_ilink3_sbe_v8_3.display_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: LocalMktDate
  index, expire_date = cme_ebs_ilink3_sbe_v8_3.expire_date.dissect(buffer, index, packet, parent)

  -- Ord Type: OrderTypeReq
  index, ord_type = cme_ebs_ilink3_sbe_v8_3.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = cme_ebs_ilink3_sbe_v8_3.time_in_force.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Ofm Override: OFMOverrideReq
  index, ofm_override = cme_ebs_ilink3_sbe_v8_3.ofm_override.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_ebs_ilink3_sbe_v8_3.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: ExecMode
  index, execution_mode = cme_ebs_ilink3_sbe_v8_3.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: BooleanNULL
  index, liquidity_flag = cme_ebs_ilink3_sbe_v8_3.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: BooleanNULL
  index, managed_order = cme_ebs_ilink3_sbe_v8_3.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: ShortSaleType
  index, short_sale_type = cme_ebs_ilink3_sbe_v8_3.short_sale_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Request
cme_ebs_ilink3_sbe_v8_3.order_cancel_replace_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.order_cancel_replace_request, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.order_cancel_replace_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.order_cancel_replace_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.order_cancel_replace_request.fields(buffer, offset, packet, parent)
  end
end

-- New Order Single
cme_ebs_ilink3_sbe_v8_3.new_order_single = {}

-- Size: New Order Single
cme_ebs_ilink3_sbe_v8_3.new_order_single.size =
  cme_ebs_ilink3_sbe_v8_3.price_optional.size + 
  cme_ebs_ilink3_sbe_v8_3.order_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.security_id.size + 
  cme_ebs_ilink3_sbe_v8_3.side.size + 
  cme_ebs_ilink3_sbe_v8_3.seq_num.size + 
  cme_ebs_ilink3_sbe_v8_3.sender_id.size + 
  cme_ebs_ilink3_sbe_v8_3.clordid.size + 
  cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.size + 
  cme_ebs_ilink3_sbe_v8_3.order_request_id.size + 
  cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.size + 
  cme_ebs_ilink3_sbe_v8_3.stop_px.size + 
  cme_ebs_ilink3_sbe_v8_3.location.size + 
  cme_ebs_ilink3_sbe_v8_3.min_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.display_qty.size + 
  cme_ebs_ilink3_sbe_v8_3.expire_date.size + 
  cme_ebs_ilink3_sbe_v8_3.ord_type.size + 
  cme_ebs_ilink3_sbe_v8_3.time_in_force.size + 
  cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.size + 
  cme_ebs_ilink3_sbe_v8_3.exec_inst.size + 
  cme_ebs_ilink3_sbe_v8_3.execution_mode.size + 
  cme_ebs_ilink3_sbe_v8_3.liquidity_flag.size + 
  cme_ebs_ilink3_sbe_v8_3.managed_order.size + 
  cme_ebs_ilink3_sbe_v8_3.short_sale_type.size

-- Display: New Order Single
cme_ebs_ilink3_sbe_v8_3.new_order_single.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Single
cme_ebs_ilink3_sbe_v8_3.new_order_single.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Optional: PRICENULL9
  index, price_optional = cme_ebs_ilink3_sbe_v8_3.price_optional.dissect(buffer, index, packet, parent)

  -- Order Qty: uInt32
  index, order_qty = cme_ebs_ilink3_sbe_v8_3.order_qty.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_ebs_ilink3_sbe_v8_3.security_id.dissect(buffer, index, packet, parent)

  -- Side: SideReq
  index, side = cme_ebs_ilink3_sbe_v8_3.side.dissect(buffer, index, packet, parent)

  -- Seq Num: uInt32
  index, seq_num = cme_ebs_ilink3_sbe_v8_3.seq_num.dissect(buffer, index, packet, parent)

  -- Sender Id: String20Req
  index, sender_id = cme_ebs_ilink3_sbe_v8_3.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: String20Req
  index, clordid = cme_ebs_ilink3_sbe_v8_3.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: uInt64
  index, party_details_list_req_id = cme_ebs_ilink3_sbe_v8_3.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Request Id: uInt64
  index, order_request_id = cme_ebs_ilink3_sbe_v8_3.order_request_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: uInt64
  index, sending_time_epoch = cme_ebs_ilink3_sbe_v8_3.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Stop Px: PRICENULL9
  index, stop_px = cme_ebs_ilink3_sbe_v8_3.stop_px.dissect(buffer, index, packet, parent)

  -- Location: String5Req
  index, location = cme_ebs_ilink3_sbe_v8_3.location.dissect(buffer, index, packet, parent)

  -- Min Qty: uInt32NULL
  index, min_qty = cme_ebs_ilink3_sbe_v8_3.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: uInt32NULL
  index, display_qty = cme_ebs_ilink3_sbe_v8_3.display_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: LocalMktDate
  index, expire_date = cme_ebs_ilink3_sbe_v8_3.expire_date.dissect(buffer, index, packet, parent)

  -- Ord Type: OrderTypeReq
  index, ord_type = cme_ebs_ilink3_sbe_v8_3.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = cme_ebs_ilink3_sbe_v8_3.time_in_force.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: ManualOrdIndReq
  index, manual_order_indicator = cme_ebs_ilink3_sbe_v8_3.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_ebs_ilink3_sbe_v8_3.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: ExecMode
  index, execution_mode = cme_ebs_ilink3_sbe_v8_3.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: BooleanNULL
  index, liquidity_flag = cme_ebs_ilink3_sbe_v8_3.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: BooleanNULL
  index, managed_order = cme_ebs_ilink3_sbe_v8_3.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: ShortSaleType
  index, short_sale_type = cme_ebs_ilink3_sbe_v8_3.short_sale_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single
cme_ebs_ilink3_sbe_v8_3.new_order_single.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.new_order_single, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.new_order_single.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.new_order_single.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.new_order_single.fields(buffer, offset, packet, parent)
  end
end

-- Retransmit Request
cme_ebs_ilink3_sbe_v8_3.retransmit_request = {}

-- Size: Retransmit Request
cme_ebs_ilink3_sbe_v8_3.retransmit_request.size =
  cme_ebs_ilink3_sbe_v8_3.uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.last_uuid.size + 
  cme_ebs_ilink3_sbe_v8_3.request_timestamp.size + 
  cme_ebs_ilink3_sbe_v8_3.from_seq_no.size + 
  cme_ebs_ilink3_sbe_v8_3.msg_count_16.size

-- Display: Retransmit Request
cme_ebs_ilink3_sbe_v8_3.retransmit_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Request
cme_ebs_ilink3_sbe_v8_3.retransmit_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Last Uuid: uInt64NULL
  index, last_uuid = cme_ebs_ilink3_sbe_v8_3.last_uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: uInt64
  index, request_timestamp = cme_ebs_ilink3_sbe_v8_3.request_timestamp.dissect(buffer, index, packet, parent)

  -- From Seq No: uInt32
  index, from_seq_no = cme_ebs_ilink3_sbe_v8_3.from_seq_no.dissect(buffer, index, packet, parent)

  -- Msg Count 16: uInt16
  index, msg_count_16 = cme_ebs_ilink3_sbe_v8_3.msg_count_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Request
cme_ebs_ilink3_sbe_v8_3.retransmit_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.retransmit_request, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.retransmit_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.retransmit_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.retransmit_request.fields(buffer, offset, packet, parent)
  end
end

-- Establish
cme_ebs_ilink3_sbe_v8_3.establish = {}

-- Calculate size of: Establish
cme_ebs_ilink3_sbe_v8_3.establish.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.hmac_signature.size

  index = index + cme_ebs_ilink3_sbe_v8_3.access_key_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.trading_system_name.size

  index = index + cme_ebs_ilink3_sbe_v8_3.trading_system_version.size

  index = index + cme_ebs_ilink3_sbe_v8_3.trading_system_vendor.size

  index = index + cme_ebs_ilink3_sbe_v8_3.uuid.size

  index = index + cme_ebs_ilink3_sbe_v8_3.request_timestamp.size

  index = index + cme_ebs_ilink3_sbe_v8_3.next_seq_no.size

  index = index + cme_ebs_ilink3_sbe_v8_3.session.size

  index = index + cme_ebs_ilink3_sbe_v8_3.firm.size

  index = index + cme_ebs_ilink3_sbe_v8_3.keep_alive_interval.size

  index = index + cme_ebs_ilink3_sbe_v8_3.credentials.size(buffer, offset + index)

  return index
end

-- Display: Establish
cme_ebs_ilink3_sbe_v8_3.establish.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Establish
cme_ebs_ilink3_sbe_v8_3.establish.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hmac Signature: 32 Byte
  index, hmac_signature = cme_ebs_ilink3_sbe_v8_3.hmac_signature.dissect(buffer, index, packet, parent)

  -- Access Key Id: String20Req
  index, access_key_id = cme_ebs_ilink3_sbe_v8_3.access_key_id.dissect(buffer, index, packet, parent)

  -- Trading System Name: String30Req
  index, trading_system_name = cme_ebs_ilink3_sbe_v8_3.trading_system_name.dissect(buffer, index, packet, parent)

  -- Trading System Version: String10Req
  index, trading_system_version = cme_ebs_ilink3_sbe_v8_3.trading_system_version.dissect(buffer, index, packet, parent)

  -- Trading System Vendor: String10Req
  index, trading_system_vendor = cme_ebs_ilink3_sbe_v8_3.trading_system_vendor.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: uInt64
  index, request_timestamp = cme_ebs_ilink3_sbe_v8_3.request_timestamp.dissect(buffer, index, packet, parent)

  -- Next Seq No: uInt32
  index, next_seq_no = cme_ebs_ilink3_sbe_v8_3.next_seq_no.dissect(buffer, index, packet, parent)

  -- Session: String3Req
  index, session = cme_ebs_ilink3_sbe_v8_3.session.dissect(buffer, index, packet, parent)

  -- Firm: String5Req
  index, firm = cme_ebs_ilink3_sbe_v8_3.firm.dissect(buffer, index, packet, parent)

  -- Keep Alive Interval: uInt16
  index, keep_alive_interval = cme_ebs_ilink3_sbe_v8_3.keep_alive_interval.dissect(buffer, index, packet, parent)

  -- Credentials: Struct of 2 fields
  index, credentials = cme_ebs_ilink3_sbe_v8_3.credentials.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Establish
cme_ebs_ilink3_sbe_v8_3.establish.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.establish, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.establish.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.establish.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.establish.fields(buffer, offset, packet, parent)
  end
end

-- Negotiate
cme_ebs_ilink3_sbe_v8_3.negotiate = {}

-- Calculate size of: Negotiate
cme_ebs_ilink3_sbe_v8_3.negotiate.size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_ilink3_sbe_v8_3.hmac_signature.size

  index = index + cme_ebs_ilink3_sbe_v8_3.access_key_id.size

  index = index + cme_ebs_ilink3_sbe_v8_3.uuid.size

  index = index + cme_ebs_ilink3_sbe_v8_3.request_timestamp.size

  index = index + cme_ebs_ilink3_sbe_v8_3.session.size

  index = index + cme_ebs_ilink3_sbe_v8_3.firm.size

  index = index + cme_ebs_ilink3_sbe_v8_3.credentials.size(buffer, offset + index)

  return index
end

-- Display: Negotiate
cme_ebs_ilink3_sbe_v8_3.negotiate.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Negotiate
cme_ebs_ilink3_sbe_v8_3.negotiate.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hmac Signature: 32 Byte
  index, hmac_signature = cme_ebs_ilink3_sbe_v8_3.hmac_signature.dissect(buffer, index, packet, parent)

  -- Access Key Id: String20Req
  index, access_key_id = cme_ebs_ilink3_sbe_v8_3.access_key_id.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_ebs_ilink3_sbe_v8_3.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: uInt64
  index, request_timestamp = cme_ebs_ilink3_sbe_v8_3.request_timestamp.dissect(buffer, index, packet, parent)

  -- Session: String3Req
  index, session = cme_ebs_ilink3_sbe_v8_3.session.dissect(buffer, index, packet, parent)

  -- Firm: String5Req
  index, firm = cme_ebs_ilink3_sbe_v8_3.firm.dissect(buffer, index, packet, parent)

  -- Credentials: Struct of 2 fields
  index, credentials = cme_ebs_ilink3_sbe_v8_3.credentials.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiate
cme_ebs_ilink3_sbe_v8_3.negotiate.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.negotiate, buffer(offset, 0))
    local index = cme_ebs_ilink3_sbe_v8_3.negotiate.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_ilink3_sbe_v8_3.negotiate.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_ebs_ilink3_sbe_v8_3.negotiate.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
cme_ebs_ilink3_sbe_v8_3.client_payload = {}

-- Dissect: Client Payload
cme_ebs_ilink3_sbe_v8_3.client_payload.dispatch = {
  [500] = cme_ebs_ilink3_sbe_v8_3.negotiate.dissect,
  [503] = cme_ebs_ilink3_sbe_v8_3.establish.dissect,
  [506] = cme_ebs_ilink3_sbe_v8_3.sequence.dissect,
  [507] = cme_ebs_ilink3_sbe_v8_3.terminate.dissect,
  [508] = cme_ebs_ilink3_sbe_v8_3.retransmit_request.dissect,
  [514] = cme_ebs_ilink3_sbe_v8_3.new_order_single.dissect,
  [515] = cme_ebs_ilink3_sbe_v8_3.order_cancel_replace_request.dissect,
  [516] = cme_ebs_ilink3_sbe_v8_3.order_cancel_request.dissect,
  [518] = cme_ebs_ilink3_sbe_v8_3.party_details_definition_request.dissect,
  [528] = cme_ebs_ilink3_sbe_v8_3.quote_cancel.dissect,
  [530] = cme_ebs_ilink3_sbe_v8_3.order_mass_status_request.dissect,
  [533] = cme_ebs_ilink3_sbe_v8_3.order_status_request.dissect,
  [537] = cme_ebs_ilink3_sbe_v8_3.party_details_list_request.dissect,
  [539] = cme_ebs_ilink3_sbe_v8_3.execution_ack.dissect,
  [543] = cme_ebs_ilink3_sbe_v8_3.request_for_quote.dissect,
  [544] = cme_ebs_ilink3_sbe_v8_3.new_order_cross.dissect,
  [560] = cme_ebs_ilink3_sbe_v8_3.security_definition_request.dissect,
}

cme_ebs_ilink3_sbe_v8_3.client_payload.dissect = function(buffer, offset, packet, parent, template_id)
  local dissect = cme_ebs_ilink3_sbe_v8_3.client_payload.dispatch[template_id]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Simple Open Frame
cme_ebs_ilink3_sbe_v8_3.client_simple_open_frame = {}

-- Display: Client Simple Open Frame
cme_ebs_ilink3_sbe_v8_3.client_simple_open_frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Simple Open Frame
cme_ebs_ilink3_sbe_v8_3.client_simple_open_frame.fields = function(buffer, offset, packet, parent, size_of_client_simple_open_frame)
  local index = offset

  -- Simple Open Framing Header: Struct of 2 fields
  index, simple_open_framing_header = cme_ebs_ilink3_sbe_v8_3.simple_open_framing_header.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_ebs_ilink3_sbe_v8_3.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Client Payload: Runtime Type with 17 branches
  index = cme_ebs_ilink3_sbe_v8_3.client_payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Client Simple Open Frame
cme_ebs_ilink3_sbe_v8_3.client_simple_open_frame.dissect = function(buffer, offset, packet, parent, size_of_client_simple_open_frame)
  local index = offset + size_of_client_simple_open_frame

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cme_ebs_ilink3_sbe_v8_3.fields.client_simple_open_frame, buffer(offset, 0))
    local current = cme_ebs_ilink3_sbe_v8_3.client_simple_open_frame.fields(buffer, offset, packet, parent, size_of_client_simple_open_frame)
    parent:set_len(size_of_client_simple_open_frame)
    local display = cme_ebs_ilink3_sbe_v8_3.client_simple_open_frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cme_ebs_ilink3_sbe_v8_3.client_simple_open_frame.fields(buffer, offset, packet, parent, size_of_client_simple_open_frame)

    return index
  end
end

-- Remaining Bytes For: Client Simple Open Frame
local client_simple_open_frame_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < cme_ebs_ilink3_sbe_v8_3.simple_open_framing_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Client Packet
cme_ebs_ilink3_sbe_v8_3.client_packet = {}

-- Verify required size of Tcp packet
cme_ebs_ilink3_sbe_v8_3.client_packet.requiredsize = function(buffer)
  return buffer:len() >= cme_ebs_ilink3_sbe_v8_3.simple_open_framing_header.size + cme_ebs_ilink3_sbe_v8_3.message_header.size
end

-- Dissect Client Packet
cme_ebs_ilink3_sbe_v8_3.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Simple Open Frame
  local end_of_payload = buffer:len()

  -- Client Simple Open Frame: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_simple_open_frame = client_simple_open_frame_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_client_simple_open_frame):tvb()
      index = cme_ebs_ilink3_sbe_v8_3.client_simple_open_frame.dissect(frame, index, packet, parent, size_of_client_simple_open_frame)
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
function omi_cme_ebs_ilink3_sbe_v8_3.init()
end

-- Connection roles for Cme Ebs iLink3 Sbe 8.3: Client is the initiator, Server is the acceptor
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
cme_ebs_ilink3_sbe_v8_3.role = function(packet)
  if omi_cme_ebs_ilink3_sbe_v8_3.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_cme_ebs_ilink3_sbe_v8_3.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_cme_ebs_ilink3_sbe_v8_3.prefs.acceptor_port

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

  if omi_cme_ebs_ilink3_sbe_v8_3.prefs.swap_sides then
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
cme_ebs_ilink3_sbe_v8_3.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Cme Ebs iLink3 Sbe 8.3
function omi_cme_ebs_ilink3_sbe_v8_3.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cme_ebs_ilink3_sbe_v8_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_cme_ebs_ilink3_sbe_v8_3, buffer(), omi_cme_ebs_ilink3_sbe_v8_3.description, "("..buffer:len().." Bytes)")
  local role = cme_ebs_ilink3_sbe_v8_3.role(packet)

  if role == "initiator" then
    return cme_ebs_ilink3_sbe_v8_3.client_packet.dissect(buffer, packet, protocol)
  end

  return cme_ebs_ilink3_sbe_v8_3.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
cme_ebs_ilink3_sbe_v8_3.client_packet.fingerprint = function(buffer)
  if buffer:len() < 8 then
    return false
  end

  local template_id = buffer(6, 2):le_uint()

  -- Negotiate
  if template_id == 500 then
    return true
  end

  -- Establish
  if template_id == 503 then
    return true
  end

  -- Sequence
  if template_id == 506 then
    return true
  end

  -- Terminate
  if template_id == 507 then
    return true
  end

  -- Retransmit Request
  if template_id == 508 then
    return true
  end

  -- New Order Single
  if template_id == 514 then
    return true
  end

  -- Order Cancel Replace Request
  if template_id == 515 then
    return true
  end

  -- Order Cancel Request
  if template_id == 516 then
    return true
  end

  -- Party Details Definition Request
  if template_id == 518 then
    return true
  end

  -- Quote Cancel
  if template_id == 528 then
    return true
  end

  -- Order Mass Status Request
  if template_id == 530 then
    return true
  end

  -- Order Status Request
  if template_id == 533 then
    return true
  end

  -- Party Details List Request
  if template_id == 537 then
    return true
  end

  -- Execution Ack
  if template_id == 539 then
    return true
  end

  -- Request For Quote
  if template_id == 543 then
    return true
  end

  -- New Order Cross
  if template_id == 544 then
    return true
  end

  -- Security Definition Request
  if template_id == 560 then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
cme_ebs_ilink3_sbe_v8_3.server_packet.fingerprint = function(buffer)
  if buffer:len() < 8 then
    return false
  end

  local template_id = buffer(6, 2):le_uint()

  -- Negotiation Response
  if template_id == 501 then
    return true
  end

  -- Negotiation Reject
  if template_id == 502 then
    return true
  end

  -- Establishment Ack
  if template_id == 504 then
    return true
  end

  -- Establishment Reject
  if template_id == 505 then
    return true
  end

  -- Sequence
  if template_id == 506 then
    return true
  end

  -- Terminate
  if template_id == 507 then
    return true
  end

  -- Retransmission
  if template_id == 509 then
    return true
  end

  -- Retransmit Reject
  if template_id == 510 then
    return true
  end

  -- Not Applied
  if template_id == 513 then
    return true
  end

  -- Party Details Definition Request Ack
  if template_id == 519 then
    return true
  end

  -- Business Reject
  if template_id == 521 then
    return true
  end

  -- Execution Report New
  if template_id == 522 then
    return true
  end

  -- Execution Report Reject
  if template_id == 523 then
    return true
  end

  -- Execution Report Elimination
  if template_id == 524 then
    return true
  end

  -- Execution Report Trade Outright
  if template_id == 525 then
    return true
  end

  -- Execution Report Trade Spread
  if template_id == 526 then
    return true
  end

  -- Execution Report Trade Spread Leg
  if template_id == 527 then
    return true
  end

  -- Execution Report Modify
  if template_id == 531 then
    return true
  end

  -- Execution Report Status
  if template_id == 532 then
    return true
  end

  -- Execution Report Cancel
  if template_id == 534 then
    return true
  end

  -- Order Cancel Reject
  if template_id == 535 then
    return true
  end

  -- Order Cancel Replace Reject
  if template_id == 536 then
    return true
  end

  -- Party Details List Report
  if template_id == 538 then
    return true
  end

  -- Request For Quote Ack
  if template_id == 546 then
    return true
  end

  -- Quote Cancel Ack
  if template_id == 547 then
    return true
  end

  -- Execution Report Trade Addendum Outright
  if template_id == 548 then
    return true
  end

  -- Execution Report Trade Addendum Spread
  if template_id == 549 then
    return true
  end

  -- Execution Report Trade Addendum Spread Leg
  if template_id == 550 then
    return true
  end

  -- Security Definition Response
  if template_id == 561 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
cme_ebs_ilink3_sbe_v8_3.schema_id.client_packet_verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 8 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(8, 2):le_uint()

  if value == 8 then
    return true
  end

  return false
end

-- Verify Version Field
cme_ebs_ilink3_sbe_v8_3.version.client_packet_verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 10 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(10, 2):le_uint()

  if value == 3 then
    return true
  end

  return false
end

-- Verify Schema Id Field
cme_ebs_ilink3_sbe_v8_3.schema_id.server_packet_verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 8 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(8, 2):le_uint()

  if value == 8 then
    return true
  end

  return false
end

-- Verify Version Field
cme_ebs_ilink3_sbe_v8_3.version.server_packet_verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 10 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(10, 2):le_uint()

  if value == 3 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme Ebs iLink3 Sbe 8.3 (Tcp)
local function omi_cme_ebs_ilink3_sbe_v8_3_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cme_ebs_ilink3_sbe_v8_3.client_packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not cme_ebs_ilink3_sbe_v8_3.schema_id.client_packet_verify(buffer) then return false end

  -- Verify Version
  if not cme_ebs_ilink3_sbe_v8_3.version.client_packet_verify(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not cme_ebs_ilink3_sbe_v8_3.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cme_ebs_ilink3_sbe_v8_3
  omi_cme_ebs_ilink3_sbe_v8_3.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Cme Ebs iLink3 Sbe 8.3 (Tcp)
local function omi_cme_ebs_ilink3_sbe_v8_3_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cme_ebs_ilink3_sbe_v8_3.server_packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not cme_ebs_ilink3_sbe_v8_3.schema_id.server_packet_verify(buffer) then return false end

  -- Verify Version
  if not cme_ebs_ilink3_sbe_v8_3.version.server_packet_verify(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not cme_ebs_ilink3_sbe_v8_3.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cme_ebs_ilink3_sbe_v8_3
  omi_cme_ebs_ilink3_sbe_v8_3.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Cme Ebs iLink3 Sbe 8.3 (Tcp): apply the heuristic of the sender's connection role
local function omi_cme_ebs_ilink3_sbe_v8_3_tcp_heuristic(buffer, packet, parent)
  local role = cme_ebs_ilink3_sbe_v8_3.role(packet)
  local initiator = omi_cme_ebs_ilink3_sbe_v8_3_tcp_initiator_heuristic
  local acceptor = omi_cme_ebs_ilink3_sbe_v8_3_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  cme_ebs_ilink3_sbe_v8_3.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  cme_ebs_ilink3_sbe_v8_3.swap(packet)

  return false
end

-- Register Heuristics for Cme Ebs iLink3 Sbe 8.3
omi_cme_ebs_ilink3_sbe_v8_3:register_heuristic("tcp", omi_cme_ebs_ilink3_sbe_v8_3_tcp_heuristic)

-- Register Cme Ebs iLink3 Sbe 8.3 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cme_ebs_ilink3_sbe_v8_3)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: CME Group
--   Version: 8.3
--   Date: Thursday, January 9, 2020
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
