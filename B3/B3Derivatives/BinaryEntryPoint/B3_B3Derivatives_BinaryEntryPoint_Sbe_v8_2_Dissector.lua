-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- B3 B3Derivatives BinaryEntryPoint Sbe 8.2 Protocol
local omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2 = Proto("Omi.B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.2", "B3 B3Derivatives BinaryEntryPoint Sbe 8.2")

-- Protocol table
local b3_b3derivatives_binaryentrypoint_sbe_v8_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- B3 B3Derivatives BinaryEntryPoint Sbe 8.2 Fields
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.account = ProtoField.new("Account", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.account", ftypes.UINT32)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.account_type = ProtoField.new("Account Type", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.accounttype", ftypes.UINT8, nil, nil, nil, "accountType")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.action_requested_from_session_id = ProtoField.new("Action Requested From Session Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.actionrequestedfromsessionid", ftypes.UINT32, nil, nil, nil, "actionRequestedFromSessionID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.aggressor_indicator = ProtoField.new("Aggressor Indicator", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.aggressorindicator", ftypes.UINT8, nil, nil, nil, "aggressorIndicator")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.alloc_account = ProtoField.new("Alloc Account", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.allocaccount", ftypes.UINT32, nil, nil, nil, "allocAccount")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.alloc_id = ProtoField.new("Alloc Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.allocid", ftypes.UINT64, nil, nil, nil, "allocID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.alloc_no_orders_type = ProtoField.new("Alloc No Orders Type", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.allocnoorderstype", ftypes.STRING, nil, nil, nil, "allocNoOrdersType")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.alloc_qty = ProtoField.new("Alloc Qty", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.allocqty", ftypes.UINT64, nil, nil, nil, "allocQty")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.alloc_rej_code = ProtoField.new("Alloc Rej Code", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.allocrejcode", ftypes.UINT32, nil, nil, nil, "allocRejCode")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.alloc_report_id = ProtoField.new("Alloc Report Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.allocreportid", ftypes.UINT64, nil, nil, nil, "allocReportID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.alloc_report_type = ProtoField.new("Alloc Report Type", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.allocreporttype", ftypes.STRING, nil, nil, nil, "allocReportType")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.alloc_status = ProtoField.new("Alloc Status", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.allocstatus", ftypes.STRING, nil, nil, nil, "allocStatus")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.alloc_trans_type = ProtoField.new("Alloc Trans Type", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.alloctranstype", ftypes.STRING, nil, nil, nil, "allocTransType")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.alloc_type = ProtoField.new("Alloc Type", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.alloctype", ftypes.STRING, nil, nil, nil, "allocType")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.asset = ProtoField.new("Asset", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.asset", ftypes.STRING)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.bidirectional_business_header = ProtoField.new("Bidirectional Business Header", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.bidirectionalbusinessheader", ftypes.STRING, nil, nil, nil, "BidirectionalBusinessHeader")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.block_length = ProtoField.new("Block Length", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.blocklength", ftypes.UINT16, nil, nil, nil, "blockLength")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.build_number = ProtoField.new("Build Number", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.buildnumber", ftypes.UINT8, nil, nil, nil, "buildNumber")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.business_reject_reason = ProtoField.new("Business Reject Reason", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.businessrejectreason", ftypes.UINT32, nil, nil, nil, "businessRejectReason")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.business_reject_ref_id = ProtoField.new("Business Reject Ref Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.businessrejectrefid", ftypes.UINT64, nil, nil, nil, "businessRejectRefID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.cancel_on_disconnect_type = ProtoField.new("Cancel On Disconnect Type", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.cancelondisconnecttype", ftypes.UINT8, nil, nil, nil, "cancelOnDisconnectType")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.clearing_business_date = ProtoField.new("Clearing Business Date", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.clearingbusinessdate", ftypes.UINT16, nil, nil, nil, "clearingBusinessDate")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.client_app_name = ProtoField.new("Client App Name", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.clientappname", ftypes.STRING, nil, nil, nil, "clientAppName data struct")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.client_app_name_data = ProtoField.new("Client App Name Data", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.clientappnamedata", ftypes.STRING, nil, nil, nil, "Client system information.")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.client_app_name_length = ProtoField.new("Client App Name Length", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.clientappnamelength", ftypes.UINT8, nil, nil, nil, "Length of client system information.")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.client_app_version = ProtoField.new("Client App Version", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.clientappversion", ftypes.STRING, nil, nil, nil, "clientAppVersion data struct")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.client_app_version_data = ProtoField.new("Client App Version Data", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.clientappversiondata", ftypes.STRING, nil, nil, nil, "Client system information.")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.client_app_version_length = ProtoField.new("Client App Version Length", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.clientappversionlength", ftypes.UINT8, nil, nil, nil, "Length of client system information.")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.client_ip = ProtoField.new("Client Ip", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.clientip", ftypes.STRING, nil, nil, nil, "clientIP data struct")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.client_ip_data = ProtoField.new("Client Ip Data", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.clientipdata", ftypes.STRING, nil, nil, nil, "Client system information.")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.client_ip_length = ProtoField.new("Client Ip Length", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.clientiplength", ftypes.UINT8, nil, nil, nil, "Length of client system information.")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.clordid = ProtoField.new("ClOrdId", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.clordid", ftypes.UINT64)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.clordid_optional = ProtoField.new("ClOrdId Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.clordidoptional", ftypes.UINT64, nil, nil, nil, "clOrdID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.cod_timeout_window = ProtoField.new("Cod Timeout Window", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.codtimeoutwindow", ftypes.UINT64, nil, nil, nil, "codTimeoutWindow")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.contra_broker = ProtoField.new("Contra Broker", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.contrabroker", ftypes.UINT32, nil, nil, nil, "contraBroker")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.contrary_instruction_indicator = ProtoField.new("Contrary Instruction Indicator", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.contraryinstructionindicator", ftypes.UINT8, nil, nil, nil, "contraryInstructionIndicator")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.count = ProtoField.new("Count", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.count", ftypes.UINT32)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.credentials = ProtoField.new("Credentials", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.credentials", ftypes.STRING, nil, nil, nil, "credentials data struct")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.credentials_data = ProtoField.new("Credentials Data", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.credentialsdata", ftypes.STRING, nil, nil, nil, "Credentials data in ASCII.")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.credentials_length = ProtoField.new("Credentials Length", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.credentialslength", ftypes.UINT8, nil, nil, nil, "Length of credentials data.")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.cross_prioritization = ProtoField.new("Cross Prioritization", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.crossprioritization", ftypes.UINT8, nil, nil, nil, "crossPrioritization")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.cross_sides_group = ProtoField.new("Cross Sides Group", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.crosssidesgroup", ftypes.STRING, nil, nil, nil, "noSides")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.cross_sides_groups = ProtoField.new("Cross Sides Groups", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.crosssidesgroups", ftypes.STRING, nil, nil, nil, "noSides Block")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.cross_type = ProtoField.new("Cross Type", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.crosstype", ftypes.UINT8, nil, nil, nil, "crossType")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.crossed_indicator = ProtoField.new("Crossed Indicator", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.crossedindicator", ftypes.UINT16, nil, nil, nil, "crossedIndicator")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.crossid = ProtoField.new("CrossId", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.crossid", ftypes.UINT64)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.crossid_optional = ProtoField.new("CrossId Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.crossidoptional", ftypes.UINT64, nil, nil, nil, "crossID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.cum_qty = ProtoField.new("Cum Qty", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.cumqty", ftypes.UINT64, nil, nil, nil, "cumQty")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.current_session_ver_id = ProtoField.new("Current Session Ver Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.currentsessionverid", ftypes.UINT64, nil, nil, nil, "currentSessionVerID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.custodian = ProtoField.new("Custodian", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.custodian", ftypes.UINT32)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.custodian_info = ProtoField.new("Custodian Info", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.custodianinfo", ftypes.STRING, nil, nil, nil, "NewOrderSingleMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.custody_account = ProtoField.new("Custody Account", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.custodyaccount", ftypes.UINT32, nil, nil, nil, "custodyAccount")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.custody_allocation_type = ProtoField.new("Custody Allocation Type", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.custodyallocationtype", ftypes.UINT32, nil, nil, nil, "custodyAllocationType")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.cxl_rej_response_to = ProtoField.new("Cxl Rej Response To", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.cxlrejresponseto", ftypes.UINT8, nil, nil, nil, "cxlRejResponseTo")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.days_to_settlement = ProtoField.new("Days To Settlement", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.daystosettlement", ftypes.UINT16, nil, nil, nil, "daysToSettlement")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.days_to_settlement_optional = ProtoField.new("Days To Settlement Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.daystosettlementoptional", ftypes.UINT16, nil, nil, nil, "daysToSettlement")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.desk_id = ProtoField.new("Desk Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.deskid", ftypes.STRING, nil, nil, nil, "deskID data struct")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.desk_id_data = ProtoField.new("Desk Id Data", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.deskiddata", ftypes.STRING, nil, nil, nil, "Trading desk identification in ASCII format.")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.desk_id_length = ProtoField.new("Desk Id Length", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.deskidlength", ftypes.UINT8, nil, nil, nil, "Length of trading desk identification.")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.document = ProtoField.new("Document", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.document", ftypes.UINT32)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.encoding_type = ProtoField.new("Encoding Type", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.encodingtype", ftypes.UINT16, nil, nil, nil, "Identifier of the encoding used in the message payload")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.entering_firm = ProtoField.new("Entering Firm", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.enteringfirm", ftypes.UINT32, nil, nil, nil, "enteringFirm")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.entering_firm_optional = ProtoField.new("Entering Firm Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.enteringfirmoptional", ftypes.UINT32, nil, nil, nil, "enteringFirm")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.entering_trader = ProtoField.new("Entering Trader", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.enteringtrader", ftypes.STRING, nil, nil, nil, "enteringTrader")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.establishment_reject_code = ProtoField.new("Establishment Reject Code", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.establishmentrejectcode", ftypes.UINT8, nil, nil, nil, "establishmentRejectCode")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.event_id = ProtoField.new("Event Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.eventid", ftypes.UINT32, nil, nil, nil, "eventID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.exec_id = ProtoField.new("Exec Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.execid", ftypes.UINT64, nil, nil, nil, "execID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.execrefid", ftypes.UINT64, nil, nil, nil, "execRefID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.execrestatementreason", ftypes.UINT8, nil, nil, nil, "execRestatementReason")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.exec_type = ProtoField.new("Exec Type", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.exectype", ftypes.STRING, nil, nil, nil, "execType")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.execute_underlying_trade = ProtoField.new("Execute Underlying Trade", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.executeunderlyingtrade", ftypes.STRING, nil, nil, nil, "executeUnderlyingTrade")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.executing_trader = ProtoField.new("Executing Trader", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.executingtrader", ftypes.STRING, nil, nil, nil, "executingTrader")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.executing_trader_optional = ProtoField.new("Executing Trader Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.executingtraderoptional", ftypes.STRING, nil, nil, nil, "executingTrader")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.expire_date = ProtoField.new("Expire Date", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.expiredate", ftypes.UINT16, nil, nil, nil, "expireDate")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.fixed_rate_percentage_8 = ProtoField.new("Fixed Rate Percentage 8", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.fixedratepercentage8", ftypes.DOUBLE, nil, nil, nil, "fixedRate")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.fixed_rate_percentage_8_optional = ProtoField.new("Fixed Rate Percentage 8 Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.fixedratepercentage8optional", ftypes.DOUBLE, nil, nil, nil, "fixedRate")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.from_seq_no = ProtoField.new("From Seq No", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.fromseqno", ftypes.UINT32, nil, nil, nil, "fromSeqNo")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.group_size_encoding = ProtoField.new("Group Size Encoding", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.groupsizeencoding", ftypes.STRING, nil, nil, nil, "GroupSizeEncoding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.implied_event_id = ProtoField.new("Implied Event Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.impliedeventid", ftypes.STRING, nil, nil, nil, "ExecutionReport_TradeMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.inbound_business_header = ProtoField.new("Inbound Business Header", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.inboundbusinessheader", ftypes.STRING, nil, nil, nil, "InboundBusinessHeader")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.individual_alloc_id = ProtoField.new("Individual Alloc Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.individualallocid", ftypes.UINT64, nil, nil, nil, "individualAllocID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.investor_id = ProtoField.new("Investor Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.investorid", ftypes.STRING, nil, nil, nil, "SimpleNewOrderMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.keep_alive_interval = ProtoField.new("Keep Alive Interval", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.keepaliveinterval", ftypes.UINT64, nil, nil, nil, "keepAliveInterval")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.last_incoming_seq_no = ProtoField.new("Last Incoming Seq No", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.lastincomingseqno", ftypes.UINT32, nil, nil, nil, "lastIncomingSeqNo")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.last_incoming_seq_no_optional = ProtoField.new("Last Incoming Seq No Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.lastincomingseqnooptional", ftypes.UINT32, nil, nil, nil, "lastIncomingSeqNo")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.last_px = ProtoField.new("Last Px", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.lastpx", ftypes.DOUBLE, nil, nil, nil, "lastPx")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.last_qty = ProtoField.new("Last Qty", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.lastqty", ftypes.UINT64, nil, nil, nil, "lastQty")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.leaves_qty = ProtoField.new("Leaves Qty", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.leavesqty", ftypes.UINT64, nil, nil, nil, "leavesQty")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.legratioqty", ftypes.DOUBLE, nil, nil, nil, "The ratio of quantity for this individual leg relative to the entire multileg security.")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.leg_side = ProtoField.new("Leg Side", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.legside", ftypes.STRING, nil, nil, nil, "The side of this individual leg (multileg security). See Side (54) field for description and values.")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.leg_symbol = ProtoField.new("Leg Symbol", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.legsymbol", ftypes.STRING, nil, nil, nil, "Multileg instrument's individual security’s Symbol. See Symbol (55) field for description.")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.legs_group = ProtoField.new("Legs Group", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.legsgroup", ftypes.STRING, nil, nil, nil, "noLegs")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.legs_groups = ProtoField.new("Legs Groups", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.legsgroups", ftypes.STRING, nil, nil, nil, "noLegs Block")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.long_qty = ProtoField.new("Long Qty", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.longqty", ftypes.UINT64, nil, nil, nil, "longQty")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.long_qty_optional = ProtoField.new("Long Qty Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.longqtyoptional", ftypes.UINT64, nil, nil, nil, "Long Quantity.")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.major_number = ProtoField.new("Major Number", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.majornumber", ftypes.UINT8, nil, nil, nil, "majorNumber")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.market_segment_id = ProtoField.new("Market Segment Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.marketsegmentid", ftypes.UINT8, nil, nil, nil, "marketSegmentID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.market_segment_id_optional = ProtoField.new("Market Segment Id Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.marketsegmentidoptional", ftypes.UINT8, nil, nil, nil, "marketSegmentID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.market_segment_received_time = ProtoField.new("Market Segment Received Time", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.marketsegmentreceivedtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "marketSegmentReceivedTime")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.market_segment_received_time_utc = ProtoField.new("Market Segment Received Time", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.marketsegmentreceivedtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "marketSegmentReceivedTime")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.mass_action_reject_reason = ProtoField.new("Mass Action Reject Reason", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.massactionrejectreason", ftypes.UINT8, nil, nil, nil, "massActionRejectReason")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.mass_action_report_id = ProtoField.new("Mass Action Report Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.massactionreportid", ftypes.UINT64, nil, nil, nil, "massActionReportID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.mass_action_report_id_optional = ProtoField.new("Mass Action Report Id Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.massactionreportidoptional", ftypes.UINT64, nil, nil, nil, "massActionReportID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.mass_action_response = ProtoField.new("Mass Action Response", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.massactionresponse", ftypes.STRING, nil, nil, nil, "massActionResponse")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.mass_action_scope = ProtoField.new("Mass Action Scope", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.massactionscope", ftypes.UINT8, nil, nil, nil, "massActionScope")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.mass_action_type = ProtoField.new("Mass Action Type", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.massactiontype", ftypes.UINT8, nil, nil, nil, "massActionType")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.mass_cancel_restatement_reason = ProtoField.new("Mass Cancel Restatement Reason", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.masscancelrestatementreason", ftypes.UINT8, nil, nil, nil, "execRestatementReason")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.max_floor = ProtoField.new("Max Floor", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.maxfloor", ftypes.UINT64, nil, nil, nil, "maxFloor")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.max_sweep_qty = ProtoField.new("Max Sweep Qty", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.maxsweepqty", ftypes.UINT64, nil, nil, nil, "maxSweepQty")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.memo = ProtoField.new("Memo", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.memo", ftypes.STRING, nil, nil, nil, "memo data struct")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.memo_data = ProtoField.new("Memo Data", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.memodata", ftypes.STRING, nil, nil, nil, "Free ASCII format text field defined by client.")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.memo_length = ProtoField.new("Memo Length", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.memolength", ftypes.UINT8, nil, nil, nil, "Length of free format text field defined by client.")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.message_length = ProtoField.new("Message Length", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.messagelength", ftypes.UINT16, nil, nil, nil, "Overall message length including framing and SBE headers")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.min_qty = ProtoField.new("Min Qty", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.minqty", ftypes.UINT64, nil, nil, nil, "minQty")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.minor_number = ProtoField.new("Minor Number", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.minornumber", ftypes.UINT8, nil, nil, nil, "minorNumber")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.mm_protection_reset = ProtoField.new("Mm Protection Reset", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.mmprotectionreset", ftypes.UINT8, nil, nil, nil, "mmProtectionReset")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.mm_protection_reset_optional = ProtoField.new("Mm Protection Reset Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.mmprotectionresetoptional", ftypes.UINT8, nil, nil, nil, "mmProtectionReset")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.msgseqnum", ftypes.UINT32, nil, nil, nil, "msgSeqNum")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.multi_leg_reporting_type = ProtoField.new("Multi Leg Reporting Type", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.multilegreportingtype", ftypes.STRING, nil, nil, nil, "multiLegReportingType")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.negotiation_reject_code = ProtoField.new("Negotiation Reject Code", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.negotiationrejectcode", ftypes.UINT8, nil, nil, nil, "negotiationRejectCode")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.next_seq_no = ProtoField.new("Next Seq No", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.nextseqno", ftypes.UINT32, nil, nil, nil, "nextSeqNo")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.no_related_trades = ProtoField.new("No Related Trades", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.norelatedtrades", ftypes.UINT16, nil, nil, nil, "noRelatedTrades")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.num_in_group = ProtoField.new("Num In Group", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.numingroup", ftypes.UINT8, nil, nil, nil, "numInGroup")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_1_padding_1 = ProtoField.new("Offset 1 Padding 1", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.offset1padding1", ftypes.BYTES, nil, nil, nil, "1 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_100_padding_4 = ProtoField.new("Offset 100 Padding 4", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.offset100padding4", ftypes.BYTES, nil, nil, nil, "4 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_118_padding_2 = ProtoField.new("Offset 118 Padding 2", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.offset118padding2", ftypes.BYTES, nil, nil, nil, "2 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_119_padding_1 = ProtoField.new("Offset 119 Padding 1", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.offset119padding1", ftypes.BYTES, nil, nil, nil, "1 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_146_padding_3 = ProtoField.new("Offset 146 Padding 3", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.offset146padding3", ftypes.BYTES, nil, nil, nil, "3 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_152_padding_3 = ProtoField.new("Offset 152 Padding 3", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.offset152padding3", ftypes.BYTES, nil, nil, nil, "3 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_159_padding_1 = ProtoField.new("Offset 159 Padding 1", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.offset159padding1", ftypes.BYTES, nil, nil, nil, "1 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_164_padding_3 = ProtoField.new("Offset 164 Padding 3", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.offset164padding3", ftypes.BYTES, nil, nil, nil, "3 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_167_padding_1 = ProtoField.new("Offset 167 Padding 1", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.offset167padding1", ftypes.BYTES, nil, nil, nil, "1 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_168_padding_3 = ProtoField.new("Offset 168 Padding 3", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.offset168padding3", ftypes.BYTES, nil, nil, nil, "3 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_18_padding_2 = ProtoField.new("Offset 18 Padding 2", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.offset18padding2", ftypes.BYTES, nil, nil, nil, "2 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_181_padding_1 = ProtoField.new("Offset 181 Padding 1", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.offset181padding1", ftypes.BYTES, nil, nil, nil, "1 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_19_padding_1 = ProtoField.new("Offset 19 Padding 1", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.offset19padding1", ftypes.BYTES, nil, nil, nil, "1 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_2_padding_2 = ProtoField.new("Offset 2 Padding 2", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.offset2padding2", ftypes.BYTES, nil, nil, nil, "2 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_21_padding_1 = ProtoField.new("Offset 21 Padding 1", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.offset21padding1", ftypes.BYTES, nil, nil, nil, "1 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_25_padding_3 = ProtoField.new("Offset 25 Padding 3", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.offset25padding3", ftypes.BYTES, nil, nil, nil, "3 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_31_padding_1 = ProtoField.new("Offset 31 Padding 1", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.offset31padding1", ftypes.BYTES, nil, nil, nil, "1 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_33_padding_1 = ProtoField.new("Offset 33 Padding 1", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.offset33padding1", ftypes.BYTES, nil, nil, nil, "1 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_49_padding_1 = ProtoField.new("Offset 49 Padding 1", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.offset49padding1", ftypes.BYTES, nil, nil, nil, "1 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_54_padding_2 = ProtoField.new("Offset 54 Padding 2", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.offset54padding2", ftypes.BYTES, nil, nil, nil, "2 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.onbehalf_firm = ProtoField.new("Onbehalf Firm", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.onbehalffirm", ftypes.UINT32, nil, nil, nil, "onbehalfFirm")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.ord_rej_reason = ProtoField.new("Ord Rej Reason", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.ordrejreason", ftypes.UINT32, nil, nil, nil, "ordRejReason")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.ord_status = ProtoField.new("Ord Status", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.ordstatus", ftypes.STRING, nil, nil, nil, "ordStatus")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.order_category = ProtoField.new("Order Category", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.ordercategory", ftypes.STRING, nil, nil, nil, "orderCategory")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.order_id = ProtoField.new("Order Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.orderid", ftypes.UINT64, nil, nil, nil, "orderID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.order_id_optional = ProtoField.new("Order Id Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.orderidoptional", ftypes.UINT64, nil, nil, nil, "orderID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.order_qty = ProtoField.new("Order Qty", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.orderqty", ftypes.UINT64, nil, nil, nil, "orderQty")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.order_qty_optional = ProtoField.new("Order Qty Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.orderqtyoptional", ftypes.UINT64, nil, nil, nil, "orderQty")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.ordtagid = ProtoField.new("OrdTagId", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.ordtagid", ftypes.UINT8)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.ordtype = ProtoField.new("OrdType", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.ordtype", ftypes.STRING)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.orig_pos_req_ref_id = ProtoField.new("Orig Pos Req Ref Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.origposreqrefid", ftypes.UINT64, nil, nil, nil, "origPosReqRefID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.origclordid = ProtoField.new("OrigClOrdId", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.origclordid", ftypes.UINT64)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.outbound_business_header = ProtoField.new("Outbound Business Header", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.outboundbusinessheader", ftypes.STRING, nil, nil, nil, "OutboundBusinessHeader")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.padding = ProtoField.new("Padding", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.padding", ftypes.STRING)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.padding_1 = ProtoField.new("Padding 1", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.padding1", ftypes.BYTES, nil, nil, nil, "1 bytes padding")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.patch_number = ProtoField.new("Patch Number", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.patchnumber", ftypes.UINT8, nil, nil, nil, "patchNumber")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.pos_maint_action = ProtoField.new("Pos Maint Action", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.posmaintaction", ftypes.STRING, nil, nil, nil, "posMaintAction")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.pos_maint_result = ProtoField.new("Pos Maint Result", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.posmaintresult", ftypes.UINT32, nil, nil, nil, "posMaintResult")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.pos_maint_rpt_id = ProtoField.new("Pos Maint Rpt Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.posmaintrptid", ftypes.UINT64, nil, nil, nil, "posMaintRptID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.pos_maint_rpt_ref_id = ProtoField.new("Pos Maint Rpt Ref Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.posmaintrptrefid", ftypes.UINT64, nil, nil, nil, "posMaintRptRefID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.pos_maint_status = ProtoField.new("Pos Maint Status", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.posmaintstatus", ftypes.STRING, nil, nil, nil, "posMaintStatus")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.pos_req_id = ProtoField.new("Pos Req Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.posreqid", ftypes.UINT64, nil, nil, nil, "posReqID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.pos_req_id_optional = ProtoField.new("Pos Req Id Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.posreqidoptional", ftypes.UINT64, nil, nil, nil, "posReqID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.pos_trans_type = ProtoField.new("Pos Trans Type", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.postranstype", ftypes.UINT8, nil, nil, nil, "posTransType")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.pos_type = ProtoField.new("Pos Type", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.postype", ftypes.STRING, nil, nil, nil, "Used to identify the type of quantity.")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.positions_group = ProtoField.new("Positions Group", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.positionsgroup", ftypes.STRING, nil, nil, nil, "noPositions")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.positions_groups = ProtoField.new("Positions Groups", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.positionsgroups", ftypes.STRING, nil, nil, nil, "noPositions Block")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.poss_resend = ProtoField.new("Poss Resend", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.possresend", ftypes.UINT8, nil, nil, nil, "possResend")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.prefix = ProtoField.new("Prefix", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.prefix", ftypes.UINT16)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.price = ProtoField.new("Price", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.price", ftypes.DOUBLE)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.price_8 = ProtoField.new("Price 8", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.price8", ftypes.DOUBLE, nil, nil, nil, "price")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.price_8_optional = ProtoField.new("Price 8 Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.price8optional", ftypes.DOUBLE, nil, nil, nil, "price")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.price_optional = ProtoField.new("Price Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.priceoptional", ftypes.DOUBLE, nil, nil, nil, "price")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.protection_price = ProtoField.new("Protection Price", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.protectionprice", ftypes.DOUBLE, nil, nil, nil, "protectionPrice")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quantity = ProtoField.new("Quantity", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.quantity", ftypes.UINT64)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_id = ProtoField.new("Quote Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.quoteid", ftypes.UINT64, nil, nil, nil, "quoteID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_id_optional = ProtoField.new("Quote Id Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.quoteidoptional", ftypes.UINT64, nil, nil, nil, "quoteID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_reject_reason = ProtoField.new("Quote Reject Reason", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.quoterejectreason", ftypes.UINT32, nil, nil, nil, "quoteRejectReason")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_req_id = ProtoField.new("Quote Req Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.quotereqid", ftypes.UINT64, nil, nil, nil, "quoteReqID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_req_id_optional = ProtoField.new("Quote Req Id Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.quotereqidoptional", ftypes.UINT64, nil, nil, nil, "quoteReqID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_request_reject_reason = ProtoField.new("Quote Request Reject Reason", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.quoterequestrejectreason", ftypes.UINT32, nil, nil, nil, "quoteRequestRejectReason")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_status = ProtoField.new("Quote Status", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.quotestatus", ftypes.UINT8, nil, nil, nil, "quoteStatus")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_status_response_to = ProtoField.new("Quote Status Response To", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.quotestatusresponseto", ftypes.STRING, nil, nil, nil, "quoteStatusResponseTo")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.received_time = ProtoField.new("Received Time", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.receivedtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "receivedTime")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.received_time_utc = ProtoField.new("Received Time", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.receivedtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "receivedTime")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.ref_msg_type = ProtoField.new("Ref Msg Type", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.refmsgtype", ftypes.UINT8, nil, nil, nil, "refMsgType")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.ref_seq_num = ProtoField.new("Ref Seq Num", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.refseqnum", ftypes.UINT32, nil, nil, nil, "refSeqNum")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.request_timestamp = ProtoField.new("Request Timestamp", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.requesttimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "requestTimestamp")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.request_timestamp_utc = ProtoField.new("Request Timestamp", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.requesttimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "requestTimestamp")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.retransmit_reject_code = ProtoField.new("Retransmit Reject Code", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.retransmitrejectcode", ftypes.UINT8, nil, nil, nil, "retransmitRejectCode")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.routing_instruction = ProtoField.new("Routing Instruction", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.routinginstruction", ftypes.UINT8, nil, nil, nil, "routingInstruction")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.schema_id = ProtoField.new("Schema Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.schemaid", ftypes.UINT16, nil, nil, nil, "Identifier of the schema publishing the message")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.secondary_exec_id = ProtoField.new("Secondary Exec Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.secondaryexecid", ftypes.UINT64, nil, nil, nil, "secondaryExecID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.secondaryorderid", ftypes.UINT64, nil, nil, nil, "secondaryOrderID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.secondary_order_id_optional = ProtoField.new("Secondary Order Id Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.secondaryorderidoptional", ftypes.UINT64, nil, nil, nil, "secondaryOrderID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.security_id = ProtoField.new("Security Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.securityid", ftypes.UINT64, nil, nil, nil, "securityID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.security_id_optional = ProtoField.new("Security Id Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.securityidoptional", ftypes.UINT64, nil, nil, nil, "securityID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.security_req_id = ProtoField.new("Security Req Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.securityreqid", ftypes.UINT64, nil, nil, nil, "securityReqID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.security_response_id = ProtoField.new("Security Response Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.securityresponseid", ftypes.UINT64, nil, nil, nil, "securityResponseID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.security_response_type = ProtoField.new("Security Response Type", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.securityresponsetype", ftypes.UINT8, nil, nil, nil, "securityResponseType")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.security_strategy_type = ProtoField.new("Security Strategy Type", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.securitystrategytype", ftypes.STRING, nil, nil, nil, "securityStrategyType")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.security_trading_status = ProtoField.new("Security Trading Status", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.securitytradingstatus", ftypes.UINT8, nil, nil, nil, "securityTradingStatus")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.self_trade_prevention_instruction = ProtoField.new("Self Trade Prevention Instruction", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.selftradepreventioninstruction", ftypes.UINT8, nil, nil, nil, "selfTradePreventionInstruction")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.semantic_version = ProtoField.new("Semantic Version", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.semanticversion", ftypes.STRING, nil, nil, nil, "NegotiateResponseMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.sender_location = ProtoField.new("Sender Location", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.senderlocation", ftypes.STRING, nil, nil, nil, "senderLocation")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.sending_time = ProtoField.new("Sending Time", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.sendingtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "sendingTime")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.sending_time_utc = ProtoField.new("Sending Time", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.sendingtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "sendingTime")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.session_id = ProtoField.new("Session Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.sessionid", ftypes.UINT32, nil, nil, nil, "sessionID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.session_ver_id = ProtoField.new("Session Ver Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.sessionverid", ftypes.UINT64, nil, nil, nil, "sessionVerID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.settl_type = ProtoField.new("Settl Type", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.settltype", ftypes.STRING, nil, nil, nil, "settlType")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.settl_type_optional = ProtoField.new("Settl Type Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.settltypeoptional", ftypes.STRING, nil, nil, nil, "settlType")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.short_qty = ProtoField.new("Short Qty", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.shortqty", ftypes.UINT64, nil, nil, nil, "Short Quantity.")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.side = ProtoField.new("Side", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.side", ftypes.STRING)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.side_optional = ProtoField.new("Side Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.sideoptional", ftypes.STRING, nil, nil, nil, "side")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.sides_group = ProtoField.new("Sides Group", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.sidesgroup", ftypes.STRING, nil, nil, nil, "noSides")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.sides_groups = ProtoField.new("Sides Groups", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.sidesgroups", ftypes.STRING, nil, nil, nil, "noSides Block")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.simple_ordtype = ProtoField.new("Simple OrdType", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.simpleordtype", ftypes.STRING, nil, nil, nil, "ordType")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.single_cancel_restatement_reason = ProtoField.new("Single Cancel Restatement Reason", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.singlecancelrestatementreason", ftypes.UINT8, nil, nil, nil, "execRestatementReason")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.stop_px = ProtoField.new("Stop Px", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.stoppx", ftypes.DOUBLE, nil, nil, nil, "stopPx")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.strategy_id = ProtoField.new("Strategy Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.strategyid", ftypes.INT32, nil, nil, nil, "strategyID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.symbol = ProtoField.new("Symbol", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.symbol", ftypes.STRING)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.template_id = ProtoField.new("Template Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.templateid", ftypes.UINT16, nil, nil, nil, "Template ID used to encode the message")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.termination_code = ProtoField.new("Termination Code", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.terminationcode", ftypes.UINT8, nil, nil, nil, "terminationCode")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.text = ProtoField.new("Text", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.text", ftypes.STRING, nil, nil, nil, "text data struct")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.text_data = ProtoField.new("Text Data", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.textdata", ftypes.STRING, nil, nil, nil, "Free ASCII format text string generated by exchange.")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.text_length = ProtoField.new("Text Length", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.textlength", ftypes.UINT8, nil, nil, nil, "Length of free format text string generated by exchange.")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.threshold_amount = ProtoField.new("Threshold Amount", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.thresholdamount", ftypes.DOUBLE, nil, nil, nil, "thresholdAmount")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.time_in_force = ProtoField.new("Time In Force", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.timeinforce", ftypes.STRING, nil, nil, nil, "timeInForce")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.time_in_force_optional = ProtoField.new("Time In Force Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.timeinforceoptional", ftypes.STRING, nil, nil, nil, "timeInForce")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.time_in_force_simple = ProtoField.new("Time In Force Simple", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.timeinforcesimple", ftypes.STRING, nil, nil, nil, "timeInForce")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.timestamp = ProtoField.new("Timestamp", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.timestamp_utc = ProtoField.new("Timestamp", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.tot_no_related_sym = ProtoField.new("Tot No Related Sym", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.totnorelatedsym", ftypes.UINT8, nil, nil, nil, "totNoRelatedSym")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.trade_date = ProtoField.new("Trade Date", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.tradedate", ftypes.UINT16, nil, nil, nil, "tradeDate")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.trade_date_optional = ProtoField.new("Trade Date Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.tradedateoptional", ftypes.UINT16, nil, nil, nil, "tradeDate")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.trade_id = ProtoField.new("Trade Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.tradeid", ftypes.UINT32, nil, nil, nil, "tradeID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.trade_id_optional = ProtoField.new("Trade Id Optional", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.tradeidoptional", ftypes.UINT32, nil, nil, nil, "tradeID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.trading_session_id = ProtoField.new("Trading Session Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.tradingsessionid", ftypes.UINT8, nil, nil, nil, "tradingSessionID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.tradingsessionsubid", ftypes.UINT8, nil, nil, nil, "tradingSessionSubID")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.transact_time = ProtoField.new("Transact Time", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.transacttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "transactTime")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.transact_time_utc = ProtoField.new("Transact Time", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.transacttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "transactTime")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.version = ProtoField.new("Version", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.version", ftypes.UINT16, nil, nil, nil, "Schema version")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.working_indicator = ProtoField.new("Working Indicator", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.workingindicator", ftypes.UINT8, nil, nil, nil, "workingIndicator")

-- B3 B3Derivatives BinaryEntryPoint Sbe 8.2 Framing
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.message_header = ProtoField.new("Message Header", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.messageheader", ftypes.STRING, nil, nil, nil, "B3 Sbe message header — message identifiers and length of message root")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.packet = ProtoField.new("Packet", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.packet", ftypes.STRING, nil, nil, nil, "Simple Open Frame Packet")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.simple_open_frame = ProtoField.new("Simple Open Frame", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.simpleopenframe", ftypes.STRING)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.simple_open_framing_header = ProtoField.new("Simple Open Framing Header", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.simpleopenframingheader", ftypes.STRING)

-- B3 B3Derivatives BinaryEntryPoint 8.2 Application Messages
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.allocation_instruction_message = ProtoField.new("Allocation Instruction Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.allocationinstructionmessage", ftypes.STRING, nil, nil, nil, "AllocationInstructionMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.allocation_report_message = ProtoField.new("Allocation Report Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.allocationreportmessage", ftypes.STRING, nil, nil, nil, "AllocationReportMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.business_message_reject_message = ProtoField.new("Business Message Reject Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.businessmessagerejectmessage", ftypes.STRING, nil, nil, nil, "BusinessMessageRejectMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.establish_ack_message = ProtoField.new("Establish Ack Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.establishackmessage", ftypes.STRING, nil, nil, nil, "EstablishAckMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.establish_message = ProtoField.new("Establish Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.establishmessage", ftypes.STRING, nil, nil, nil, "EstablishMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.establish_reject_message = ProtoField.new("Establish Reject Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.establishrejectmessage", ftypes.STRING, nil, nil, nil, "EstablishRejectMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.execution_report_cancel_message = ProtoField.new("Execution Report Cancel Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.executionreportcancelmessage", ftypes.STRING, nil, nil, nil, "ExecutionReport_CancelMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.execution_report_forward_message = ProtoField.new("Execution Report Forward Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.executionreportforwardmessage", ftypes.STRING, nil, nil, nil, "ExecutionReport_ForwardMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.execution_report_modify_message = ProtoField.new("Execution Report Modify Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.executionreportmodifymessage", ftypes.STRING, nil, nil, nil, "ExecutionReport_ModifyMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.execution_report_new_message = ProtoField.new("Execution Report New Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.executionreportnewmessage", ftypes.STRING, nil, nil, nil, "ExecutionReport_NewMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.execution_report_reject_message = ProtoField.new("Execution Report Reject Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.executionreportrejectmessage", ftypes.STRING, nil, nil, nil, "ExecutionReport_RejectMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.execution_report_trade_message = ProtoField.new("Execution Report Trade Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.executionreporttrademessage", ftypes.STRING, nil, nil, nil, "ExecutionReport_TradeMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.negotiate_message = ProtoField.new("Negotiate Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.negotiatemessage", ftypes.STRING, nil, nil, nil, "NegotiateMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.negotiate_reject_message = ProtoField.new("Negotiate Reject Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.negotiaterejectmessage", ftypes.STRING, nil, nil, nil, "NegotiateRejectMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.negotiate_response_message = ProtoField.new("Negotiate Response Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.negotiateresponsemessage", ftypes.STRING, nil, nil, nil, "NegotiateResponseMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.new_order_cross_message = ProtoField.new("New Order Cross Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.newordercrossmessage", ftypes.STRING, nil, nil, nil, "NewOrderCrossMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.new_order_single_message = ProtoField.new("New Order Single Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.newordersinglemessage", ftypes.STRING, nil, nil, nil, "NewOrderSingleMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.not_applied_message = ProtoField.new("Not Applied Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.notappliedmessage", ftypes.STRING, nil, nil, nil, "NotAppliedMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.order_cancel_replace_request_message = ProtoField.new("Order Cancel Replace Request Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.ordercancelreplacerequestmessage", ftypes.STRING, nil, nil, nil, "OrderCancelReplaceRequestMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.ordercancelrequestmessage", ftypes.STRING, nil, nil, nil, "OrderCancelRequestMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.order_mass_action_report_message = ProtoField.new("Order Mass Action Report Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.ordermassactionreportmessage", ftypes.STRING, nil, nil, nil, "OrderMassActionReportMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.order_mass_action_request_message = ProtoField.new("Order Mass Action Request Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.ordermassactionrequestmessage", ftypes.STRING, nil, nil, nil, "OrderMassActionRequestMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.position_maintenance_cancel_request_message = ProtoField.new("Position Maintenance Cancel Request Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.positionmaintenancecancelrequestmessage", ftypes.STRING, nil, nil, nil, "PositionMaintenanceCancelRequestMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.position_maintenance_report_message = ProtoField.new("Position Maintenance Report Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.positionmaintenancereportmessage", ftypes.STRING, nil, nil, nil, "PositionMaintenanceReportMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.position_maintenance_request_message = ProtoField.new("Position Maintenance Request Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.positionmaintenancerequestmessage", ftypes.STRING, nil, nil, nil, "PositionMaintenanceRequestMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_cancel_message = ProtoField.new("Quote Cancel Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.quotecancelmessage", ftypes.STRING, nil, nil, nil, "QuoteCancelMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_message = ProtoField.new("Quote Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.quotemessage", ftypes.STRING, nil, nil, nil, "QuoteMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_request_message = ProtoField.new("Quote Request Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.quoterequestmessage", ftypes.STRING, nil, nil, nil, "QuoteRequestMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_request_reject_message = ProtoField.new("Quote Request Reject Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.quoterequestrejectmessage", ftypes.STRING, nil, nil, nil, "QuoteRequestRejectMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_status_report_message = ProtoField.new("Quote Status Report Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.quotestatusreportmessage", ftypes.STRING, nil, nil, nil, "QuoteStatusReportMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.retransmission_message = ProtoField.new("Retransmission Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.retransmissionmessage", ftypes.STRING, nil, nil, nil, "RetransmissionMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.retransmit_reject_message = ProtoField.new("Retransmit Reject Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.retransmitrejectmessage", ftypes.STRING, nil, nil, nil, "RetransmitRejectMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.retransmit_request_message = ProtoField.new("Retransmit Request Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.retransmitrequestmessage", ftypes.STRING, nil, nil, nil, "RetransmitRequestMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.security_definition_request_message = ProtoField.new("Security Definition Request Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.securitydefinitionrequestmessage", ftypes.STRING, nil, nil, nil, "SecurityDefinitionRequestMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.security_definition_response_message = ProtoField.new("Security Definition Response Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.securitydefinitionresponsemessage", ftypes.STRING, nil, nil, nil, "SecurityDefinitionResponseMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.sequence_message = ProtoField.new("Sequence Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.sequencemessage", ftypes.STRING, nil, nil, nil, "SequenceMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.simple_modify_order_message = ProtoField.new("Simple Modify Order Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.simplemodifyordermessage", ftypes.STRING, nil, nil, nil, "SimpleModifyOrderMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.simple_new_order_message = ProtoField.new("Simple New Order Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.simplenewordermessage", ftypes.STRING, nil, nil, nil, "SimpleNewOrderMessage")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.terminate_message = ProtoField.new("Terminate Message", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.terminatemessage", ftypes.STRING, nil, nil, nil, "TerminateMessage")

-- B3 B3Derivatives BinaryEntryPoint Sbe 8.2 Generated Fields
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.cross_sides_group_index = ProtoField.new("Cross Sides Group Index", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.crosssidesgroupindex", ftypes.UINT16)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.legs_group_index = ProtoField.new("Legs Group Index", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.legsgroupindex", ftypes.UINT16)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.positions_group_index = ProtoField.new("Positions Group Index", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.positionsgroupindex", ftypes.UINT16)
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.sides_group_index = ProtoField.new("Sides Group Index", "b3.b3derivatives.binaryentrypoint.sbe.v8.2.sidesgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- B3 B3Derivatives BinaryEntryPoint Sbe 8.2 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
b3_b3derivatives_binaryentrypoint_sbe_v8_2.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- B3 B3Derivatives BinaryEntryPoint Sbe 8.2 Element Dissection Options
show.application_messages = true
show.structs = true
show.repeating_groups = true
show.headers = true
show.indexes = true

-- Register B3 B3Derivatives BinaryEntryPoint Sbe 8.2 Show Options
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefs.show_application_messages then
    show.application_messages = omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefs.show_application_messages
  end
  if show.headers ~= omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefs.show_headers then
    show.headers = omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefs.show_headers
  end
  if show.repeating_groups ~= omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefs.show_repeating_groups then
    show.repeating_groups = omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefs.show_repeating_groups
  end
  if show.structs ~= omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefs.show_structs then
    show.structs = omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefs.show_structs
  end
  if show.indexes ~= omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefs.show_indexes then
    show.indexes = omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefs.show_indexes
  end
  if b3_b3derivatives_binaryentrypoint_sbe_v8_2.absolute_time_base ~= omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefs.absolute_time_base then
    b3_b3derivatives_binaryentrypoint_sbe_v8_2.absolute_time_base = omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- B3 B3Derivatives BinaryEntryPoint Sbe 8.2 Fields
-----------------------------------------------------------------------

-- Account
b3_b3derivatives_binaryentrypoint_sbe_v8_2.account = {}

-- Size: Account
b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.size = 4

-- Display: Account
b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.account, range, value, display)

  return offset + length, value
end

-- Account Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.account_type = {}

-- Size: Account Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.account_type.size = 1

-- Display: Account Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.account_type.display = function(value)
  if value == 38 then
    return "Account Type: Remove Account Information (38)"
  end
  if value == 39 then
    return "Account Type: Regular Account (39)"
  end
  if value == 0 then
    return "Account Type: No Value"
  end

  return "Account Type: Unknown("..value..")"
end

-- Dissect: Account Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.account_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.account_type, range, value, display)

  return offset + length, value
end

-- Action Requested From Session Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.action_requested_from_session_id = {}

-- Size: Action Requested From Session Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.action_requested_from_session_id.size = 4

-- Display: Action Requested From Session Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.action_requested_from_session_id.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Action Requested From Session Id: No Value"
  end

  return "Action Requested From Session Id: "..value
end

-- Dissect: Action Requested From Session Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.action_requested_from_session_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.action_requested_from_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.action_requested_from_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.action_requested_from_session_id, range, value, display)

  return offset + length, value
end

-- Aggressor Indicator
b3_b3derivatives_binaryentrypoint_sbe_v8_2.aggressor_indicator = {}

-- Size: Aggressor Indicator
b3_b3derivatives_binaryentrypoint_sbe_v8_2.aggressor_indicator.size = 1

-- Display: Aggressor Indicator
b3_b3derivatives_binaryentrypoint_sbe_v8_2.aggressor_indicator.labels = {
  [0] = "Aggressor Indicator: False Value (0)",
  [1] = "Aggressor Indicator: True Value (1)",
}

b3_b3derivatives_binaryentrypoint_sbe_v8_2.aggressor_indicator.display = function(value)
  return b3_b3derivatives_binaryentrypoint_sbe_v8_2.aggressor_indicator.labels[value] or "Aggressor Indicator: Unknown("..value..")"
end

-- Dissect: Aggressor Indicator
b3_b3derivatives_binaryentrypoint_sbe_v8_2.aggressor_indicator.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.aggressor_indicator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.aggressor_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.aggressor_indicator, range, value, display)

  return offset + length, value
end

-- Alloc Account
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_account = {}

-- Size: Alloc Account
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_account.size = 4

-- Display: Alloc Account
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_account.display = function(value)
  return "Alloc Account: "..value
end

-- Dissect: Alloc Account
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_account.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_account.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.alloc_account, range, value, display)

  return offset + length, value
end

-- Alloc Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_id = {}

-- Size: Alloc Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_id.size = 8

-- Display: Alloc Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_id.display = function(value)
  return "Alloc Id: "..value
end

-- Dissect: Alloc Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.alloc_id, range, value, display)

  return offset + length, value
end

-- Alloc No Orders Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_no_orders_type = {}

-- Size: Alloc No Orders Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_no_orders_type.size = 1

-- Display: Alloc No Orders Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_no_orders_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Alloc No Orders Type: No Value"
  end

  if value == "0" then
    return "Alloc No Orders Type: Not Specified (0)"
  end

  return "Alloc No Orders Type: Unknown("..value..")"
end

-- Dissect: Alloc No Orders Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_no_orders_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_no_orders_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_no_orders_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.alloc_no_orders_type, range, value, display)

  return offset + length, value
end

-- Alloc Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_qty = {}

-- Size: Alloc Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_qty.size = 8

-- Display: Alloc Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_qty.display = function(value)
  return "Alloc Qty: "..value
end

-- Dissect: Alloc Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.alloc_qty, range, value, display)

  return offset + length, value
end

-- Alloc Rej Code
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_rej_code = {}

-- Size: Alloc Rej Code
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_rej_code.size = 4

-- Display: Alloc Rej Code
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_rej_code.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Alloc Rej Code: No Value"
  end

  return "Alloc Rej Code: "..value
end

-- Dissect: Alloc Rej Code
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_rej_code.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_rej_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_rej_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.alloc_rej_code, range, value, display)

  return offset + length, value
end

-- Alloc Report Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_report_id = {}

-- Size: Alloc Report Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_report_id.size = 8

-- Display: Alloc Report Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_report_id.display = function(value)
  return "Alloc Report Id: "..value
end

-- Dissect: Alloc Report Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_report_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_report_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_report_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.alloc_report_id, range, value, display)

  return offset + length, value
end

-- Alloc Report Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_report_type = {}

-- Size: Alloc Report Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_report_type.size = 1

-- Display: Alloc Report Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_report_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Alloc Report Type: No Value"
  end

  if value == "8" then
    return "Alloc Report Type: Request To Intermediary (8)"
  end

  return "Alloc Report Type: Unknown("..value..")"
end

-- Dissect: Alloc Report Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_report_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_report_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_report_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.alloc_report_type, range, value, display)

  return offset + length, value
end

-- Alloc Status
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_status = {}

-- Size: Alloc Status
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_status.size = 1

-- Display: Alloc Status
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Alloc Status: No Value"
  end

  if value == "0" then
    return "Alloc Status: Accepted (0)"
  end
  if value == "5" then
    return "Alloc Status: Rejected By Intermediary (5)"
  end

  return "Alloc Status: Unknown("..value..")"
end

-- Dissect: Alloc Status
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_status.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.alloc_status, range, value, display)

  return offset + length, value
end

-- Alloc Trans Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_trans_type = {}

-- Size: Alloc Trans Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_trans_type.size = 1

-- Display: Alloc Trans Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_trans_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Alloc Trans Type: No Value"
  end

  if value == "0" then
    return "Alloc Trans Type: New (0)"
  end
  if value == "2" then
    return "Alloc Trans Type: Cancel (2)"
  end

  return "Alloc Trans Type: Unknown("..value..")"
end

-- Dissect: Alloc Trans Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_trans_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_trans_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_trans_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.alloc_trans_type, range, value, display)

  return offset + length, value
end

-- Alloc Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_type = {}

-- Size: Alloc Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_type.size = 1

-- Display: Alloc Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Alloc Type: No Value"
  end

  if value == "8" then
    return "Alloc Type: Request To Intermediary (8)"
  end

  return "Alloc Type: Unknown("..value..")"
end

-- Dissect: Alloc Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.alloc_type, range, value, display)

  return offset + length, value
end

-- Asset
b3_b3derivatives_binaryentrypoint_sbe_v8_2.asset = {}

-- Size: Asset
b3_b3derivatives_binaryentrypoint_sbe_v8_2.asset.size = 6

-- Display: Asset
b3_b3derivatives_binaryentrypoint_sbe_v8_2.asset.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Asset: No Value"
  end

  return "Asset: "..value
end

-- Dissect: Asset
b3_b3derivatives_binaryentrypoint_sbe_v8_2.asset.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.asset.size
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

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.asset.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.asset, range, value, display)

  return offset + length, value
end

-- Block Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.block_length = {}

-- Size: Block Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.block_length.size = 2

-- Display: Block Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.block_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.block_length, range, value, display)

  return offset + length, value
end

-- Build Number
b3_b3derivatives_binaryentrypoint_sbe_v8_2.build_number = {}

-- Size: Build Number
b3_b3derivatives_binaryentrypoint_sbe_v8_2.build_number.size = 1

-- Display: Build Number
b3_b3derivatives_binaryentrypoint_sbe_v8_2.build_number.display = function(value)
  return "Build Number: "..value
end

-- Dissect: Build Number
b3_b3derivatives_binaryentrypoint_sbe_v8_2.build_number.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.build_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.build_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.build_number, range, value, display)

  return offset + length, value
end

-- Business Reject Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_reject_reason = {}

-- Size: Business Reject Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_reject_reason.size = 4

-- Display: Business Reject Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_reject_reason.display = function(value)
  return "Business Reject Reason: "..value
end

-- Dissect: Business Reject Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.business_reject_reason, range, value, display)

  return offset + length, value
end

-- Business Reject Ref Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_reject_ref_id = {}

-- Size: Business Reject Ref Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_reject_ref_id.size = 8

-- Display: Business Reject Ref Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_reject_ref_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Business Reject Ref Id: No Value"
  end

  return "Business Reject Ref Id: "..value
end

-- Dissect: Business Reject Ref Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_reject_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_reject_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_reject_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.business_reject_ref_id, range, value, display)

  return offset + length, value
end

-- Cancel On Disconnect Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cancel_on_disconnect_type = {}

-- Size: Cancel On Disconnect Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cancel_on_disconnect_type.size = 1

-- Display: Cancel On Disconnect Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cancel_on_disconnect_type.labels = {
  [0] = "Cancel On Disconnect Type: Do Not Cancel On Disconnect Or Terminate (0)",
  [1] = "Cancel On Disconnect Type: Cancel On Disconnect Only (1)",
  [2] = "Cancel On Disconnect Type: Cancel On Terminate Only (2)",
  [3] = "Cancel On Disconnect Type: Cancel On Disconnect Or Terminate (3)",
}

b3_b3derivatives_binaryentrypoint_sbe_v8_2.cancel_on_disconnect_type.display = function(value)
  return b3_b3derivatives_binaryentrypoint_sbe_v8_2.cancel_on_disconnect_type.labels[value] or "Cancel On Disconnect Type: Unknown("..value..")"
end

-- Dissect: Cancel On Disconnect Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cancel_on_disconnect_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cancel_on_disconnect_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cancel_on_disconnect_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.cancel_on_disconnect_type, range, value, display)

  return offset + length, value
end

-- Clearing Business Date
b3_b3derivatives_binaryentrypoint_sbe_v8_2.clearing_business_date = {}

-- Size: Clearing Business Date
b3_b3derivatives_binaryentrypoint_sbe_v8_2.clearing_business_date.size = 2

-- Display: Clearing Business Date
b3_b3derivatives_binaryentrypoint_sbe_v8_2.clearing_business_date.display = function(value)
  return "Clearing Business Date: "..value
end

-- Dissect: Clearing Business Date
b3_b3derivatives_binaryentrypoint_sbe_v8_2.clearing_business_date.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clearing_business_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clearing_business_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.clearing_business_date, range, value, display)

  return offset + length, value
end

-- Client App Name Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name_data = {}

-- Display: Client App Name Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name_data.display = function(value)
  return "Client App Name Data: "..value
end

-- Dissect runtime sized field: Client App Name Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name_data.display(value, packet, parent, size)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.client_app_name_data, range, value, display)

  return offset + size, value
end

-- Client App Name Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name_length = {}

-- Size: Client App Name Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name_length.size = 1

-- Display: Client App Name Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name_length.display = function(value)
  return "Client App Name Length: "..value
end

-- Dissect: Client App Name Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.client_app_name_length, range, value, display)

  return offset + length, value
end

-- Client App Version Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version_data = {}

-- Display: Client App Version Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version_data.display = function(value)
  return "Client App Version Data: "..value
end

-- Dissect runtime sized field: Client App Version Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version_data.display(value, packet, parent, size)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.client_app_version_data, range, value, display)

  return offset + size, value
end

-- Client App Version Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version_length = {}

-- Size: Client App Version Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version_length.size = 1

-- Display: Client App Version Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version_length.display = function(value)
  return "Client App Version Length: "..value
end

-- Dissect: Client App Version Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.client_app_version_length, range, value, display)

  return offset + length, value
end

-- Client Ip Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip_data = {}

-- Display: Client Ip Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip_data.display = function(value)
  return "Client Ip Data: "..value
end

-- Dissect runtime sized field: Client Ip Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip_data.display(value, packet, parent, size)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.client_ip_data, range, value, display)

  return offset + size, value
end

-- Client Ip Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip_length = {}

-- Size: Client Ip Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip_length.size = 1

-- Display: Client Ip Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip_length.display = function(value)
  return "Client Ip Length: "..value
end

-- Dissect: Client Ip Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.client_ip_length, range, value, display)

  return offset + length, value
end

-- ClOrdId
b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid = {}

-- Size: ClOrdId
b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.size = 8

-- Display: ClOrdId
b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.display = function(value)
  return "ClOrdId: "..value
end

-- Dissect: ClOrdId
b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.clordid, range, value, display)

  return offset + length, value
end

-- ClOrdId Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid_optional = {}

-- Size: ClOrdId Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid_optional.size = 8

-- Display: ClOrdId Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "ClOrdId Optional: No Value"
  end

  return "ClOrdId Optional: "..value
end

-- Dissect: ClOrdId Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.clordid_optional, range, value, display)

  return offset + length, value
end

-- Cod Timeout Window
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cod_timeout_window = {}

-- Size: Cod Timeout Window
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cod_timeout_window.size = 8

-- Display: Cod Timeout Window
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cod_timeout_window.display = function(value)
  return "Cod Timeout Window: "..value
end

-- Dissect: Cod Timeout Window
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cod_timeout_window.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cod_timeout_window.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cod_timeout_window.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.cod_timeout_window, range, value, display)

  return offset + length, value
end

-- Contra Broker
b3_b3derivatives_binaryentrypoint_sbe_v8_2.contra_broker = {}

-- Size: Contra Broker
b3_b3derivatives_binaryentrypoint_sbe_v8_2.contra_broker.size = 4

-- Display: Contra Broker
b3_b3derivatives_binaryentrypoint_sbe_v8_2.contra_broker.display = function(value)
  return "Contra Broker: "..value
end

-- Dissect: Contra Broker
b3_b3derivatives_binaryentrypoint_sbe_v8_2.contra_broker.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.contra_broker.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.contra_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.contra_broker, range, value, display)

  return offset + length, value
end

-- Contrary Instruction Indicator
b3_b3derivatives_binaryentrypoint_sbe_v8_2.contrary_instruction_indicator = {}

-- Size: Contrary Instruction Indicator
b3_b3derivatives_binaryentrypoint_sbe_v8_2.contrary_instruction_indicator.size = 1

-- Display: Contrary Instruction Indicator
b3_b3derivatives_binaryentrypoint_sbe_v8_2.contrary_instruction_indicator.labels = {
  [0] = "Contrary Instruction Indicator: False Value (0)",
  [1] = "Contrary Instruction Indicator: True Value (1)",
}

b3_b3derivatives_binaryentrypoint_sbe_v8_2.contrary_instruction_indicator.display = function(value)
  return b3_b3derivatives_binaryentrypoint_sbe_v8_2.contrary_instruction_indicator.labels[value] or "Contrary Instruction Indicator: Unknown("..value..")"
end

-- Dissect: Contrary Instruction Indicator
b3_b3derivatives_binaryentrypoint_sbe_v8_2.contrary_instruction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.contrary_instruction_indicator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.contrary_instruction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.contrary_instruction_indicator, range, value, display)

  return offset + length, value
end

-- Count
b3_b3derivatives_binaryentrypoint_sbe_v8_2.count = {}

-- Size: Count
b3_b3derivatives_binaryentrypoint_sbe_v8_2.count.size = 4

-- Display: Count
b3_b3derivatives_binaryentrypoint_sbe_v8_2.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
b3_b3derivatives_binaryentrypoint_sbe_v8_2.count.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.count, range, value, display)

  return offset + length, value
end

-- Credentials Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials_data = {}

-- Display: Credentials Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials_data.display = function(value)
  return "Credentials Data: "..value
end

-- Dissect runtime sized field: Credentials Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials_data.display(value, packet, parent, size)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.credentials_data, range, value, display)

  return offset + size, value
end

-- Credentials Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials_length = {}

-- Size: Credentials Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials_length.size = 1

-- Display: Credentials Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials_length.display = function(value)
  return "Credentials Length: "..value
end

-- Dissect: Credentials Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.credentials_length, range, value, display)

  return offset + length, value
end

-- Cross Prioritization
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_prioritization = {}

-- Size: Cross Prioritization
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_prioritization.size = 1

-- Display: Cross Prioritization
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_prioritization.display = function(value)
  if value == 0 then
    return "Cross Prioritization: None (0)"
  end
  if value == 1 then
    return "Cross Prioritization: Buy Side Is Prioritized (1)"
  end
  if value == 2 then
    return "Cross Prioritization: Sell Side Is Prioritized (2)"
  end
  if value == 255 then
    return "Cross Prioritization: No Value"
  end

  return "Cross Prioritization: Unknown("..value..")"
end

-- Dissect: Cross Prioritization
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_prioritization.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_prioritization.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_prioritization.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.cross_prioritization, range, value, display)

  return offset + length, value
end

-- Cross Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_type = {}

-- Size: Cross Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_type.size = 1

-- Display: Cross Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_type.display = function(value)
  if value == 1 then
    return "Cross Type: All Or None Cross (1)"
  end
  if value == 4 then
    return "Cross Type: Cross Executed Against Book From Client (4)"
  end
  if value == 0 then
    return "Cross Type: No Value"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Crossed Indicator
b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossed_indicator = {}

-- Size: Crossed Indicator
b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossed_indicator.size = 2

-- Display: Crossed Indicator
b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossed_indicator.display = function(value)
  if value == 1001 then
    return "Crossed Indicator: Structured Transaction (1001)"
  end
  if value == 1002 then
    return "Crossed Indicator: Operational Error (1002)"
  end
  if value == 1003 then
    return "Crossed Indicator: Twap Vwap (1003)"
  end
  if value == 0 then
    return "Crossed Indicator: No Value"
  end

  return "Crossed Indicator: Unknown("..value..")"
end

-- Dissect: Crossed Indicator
b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossed_indicator.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossed_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossed_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.crossed_indicator, range, value, display)

  return offset + length, value
end

-- CrossId
b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossid = {}

-- Size: CrossId
b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossid.size = 8

-- Display: CrossId
b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossid.display = function(value)
  return "CrossId: "..value
end

-- Dissect: CrossId
b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossid.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossid.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.crossid, range, value, display)

  return offset + length, value
end

-- CrossId Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossid_optional = {}

-- Size: CrossId Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossid_optional.size = 8

-- Display: CrossId Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossid_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "CrossId Optional: No Value"
  end

  return "CrossId Optional: "..value
end

-- Dissect: CrossId Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossid_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossid_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossid_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.crossid_optional, range, value, display)

  return offset + length, value
end

-- Cum Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cum_qty = {}

-- Size: Cum Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cum_qty.size = 8

-- Display: Cum Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cum_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Current Session Ver Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.current_session_ver_id = {}

-- Size: Current Session Ver Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.current_session_ver_id.size = 8

-- Display: Current Session Ver Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.current_session_ver_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Current Session Ver Id: No Value"
  end

  return "Current Session Ver Id: "..value
end

-- Dissect: Current Session Ver Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.current_session_ver_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.current_session_ver_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.current_session_ver_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.current_session_ver_id, range, value, display)

  return offset + length, value
end

-- Custodian
b3_b3derivatives_binaryentrypoint_sbe_v8_2.custodian = {}

-- Size: Custodian
b3_b3derivatives_binaryentrypoint_sbe_v8_2.custodian.size = 4

-- Display: Custodian
b3_b3derivatives_binaryentrypoint_sbe_v8_2.custodian.display = function(value)
  return "Custodian: "..value
end

-- Dissect: Custodian
b3_b3derivatives_binaryentrypoint_sbe_v8_2.custodian.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.custodian.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.custodian.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.custodian, range, value, display)

  return offset + length, value
end

-- Custody Account
b3_b3derivatives_binaryentrypoint_sbe_v8_2.custody_account = {}

-- Size: Custody Account
b3_b3derivatives_binaryentrypoint_sbe_v8_2.custody_account.size = 4

-- Display: Custody Account
b3_b3derivatives_binaryentrypoint_sbe_v8_2.custody_account.display = function(value)
  return "Custody Account: "..value
end

-- Dissect: Custody Account
b3_b3derivatives_binaryentrypoint_sbe_v8_2.custody_account.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.custody_account.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.custody_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.custody_account, range, value, display)

  return offset + length, value
end

-- Custody Allocation Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.custody_allocation_type = {}

-- Size: Custody Allocation Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.custody_allocation_type.size = 4

-- Display: Custody Allocation Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.custody_allocation_type.display = function(value)
  return "Custody Allocation Type: "..value
end

-- Dissect: Custody Allocation Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.custody_allocation_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.custody_allocation_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.custody_allocation_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.custody_allocation_type, range, value, display)

  return offset + length, value
end

-- Cxl Rej Response To
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cxl_rej_response_to = {}

-- Size: Cxl Rej Response To
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cxl_rej_response_to.size = 1

-- Display: Cxl Rej Response To
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cxl_rej_response_to.labels = {
  [0] = "Cxl Rej Response To: New (0)",
  [1] = "Cxl Rej Response To: Cancel (1)",
  [2] = "Cxl Rej Response To: Replace (2)",
}

b3_b3derivatives_binaryentrypoint_sbe_v8_2.cxl_rej_response_to.display = function(value)
  return b3_b3derivatives_binaryentrypoint_sbe_v8_2.cxl_rej_response_to.labels[value] or "Cxl Rej Response To: Unknown("..value..")"
end

-- Dissect: Cxl Rej Response To
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cxl_rej_response_to.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cxl_rej_response_to.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cxl_rej_response_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.cxl_rej_response_to, range, value, display)

  return offset + length, value
end

-- Days To Settlement
b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement = {}

-- Size: Days To Settlement
b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement.size = 2

-- Display: Days To Settlement
b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement.display = function(value)
  return "Days To Settlement: "..value
end

-- Dissect: Days To Settlement
b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.days_to_settlement, range, value, display)

  return offset + length, value
end

-- Days To Settlement Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement_optional = {}

-- Size: Days To Settlement Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement_optional.size = 2

-- Display: Days To Settlement Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement_optional.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Days To Settlement Optional: No Value"
  end

  return "Days To Settlement Optional: "..value
end

-- Dissect: Days To Settlement Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.days_to_settlement_optional, range, value, display)

  return offset + length, value
end

-- Desk Id Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id_data = {}

-- Display: Desk Id Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id_data.display = function(value)
  return "Desk Id Data: "..value
end

-- Dissect runtime sized field: Desk Id Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id_data.display(value, packet, parent, size)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.desk_id_data, range, value, display)

  return offset + size, value
end

-- Desk Id Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id_length = {}

-- Size: Desk Id Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id_length.size = 1

-- Display: Desk Id Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id_length.display = function(value)
  return "Desk Id Length: "..value
end

-- Dissect: Desk Id Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.desk_id_length, range, value, display)

  return offset + length, value
end

-- Document
b3_b3derivatives_binaryentrypoint_sbe_v8_2.document = {}

-- Size: Document
b3_b3derivatives_binaryentrypoint_sbe_v8_2.document.size = 4

-- Display: Document
b3_b3derivatives_binaryentrypoint_sbe_v8_2.document.display = function(value)
  return "Document: "..value
end

-- Dissect: Document
b3_b3derivatives_binaryentrypoint_sbe_v8_2.document.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.document.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.document.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.document, range, value, display)

  return offset + length, value
end

-- Encoding Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.encoding_type = {}

-- Size: Encoding Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.encoding_type.size = 2

-- Display: Encoding Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.encoding_type.display = function(value)
  if value == 60240 then
    return "Encoding Type: Sbe Little Endian"
  end

  return "Encoding Type: Unknown("..value..")"
end

-- Dissect: Encoding Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.encoding_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.encoding_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.encoding_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.encoding_type, range, value, display)

  return offset + length, value
end

-- Entering Firm
b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_firm = {}

-- Size: Entering Firm
b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_firm.size = 4

-- Display: Entering Firm
b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_firm.display = function(value)
  return "Entering Firm: "..value
end

-- Dissect: Entering Firm
b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_firm.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_firm.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.entering_firm, range, value, display)

  return offset + length, value
end

-- Entering Firm Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_firm_optional = {}

-- Size: Entering Firm Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_firm_optional.size = 4

-- Display: Entering Firm Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_firm_optional.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Entering Firm Optional: No Value"
  end

  return "Entering Firm Optional: "..value
end

-- Dissect: Entering Firm Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_firm_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_firm_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_firm_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.entering_firm_optional, range, value, display)

  return offset + length, value
end

-- Entering Trader
b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader = {}

-- Size: Entering Trader
b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.size = 5

-- Display: Entering Trader
b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Entering Trader: No Value"
  end

  return "Entering Trader: "..value
end

-- Dissect: Entering Trader
b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.size
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

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.entering_trader, range, value, display)

  return offset + length, value
end

-- Establishment Reject Code
b3_b3derivatives_binaryentrypoint_sbe_v8_2.establishment_reject_code = {}

-- Size: Establishment Reject Code
b3_b3derivatives_binaryentrypoint_sbe_v8_2.establishment_reject_code.size = 1

-- Display: Establishment Reject Code
b3_b3derivatives_binaryentrypoint_sbe_v8_2.establishment_reject_code.labels = {
  [0] = "Establishment Reject Code: Unspecified (0)",
  [1] = "Establishment Reject Code: Credentials (1)",
  [2] = "Establishment Reject Code: Unnegotiated (2)",
  [3] = "Establishment Reject Code: Already Established (3)",
  [4] = "Establishment Reject Code: Session Blocked (4)",
  [5] = "Establishment Reject Code: Invalid Sessionid (5)",
  [6] = "Establishment Reject Code: Invalid Sessionverid (6)",
  [7] = "Establishment Reject Code: Invalid Timestamp (7)",
  [8] = "Establishment Reject Code: Invalid Keepalive Interval (8)",
  [9] = "Establishment Reject Code: Invalid Nextseqno (9)",
  [10] = "Establishment Reject Code: Establish Attempts Exceeded (10)",
  [20] = "Establishment Reject Code: Establish Not Allowed (20)",
  [21] = "Establishment Reject Code: Duplicate Session Connection (21)",
  [22] = "Establishment Reject Code: Authentication In Progress (22)",
  [23] = "Establishment Reject Code: Protocol Version Not Supported (23)",
}

b3_b3derivatives_binaryentrypoint_sbe_v8_2.establishment_reject_code.display = function(value)
  return b3_b3derivatives_binaryentrypoint_sbe_v8_2.establishment_reject_code.labels[value] or "Establishment Reject Code: Unknown("..value..")"
end

-- Dissect: Establishment Reject Code
b3_b3derivatives_binaryentrypoint_sbe_v8_2.establishment_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.establishment_reject_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.establishment_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.establishment_reject_code, range, value, display)

  return offset + length, value
end

-- Event Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.event_id = {}

-- Size: Event Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.event_id.size = 4

-- Display: Event Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.event_id.display = function(value)
  return "Event Id: "..value
end

-- Dissect: Event Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.event_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.event_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.event_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.event_id, range, value, display)

  return offset + length, value
end

-- Exec Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_id = {}

-- Size: Exec Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_id.size = 8

-- Display: Exec Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_ref_id = {}

-- Size: Exec Ref Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_ref_id.size = 8

-- Display: Exec Ref Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_ref_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Exec Ref Id: No Value"
  end

  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Exec Restatement Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_restatement_reason = {}

-- Size: Exec Restatement Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_restatement_reason.size = 1

-- Display: Exec Restatement Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_restatement_reason.display = function(value)
  if value == 8 then
    return "Exec Restatement Reason: Market Option (8)"
  end
  if value == 100 then
    return "Exec Restatement Reason: Cancel On Hard Disconnection (100)"
  end
  if value == 101 then
    return "Exec Restatement Reason: Cancel On Terminate (101)"
  end
  if value == 102 then
    return "Exec Restatement Reason: Cancel On Disconnect And Terminate (102)"
  end
  if value == 103 then
    return "Exec Restatement Reason: Self Trading Prevention (103)"
  end
  if value == 105 then
    return "Exec Restatement Reason: Cancel From Firmsoft (105)"
  end
  if value == 107 then
    return "Exec Restatement Reason: Cancel Resting Order On Self Trade (107)"
  end
  if value == 200 then
    return "Exec Restatement Reason: Market Maker Protection (200)"
  end
  if value == 201 then
    return "Exec Restatement Reason: Risk Management Cancellation (201)"
  end
  if value == 202 then
    return "Exec Restatement Reason: Order Mass Action From Client Request (202)"
  end
  if value == 203 then
    return "Exec Restatement Reason: Cancel Order Due To Operational Error (203)"
  end
  if value == 204 then
    return "Exec Restatement Reason: Order Cancelled Due To Operational Error (204)"
  end
  if value == 205 then
    return "Exec Restatement Reason: Cancel Order Firmsoft Due To Operational Error (205)"
  end
  if value == 206 then
    return "Exec Restatement Reason: Order Cancelled Firmsoft Due To Operational Error (206)"
  end
  if value == 207 then
    return "Exec Restatement Reason: Mass Cancel Order Due To Operational Error Request (207)"
  end
  if value == 208 then
    return "Exec Restatement Reason: Mass Cancel Order Due To Operational Error Effective (208)"
  end
  if value == 209 then
    return "Exec Restatement Reason: Cancel On Midpoint Broker Only Removal (209)"
  end
  if value == 210 then
    return "Exec Restatement Reason: Cancel Remaining From Sweep Cross (210)"
  end
  if value == 211 then
    return "Exec Restatement Reason: Mass Cancel On Behalf (211)"
  end
  if value == 212 then
    return "Exec Restatement Reason: Mass Cancel On Behalf Due To Operational Error Effective (212)"
  end
  if value == 0 then
    return "Exec Restatement Reason: No Value"
  end

  return "Exec Restatement Reason: Unknown("..value..")"
end

-- Dissect: Exec Restatement Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Exec Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_type = {}

-- Size: Exec Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_type.size = 1

-- Display: Exec Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Exec Type: No Value"
  end

  if value == "F" then
    return "Exec Type: Trade (F)"
  end
  if value == "H" then
    return "Exec Type: Trade Cancel (H)"
  end

  return "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Execute Underlying Trade
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execute_underlying_trade = {}

-- Size: Execute Underlying Trade
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execute_underlying_trade.size = 1

-- Display: Execute Underlying Trade
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execute_underlying_trade.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Execute Underlying Trade: No Value"
  end

  if value == "0" then
    return "Execute Underlying Trade: No Underlying Trade (0)"
  end
  if value == "1" then
    return "Execute Underlying Trade: Underlying Opposing Trade (1)"
  end
  if value == 0 then
    return "Execute Underlying Trade: No Value"
  end

  return "Execute Underlying Trade: Unknown("..value..")"
end

-- Dissect: Execute Underlying Trade
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execute_underlying_trade.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execute_underlying_trade.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execute_underlying_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.execute_underlying_trade, range, value, display)

  return offset + length, value
end

-- Executing Trader
b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader = {}

-- Size: Executing Trader
b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader.size = 5

-- Display: Executing Trader
b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Executing Trader: No Value"
  end

  return "Executing Trader: "..value
end

-- Dissect: Executing Trader
b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader.size
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

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.executing_trader, range, value, display)

  return offset + length, value
end

-- Executing Trader Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader_optional = {}

-- Size: Executing Trader Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader_optional.size = 5

-- Display: Executing Trader Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Executing Trader Optional: No Value"
  end

  return "Executing Trader Optional: "..value
end

-- Dissect: Executing Trader Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader_optional.size
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

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.executing_trader_optional, range, value, display)

  return offset + length, value
end

-- Expire Date
b3_b3derivatives_binaryentrypoint_sbe_v8_2.expire_date = {}

-- Size: Expire Date
b3_b3derivatives_binaryentrypoint_sbe_v8_2.expire_date.size = 2

-- Display: Expire Date
b3_b3derivatives_binaryentrypoint_sbe_v8_2.expire_date.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Expire Date: No Value"
  end

  return "Expire Date: "..value
end

-- Dissect: Expire Date
b3_b3derivatives_binaryentrypoint_sbe_v8_2.expire_date.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.expire_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.expire_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.expire_date, range, value, display)

  return offset + length, value
end

-- Fixed Rate Percentage 8
b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8 = {}

-- Size: Fixed Rate Percentage 8
b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8.size = 8

-- Display: Fixed Rate Percentage 8
b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8.display = function(value)
  return "Fixed Rate Percentage 8: "..value
end

-- Translate: Fixed Rate Percentage 8
b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Fixed Rate Percentage 8
b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8.translate(raw)
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.fixed_rate_percentage_8, range, value, display)

  return offset + length, value
end

-- Fixed Rate Percentage 8 Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8_optional = {}

-- Size: Fixed Rate Percentage 8 Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8_optional.size = 8

-- Display: Fixed Rate Percentage 8 Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Fixed Rate Percentage 8 Optional: No Value"
  end

  return "Fixed Rate Percentage 8 Optional: "..value
end

-- Translate: Fixed Rate Percentage 8 Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Fixed Rate Percentage 8 Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8_optional.translate(raw)
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.fixed_rate_percentage_8_optional, range, value, display)

  return offset + length, value
end

-- From Seq No
b3_b3derivatives_binaryentrypoint_sbe_v8_2.from_seq_no = {}

-- Size: From Seq No
b3_b3derivatives_binaryentrypoint_sbe_v8_2.from_seq_no.size = 4

-- Display: From Seq No
b3_b3derivatives_binaryentrypoint_sbe_v8_2.from_seq_no.display = function(value)
  return "From Seq No: "..value
end

-- Dissect: From Seq No
b3_b3derivatives_binaryentrypoint_sbe_v8_2.from_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.from_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.from_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.from_seq_no, range, value, display)

  return offset + length, value
end

-- Individual Alloc Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.individual_alloc_id = {}

-- Size: Individual Alloc Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.individual_alloc_id.size = 8

-- Display: Individual Alloc Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.individual_alloc_id.display = function(value)
  return "Individual Alloc Id: "..value
end

-- Dissect: Individual Alloc Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.individual_alloc_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.individual_alloc_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.individual_alloc_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.individual_alloc_id, range, value, display)

  return offset + length, value
end

-- Keep Alive Interval
b3_b3derivatives_binaryentrypoint_sbe_v8_2.keep_alive_interval = {}

-- Size: Keep Alive Interval
b3_b3derivatives_binaryentrypoint_sbe_v8_2.keep_alive_interval.size = 8

-- Display: Keep Alive Interval
b3_b3derivatives_binaryentrypoint_sbe_v8_2.keep_alive_interval.display = function(value)
  return "Keep Alive Interval: "..value
end

-- Dissect: Keep Alive Interval
b3_b3derivatives_binaryentrypoint_sbe_v8_2.keep_alive_interval.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.keep_alive_interval.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.keep_alive_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.keep_alive_interval, range, value, display)

  return offset + length, value
end

-- Last Incoming Seq No
b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_incoming_seq_no = {}

-- Size: Last Incoming Seq No
b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_incoming_seq_no.size = 4

-- Display: Last Incoming Seq No
b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_incoming_seq_no.display = function(value)
  return "Last Incoming Seq No: "..value
end

-- Dissect: Last Incoming Seq No
b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_incoming_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_incoming_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_incoming_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.last_incoming_seq_no, range, value, display)

  return offset + length, value
end

-- Last Incoming Seq No Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_incoming_seq_no_optional = {}

-- Size: Last Incoming Seq No Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_incoming_seq_no_optional.size = 4

-- Display: Last Incoming Seq No Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_incoming_seq_no_optional.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Last Incoming Seq No Optional: No Value"
  end

  return "Last Incoming Seq No Optional: "..value
end

-- Dissect: Last Incoming Seq No Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_incoming_seq_no_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_incoming_seq_no_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_incoming_seq_no_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.last_incoming_seq_no_optional, range, value, display)

  return offset + length, value
end

-- Last Px
b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_px = {}

-- Size: Last Px
b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_px.size = 8

-- Display: Last Px
b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Px
b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_px.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_px.translate(raw)
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_qty = {}

-- Size: Last Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_qty.size = 8

-- Display: Last Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Leaves Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.leaves_qty = {}

-- Size: Leaves Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.leaves_qty.size = 8

-- Display: Leaves Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_ratio_qty.size = 8

-- Display: Leg Ratio Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Translate: Leg Ratio Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_ratio_qty.translate = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Leg Ratio Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_ratio_qty.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_ratio_qty.translate(raw)
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Side
b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_side = {}

-- Size: Leg Side
b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_side.size = 1

-- Display: Leg Side
b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_side.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Leg Side: No Value"
  end

  if value == "1" then
    return "Leg Side: Buy (1)"
  end
  if value == "2" then
    return "Leg Side: Sell (2)"
  end
  if value == 0 then
    return "Leg Side: No Value"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Symbol
b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_symbol = {}

-- Size: Leg Symbol
b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_symbol.size = 20

-- Display: Leg Symbol
b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Symbol: No Value"
  end

  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_symbol.size
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

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Long Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.long_qty = {}

-- Size: Long Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.long_qty.size = 8

-- Display: Long Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.long_qty.display = function(value)
  return "Long Qty: "..value
end

-- Dissect: Long Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.long_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.long_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.long_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.long_qty, range, value, display)

  return offset + length, value
end

-- Long Qty Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.long_qty_optional = {}

-- Size: Long Qty Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.long_qty_optional.size = 8

-- Display: Long Qty Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.long_qty_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Long Qty Optional: No Value"
  end

  return "Long Qty Optional: "..value
end

-- Dissect: Long Qty Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.long_qty_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.long_qty_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.long_qty_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.long_qty_optional, range, value, display)

  return offset + length, value
end

-- Major Number
b3_b3derivatives_binaryentrypoint_sbe_v8_2.major_number = {}

-- Size: Major Number
b3_b3derivatives_binaryentrypoint_sbe_v8_2.major_number.size = 1

-- Display: Major Number
b3_b3derivatives_binaryentrypoint_sbe_v8_2.major_number.display = function(value)
  return "Major Number: "..value
end

-- Dissect: Major Number
b3_b3derivatives_binaryentrypoint_sbe_v8_2.major_number.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.major_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.major_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.major_number, range, value, display)

  return offset + length, value
end

-- Market Segment Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_id = {}

-- Size: Market Segment Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_id.size = 1

-- Display: Market Segment Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_id.display = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Market Segment Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_id_optional = {}

-- Size: Market Segment Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_id_optional.size = 1

-- Display: Market Segment Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_id_optional.display = function(value)
  return "Market Segment Id Optional: "..value
end

-- Dissect: Market Segment Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_id_optional.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.market_segment_id_optional, range, value, display)

  return offset + length, value
end

-- Market Segment Received Time
b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_received_time = {}

-- Size: Market Segment Received Time
b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_received_time.size = 8

-- Dissect: Market Segment Received Time
b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_received_time.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_received_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.market_segment_received_time
  if b3_b3derivatives_binaryentrypoint_sbe_v8_2.absolute_time_base == 1 then field = omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.market_segment_received_time_utc end

  if value == UInt64(0x00000000, 0x00000000) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Market Segment Received Time: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Mass Action Reject Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_reject_reason = {}

-- Size: Mass Action Reject Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_reject_reason.size = 1

-- Display: Mass Action Reject Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_reject_reason.display = function(value)
  if value == 0 then
    return "Mass Action Reject Reason: Mass Action Not Supported (0)"
  end
  if value == 8 then
    return "Mass Action Reject Reason: Invalid Or Unknown Market Segment (8)"
  end
  if value == 99 then
    return "Mass Action Reject Reason: Other (99)"
  end
  if value == 255 then
    return "Mass Action Reject Reason: No Value"
  end

  return "Mass Action Reject Reason: Unknown("..value..")"
end

-- Dissect: Mass Action Reject Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_reject_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.mass_action_reject_reason, range, value, display)

  return offset + length, value
end

-- Mass Action Report Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_report_id = {}

-- Size: Mass Action Report Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_report_id.size = 8

-- Display: Mass Action Report Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_report_id.display = function(value)
  return "Mass Action Report Id: "..value
end

-- Dissect: Mass Action Report Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_report_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_report_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_report_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.mass_action_report_id, range, value, display)

  return offset + length, value
end

-- Mass Action Report Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_report_id_optional = {}

-- Size: Mass Action Report Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_report_id_optional.size = 8

-- Display: Mass Action Report Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_report_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Mass Action Report Id Optional: No Value"
  end

  return "Mass Action Report Id Optional: "..value
end

-- Dissect: Mass Action Report Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_report_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_report_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_report_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.mass_action_report_id_optional, range, value, display)

  return offset + length, value
end

-- Mass Action Response
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_response = {}

-- Size: Mass Action Response
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_response.size = 1

-- Display: Mass Action Response
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_response.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Mass Action Response: No Value"
  end

  if value == "0" then
    return "Mass Action Response: Rejected (0)"
  end
  if value == "1" then
    return "Mass Action Response: Accepted (1)"
  end

  return "Mass Action Response: Unknown("..value..")"
end

-- Dissect: Mass Action Response
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_response.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_response.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_response.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.mass_action_response, range, value, display)

  return offset + length, value
end

-- Mass Action Scope
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_scope = {}

-- Size: Mass Action Scope
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_scope.size = 1

-- Display: Mass Action Scope
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_scope.display = function(value)
  if value == 6 then
    return "Mass Action Scope: All Orders For A Trading Session (6)"
  end
  if value == 0 then
    return "Mass Action Scope: No Value"
  end

  return "Mass Action Scope: Unknown("..value..")"
end

-- Dissect: Mass Action Scope
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_scope.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_scope.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.mass_action_scope, range, value, display)

  return offset + length, value
end

-- Mass Action Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_type = {}

-- Size: Mass Action Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_type.size = 1

-- Display: Mass Action Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_type.labels = {
  [2] = "Mass Action Type: Release Orders From Suspension (2)",
  [3] = "Mass Action Type: Cancel Orders (3)",
  [4] = "Mass Action Type: Cancel And Suspend Orders (4)",
}

b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_type.display = function(value)
  return b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_type.labels[value] or "Mass Action Type: Unknown("..value..")"
end

-- Dissect: Mass Action Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.mass_action_type, range, value, display)

  return offset + length, value
end

-- Mass Cancel Restatement Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_cancel_restatement_reason = {}

-- Size: Mass Cancel Restatement Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_cancel_restatement_reason.size = 1

-- Display: Mass Cancel Restatement Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_cancel_restatement_reason.display = function(value)
  if value == 202 then
    return "Mass Cancel Restatement Reason: Order Mass Action From Client Request (202)"
  end
  if value == 207 then
    return "Mass Cancel Restatement Reason: Mass Cancel Order Due To Operational Error Request (207)"
  end
  if value == 0 then
    return "Mass Cancel Restatement Reason: No Value"
  end

  return "Mass Cancel Restatement Reason: Unknown("..value..")"
end

-- Dissect: Mass Cancel Restatement Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_cancel_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_cancel_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_cancel_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.mass_cancel_restatement_reason, range, value, display)

  return offset + length, value
end

-- Max Floor
b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_floor = {}

-- Size: Max Floor
b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_floor.size = 8

-- Display: Max Floor
b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_floor.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Max Floor: No Value"
  end

  return "Max Floor: "..value
end

-- Dissect: Max Floor
b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_floor.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_floor.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_floor.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Max Sweep Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_sweep_qty = {}

-- Size: Max Sweep Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_sweep_qty.size = 8

-- Display: Max Sweep Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_sweep_qty.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Max Sweep Qty: No Value"
  end

  return "Max Sweep Qty: "..value
end

-- Dissect: Max Sweep Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_sweep_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_sweep_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_sweep_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.max_sweep_qty, range, value, display)

  return offset + length, value
end

-- Memo Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo_data = {}

-- Display: Memo Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo_data.display = function(value)
  return "Memo Data: "..value
end

-- Dissect runtime sized field: Memo Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo_data.display(value, packet, parent, size)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.memo_data, range, value, display)

  return offset + size, value
end

-- Memo Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo_length = {}

-- Size: Memo Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo_length.size = 1

-- Display: Memo Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo_length.display = function(value)
  return "Memo Length: "..value
end

-- Dissect: Memo Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.memo_length, range, value, display)

  return offset + length, value
end

-- Message Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.message_length = {}

-- Size: Message Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.message_length.size = 2

-- Display: Message Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.message_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Min Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.min_qty = {}

-- Size: Min Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.min_qty.size = 8

-- Display: Min Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.min_qty.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Min Qty: No Value"
  end

  return "Min Qty: "..value
end

-- Dissect: Min Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Minor Number
b3_b3derivatives_binaryentrypoint_sbe_v8_2.minor_number = {}

-- Size: Minor Number
b3_b3derivatives_binaryentrypoint_sbe_v8_2.minor_number.size = 1

-- Display: Minor Number
b3_b3derivatives_binaryentrypoint_sbe_v8_2.minor_number.display = function(value)
  return "Minor Number: "..value
end

-- Dissect: Minor Number
b3_b3derivatives_binaryentrypoint_sbe_v8_2.minor_number.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.minor_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.minor_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.minor_number, range, value, display)

  return offset + length, value
end

-- Mm Protection Reset
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset = {}

-- Size: Mm Protection Reset
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset.size = 1

-- Display: Mm Protection Reset
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset.labels = {
  [0] = "Mm Protection Reset: False Value (0)",
  [1] = "Mm Protection Reset: True Value (1)",
}

b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset.display = function(value)
  return b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset.labels[value] or "Mm Protection Reset: Unknown("..value..")"
end

-- Dissect: Mm Protection Reset
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.mm_protection_reset, range, value, display)

  return offset + length, value
end

-- Mm Protection Reset Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset_optional = {}

-- Size: Mm Protection Reset Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset_optional.size = 1

-- Display: Mm Protection Reset Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset_optional.display = function(value)
  if value == 0 then
    return "Mm Protection Reset Optional: False Value (0)"
  end
  if value == 1 then
    return "Mm Protection Reset Optional: True Value (1)"
  end
  if value == 255 then
    return "Mm Protection Reset Optional: No Value"
  end

  return "Mm Protection Reset Optional: Unknown("..value..")"
end

-- Dissect: Mm Protection Reset Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset_optional.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.mm_protection_reset_optional, range, value, display)

  return offset + length, value
end

-- Msg Seq Num
b3_b3derivatives_binaryentrypoint_sbe_v8_2.msg_seq_num = {}

-- Size: Msg Seq Num
b3_b3derivatives_binaryentrypoint_sbe_v8_2.msg_seq_num.size = 4

-- Display: Msg Seq Num
b3_b3derivatives_binaryentrypoint_sbe_v8_2.msg_seq_num.display = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
b3_b3derivatives_binaryentrypoint_sbe_v8_2.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Multi Leg Reporting Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.multi_leg_reporting_type = {}

-- Size: Multi Leg Reporting Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.multi_leg_reporting_type.size = 1

-- Display: Multi Leg Reporting Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.multi_leg_reporting_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Multi Leg Reporting Type: No Value"
  end

  if value == "1" then
    return "Multi Leg Reporting Type: Single Security (1)"
  end
  if value == "2" then
    return "Multi Leg Reporting Type: Individualleg Of Multileg Security (2)"
  end
  if value == "3" then
    return "Multi Leg Reporting Type: Multileg Security (3)"
  end
  if value == 0 then
    return "Multi Leg Reporting Type: No Value"
  end

  return "Multi Leg Reporting Type: Unknown("..value..")"
end

-- Dissect: Multi Leg Reporting Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.multi_leg_reporting_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.multi_leg_reporting_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.multi_leg_reporting_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.multi_leg_reporting_type, range, value, display)

  return offset + length, value
end

-- Negotiation Reject Code
b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiation_reject_code = {}

-- Size: Negotiation Reject Code
b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiation_reject_code.size = 1

-- Display: Negotiation Reject Code
b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiation_reject_code.labels = {
  [0] = "Negotiation Reject Code: Unspecified (0)",
  [1] = "Negotiation Reject Code: Credentials (1)",
  [2] = "Negotiation Reject Code: Flowtype Not Supported (2)",
  [3] = "Negotiation Reject Code: Already Negotiated (3)",
  [4] = "Negotiation Reject Code: Session Blocked (4)",
  [5] = "Negotiation Reject Code: Invalid Sessionid (5)",
  [6] = "Negotiation Reject Code: Invalid Sessionverid (6)",
  [7] = "Negotiation Reject Code: Invalid Timestamp (7)",
  [8] = "Negotiation Reject Code: Invalid Firm (8)",
  [20] = "Negotiation Reject Code: Negotiate Not Allowed (20)",
  [21] = "Negotiation Reject Code: Duplicate Session Connection (21)",
  [22] = "Negotiation Reject Code: Authentication In Progress (22)",
  [23] = "Negotiation Reject Code: Protocol Version Not Supported (23)",
}

b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiation_reject_code.display = function(value)
  return b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiation_reject_code.labels[value] or "Negotiation Reject Code: Unknown("..value..")"
end

-- Dissect: Negotiation Reject Code
b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiation_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiation_reject_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiation_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.negotiation_reject_code, range, value, display)

  return offset + length, value
end

-- Next Seq No
b3_b3derivatives_binaryentrypoint_sbe_v8_2.next_seq_no = {}

-- Size: Next Seq No
b3_b3derivatives_binaryentrypoint_sbe_v8_2.next_seq_no.size = 4

-- Display: Next Seq No
b3_b3derivatives_binaryentrypoint_sbe_v8_2.next_seq_no.display = function(value)
  return "Next Seq No: "..value
end

-- Dissect: Next Seq No
b3_b3derivatives_binaryentrypoint_sbe_v8_2.next_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.next_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.next_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.next_seq_no, range, value, display)

  return offset + length, value
end

-- No Related Trades
b3_b3derivatives_binaryentrypoint_sbe_v8_2.no_related_trades = {}

-- Size: No Related Trades
b3_b3derivatives_binaryentrypoint_sbe_v8_2.no_related_trades.size = 2

-- Display: No Related Trades
b3_b3derivatives_binaryentrypoint_sbe_v8_2.no_related_trades.display = function(value)
  return "No Related Trades: "..value
end

-- Dissect: No Related Trades
b3_b3derivatives_binaryentrypoint_sbe_v8_2.no_related_trades.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.no_related_trades.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.no_related_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.no_related_trades, range, value, display)

  return offset + length, value
end

-- Num In Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.num_in_group = {}

-- Size: Num In Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.num_in_group.size = 1

-- Display: Num In Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.num_in_group.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Offset 1 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_1_padding_1 = {}

-- Size: Offset 1 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_1_padding_1.size = 1

-- Display: Offset 1 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_1_padding_1.display = function(value)
  return "Offset 1 Padding 1: "..value
end

-- Dissect: Offset 1 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_1_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_1_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_1_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_1_padding_1, range, value, display)

  return offset + length, value
end

-- Offset 100 Padding 4
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_100_padding_4 = {}

-- Size: Offset 100 Padding 4
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_100_padding_4.size = 4

-- Display: Offset 100 Padding 4
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_100_padding_4.display = function(value)
  return "Offset 100 Padding 4: "..value
end

-- Dissect: Offset 100 Padding 4
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_100_padding_4.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_100_padding_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_100_padding_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_100_padding_4, range, value, display)

  return offset + length, value
end

-- Offset 118 Padding 2
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_118_padding_2 = {}

-- Size: Offset 118 Padding 2
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_118_padding_2.size = 2

-- Display: Offset 118 Padding 2
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_118_padding_2.display = function(value)
  return "Offset 118 Padding 2: "..value
end

-- Dissect: Offset 118 Padding 2
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_118_padding_2.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_118_padding_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_118_padding_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_118_padding_2, range, value, display)

  return offset + length, value
end

-- Offset 119 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_119_padding_1 = {}

-- Size: Offset 119 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_119_padding_1.size = 1

-- Display: Offset 119 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_119_padding_1.display = function(value)
  return "Offset 119 Padding 1: "..value
end

-- Dissect: Offset 119 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_119_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_119_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_119_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_119_padding_1, range, value, display)

  return offset + length, value
end

-- Offset 146 Padding 3
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_146_padding_3 = {}

-- Size: Offset 146 Padding 3
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_146_padding_3.size = 3

-- Display: Offset 146 Padding 3
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_146_padding_3.display = function(value)
  return "Offset 146 Padding 3: "..value
end

-- Dissect: Offset 146 Padding 3
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_146_padding_3.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_146_padding_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_146_padding_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_146_padding_3, range, value, display)

  return offset + length, value
end

-- Offset 152 Padding 3
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_152_padding_3 = {}

-- Size: Offset 152 Padding 3
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_152_padding_3.size = 3

-- Display: Offset 152 Padding 3
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_152_padding_3.display = function(value)
  return "Offset 152 Padding 3: "..value
end

-- Dissect: Offset 152 Padding 3
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_152_padding_3.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_152_padding_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_152_padding_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_152_padding_3, range, value, display)

  return offset + length, value
end

-- Offset 159 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_159_padding_1 = {}

-- Size: Offset 159 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_159_padding_1.size = 1

-- Display: Offset 159 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_159_padding_1.display = function(value)
  return "Offset 159 Padding 1: "..value
end

-- Dissect: Offset 159 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_159_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_159_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_159_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_159_padding_1, range, value, display)

  return offset + length, value
end

-- Offset 164 Padding 3
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_164_padding_3 = {}

-- Size: Offset 164 Padding 3
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_164_padding_3.size = 3

-- Display: Offset 164 Padding 3
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_164_padding_3.display = function(value)
  return "Offset 164 Padding 3: "..value
end

-- Dissect: Offset 164 Padding 3
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_164_padding_3.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_164_padding_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_164_padding_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_164_padding_3, range, value, display)

  return offset + length, value
end

-- Offset 167 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_167_padding_1 = {}

-- Size: Offset 167 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_167_padding_1.size = 1

-- Display: Offset 167 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_167_padding_1.display = function(value)
  return "Offset 167 Padding 1: "..value
end

-- Dissect: Offset 167 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_167_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_167_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_167_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_167_padding_1, range, value, display)

  return offset + length, value
end

-- Offset 168 Padding 3
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_168_padding_3 = {}

-- Size: Offset 168 Padding 3
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_168_padding_3.size = 3

-- Display: Offset 168 Padding 3
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_168_padding_3.display = function(value)
  return "Offset 168 Padding 3: "..value
end

-- Dissect: Offset 168 Padding 3
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_168_padding_3.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_168_padding_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_168_padding_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_168_padding_3, range, value, display)

  return offset + length, value
end

-- Offset 18 Padding 2
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_18_padding_2 = {}

-- Size: Offset 18 Padding 2
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_18_padding_2.size = 2

-- Display: Offset 18 Padding 2
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_18_padding_2.display = function(value)
  return "Offset 18 Padding 2: "..value
end

-- Dissect: Offset 18 Padding 2
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_18_padding_2.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_18_padding_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_18_padding_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_18_padding_2, range, value, display)

  return offset + length, value
end

-- Offset 181 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_181_padding_1 = {}

-- Size: Offset 181 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_181_padding_1.size = 1

-- Display: Offset 181 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_181_padding_1.display = function(value)
  return "Offset 181 Padding 1: "..value
end

-- Dissect: Offset 181 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_181_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_181_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_181_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_181_padding_1, range, value, display)

  return offset + length, value
end

-- Offset 19 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_19_padding_1 = {}

-- Size: Offset 19 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_19_padding_1.size = 1

-- Display: Offset 19 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_19_padding_1.display = function(value)
  return "Offset 19 Padding 1: "..value
end

-- Dissect: Offset 19 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_19_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_19_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_19_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_19_padding_1, range, value, display)

  return offset + length, value
end

-- Offset 2 Padding 2
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_2_padding_2 = {}

-- Size: Offset 2 Padding 2
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_2_padding_2.size = 2

-- Display: Offset 2 Padding 2
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_2_padding_2.display = function(value)
  return "Offset 2 Padding 2: "..value
end

-- Dissect: Offset 2 Padding 2
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_2_padding_2.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_2_padding_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_2_padding_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_2_padding_2, range, value, display)

  return offset + length, value
end

-- Offset 21 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_21_padding_1 = {}

-- Size: Offset 21 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_21_padding_1.size = 1

-- Display: Offset 21 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_21_padding_1.display = function(value)
  return "Offset 21 Padding 1: "..value
end

-- Dissect: Offset 21 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_21_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_21_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_21_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_21_padding_1, range, value, display)

  return offset + length, value
end

-- Offset 25 Padding 3
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_25_padding_3 = {}

-- Size: Offset 25 Padding 3
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_25_padding_3.size = 3

-- Display: Offset 25 Padding 3
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_25_padding_3.display = function(value)
  return "Offset 25 Padding 3: "..value
end

-- Dissect: Offset 25 Padding 3
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_25_padding_3.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_25_padding_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_25_padding_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_25_padding_3, range, value, display)

  return offset + length, value
end

-- Offset 31 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_31_padding_1 = {}

-- Size: Offset 31 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_31_padding_1.size = 1

-- Display: Offset 31 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_31_padding_1.display = function(value)
  return "Offset 31 Padding 1: "..value
end

-- Dissect: Offset 31 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_31_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_31_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_31_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_31_padding_1, range, value, display)

  return offset + length, value
end

-- Offset 33 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_33_padding_1 = {}

-- Size: Offset 33 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_33_padding_1.size = 1

-- Display: Offset 33 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_33_padding_1.display = function(value)
  return "Offset 33 Padding 1: "..value
end

-- Dissect: Offset 33 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_33_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_33_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_33_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_33_padding_1, range, value, display)

  return offset + length, value
end

-- Offset 49 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_49_padding_1 = {}

-- Size: Offset 49 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_49_padding_1.size = 1

-- Display: Offset 49 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_49_padding_1.display = function(value)
  return "Offset 49 Padding 1: "..value
end

-- Dissect: Offset 49 Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_49_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_49_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_49_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_49_padding_1, range, value, display)

  return offset + length, value
end

-- Offset 54 Padding 2
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_54_padding_2 = {}

-- Size: Offset 54 Padding 2
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_54_padding_2.size = 2

-- Display: Offset 54 Padding 2
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_54_padding_2.display = function(value)
  return "Offset 54 Padding 2: "..value
end

-- Dissect: Offset 54 Padding 2
b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_54_padding_2.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_54_padding_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_54_padding_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.offset_54_padding_2, range, value, display)

  return offset + length, value
end

-- Onbehalf Firm
b3_b3derivatives_binaryentrypoint_sbe_v8_2.onbehalf_firm = {}

-- Size: Onbehalf Firm
b3_b3derivatives_binaryentrypoint_sbe_v8_2.onbehalf_firm.size = 4

-- Display: Onbehalf Firm
b3_b3derivatives_binaryentrypoint_sbe_v8_2.onbehalf_firm.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Onbehalf Firm: No Value"
  end

  return "Onbehalf Firm: "..value
end

-- Dissect: Onbehalf Firm
b3_b3derivatives_binaryentrypoint_sbe_v8_2.onbehalf_firm.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.onbehalf_firm.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.onbehalf_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.onbehalf_firm, range, value, display)

  return offset + length, value
end

-- Ord Rej Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_rej_reason = {}

-- Size: Ord Rej Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_rej_reason.size = 4

-- Display: Ord Rej Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_rej_reason.labels = {
  [000908] = "Ord Rej Reason: Unable to send FIX from VolatilityUpdate message (000908)",
  [001003] = "Ord Rej Reason: Orders may not be entered while the market is closed/paused (001003)",
  [001007] = "Ord Rej Reason: FIX field missing or incorrect (001007)",
  [001010] = "Ord Rej Reason: Required field missing (001010)",
  [001011] = "Ord Rej Reason: FIX field incorrect (001011)",
  [001012] = "Ord Rej Reason: Price must be greater than zero (001012)",
  [001013] = "Ord Rej Reason: Invalid order qualifier (001013)",
  [001014] = "Ord Rej Reason: User not authorized to trade (001014)",
  [001016] = "Ord Rej Reason: Required field missing 'Stop orders cannot be IOC/FAK' (001016)",
  [001017] = "Ord Rej Reason: Required field missing 'Display Quantity orders cannot be IOC/FOK' (001017)",
  [001018] = "Ord Rej Reason: Required field missing 'Stop orders cannot be IOC/FOK' (001018)",
  [002013] = "Ord Rej Reason: Market price orders not supported by opposite limit (002013)",
  [002019] = "Ord Rej Reason: Order GTD Expire Date is before the current (or next, if not currently in a session) trading session end date (002019)",
  [002045] = "Ord Rej Reason: Cannot modify order because order does not exist (002045)",
  [002046] = "Ord Rej Reason: Disclosed Quantity cannot be greater than total or remaining quantity (002046)",
  [002047] = "Ord Rej Reason: Order contract is unknown (002047)",
  [002048] = "Ord Rej Reason: The Order was submitted with a different SenderCompID than the requesting Cancel (002048)",
  [002049] = "Ord Rej Reason: The Order was submitted with a different CLOrderID than the CorrelationClOrderID of the requesting Cancel (002049)",
  [002050] = "Ord Rej Reason: The Order was submitted with a different CLOrderID than the OriginalClOrderID of the requesting Cancel (002050)",
  [002051] = "Ord Rej Reason: The Order was submitted with a different side than the requesting Cancel (002051)",
  [002052] = "Ord Rej Reason: The Order was submitted with a different group (tag 55) than the requesting Cancel (002052)",
  [002053] = "Ord Rej Reason: The Order was submitted with a different security type than the requesting Cancel (002053)",
  [002054] = "Ord Rej Reason: The Order was submitted with a different account than the requesting Cancel (002054)",
  [002055] = "Ord Rej Reason: The Order was submitted with a different quantity than the requesting Cancel (002055)",
  [002056] = "Ord Rej Reason: The Order was submitted with a different TraderID than the requesting Cancel (002056)",
  [002057] = "Ord Rej Reason: Attempt to cancel an order with a different FirmID than the original order (002057)",
  [002058] = "Ord Rej Reason: Attempt to cancel an order with a different SenderLocationID than the original order (002058)",
  [002059] = "Ord Rej Reason: Stop price maxi-mini must be smaller than or equal to trigger price (002059)",
  [002060] = "Ord Rej Reason: Sell order stop price must be below last trade price (002060)",
  [002061] = "Ord Rej Reason: Buy order stop price must be above last trade price (002061)",
  [002100] = "Ord Rej Reason: The modify was submitted on a different product than the original order (002100)",
  [002101] = "Ord Rej Reason: Attempt to modify an order with a different in-flight-fill mitigation status than first modification (002101)",
  [002102] = "Ord Rej Reason: Attempt to modify an order with a different SenderCompID than the original order (002102)",
  [002103] = "Ord Rej Reason: Attempt to modify an order with a different TraderID than the original order (002103)",
  [002104] = "Ord Rej Reason: Attempt to modify an order with a different AccountID than the original order (002104)",
  [002105] = "Ord Rej Reason: Attempt to modify an order with a different FirmID than the original order (002105)",
  [002106] = "Ord Rej Reason: Attempt to modify an order with a different SenderLocationID than the original order (002106)",
  [002107] = "Ord Rej Reason: Disclosed Quantity is not allowed (002107)",
  [002108] = "Ord Rej Reason: Account or Give Up firm required for DMA customers (002108)",
  [002109] = "Ord Rej Reason: Disclosed Qty cannot be less than Disclosed Qty Min (002109)",
  [002110] = "Ord Rej Reason: Acct Type(38) not valid for Tag 581 for DMA customers (002110)",
  [002111] = "Ord Rej Reason: Give Up not valid for FX Spot contract (002111)",
  [002112] = "Ord Rej Reason: Visibility Permission Not granted for Executing Trader/Entering Trader (002112)",
  [002113] = "Ord Rej Reason: Executing Trader doesn't have access to Product Group (002113)",
  [002114] = "Ord Rej Reason: Attempt to modify market order to some other type (002114)",
  [002115] = "Ord Rej Reason: Order quantity is outside of the allowable range (002115)",
  [002116] = "Ord Rej Reason: Account is mandatory for FX SPOT (002116)",
  [002117] = "Ord Rej Reason: Order On Behalf by DMA customer is not allowed (002117)",
  [002118] = "Ord Rej Reason: Attempt to modify an order with a different AccountType than the original order (002118)",
  [002123] = "Ord Rej Reason: Account or Give Up firm required for equities (002123)",
  [002130] = "Ord Rej Reason: Order type not permitted while the market is in pre open (002130)",
  [002137] = "Ord Rej Reason: Order price is outside limits (002137)",
  [002138] = "Ord Rej Reason: Qty is not multiple of Round Lot (002138)",
  [002139] = "Ord Rej Reason: Qty is greater or equal than Maximum Trade Volume (002139)",
  [002179] = "Ord Rej Reason: Order price is outside bands (002179)",
  [002180] = "Ord Rej Reason: Order price is outside auction bands (002180)",
  [002181] = "Ord Rej Reason: Trade outside of short term volatility bands (002181)",
  [002182] = "Ord Rej Reason: All Legs must have same Lot Types (002182)",
  [002183] = "Ord Rej Reason: All Legs must have same Tick Increment (002183)",
  [002184] = "Ord Rej Reason: All Legs must have same Step of Quotation (002184)",
  [002185] = "Ord Rej Reason: Trade price is outside of static limits (002185)",
  [002186] = "Ord Rej Reason: COD Not Supported for GTC/ GTD Orders (002186)",
  [002187] = "Ord Rej Reason: Order not bookable at this time (002187)",
  [002188] = "Ord Rej Reason: Minimum Quantity was not Filled (002188)",
  [002189] = "Ord Rej Reason: Order Attributes Not Allowed to Trip an Auction (002189)",
  [002311] = "Ord Rej Reason: Order type not permitted for group (002311)",
  [002500] = "Ord Rej Reason: Instrument has an request for cross in progress (002500)",
  [002501] = "Ord Rej Reason: Order Quantity too low (002501)",
  [002502] = "Ord Rej Reason: CrossType ineligible for instrument (002502)",
  [002503] = "Ord Rej Reason: RFQ for Cross is not allowed since contract is not RFQ for Cross eligible (002503)",
  [002504] = "Ord Rej Reason: DMA CrossOrder Not allowed (002504)",
  [002505] = "Ord Rej Reason: Cross Order Rejected due to Auction Trigger Validation (002505)",
  [002506] = "Ord Rej Reason: Trade on Behalf Rejected. (002506)",
  [002600] = "Ord Rej Reason: Market Maker Protection in effect for user <XXXXXXXX> and group <XXXXXX> (002600)",
  [003000] = "Ord Rej Reason: RFQ rejected, instrument/exchange not tradable (003000)",
  [003001] = "Ord Rej Reason: RFQ rejected, instrument/exchange not known (003001)",
  [003002] = "Ord Rej Reason: Error creating contract (003002)",
  [003010] = "Ord Rej Reason: Business reject: Other (003010)",
  [003011] = "Ord Rej Reason: Business reject: Unknown ID (003011)",
  [003012] = "Ord Rej Reason: Business reject: Unknown security (003012)",
  [003013] = "Ord Rej Reason: Business reject: Unsupported message type (003013)",
  [003014] = "Ord Rej Reason: Business reject: Application Not Available (003014)",
  [003015] = "Ord Rej Reason: Business reject: Required field missing (003015)",
  [003016] = "Ord Rej Reason: Contract claims to be a spread but is missing one or more legs (003016)",
  [003017] = "Ord Rej Reason: Fix Field Length Exceeds Max Length (003017)",
  [003020] = "Ord Rej Reason: Special Auction Permissions: 'Order entry not allowed.' (003020)",
  [004000] = "Ord Rej Reason: Engine did not respond to FAS request (004000)",
  [006001] = "Ord Rej Reason: Termo message rejected : Unknown instrument (006001)",
  [006002] = "Ord Rej Reason: Termo message rejected : Exchange (security) closed (006002)",
  [006003] = "Ord Rej Reason: Termo rejected, instrument/exchange not tradable (006003)",
  [006004] = "Ord Rej Reason: Termo message rejected: Limits exceeded (006004)",
  [006005] = "Ord Rej Reason: Termo message rejected: Too late to enter (006005)",
  [006006] = "Ord Rej Reason: Termo message rejected: Unknown Termo Quote (006006)",
  [006007] = "Ord Rej Reason: Termo message rejected: Duplicate Termo Quote (006007)",
  [006008] = "Ord Rej Reason: Termo message rejected: Invalid bid/ask spread (006008)",
  [006009] = "Ord Rej Reason: Termo message rejected: Invalid price (006009)",
  [006010] = "Ord Rej Reason: Termo message rejected: Not authorized to termo quote this instrument (006010)",
  [006011] = "Ord Rej Reason: Termo message rejected: Pass (006011)",
  [006012] = "Ord Rej Reason: Fix field incorrect (006012)",
  [006013] = "Ord Rej Reason: Not a valid termo instrument (006013)",
  [006014] = "Ord Rej Reason: Values don`t match with the original request (006014)",
  [006015] = "Ord Rej Reason: Current termo request status does not allow rejection (006015)",
  [006016] = "Ord Rej Reason: Current termo request status does not allow acceptance (006016)",
  [006017] = "Ord Rej Reason: Wrong type of order book for Termo. (006017)",
  [006018] = "Ord Rej Reason: Wrong type of request for Termo. (006018)",
  [006019] = "Ord Rej Reason: Days to Settlement must be between 16 and 999. (006019)",
  [006020] = "Ord Rej Reason: Days to Settlement must be between 16 and 90 (006020)",
  [006021] = "Ord Rej Reason: Instrument not allowed to this market. (006021)",
  [006022] = "Ord Rej Reason: Instrument not allowed to this market. (006022)",
  [006023] = "Ord Rej Reason: Termo Price should be greater than zero. (006023)",
  [006024] = "Ord Rej Reason: Termo messages should not be entered when market is paused (006024)",
  [006025] = "Ord Rej Reason: Termo messages should not be entered when market is pre open (006025)",
  [006026] = "Ord Rej Reason: Termo messages should not be entered when market is PCP (006026)",
  [006027] = "Ord Rej Reason: Termo messages should not be entered when market is no cancel (006027)",
  [006028] = "Ord Rej Reason: Termo messages should not be entered when market is reserved (006028)",
  [006029] = "Ord Rej Reason: Termo messages should not be entered when market is forbidden (006029)",
  [006030] = "Ord Rej Reason: Termo messages should not be entered when market is pre close (006030)",
  [006031] = "Ord Rej Reason: Termo messages should not be entered when market is pre open (006031)",
  [006032] = "Ord Rej Reason: Not a valid Termo Underlying Instrument. (006032)",
  [006033] = "Ord Rej Reason: Received a null AdminOperation (006033)",
  [006034] = "Ord Rej Reason: First trade of day for underlying termo instrument (006034)",
  [006035] = "Ord Rej Reason: Termo messages should not be entered when market is in final closing call (006035)",
  [006036] = "Ord Rej Reason: Invalid Cash Trade in TVR (006036)",
  [006037] = "Ord Rej Reason: Only Buy Entry Request for TVR is accepted (006037)",
  [006038] = "Ord Rej Reason: There is no bid and ask for underlying contract (006038)",
  [006039] = "Ord Rej Reason: Invalid price (006039)",
  [006040] = "Ord Rej Reason: Invalid Cash Trade in TVR (006040)",
  [006041] = "Ord Rej Reason: Invalid Cash Trade in TVR (006041)",
  [006042] = "Ord Rej Reason: Invalid Cash Trade in TVR (006042)",
  [006043] = "Ord Rej Reason: Invalid Cash Trade in TVR (006043)",
  [006044] = "Ord Rej Reason: Invalid Cash Trade in TVR (006044)",
  [007000] = "Ord Rej Reason: Order rejected (007000)",
  [007001] = "Ord Rej Reason: FOK order unmatchable in market (007001)",
  [007002] = "Ord Rej Reason: Orders may not be entered while the market is closed (007002)",
  [007005] = "Ord Rej Reason: Order contract is unknown (007005)",
  [007006] = "Ord Rej Reason: No partial match found for this FAK order (007006)",
  [007008] = "Ord Rej Reason: Maximum quantity depth for any one price group max may not exceed + Integer.MAX_VALUE (007008)",
  [007009] = "Ord Rej Reason: Contract for this order contract is past expiration date and may no longer be traded (007009)",
  [007010] = "Ord Rej Reason: Invalid spread price (007010)",
  [007011] = "Ord Rej Reason: Maximum number of working orders for this contract has been exceeded (007011)",
  [007012] = "Ord Rej Reason: Order would overwrite existing order on book (007012)",
  [007013] = "Ord Rej Reason: Order group does not match group of contract (007013)",
  [007014] = "Ord Rej Reason: Order security type does not match security type of contract (007014)",
  [007015] = "Ord Rej Reason: Order modify has different side than existing order (007015)",
  [007017] = "Ord Rej Reason: Contract is not eligible for electronic matching (007017)",
  [007018] = "Ord Rej Reason: Order contract is not GTC or GTD eligible (007018)",
  [007020] = "Ord Rej Reason: No Trading Calendar found on or after order GTD Expire Date (007020)",
  [007021] = "Ord Rej Reason: Tag ExpireDate (432) beyond instrument expiration. (007021)",
  [007022] = "Ord Rej Reason: Tag ExpireDate (432) beyond UDS COMBO earliest leg expiration. (007022)",
  [007024] = "Ord Rej Reason: Order cannot be modified or cancelled while the market is in no cancel (007024)",
  [007027] = "Ord Rej Reason: Order type not permitted while the market is reserved (007027)",
  [007028] = "Ord Rej Reason: Order session date is in the past (007028)",
  [007029] = "Ord Rej Reason: Orders may not be entered while the market is forbidden (007029)",
  [007030] = "Ord Rej Reason: Quote rejected: Exchange (security) is forbidden (007030)",
  [007031] = "Ord Rej Reason: Orders may not be entered while the market is preclosed (007031)",
  [007032] = "Ord Rej Reason: Quote rejected: Exchange (security) is preclosed (007032)",
  [007033] = "Ord Rej Reason: Orders may not be entered while the market is open (007033)",
  [007034] = "Ord Rej Reason: Quote rejected: Exchange (security) is forbidden (007034)",
  [007035] = "Ord Rej Reason: RFQ rejected: Instrument / exchange is open (007035)",
  [007036] = "Ord Rej Reason: Time in Force (59) not valid for Order Type (40). (007036)",
  [007037] = "Ord Rej Reason: Good for auction order not allowed. (007037)",
  [007038] = "Ord Rej Reason: On close order not allowed. (007038)",
  [007039] = "Ord Rej Reason: Duplicate Client Order Id for this Session/Contract. (007039)",
  [007040] = "Ord Rej Reason: Good for auction order cancel not allowed. (007040)",
  [007041] = "Ord Rej Reason: On close order cancel not allowed. (007041)",
  [007042] = "Ord Rej Reason: Good for auction order modify not allowed. (007042)",
  [007043] = "Ord Rej Reason: On close order modify not allowed. (007043)",
  [007044] = "Ord Rej Reason: Modify of Order Participating in TOP not allowed. (007044)",
  [007045] = "Ord Rej Reason: Cancel of Order Participating in TOP not allowed. (007045)",
  [007046] = "Ord Rej Reason: Order Type/ Duration combination invalid for auction (007046)",
  [007047] = "Ord Rej Reason: Order Type / Duration combination invalid (007047)",
  [007048] = "Ord Rej Reason: Quantity Attribute Not Allowed On Order During Auction. (007048)",
  [007049] = "Ord Rej Reason: Order Entry was unsuccessful. Error Message: Is not possible to send orders with Validity Type 'Market on Auction' with Minimum quantity. (007049)",
  [007050] = "Ord Rej Reason: Max Floor (111) not valid for Time in Force (59). (007050)",
  [007055] = "Ord Rej Reason: Spread orders may not be entered while the underlying leg market is in non trading state (007055)",
  [007056] = "Ord Rej Reason: Orders may not be entered while the market is in final closing call (007056)",
  [007101] = "Ord Rej Reason: Quote rejected: Unknown instrument (007101)",
  [007102] = "Ord Rej Reason: Quote rejected: Exchange (security) closed (007102)",
  [007103] = "Ord Rej Reason: Quote rejected: Quote exceeds limit (007103)",
  [007104] = "Ord Rej Reason: Quote rejected: Too late to enter (007104)",
  [007105] = "Ord Rej Reason: Quote rejected: Unknown Quote (007105)",
  [007106] = "Ord Rej Reason: Quote rejected: Duplicate Quote in same message (007106)",
  [007107] = "Ord Rej Reason: Quote rejected: Invalid bid/ask spread (007107)",
  [007108] = "Ord Rej Reason: Quote rejected: Invalid price (007108)",
  [007109] = "Ord Rej Reason: Quote rejected: Not authorized to quote this instrument (007109)",
  [007110] = "Ord Rej Reason: Quote rejected, resting cancelled: Too many rejects (007110)",
  [007111] = "Ord Rej Reason: Quote rejected: Duplicate Quote, different ID; (007111)",
  [007112] = "Ord Rej Reason: Quote rejected, resting cancelled: Quote exceeds limit (007112)",
  [007113] = "Ord Rej Reason: Quote rejected, resting cancelled: Duplicate Quote (007113)",
  [007114] = "Ord Rej Reason: Quote rejected, resting cancelled: Invalid bid/ask spread (007114)",
  [007115] = "Ord Rej Reason: Quote rejected, resting cancelled: Invalid price (007115)",
  [007116] = "Ord Rej Reason: Quote rejected, resting cancelled: Not authorized to quote this instrument (007116)",
  [007117] = "Ord Rej Reason: Quote rejected: Unspecified reason (007117)",
  [007118] = "Ord Rej Reason: Quote rejected: Exchange (security) is in pre open (007118)",
  [007119] = "Ord Rej Reason: Quote rejected: Exchange (security) is in no cancel (007119)",
  [007120] = "Ord Rej Reason: Quote rejected: Exchange (security) is reserved (007120)",
  [007121] = "Ord Rej Reason: Contract not eligible for negotiated quote (007121)",
  [007122] = "Ord Rej Reason: RLP Order rejected – Participant not authorized (007122)",
  [007123] = "Ord Rej Reason: Attempt to modify the order type from/to RLP (007123)",
  [007124] = "Ord Rej Reason: Invalid field for Order with Order Type (tag 40) equals W (RLP) (007124)",
  [007125] = "Ord Rej Reason: RLP Order rejected - Only one order is allowed by firm and side (007125)",
  [007126] = "Ord Rej Reason: Invalid field for Order with Routing Instruction (tag 35487) equals 1 (RETAIL_LIQUIDITY_TAKER) (007126)",
  [007127] = "Ord Rej Reason: Invalid field for Order with Order Type (tag 40) equals P (PEGGED) (007127)",
  [007128] = "Ord Rej Reason: Qty is not multiple of minimum execution quantity for Pegged order (007128)",
  [007129] = "Ord Rej Reason: Account is mandatory for Pegged Order (007129)",
  [007130] = "Ord Rej Reason: Pegged order can not be sent in Non Regular Session (007130)",
  [007131] = "Ord Rej Reason: Attempt to modify the order type from/to Pegged (007131)",
  [007132] = "Ord Rej Reason: Order rejected: pegged orders are not allowed for this contract (007132)",
  [007133] = "Ord Rej Reason: Order rejected: ROUTING_INSTRUCTION (tag 35487) equals BROKER_ONLY (3) not allowed for this group. (007133)",
  [007134] = "Ord Rej Reason: Order rejected: Only Pegged Order with ROUTING_INSTRUCTION (tag 35487) equals BROKER_ONLY (3) is allowed for this group. (007134)",
  [007135] = "Ord Rej Reason: Cross order suspended for the participant or session (007135)",
  [007136] = "Ord Rej Reason: Order quantity is outside of the allowable range “Order Quantity: [OrderQty] / Contract Minimum Quantity for Cross : [MinCrossQty] (007136)",
  [007137] = "Ord Rej Reason: BBT messages should not be entered when market is paused (007137)",
  [007138] = "Ord Rej Reason: BBT messages should not be entered when market is pre open (007138)",
  [007139] = "Ord Rej Reason: BBT messages should not be entered when market is PCP (007139)",
  [007140] = "Ord Rej Reason: BBT messages should not be entered when market is no cancel (007140)",
  [007141] = "Ord Rej Reason: BBT messages should not be entered when market is reserved (007141)",
  [007142] = "Ord Rej Reason: BBT messages should not be entered when market is forbidden (007142)",
  [007143] = "Ord Rej Reason: BBT messages should not be entered when market is pre close (007143)",
  [007144] = "Ord Rej Reason: Invalid field for BBT Order (007144)",
  [007145] = "Ord Rej Reason: For Cancel On Behalf  must be informed only the ActionTargetSessionID  OR the ActionTargetGroupID (007145)",
  [007146] = "Ord Rej Reason: ActionTargetGroupID  invalid . It doesn't exist or it is disabled (007146)",
  [007147] = "Ord Rej Reason: Fix Session is blocked due to Mass Cancel (007147)",
  [007148] = "Ord Rej Reason: ActionTargetGroupID must be informed (007148)",
  [007149] = "Ord Rej Reason: Fix Session doesn't belong to the ActionTargetGroupID (007149)",
  [009999] = "Ord Rej Reason: Technical Error: Function not performed (009999)",
  [008006] = "Ord Rej Reason: Exercise price not allowed (008006)",
  [008007] = "Ord Rej Reason: No positions blocked (008007)",
  [008008] = "Ord Rej Reason: Quantity doesn't match with the original request [Quantity on original request: <quantity on original request>] (008008)",
  [008011] = "Ord Rej Reason: Exercise must be on maturity date. (008011)",
  [008014] = "Ord Rej Reason: Function not available this time (008014)",
  [008015] = "Ord Rej Reason: Blocking quantity more than 999999999 (008015)",
  [008020] = "Ord Rej Reason: Trade does not belong to the specified firm ‘Firm Id: <XXX>’ (008020)",
  [008021] = "Ord Rej Reason: Blocking qty more than available quantity (008021)",
  [008022] = "Ord Rej Reason: There aren't positions available to exercise (008022)",
  [008023] = "Ord Rej Reason: Total qty must be the sum of all AllocQty (008023)",
  [008024] = "Ord Rej Reason: Trade already cancelled or does not exist ‘Trade Id: <XXX>’ (008024)",
  [008027] = "Ord Rej Reason: Available quantity to block is zero (008027)",
  [008028] = "Ord Rej Reason: Invalid Operation for contract type. (008028)",
  [008036] = "Ord Rej Reason: Function closed or suspended. (008036)",
  [008039] = "Ord Rej Reason: Exercise price outside required moneyness. (008039)",
  [008040] = "Ord Rej Reason: Invalid exercise request id to cancel (008040)",
  [008059] = "Ord Rej Reason: Invalid blocking Id to unblock (008059)",
  [008062] = "Ord Rej Reason: Invalid quantity to unblock (008062)",
  [008063] = "Ord Rej Reason: On Behalf Operation not allowed during CCR recovery (008063)",
  [008065] = "Ord Rej Reason: Problem parsing incoming message (008065)",
  [008066] = "Ord Rej Reason: Exercise quantity should be greater than zero (008066)",
  [030002] = "Ord Rej Reason: System initialization (030002)",
  [030003] = "Ord Rej Reason: Line busy (030003)",
  [030004] = "Ord Rej Reason: Message or atributes are invalid (030004)",
  [030005] = "Ord Rej Reason: Internal error (030005)",
  [030006] = "Ord Rej Reason: Timeout waiting risk evaluation (030006)",
  [030007] = "Ord Rej Reason: Timeout waiting risk evaluation (low priority) (030007)",
  [030011] = "Ord Rej Reason: Broker negotiation blocked (030011)",
  [030012] = "Ord Rej Reason: Broker not available (030012)",
  [030013] = "Ord Rej Reason: Broker's capture account not found (030013)",
  [030014] = "Ord Rej Reason: Broker's segment negotiation blocked (030014)",
  [030015] = "Ord Rej Reason: Broker segment not available (030015)",
  [030016] = "Ord Rej Reason: Broker's segment protected mode under activation (030016)",
  [030017] = "Ord Rej Reason: Broker PN negotiation blocked (030017)",
  [030018] = "Ord Rej Reason: Broker PN not available (030018)",
  [030019] = "Ord Rej Reason: Broker PN protected mode under activation (030019)",
  [030021] = "Ord Rej Reason: Account negotiation blocked (030021)",
  [030022] = "Ord Rej Reason: Account not available (030022)",
  [030023] = "Ord Rej Reason: Account's protected mode under activation (030023)",
  [030024] = "Ord Rej Reason: Account mandatory on DMA orders (030024)",
  [030025] = "Ord Rej Reason: Transient Account is hierarchically blocked on protected mode (030025)",
  [030026] = "Ord Rej Reason: Cross-orders or cross-forward not allowed while account in protected mode (030026)",
  [030027] = "Ord Rej Reason: Transient Account not allowed in Extended Hours (030027)",
  [030031] = "Ord Rej Reason: Document negotiation blocked (030031)",
  [030032] = "Ord Rej Reason: Document not available (030032)",
  [030033] = "Ord Rej Reason: Document's protected mode under activation (030033)",
  [030034] = "Ord Rej Reason: Executor document cannot use default broker profile (030034)",
  [030035] = "Ord Rej Reason: Document in blocked profile (030035)",
  [030036] = "Ord Rej Reason: Cross-orders or cross-forward not allowed while document in protected mode (030036)",
  [030041] = "Ord Rej Reason: Entering Trader negotiation blocked (030041)",
  [030042] = "Ord Rej Reason: Entering Trader not available (030042)",
  [030043] = "Ord Rej Reason: Entering Trader blocked by SFD overflow (030043)",
  [030044] = "Ord Rej Reason: Non DMA orders must provide account while in broker's protected mode (030044)",
  [030045] = "Ord Rej Reason: Entering Trader not authorized to trade accountless orders (030045)",
  [030046] = "Ord Rej Reason: Entering Trader cannot trade on behalf of other firm's account (030046)",
  [030050] = "Ord Rej Reason: Symbol not available (030050)",
  [030051] = "Ord Rej Reason: Symbol internal data corrupted (030051)",
  [030052] = "Ord Rej Reason: FIX Message Type does not support operations on such symbol (030052)",
  [030053] = "Ord Rej Reason: Symbol's underlying not found for risk aggregation (030053)",
  [030054] = "Ord Rej Reason: Symbol's risk unit matrix not available (030054)",
  [030055] = "Ord Rej Reason: Symbol's reference price missing, market orders not allowed (030055)",
  [032056] = "Ord Rej Reason: Symbol's calculated price invalid (032056)",
  [030060] = "Ord Rej Reason: Spread's leg not available (030060)",
  [030061] = "Ord Rej Reason: Spread's leg internal data corrupted (030061)",
  [030070] = "Ord Rej Reason: Unexpected internal error during risk evaluation (030070)",
  [030113] = "Ord Rej Reason: [SFD] Broker PN <pn> document aggregation: Day trade cash balance (stop loss) not configured (030113)",
  [030114] = "Ord Rej Reason: [SDP] Broker PN <pn> document aggregation: Order exceeded cash settlement exposure (030114)",
  [030115] = "Ord Rej Reason: [RMKT] Broker PN <pn> document aggregation: Order quantity exceeded risk increase (030115)",
  [030116] = "Ord Rej Reason: [SDP] Broker PN <pn> trader aggregation: Order exceeded cash settlement exposure (030116)",
  [030117] = "Ord Rej Reason: [SPVD] Broker PN <pn> document aggregation: Order exceeded potential short uncovered balance. (030117)",
  [030118] = "Ord Rej Reason: [SPVD] Broker PN <pn> trader aggregation: Order exceeded potential short uncovered balance. (030118)",
  [030119] = "Ord Rej Reason: [RMSE] Broker PN <pn> document aggregation: Order exceeded risk increase at extended session (030119)",
  [030166] = "Ord Rej Reason: [RMSE] Broker: Order exceeded risk increase at extended session (030166)",
  [030201] = "Ord Rej Reason: [MKTA] Account: Buy not allowed for symbol's market (030201)",
  [030202] = "Ord Rej Reason: [MKTA] Account: Sell not allowed for symbol's market (030202)",
  [030204] = "Ord Rej Reason: [TMOC] Account: Maximum order size exceeded for single order (030204)",
  [030205] = "Ord Rej Reason: [TMOV] Account: Maximum order size exceeded for single order (030205)",
  [030206] = "Ord Rej Reason: [SPCI] Account: Order quantity exceeded short position per instrument (030206)",
  [030207] = "Ord Rej Reason: [SPVI] Account: Order quantity exceeded long position per instrument (030207)",
  [030208] = "Ord Rej Reason: [SDP] Account: Order exceeded cash settlement exposure (030208)",
  [030210] = "Ord Rej Reason: [RMKT] Account: Order quantity exceeded risk increase (030210)",
  [030211] = "Ord Rej Reason: [IRMKT] Account: Order quantity exceeded risk increase - reducing mode (030211)",
  [030212] = "Ord Rej Reason: [SPI] Account: Order quantity exceeded long and short position - reducing mode (030212)",
  [030213] = "Ord Rej Reason: [STD] Account: Termo not allowed, protected mode enabled (030213)",
  [030215] = "Ord Rej Reason: [SPVD] Account: Order exceeded potential short uncovered balance. (030215)",
  [030300] = "Ord Rej Reason: [MKTA] Document: Buy/Sell symbol's market not configured (030300)",
  [030301] = "Ord Rej Reason: [MKTA] Document: Buy not allowed for symbol's market (030301)",
  [030302] = "Ord Rej Reason: [MKTA] Document: Sell not allowed for symbol's market (030302)",
  [030303] = "Ord Rej Reason: [TMOX] Document: Max (030303)",
  [030304] = "Ord Rej Reason: [TMOC] Document: Max Bid quantity exceeded for single order (030304)",
  [030305] = "Ord Rej Reason: [TMOV] Document: Max Offer quantity exceeded for single order (030305)",
  [030306] = "Ord Rej Reason: [SPCI] Document: Order quantity exceeded Max Bid Potential Balance (030306)",
  [030307] = "Ord Rej Reason: [SPVI] Document: Order quantity exceeded Max Offer Potential Balance (030307)",
  [030308] = "Ord Rej Reason: [SDP] Document: Order exceeded Max Financial Potential Balance Due (030308)",
  [030309] = "Ord Rej Reason: [STD] Document: Order quantity exceeded Max Operations Forward Balance (030309)",
  [030310] = "Ord Rej Reason: [RMKT] (030310)",
  [030311] = "Ord Rej Reason: [IRMKT] Document: Order quantity exceeded Max Incremental Market Risk (030311)",
  [030312] = "Ord Rej Reason: [SPI] Document: Order quantity exceeded Previous Potencial Balance (030312)",
  [030313] = "Ord Rej Reason: [STD] Document: Termo not allowed, (030313)",
  [030314] = "Ord Rej Reason: [SFD] Document: Day trade cash balance (stop loss) not configured (030314)",
  [030315] = "Ord Rej Reason: [SPVD] Document: Order exceeded potential short uncovered balance (030315)",
  [030316] = "Ord Rej Reason: [RMSE] Document: Order exceeded risk increase at extended session (030316)",
  [030317] = "Ord Rej Reason: [RMSE] Document: Order exceeded risk increase of broker at extended session (030317)",
  [030400] = "Ord Rej Reason: [MKTA] Entering trader: Buy/Sell symbol's market not configured (030400)",
  [030401] = "Ord Rej Reason: [MKTA] Entering trader: Buy not allowed for symbol's market (030401)",
  [030402] = "Ord Rej Reason: [MKTA] Entering (030402)",
  [030403] = "Ord Rej Reason: [TMOX] Entering trader: Max Bid/Offer quantity not configured (030403)",
  [030404] = "Ord Rej Reason: [TMOC] Entering trader: Max Bid quantity exceeded for single order (030404)",
  [030405] = "Ord Rej Reason: [TMOV] Entering trader: Max Offer quantity exceeded for si (030405)",
  [030406] = "Ord Rej Reason: [SPCI] Entering trader: Order quantity exceeded Max Bid Potential Balance (030406)",
  [030407] = "Ord Rej Reason: [SPVI] Entering trader: Order quantity exceeded Max Offer Potential Balance (030407)",
  [030408] = "Ord Rej Reason: [SDP] Entering trader: Order exceeded Max Financial Potential (030408)",
  [030415] = "Ord Rej Reason: [SPVD] Trader: Order exceeded potential short uncovered balance. (030415)",
  [030500] = "Ord Rej Reason: [OMS] Unexpected internal error (030500)",
  [030501] = "Ord Rej Reason: [OMS] Invalid session or symbol (030501)",
  [030502] = "Ord Rej Reason: [OMS] ClOrdID cannot be empty (030502)",
  [030503] = "Ord Rej Reason: [OMS] ClOrdID is duplicated (030503)",
  [030504] = "Ord Rej Reason: [OMS] ClOrdID not found (030504)",
  [030505] = "Ord Rej Reason: [OMS] OrigClOrdID cannot be empty (030505)",
  [030506] = "Ord Rej Reason: [OMS] CrossID cannot be empty (030506)",
  [030507] = "Ord Rej Reason: [OMS] ClOrdID is duplicated within Cross Order (030507)",
  [030508] = "Ord Rej Reason: [OMS] Cross Order modification is not allowed (030508)",
  [030509] = "Ord Rej Reason: [OMS] OrderID not found (030509)",
  [030510] = "Ord Rej Reason: [OMS] OrderID cannot be empty (030510)",
  [030511] = "Ord Rej Reason: [OMS] QuoteReqID cannot be empty (030511)",
  [030512] = "Ord Rej Reason: [OMS] QuoteReqID is duplicated (030512)",
  [030513] = "Ord Rej Reason: [OMS] QuoteReqID not found (030513)",
  [030514] = "Ord Rej Reason: [OMS] QuoteID cannot be empty (030514)",
  [030521] = "Ord Rej Reason: [OMS] In (030521)",
  [030522] = "Ord Rej Reason: [OMS] (030522)",
  [030523] = "Ord Rej Reason: [OMS] Entering firm modification is not allowed (030523)",
  [030524] = "Ord Rej Reason: [OMS] Account modification on DMA order is not allowed (030524)",
  [030525] = "Ord Rej Reason: [OMS] Account information missing on non (030525)",
  [030526] = "Ord Rej Reason: [OMS] Entering trader (030526)",
  [030527] = "Ord Rej Reason: [OMS] Received Execution Report Rejection for an active order (030527)",
  [031011] = "Ord Rej Reason: Broker negotiation blocked (031011)",
  [031012] = "Ord Rej Reason: Broker not available (031012)",
  [031013] = "Ord Rej Reason: Broker's capture account not found (031013)",
  [031014] = "Ord Rej Reason: Broker's segment negotiation blocked (031014)",
  [031015] = "Ord Rej Reason: Broker segment not available (031015)",
  [031016] = "Ord Rej Reason: Broker's segment protected mode under activation (031016)",
  [031021] = "Ord Rej Reason: Account negotiation blocked (031021)",
  [031022] = "Ord Rej Reason: Account not available (031022)",
  [031023] = "Ord Rej Reason: Account's protected mode under activation (031023)",
  [031024] = "Ord Rej Reason: Account mandatory on DMA orders (031024)",
  [031025] = "Ord Rej Reason: Transient Account is hierarchically blocked on protected mode (031025)",
  [031026] = "Ord Rej Reason: Cross-orders or cross-forward not allowed while account in protected mode (031026)",
  [031027] = "Ord Rej Reason: Transient Account not allowed in Extended Hours (031027)",
  [031031] = "Ord Rej Reason: Document negotiation blocked (031031)",
  [031032] = "Ord Rej Reason: Document not available (031032)",
  [031033] = "Ord Rej Reason: Document's protected mode under activation (031033)",
  [031034] = "Ord Rej Reason: Executor document cannot use default broker profile (031034)",
  [031035] = "Ord Rej Reason: Document in blocked profile (031035)",
  [031036] = "Ord Rej Reason: Cross-orders or cross-forward not allowed while document in protected mode (031036)",
  [031041] = "Ord Rej Reason: Entering Trader negotiation blocked (031041)",
  [031042] = "Ord Rej Reason: Entering Trader not available (031042)",
  [031043] = "Ord Rej Reason: Entering Trader blocked by SFD overflow (031043)",
  [031044] = "Ord Rej Reason: Non DMA orders must provide account while in broker's protected mode (031044)",
  [031045] = "Ord Rej Reason: Entering Trader not authorized to trade accountless orders (031045)",
  [031046] = "Ord Rej Reason: Entering Trader cannot trade on behalf of other firm's account (031046)",
  [031050] = "Ord Rej Reason: Symbol not available (031050)",
  [031051] = "Ord Rej Reason: Symbol internal data corrupted (031051)",
  [031052] = "Ord Rej Reason: FIX Message Type does not support operations on such symbol (031052)",
  [031053] = "Ord Rej Reason: Symbol's underlying not found for risk aggregation (031053)",
  [031054] = "Ord Rej Reason: Symbol's risk unit matrix not available (031054)",
  [031055] = "Ord Rej Reason: Symbol's reference price missing, market orders not allowed (031055)",
  [031056] = "Ord Rej Reason: Symbol's calculated price invalid (031056)",
  [031060] = "Ord Rej Reason: Spread's leg not available (031060)",
  [031061] = "Ord Rej Reason: Spread's leg internal data corrupted (031061)",
  [031070] = "Ord Rej Reason: Unexpected internal error during risk evaluation (031070)",
  [031201] = "Ord Rej Reason: [MKTA] Account: Buy not allowed for symbol's market (031201)",
  [031202] = "Ord Rej Reason: [MKTA] Account: Sell not allowed for symbol's market (031202)",
  [031204] = "Ord Rej Reason: [TMOC] Account: Max Bid quantity exceeded for single order (031204)",
  [031205] = "Ord Rej Reason: [TMOV] Account: Max Offer quantity exceeded for single order (031205)",
  [031206] = "Ord Rej Reason: [SPCI] Account: Order quantity exceeded Max Bid Potential Balance (031206)",
  [031207] = "Ord Rej Reason: [SPVI] Account: Order quantity exceeded Max Offer Potential Balance (031207)",
  [031208] = "Ord Rej Reason: [SDP] Account: Order exceeded Max Financial Potential Balance Due (031208)",
  [031210] = "Ord Rej Reason: [RMKT] Account: Order quantity exceeded Max Market Risk (031210)",
  [031211] = "Ord Rej Reason: [IRMKT] Account: Order quantity exceeded Max Incremental Market Risk (031211)",
  [031212] = "Ord Rej Reason: [SPI] Account: Order quantity exceeded Previous Potencial Balance (031212)",
  [031213] = "Ord Rej Reason: [STD] Account: Termo not allowed, protected mode enabled (031213)",
  [031215] = "Ord Rej Reason: [SPVD] Account: Order exceeded potential short uncovered balance. (031215)",
  [031300] = "Ord Rej Reason: [MKTA] Document: Buy/Sell symbol's market not configured (031300)",
  [031301] = "Ord Rej Reason: [MKTA] Document: Buy not allowed for symbol's market (031301)",
  [031302] = "Ord Rej Reason: [MKTA] Document: Sell not allowed for symbol's market (031302)",
  [031303] = "Ord Rej Reason: [TMOX] Document: Maximum order size not configured (031303)",
  [031304] = "Ord Rej Reason: [TMOC] Document: Maximum order size exceeded for single order (031304)",
  [031305] = "Ord Rej Reason: [TMOV] Document: Maximum order size exceeded for single order (031305)",
  [031306] = "Ord Rej Reason: [SPCI] Document: Order quantity exceeded short position per instrument (031306)",
  [031307] = "Ord Rej Reason: [SPVI] Document: Order quantity exceeded long position per instrument (031307)",
  [031308] = "Ord Rej Reason: [SDP] Document: Order exceeded cash settlement exposure (031308)",
  [031309] = "Ord Rej Reason: [STD] Document: Order quantity exceeded forward contracts exposure (031309)",
  [031310] = "Ord Rej Reason: [RMKT] Document: Order quantity exceeded risk increase (031310)",
  [031311] = "Ord Rej Reason: [IRMKT] Document: Order quantity exceeded risk increase - reducing mode (031311)",
  [031312] = "Ord Rej Reason: [SPI] Document: Order quantity exceeded long and short position - reducing mode (031312)",
  [031313] = "Ord Rej Reason: [STD] Document: Termo not allowed, protected mode enabled (031313)",
  [031314] = "Ord Rej Reason: [SFD] Document: Day trade cash balance (stop loss) not configured (031314)",
  [031315] = "Ord Rej Reason: [SPVD] Document: Order exceeded potential short uncovered balance. (031315)",
  [031316] = "Ord Rej Reason: [RMSE] Document: Order exceeded risk increase at extended session (031316)",
  [031317] = "Ord Rej Reason: [RMSE] Document: Order exceeded risk increase of broker at extended session (031317)",
  [031400] = "Ord Rej Reason: [MKTA] Entering trader: Buy/Sell symbol's market not configured (031400)",
  [031401] = "Ord Rej Reason: [MKTA] Entering trader: Buy not allowed for symbol's market (031401)",
  [031402] = "Ord Rej Reason: [MKTA] Entering trader: Sell not allowed for symbol's market (031402)",
  [031403] = "Ord Rej Reason: [TMOX] Entering trader: Maximum order size not configured (031403)",
  [031404] = "Ord Rej Reason: [TMOC] Entering trader: Maximum order size exceeded for single order (031404)",
  [031405] = "Ord Rej Reason: [TMOV] Entering trader: Maximum order size exceeded for single order (031405)",
  [031406] = "Ord Rej Reason: [SPCI] Entering trader: Order quantity exceeded short position per instrument (031406)",
  [031407] = "Ord Rej Reason: [SPVI] Entering trader: Order quantity exceeded long position per instrument (031407)",
  [031408] = "Ord Rej Reason: [SDP] Entering trader: Order exceeded cash settlement exposure (031408)",
  [031500] = "Ord Rej Reason: [OMS] Unexpected internal error (031500)",
  [031501] = "Ord Rej Reason: [OMS] Invalid session or symbol (031501)",
  [031502] = "Ord Rej Reason: [OMS] ClOrdID cannot be empty (031502)",
  [031503] = "Ord Rej Reason: [OMS] ClOrdID is duplicated (031503)",
  [031504] = "Ord Rej Reason: [OMS] ClOrdID not found (031504)",
  [031505] = "Ord Rej Reason: [OMS] OrigClOrdID cannot be empty (031505)",
  [031506] = "Ord Rej Reason: [OMS] CrossID cannot be empty (031506)",
  [031507] = "Ord Rej Reason: [OMS] ClOrdID is duplicated within Cross Order (031507)",
  [031508] = "Ord Rej Reason: [OMS] Cross Order modification is not allowed (031508)",
  [031509] = "Ord Rej Reason: [OMS] OrderID not found (031509)",
  [031510] = "Ord Rej Reason: [OMS] OrderID cannot be empty (031510)",
  [031511] = "Ord Rej Reason: [OMS] QuoteReqID cannot be empty (031511)",
  [031512] = "Ord Rej Reason: [OMS] QuoteReqID is duplicated (031512)",
  [031513] = "Ord Rej Reason: [OMS] QuoteReqID not found (031513)",
  [031514] = "Ord Rej Reason: [OMS] QuoteID cannot be empty (031514)",
  [031521] = "Ord Rej Reason: [OMS] In-Flight modification is not allowed (031521)",
  [031522] = "Ord Rej Reason: [OMS] Side modification is not allowed (031522)",
  [031523] = "Ord Rej Reason: [OMS] Entering firm modification is not allowed (031523)",
  [031524] = "Ord Rej Reason: [OMS] Account modification on DMA order is not allowed (031524)",
  [031525] = "Ord Rej Reason: [OMS] Account information missing on non-DMA order (031525)",
  [031526] = "Ord Rej Reason: [OMS] Entering trader modification on non-DMA order is not allowed (031526)",
  [031527] = "Ord Rej Reason: [OMS] Received Execution Report Rejection for an active order (031527)",
  [032000] = "Ord Rej Reason: Field missing or incorrect (032000)",
  [032001] = "Ord Rej Reason: LiNe not available or busy (032001)",
  [032002] = "Ord Rej Reason: LiNe internal error (032002)",
  [032003] = "Ord Rej Reason: LiNe recovering or starting up (032003)",
  [032004] = "Ord Rej Reason: Internal gateway error (message forwarding failure) (032004)",
  [032005] = "Ord Rej Reason: Invalid Quantity (032005)",
  [032006] = "Ord Rej Reason: Duplicate Order (032006)",
  [032007] = "Ord Rej Reason: Missing Account Field (032007)",
  [032008] = "Ord Rej Reason: Unknown Account (032008)",
  [032009] = "Ord Rej Reason: Unknown FirmID (for routing) (032009)",
  [032010] = "Ord Rej Reason: Duplicate FirmID (032010)",
  [032011] = "Ord Rej Reason: Duplicate Sender Location (032011)",
  [032012] = "Ord Rej Reason: Duplicate Entering Trader (032012)",
  [032013] = "Ord Rej Reason: Firm or Trader is missing in non-DMA order (032013)",
  [032014] = "Ord Rej Reason: Firm or Account is missing in DMA order (032014)",
  [032015] = "Ord Rej Reason: Same Participants on both sides or invalid sides (032015)",
  [032016] = "Ord Rej Reason: BUY side and SELL side having different FirmIDs (032016)",
  [032017] = "Ord Rej Reason: BUY side and SELL side trading different assets (032017)",
  [032018] = "Ord Rej Reason: Invalid Price (032018)",
  [032019] = "Ord Rej Reason: LiNe overloaded (032019)",
  [032020] = "Ord Rej Reason: LiNe administratively blocked (032020)",
  [032021] = "Ord Rej Reason: Invalid Price (032021)",
  [032022] = "Ord Rej Reason: System Overloaded (032022)",
  [032023] = "Ord Rej Reason: System Error (032023)",
  [033000] = "Ord Rej Reason: Throttle limit reached (033000)",
  [033001] = "Ord Rej Reason: Invalid Security ID (033001)",
  [033002] = "Ord Rej Reason: Unknown Market Segment ID (033002)",
  [033003] = "Ord Rej Reason: Field missing or incorrect (033003)",
  [033050] = "Ord Rej Reason: System Error (033050)",
}

b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_rej_reason.display = function(value)
  return b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_rej_reason.labels[value] or "Ord Rej Reason: Unknown("..value..")"
end

-- Dissect: Ord Rej Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_rej_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.ord_rej_reason, range, value, display)

  return offset + length, value
end

-- Ord Status
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_status = {}

-- Size: Ord Status
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_status.size = 1

-- Display: Ord Status
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_status.display = function(value)
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
    return "Ord Status: Canceled (4)"
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
  if value == "R" then
    return "Ord Status: Restated (R)"
  end
  if value == "Z" then
    return "Ord Status: Previous Final State (Z)"
  end

  return "Ord Status: Unknown("..value..")"
end

-- Dissect: Ord Status
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_status.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Order Category
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_category = {}

-- Size: Order Category
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_category.size = 1

-- Display: Order Category
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_category.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Order Category: No Value"
  end

  if value == "B" then
    return "Order Category: Result Of Options Exercise (B)"
  end
  if value == "C" then
    return "Order Category: Result Of Assignment From An Options Exercise (C)"
  end
  if value == "D" then
    return "Order Category: Result Of Automatic Options Exercise (D)"
  end
  if value == "E" then
    return "Order Category: Result Of Midpoint Order (E)"
  end
  if value == "F" then
    return "Order Category: Result Of Block Book Trade (F)"
  end
  if value == "G" then
    return "Order Category: Result Of Trade At Close (G)"
  end
  if value == "H" then
    return "Order Category: Result Of Trade At Average (H)"
  end
  if value == "7" then
    return "Order Category: Implied Order (7)"
  end
  if value == 0 then
    return "Order Category: No Value"
  end

  return "Order Category: Unknown("..value..")"
end

-- Dissect: Order Category
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_category.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_category.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.order_category, range, value, display)

  return offset + length, value
end

-- Order Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id = {}

-- Size: Order Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id.size = 8

-- Display: Order Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id_optional = {}

-- Size: Order Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id_optional.size = 8

-- Display: Order Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Order Id Optional: No Value"
  end

  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- Order Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty = {}

-- Size: Order Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.size = 8

-- Display: Order Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Qty Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty_optional = {}

-- Size: Order Qty Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty_optional.size = 8

-- Display: Order Qty Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Order Qty Optional: No Value"
  end

  return "Order Qty Optional: "..value
end

-- Dissect: Order Qty Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.order_qty_optional, range, value, display)

  return offset + length, value
end

-- OrdTagId
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid = {}

-- Size: OrdTagId
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.size = 1

-- Display: OrdTagId
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "OrdTagId: No Value"
  end

  return "OrdTagId: "..value
end

-- Dissect: OrdTagId
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.ordtagid, range, value, display)

  return offset + length, value
end

-- OrdType
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtype = {}

-- Size: OrdType
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtype.size = 1

-- Display: OrdType
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtype.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "OrdType: No Value"
  end

  if value == "1" then
    return "OrdType: Market (1)"
  end
  if value == "2" then
    return "OrdType: Limit (2)"
  end
  if value == "3" then
    return "OrdType: Stop Loss (3)"
  end
  if value == "4" then
    return "OrdType: Stop Limit (4)"
  end
  if value == "K" then
    return "OrdType: Market With Leftover As Limit (K)"
  end
  if value == "W" then
    return "OrdType: Rlp (W)"
  end
  if value == "P" then
    return "OrdType: Pegged Midpoint (P)"
  end

  return "OrdType: Unknown("..value..")"
end

-- Dissect: OrdType
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtype.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtype.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.ordtype, range, value, display)

  return offset + length, value
end

-- Orig Pos Req Ref Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.orig_pos_req_ref_id = {}

-- Size: Orig Pos Req Ref Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.orig_pos_req_ref_id.size = 8

-- Display: Orig Pos Req Ref Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.orig_pos_req_ref_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Orig Pos Req Ref Id: No Value"
  end

  return "Orig Pos Req Ref Id: "..value
end

-- Dissect: Orig Pos Req Ref Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.orig_pos_req_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.orig_pos_req_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.orig_pos_req_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.orig_pos_req_ref_id, range, value, display)

  return offset + length, value
end

-- OrigClOrdId
b3_b3derivatives_binaryentrypoint_sbe_v8_2.origclordid = {}

-- Size: OrigClOrdId
b3_b3derivatives_binaryentrypoint_sbe_v8_2.origclordid.size = 8

-- Display: OrigClOrdId
b3_b3derivatives_binaryentrypoint_sbe_v8_2.origclordid.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "OrigClOrdId: No Value"
  end

  return "OrigClOrdId: "..value
end

-- Dissect: OrigClOrdId
b3_b3derivatives_binaryentrypoint_sbe_v8_2.origclordid.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.origclordid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.origclordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.origclordid, range, value, display)

  return offset + length, value
end

-- Padding
b3_b3derivatives_binaryentrypoint_sbe_v8_2.padding = {}

-- Size: Padding
b3_b3derivatives_binaryentrypoint_sbe_v8_2.padding.size = 1

-- Display: Padding
b3_b3derivatives_binaryentrypoint_sbe_v8_2.padding.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Padding: No Value"
  end

  return "Padding: "..value
end

-- Dissect: Padding
b3_b3derivatives_binaryentrypoint_sbe_v8_2.padding.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.padding.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.padding.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.padding, range, value, display)

  return offset + length, value
end

-- Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.padding_1 = {}

-- Size: Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.padding_1.size = 1

-- Display: Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.padding_1.display = function(value)
  return "Padding 1: "..value
end

-- Dissect: Padding 1
b3_b3derivatives_binaryentrypoint_sbe_v8_2.padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.padding_1, range, value, display)

  return offset + length, value
end

-- Patch Number
b3_b3derivatives_binaryentrypoint_sbe_v8_2.patch_number = {}

-- Size: Patch Number
b3_b3derivatives_binaryentrypoint_sbe_v8_2.patch_number.size = 1

-- Display: Patch Number
b3_b3derivatives_binaryentrypoint_sbe_v8_2.patch_number.display = function(value)
  return "Patch Number: "..value
end

-- Dissect: Patch Number
b3_b3derivatives_binaryentrypoint_sbe_v8_2.patch_number.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.patch_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.patch_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.patch_number, range, value, display)

  return offset + length, value
end

-- Pos Maint Action
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_action = {}

-- Size: Pos Maint Action
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_action.size = 1

-- Display: Pos Maint Action
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_action.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Pos Maint Action: No Value"
  end

  if value == "1" then
    return "Pos Maint Action: New (1)"
  end
  if value == "3" then
    return "Pos Maint Action: Cancel (3)"
  end

  return "Pos Maint Action: Unknown("..value..")"
end

-- Dissect: Pos Maint Action
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_action.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_action.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.pos_maint_action, range, value, display)

  return offset + length, value
end

-- Pos Maint Result
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_result = {}

-- Size: Pos Maint Result
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_result.size = 4

-- Display: Pos Maint Result
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_result.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Pos Maint Result: No Value"
  end

  return "Pos Maint Result: "..value
end

-- Dissect: Pos Maint Result
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_result.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_result.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_result.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.pos_maint_result, range, value, display)

  return offset + length, value
end

-- Pos Maint Rpt Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_rpt_id = {}

-- Size: Pos Maint Rpt Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_rpt_id.size = 8

-- Display: Pos Maint Rpt Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_rpt_id.display = function(value)
  return "Pos Maint Rpt Id: "..value
end

-- Dissect: Pos Maint Rpt Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_rpt_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_rpt_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_rpt_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.pos_maint_rpt_id, range, value, display)

  return offset + length, value
end

-- Pos Maint Rpt Ref Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_rpt_ref_id = {}

-- Size: Pos Maint Rpt Ref Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_rpt_ref_id.size = 8

-- Display: Pos Maint Rpt Ref Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_rpt_ref_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Pos Maint Rpt Ref Id: No Value"
  end

  return "Pos Maint Rpt Ref Id: "..value
end

-- Dissect: Pos Maint Rpt Ref Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_rpt_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_rpt_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_rpt_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.pos_maint_rpt_ref_id, range, value, display)

  return offset + length, value
end

-- Pos Maint Status
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_status = {}

-- Size: Pos Maint Status
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_status.size = 1

-- Display: Pos Maint Status
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Pos Maint Status: No Value"
  end

  if value == "0" then
    return "Pos Maint Status: Accepted (0)"
  end
  if value == "2" then
    return "Pos Maint Status: Rejected (2)"
  end
  if value == "3" then
    return "Pos Maint Status: Completed (3)"
  end
  if value == "9" then
    return "Pos Maint Status: Not Executed (9)"
  end

  return "Pos Maint Status: Unknown("..value..")"
end

-- Dissect: Pos Maint Status
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_status.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.pos_maint_status, range, value, display)

  return offset + length, value
end

-- Pos Req Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_req_id = {}

-- Size: Pos Req Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_req_id.size = 8

-- Display: Pos Req Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_req_id.display = function(value)
  return "Pos Req Id: "..value
end

-- Dissect: Pos Req Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_req_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_req_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.pos_req_id, range, value, display)

  return offset + length, value
end

-- Pos Req Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_req_id_optional = {}

-- Size: Pos Req Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_req_id_optional.size = 8

-- Display: Pos Req Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_req_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Pos Req Id Optional: No Value"
  end

  return "Pos Req Id Optional: "..value
end

-- Dissect: Pos Req Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_req_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_req_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_req_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.pos_req_id_optional, range, value, display)

  return offset + length, value
end

-- Pos Trans Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_trans_type = {}

-- Size: Pos Trans Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_trans_type.size = 1

-- Display: Pos Trans Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_trans_type.labels = {
  [1] = "Pos Trans Type: Exercise (1)",
  [105] = "Pos Trans Type: Automatic Exercise (105)",
  [106] = "Pos Trans Type: Exercise Not Automatic (106)",
}

b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_trans_type.display = function(value)
  return b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_trans_type.labels[value] or "Pos Trans Type: Unknown("..value..")"
end

-- Dissect: Pos Trans Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_trans_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_trans_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_trans_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.pos_trans_type, range, value, display)

  return offset + length, value
end

-- Pos Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_type = {}

-- Size: Pos Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_type.size = 1

-- Display: Pos Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Pos Type: No Value"
  end

  if value == "T" then
    return "Pos Type: Transaction Quantity (T)"
  end
  if value == "S" then
    return "Pos Type: Start Of Day Qty (S)"
  end
  if value == "E" then
    return "Pos Type: Option Exercise Qty (E)"
  end
  if value == "B" then
    return "Pos Type: Blocked Qty (B)"
  end
  if value == "U" then
    return "Pos Type: Uncovered Qty (U)"
  end
  if value == "C" then
    return "Pos Type: Covered Qty (C)"
  end

  return "Pos Type: Unknown("..value..")"
end

-- Dissect: Pos Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.pos_type, range, value, display)

  return offset + length, value
end

-- Poss Resend
b3_b3derivatives_binaryentrypoint_sbe_v8_2.poss_resend = {}

-- Size: Poss Resend
b3_b3derivatives_binaryentrypoint_sbe_v8_2.poss_resend.size = 1

-- Display: Poss Resend
b3_b3derivatives_binaryentrypoint_sbe_v8_2.poss_resend.display = function(value)
  return "Poss Resend: "..value
end

-- Dissect: Poss Resend
b3_b3derivatives_binaryentrypoint_sbe_v8_2.poss_resend.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.poss_resend.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.poss_resend.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.poss_resend, range, value, display)

  return offset + length, value
end

-- Prefix
b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefix = {}

-- Size: Prefix
b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefix.size = 2

-- Display: Prefix
b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefix.display = function(value)
  return "Prefix: "..value
end

-- Dissect: Prefix
b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefix.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefix.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefix.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.prefix, range, value, display)

  return offset + length, value
end

-- Price
b3_b3derivatives_binaryentrypoint_sbe_v8_2.price = {}

-- Size: Price
b3_b3derivatives_binaryentrypoint_sbe_v8_2.price.size = 8

-- Display: Price
b3_b3derivatives_binaryentrypoint_sbe_v8_2.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
b3_b3derivatives_binaryentrypoint_sbe_v8_2.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
b3_b3derivatives_binaryentrypoint_sbe_v8_2.price.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price.translate(raw)
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.price, range, value, display)

  return offset + length, value
end

-- Price 8
b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8 = {}

-- Size: Price 8
b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8.size = 8

-- Display: Price 8
b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8.display = function(value)
  return "Price 8: "..value
end

-- Translate: Price 8
b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price 8
b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8.translate(raw)
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.price_8, range, value, display)

  return offset + length, value
end

-- Price 8 Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8_optional = {}

-- Size: Price 8 Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8_optional.size = 8

-- Display: Price 8 Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Price 8 Optional: No Value"
  end

  return "Price 8 Optional: "..value
end

-- Translate: Price 8 Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Price 8 Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8_optional.translate(raw)
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.price_8_optional, range, value, display)

  return offset + length, value
end

-- Price Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional = {}

-- Size: Price Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.size = 8

-- Display: Price Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Price Optional: No Value"
  end

  return "Price Optional: "..value
end

-- Translate: Price Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Price Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.translate(raw)
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.price_optional, range, value, display)

  return offset + length, value
end

-- Protection Price
b3_b3derivatives_binaryentrypoint_sbe_v8_2.protection_price = {}

-- Size: Protection Price
b3_b3derivatives_binaryentrypoint_sbe_v8_2.protection_price.size = 8

-- Display: Protection Price
b3_b3derivatives_binaryentrypoint_sbe_v8_2.protection_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Protection Price: No Value"
  end

  return "Protection Price: "..value
end

-- Translate: Protection Price
b3_b3derivatives_binaryentrypoint_sbe_v8_2.protection_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Protection Price
b3_b3derivatives_binaryentrypoint_sbe_v8_2.protection_price.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.protection_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_b3derivatives_binaryentrypoint_sbe_v8_2.protection_price.translate(raw)
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.protection_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.protection_price, range, value, display)

  return offset + length, value
end

-- Quantity
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quantity = {}

-- Size: Quantity
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quantity.size = 8

-- Display: Quantity
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quantity.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quote Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id = {}

-- Size: Quote Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id.size = 8

-- Display: Quote Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id.display = function(value)
  return "Quote Id: "..value
end

-- Dissect: Quote Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Quote Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id_optional = {}

-- Size: Quote Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id_optional.size = 8

-- Display: Quote Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Quote Id Optional: No Value"
  end

  return "Quote Id Optional: "..value
end

-- Dissect: Quote Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_id_optional, range, value, display)

  return offset + length, value
end

-- Quote Reject Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_reject_reason = {}

-- Size: Quote Reject Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_reject_reason.size = 4

-- Display: Quote Reject Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_reject_reason.display = function(value)
  if value == 0 then
    return "Quote Reject Reason: No Value"
  end
  if value == 009999 then
    return "Quote Reject Reason: Technical Error: Function not performed (009999)"
  end
  if value == 008006 then
    return "Quote Reject Reason: Exercise price not allowed (008006)"
  end
  if value == 008007 then
    return "Quote Reject Reason: No positions blocked (008007)"
  end
  if value == 008008 then
    return "Quote Reject Reason: Quantity doesn't match with the original request [Quantity on original request: <quantity on original request>] (008008)"
  end
  if value == 008011 then
    return "Quote Reject Reason: Exercise must be on maturity date. (008011)"
  end
  if value == 008014 then
    return "Quote Reject Reason: Function not available this time (008014)"
  end
  if value == 008015 then
    return "Quote Reject Reason: Blocking quantity more than 999999999 (008015)"
  end
  if value == 008020 then
    return "Quote Reject Reason: Trade does not belong to the specified firm ‘Firm Id: <XXX>’ (008020)"
  end
  if value == 008021 then
    return "Quote Reject Reason: Blocking qty more than available quantity (008021)"
  end
  if value == 008022 then
    return "Quote Reject Reason: There aren't positions available to exercise (008022)"
  end
  if value == 008023 then
    return "Quote Reject Reason: Total qty must be the sum of all AllocQty (008023)"
  end
  if value == 008024 then
    return "Quote Reject Reason: Trade already cancelled or does not exist ‘Trade Id: <XXX>’ (008024)"
  end
  if value == 008027 then
    return "Quote Reject Reason: Available quantity to block is zero (008027)"
  end
  if value == 008028 then
    return "Quote Reject Reason: Invalid Operation for contract type. (008028)"
  end
  if value == 008036 then
    return "Quote Reject Reason: Function closed or suspended. (008036)"
  end
  if value == 008039 then
    return "Quote Reject Reason: Exercise price outside required moneyness. (008039)"
  end
  if value == 008040 then
    return "Quote Reject Reason: Invalid exercise request id to cancel (008040)"
  end
  if value == 008059 then
    return "Quote Reject Reason: Invalid blocking Id to unblock (008059)"
  end
  if value == 008062 then
    return "Quote Reject Reason: Invalid quantity to unblock (008062)"
  end
  if value == 008063 then
    return "Quote Reject Reason: On Behalf Operation not allowed during CCR recovery (008063)"
  end
  if value == 008065 then
    return "Quote Reject Reason: Problem parsing incoming message (008065)"
  end
  if value == 008066 then
    return "Quote Reject Reason: Exercise quantity should be greater than zero (008066)"
  end
  if value == 008069 then
    return "Quote Reject Reason: Contrary Exercise already registered for this position (008069)"
  end
  if value == 008070 then
    return "Quote Reject Reason: In-the-money contract allows Contrary Exercise to not exercise automatically only (008070)"
  end
  if value == 008071 then
    return "Quote Reject Reason: At/Out-the-money contract allows Contrary Exercise to exercise automatically only (008071)"
  end
  if value == 008072 then
    return "Quote Reject Reason: DMA is not allowed to request Contrary Exercise (008072)"
  end
  if value == 008073 then
    return "Quote Reject Reason: Contrary Exercises can only be requested by default link or position owner with direct access on absence of default link (008073)"
  end
  if value == 008074 then
    return "Quote Reject Reason: Contrary Exercise invalid operation. (008074)"
  end
  if value == 008075 then
    return "Quote Reject Reason: Threshold must not be informed (008075)"
  end

  return "Quote Reject Reason: Unknown("..value..")"
end

-- Dissect: Quote Reject Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_reject_reason, range, value, display)

  return offset + length, value
end

-- Quote Req Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id = {}

-- Size: Quote Req Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id.size = 8

-- Display: Quote Req Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id.display = function(value)
  return "Quote Req Id: "..value
end

-- Dissect: Quote Req Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_req_id, range, value, display)

  return offset + length, value
end

-- Quote Req Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id_optional = {}

-- Size: Quote Req Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id_optional.size = 8

-- Display: Quote Req Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Quote Req Id Optional: No Value"
  end

  return "Quote Req Id Optional: "..value
end

-- Dissect: Quote Req Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_req_id_optional, range, value, display)

  return offset + length, value
end

-- Quote Request Reject Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_reject_reason = {}

-- Size: Quote Request Reject Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_reject_reason.size = 4

-- Display: Quote Request Reject Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_reject_reason.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Quote Request Reject Reason: No Value"
  end

  return "Quote Request Reject Reason: "..value
end

-- Dissect: Quote Request Reject Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_request_reject_reason, range, value, display)

  return offset + length, value
end

-- Quote Status
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status = {}

-- Size: Quote Status
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status.size = 1

-- Display: Quote Status
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status.labels = {
  [7] = "Quote Status: Expired (7)",
  [0] = "Quote Status: Accepted (0)",
  [5] = "Quote Status: Rejected (5)",
  [9] = "Quote Status: Quote Not Found (9)",
  [10] = "Quote Status: Pending (10)",
  [11] = "Quote Status: Pass (11)",
  [17] = "Quote Status: Canceled (17)",
}

b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status.display = function(value)
  return b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status.labels[value] or "Quote Status: Unknown("..value..")"
end

-- Dissect: Quote Status
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_status, range, value, display)

  return offset + length, value
end

-- Quote Status Response To
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status_response_to = {}

-- Size: Quote Status Response To
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status_response_to.size = 1

-- Display: Quote Status Response To
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status_response_to.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Quote Status Response To: No Value"
  end

  if value == "0" then
    return "Quote Status Response To: Quote (0)"
  end
  if value == "1" then
    return "Quote Status Response To: Quote Request (1)"
  end
  if value == "2" then
    return "Quote Status Response To: Quote Cancel (2)"
  end
  if value == "3" then
    return "Quote Status Response To: Quote Request Reject (3)"
  end
  if value == 0 then
    return "Quote Status Response To: No Value"
  end

  return "Quote Status Response To: Unknown("..value..")"
end

-- Dissect: Quote Status Response To
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status_response_to.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status_response_to.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status_response_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_status_response_to, range, value, display)

  return offset + length, value
end

-- Received Time
b3_b3derivatives_binaryentrypoint_sbe_v8_2.received_time = {}

-- Size: Received Time
b3_b3derivatives_binaryentrypoint_sbe_v8_2.received_time.size = 8

-- Dissect: Received Time
b3_b3derivatives_binaryentrypoint_sbe_v8_2.received_time.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.received_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.received_time
  if b3_b3derivatives_binaryentrypoint_sbe_v8_2.absolute_time_base == 1 then field = omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.received_time_utc end

  if value == UInt64(0x00000000, 0x00000000) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Received Time: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Ref Msg Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ref_msg_type = {}

-- Size: Ref Msg Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ref_msg_type.size = 1

-- Display: Ref Msg Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ref_msg_type.labels = {
  [0] = "Ref Msg Type: Negotiate (0)",
  [1] = "Ref Msg Type: Negotiate Response (1)",
  [2] = "Ref Msg Type: Negotiate Reject (2)",
  [3] = "Ref Msg Type: Establish (3)",
  [4] = "Ref Msg Type: Establish Ack (4)",
  [5] = "Ref Msg Type: Establish Reject (5)",
  [6] = "Ref Msg Type: Terminate (6)",
  [9] = "Ref Msg Type: Not Applied (9)",
  [10] = "Ref Msg Type: Retransmit Request (10)",
  [11] = "Ref Msg Type: Retransmission (11)",
  [12] = "Ref Msg Type: Retransmit Reject (12)",
  [13] = "Ref Msg Type: Sequence (13)",
  [14] = "Ref Msg Type: Business Message Reject (14)",
  [15] = "Ref Msg Type: Simple New Order (15)",
  [16] = "Ref Msg Type: Simple Modify Order (16)",
  [17] = "Ref Msg Type: New Order Single (17)",
  [18] = "Ref Msg Type: Order Cancel Replace Request (18)",
  [19] = "Ref Msg Type: Order Cancel Request (19)",
  [20] = "Ref Msg Type: New Order Cross (20)",
  [21] = "Ref Msg Type: Execution Report New (21)",
  [22] = "Ref Msg Type: Execution Report Modify (22)",
  [23] = "Ref Msg Type: Execution Report Cancel (23)",
  [24] = "Ref Msg Type: Execution Report Trade (24)",
  [25] = "Ref Msg Type: Execution Report Reject (25)",
  [26] = "Ref Msg Type: Execution Report Forward (26)",
  [27] = "Ref Msg Type: Security Definition Request (27)",
  [28] = "Ref Msg Type: Security Definition Response (28)",
  [29] = "Ref Msg Type: Order Mass Action Request (29)",
  [30] = "Ref Msg Type: Order Mass Action Report (30)",
  [31] = "Ref Msg Type: Quote Request (31)",
  [32] = "Ref Msg Type: Quote Status Report (32)",
  [33] = "Ref Msg Type: Quote (33)",
  [34] = "Ref Msg Type: Quote Cancel (34)",
  [35] = "Ref Msg Type: Quote Request Reject (35)",
  [36] = "Ref Msg Type: Position Maintenance Cancel Request (36)",
  [37] = "Ref Msg Type: Position Maintenance Request (37)",
  [38] = "Ref Msg Type: Position Maintenance Report (38)",
  [39] = "Ref Msg Type: Allocation Instruction (39)",
  [40] = "Ref Msg Type: Allocation Report (40)",
}

b3_b3derivatives_binaryentrypoint_sbe_v8_2.ref_msg_type.display = function(value)
  return b3_b3derivatives_binaryentrypoint_sbe_v8_2.ref_msg_type.labels[value] or "Ref Msg Type: Unknown("..value..")"
end

-- Dissect: Ref Msg Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ref_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ref_msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ref_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.ref_msg_type, range, value, display)

  return offset + length, value
end

-- Ref Seq Num
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ref_seq_num = {}

-- Size: Ref Seq Num
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ref_seq_num.size = 4

-- Display: Ref Seq Num
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ref_seq_num.display = function(value)
  return "Ref Seq Num: "..value
end

-- Dissect: Ref Seq Num
b3_b3derivatives_binaryentrypoint_sbe_v8_2.ref_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ref_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ref_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.ref_seq_num, range, value, display)

  return offset + length, value
end

-- Request Timestamp
b3_b3derivatives_binaryentrypoint_sbe_v8_2.request_timestamp = {}

-- Size: Request Timestamp
b3_b3derivatives_binaryentrypoint_sbe_v8_2.request_timestamp.size = 8

-- Dissect: Request Timestamp
b3_b3derivatives_binaryentrypoint_sbe_v8_2.request_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.request_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.request_timestamp
  if b3_b3derivatives_binaryentrypoint_sbe_v8_2.absolute_time_base == 1 then field = omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.request_timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Retransmit Reject Code
b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_reject_code = {}

-- Size: Retransmit Reject Code
b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_reject_code.size = 1

-- Display: Retransmit Reject Code
b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_reject_code.labels = {
  [0] = "Retransmit Reject Code: Out Of Range (0)",
  [1] = "Retransmit Reject Code: Invalid Session (1)",
  [2] = "Retransmit Reject Code: Request Limit Exceeded (2)",
  [3] = "Retransmit Reject Code: Retransmit In Progress (3)",
  [4] = "Retransmit Reject Code: Invalid Timestamp (4)",
  [5] = "Retransmit Reject Code: Invalid Fromseqno (5)",
  [9] = "Retransmit Reject Code: Invalid Count (9)",
  [10] = "Retransmit Reject Code: Throttle Reject (10)",
  [11] = "Retransmit Reject Code: System Busy (11)",
}

b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_reject_code.display = function(value)
  return b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_reject_code.labels[value] or "Retransmit Reject Code: Unknown("..value..")"
end

-- Dissect: Retransmit Reject Code
b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_reject_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.retransmit_reject_code, range, value, display)

  return offset + length, value
end

-- Routing Instruction
b3_b3derivatives_binaryentrypoint_sbe_v8_2.routing_instruction = {}

-- Size: Routing Instruction
b3_b3derivatives_binaryentrypoint_sbe_v8_2.routing_instruction.size = 1

-- Display: Routing Instruction
b3_b3derivatives_binaryentrypoint_sbe_v8_2.routing_instruction.display = function(value)
  if value == 1 then
    return "Routing Instruction: Retail Liquidity Taker (1)"
  end
  if value == 2 then
    return "Routing Instruction: Waived Priority (2)"
  end
  if value == 3 then
    return "Routing Instruction: Broker Only (3)"
  end
  if value == 4 then
    return "Routing Instruction: Broker Only Removal (4)"
  end
  if value == 0 then
    return "Routing Instruction: No Value"
  end

  return "Routing Instruction: Unknown("..value..")"
end

-- Dissect: Routing Instruction
b3_b3derivatives_binaryentrypoint_sbe_v8_2.routing_instruction.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.routing_instruction.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.routing_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.routing_instruction, range, value, display)

  return offset + length, value
end

-- Schema Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.schema_id = {}

-- Size: Schema Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.schema_id.size = 2

-- Display: Schema Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.schema_id.display = function(value)
  if value == 1 then
    return "Schema Id: 1"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Secondary Exec Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_exec_id = {}

-- Size: Secondary Exec Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_exec_id.size = 8

-- Display: Secondary Exec Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_exec_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Secondary Exec Id: No Value"
  end

  return "Secondary Exec Id: "..value
end

-- Dissect: Secondary Exec Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.secondary_exec_id, range, value, display)

  return offset + length, value
end

-- Secondary Order Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id = {}

-- Size: Secondary Order Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id.size = 8

-- Display: Secondary Order Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Secondary Order Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id_optional = {}

-- Size: Secondary Order Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id_optional.size = 8

-- Display: Secondary Order Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Secondary Order Id Optional: No Value"
  end

  return "Secondary Order Id Optional: "..value
end

-- Dissect: Secondary Order Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.secondary_order_id_optional, range, value, display)

  return offset + length, value
end

-- Security Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id = {}

-- Size: Security Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size = 8

-- Display: Security Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id_optional = {}

-- Size: Security Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id_optional.size = 8

-- Display: Security Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Security Id Optional: No Value"
  end

  return "Security Id Optional: "..value
end

-- Dissect: Security Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.security_id_optional, range, value, display)

  return offset + length, value
end

-- Security Req Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_req_id = {}

-- Size: Security Req Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_req_id.size = 8

-- Display: Security Req Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_req_id.display = function(value)
  return "Security Req Id: "..value
end

-- Dissect: Security Req Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_req_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_req_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.security_req_id, range, value, display)

  return offset + length, value
end

-- Security Response Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_response_id = {}

-- Size: Security Response Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_response_id.size = 8

-- Display: Security Response Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_response_id.display = function(value)
  return "Security Response Id: "..value
end

-- Dissect: Security Response Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_response_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_response_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_response_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.security_response_id, range, value, display)

  return offset + length, value
end

-- Security Response Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_response_type = {}

-- Size: Security Response Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_response_type.size = 1

-- Display: Security Response Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_response_type.labels = {
  [1] = "Security Response Type: Accept Security Proposal As Is (1)",
  [5] = "Security Response Type: Reject Security Proposal (5)",
  [2] = "Security Response Type: Accept Security As Proposal With Revisions (2)",
}

b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_response_type.display = function(value)
  return b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_response_type.labels[value] or "Security Response Type: Unknown("..value..")"
end

-- Dissect: Security Response Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_response_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_response_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_response_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.security_response_type, range, value, display)

  return offset + length, value
end

-- Security Strategy Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_strategy_type = {}

-- Size: Security Strategy Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_strategy_type.size = 3

-- Display: Security Strategy Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_strategy_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Strategy Type: No Value"
  end

  return "Security Strategy Type: "..value
end

-- Dissect: Security Strategy Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_strategy_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_strategy_type.size
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

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_strategy_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.security_strategy_type, range, value, display)

  return offset + length, value
end

-- Security Trading Status
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_trading_status = {}

-- Size: Security Trading Status
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_trading_status.size = 1

-- Display: Security Trading Status
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_trading_status.display = function(value)
  if value == 2 then
    return "Security Trading Status: Trading Halt (2)"
  end
  if value == 4 then
    return "Security Trading Status: No Open (4)"
  end
  if value == 17 then
    return "Security Trading Status: Ready To Trade (17)"
  end
  if value == 18 then
    return "Security Trading Status: Forbidden (18)"
  end
  if value == 20 then
    return "Security Trading Status: Unknown Or Invalid (20)"
  end
  if value == 21 then
    return "Security Trading Status: Pre Open (21)"
  end
  if value == 101 then
    return "Security Trading Status: Final Closing Call (101)"
  end
  if value == 110 then
    return "Security Trading Status: Reserved (110)"
  end
  if value == 0 then
    return "Security Trading Status: No Value"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Self Trade Prevention Instruction
b3_b3derivatives_binaryentrypoint_sbe_v8_2.self_trade_prevention_instruction = {}

-- Size: Self Trade Prevention Instruction
b3_b3derivatives_binaryentrypoint_sbe_v8_2.self_trade_prevention_instruction.size = 1

-- Display: Self Trade Prevention Instruction
b3_b3derivatives_binaryentrypoint_sbe_v8_2.self_trade_prevention_instruction.labels = {
  [0] = "Self Trade Prevention Instruction: None (0)",
  [1] = "Self Trade Prevention Instruction: Cancel Aggressor Order (1)",
  [2] = "Self Trade Prevention Instruction: Cancel Resting Order (2)",
  [3] = "Self Trade Prevention Instruction: Cancel Both Orders (3)",
}

b3_b3derivatives_binaryentrypoint_sbe_v8_2.self_trade_prevention_instruction.display = function(value)
  return b3_b3derivatives_binaryentrypoint_sbe_v8_2.self_trade_prevention_instruction.labels[value] or "Self Trade Prevention Instruction: Unknown("..value..")"
end

-- Dissect: Self Trade Prevention Instruction
b3_b3derivatives_binaryentrypoint_sbe_v8_2.self_trade_prevention_instruction.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.self_trade_prevention_instruction.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.self_trade_prevention_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.self_trade_prevention_instruction, range, value, display)

  return offset + length, value
end

-- Sender Location
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location = {}

-- Size: Sender Location
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.size = 10

-- Display: Sender Location
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sender Location: No Value"
  end

  return "Sender Location: "..value
end

-- Dissect: Sender Location
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.size
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

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.sender_location, range, value, display)

  return offset + length, value
end

-- Sending Time
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sending_time = {}

-- Size: Sending Time
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sending_time.size = 8

-- Dissect: Sending Time
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.sending_time
  if b3_b3derivatives_binaryentrypoint_sbe_v8_2.absolute_time_base == 1 then field = omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.sending_time_utc end

  if value == UInt64(0x00000000, 0x00000000) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Sending Time: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Session Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id = {}

-- Size: Session Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.size = 4

-- Display: Session Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Ver Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_ver_id = {}

-- Size: Session Ver Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_ver_id.size = 8

-- Display: Session Ver Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_ver_id.display = function(value)
  return "Session Ver Id: "..value
end

-- Dissect: Session Ver Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_ver_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_ver_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_ver_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.session_ver_id, range, value, display)

  return offset + length, value
end

-- Settl Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type = {}

-- Size: Settl Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type.size = 1

-- Display: Settl Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Settl Type: No Value"
  end

  if value == "0" then
    return "Settl Type: Buyers Discretion (0)"
  end
  if value == "8" then
    return "Settl Type: Sellers Discretion (8)"
  end
  if value == "X" then
    return "Settl Type: Mutual (X)"
  end

  return "Settl Type: Unknown("..value..")"
end

-- Dissect: Settl Type
b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.settl_type, range, value, display)

  return offset + length, value
end

-- Settl Type Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type_optional = {}

-- Size: Settl Type Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type_optional.size = 1

-- Display: Settl Type Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Settl Type Optional: No Value"
  end

  if value == "0" then
    return "Settl Type Optional: Buyers Discretion (0)"
  end
  if value == "8" then
    return "Settl Type Optional: Sellers Discretion (8)"
  end
  if value == "X" then
    return "Settl Type Optional: Mutual (X)"
  end
  if value == 0 then
    return "Settl Type Optional: No Value"
  end

  return "Settl Type Optional: Unknown("..value..")"
end

-- Dissect: Settl Type Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type_optional.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.settl_type_optional, range, value, display)

  return offset + length, value
end

-- Short Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.short_qty = {}

-- Size: Short Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.short_qty.size = 8

-- Display: Short Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.short_qty.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Short Qty: No Value"
  end

  return "Short Qty: "..value
end

-- Dissect: Short Qty
b3_b3derivatives_binaryentrypoint_sbe_v8_2.short_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.short_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.short_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.short_qty, range, value, display)

  return offset + length, value
end

-- Side
b3_b3derivatives_binaryentrypoint_sbe_v8_2.side = {}

-- Size: Side
b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.size = 1

-- Display: Side
b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Side: No Value"
  end

  if value == "1" then
    return "Side: Buy (1)"
  end
  if value == "2" then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.side, range, value, display)

  return offset + length, value
end

-- Side Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.side_optional = {}

-- Size: Side Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.side_optional.size = 1

-- Display: Side Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.side_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Side Optional: No Value"
  end

  if value == "1" then
    return "Side Optional: Buy (1)"
  end
  if value == "2" then
    return "Side Optional: Sell (2)"
  end
  if value == 0 then
    return "Side Optional: No Value"
  end

  return "Side Optional: Unknown("..value..")"
end

-- Dissect: Side Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.side_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side_optional.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.side_optional, range, value, display)

  return offset + length, value
end

-- Simple OrdType
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_ordtype = {}

-- Size: Simple OrdType
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_ordtype.size = 1

-- Display: Simple OrdType
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_ordtype.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Simple OrdType: No Value"
  end

  if value == "1" then
    return "Simple OrdType: Market (1)"
  end
  if value == "2" then
    return "Simple OrdType: Limit (2)"
  end

  return "Simple OrdType: Unknown("..value..")"
end

-- Dissect: Simple OrdType
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_ordtype.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_ordtype.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_ordtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.simple_ordtype, range, value, display)

  return offset + length, value
end

-- Single Cancel Restatement Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.single_cancel_restatement_reason = {}

-- Size: Single Cancel Restatement Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.single_cancel_restatement_reason.size = 1

-- Display: Single Cancel Restatement Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.single_cancel_restatement_reason.display = function(value)
  if value == 203 then
    return "Single Cancel Restatement Reason: Cancel Order Due To Operational Error (203)"
  end
  if value == 0 then
    return "Single Cancel Restatement Reason: No Value"
  end

  return "Single Cancel Restatement Reason: Unknown("..value..")"
end

-- Dissect: Single Cancel Restatement Reason
b3_b3derivatives_binaryentrypoint_sbe_v8_2.single_cancel_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.single_cancel_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.single_cancel_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.single_cancel_restatement_reason, range, value, display)

  return offset + length, value
end

-- Stop Px
b3_b3derivatives_binaryentrypoint_sbe_v8_2.stop_px = {}

-- Size: Stop Px
b3_b3derivatives_binaryentrypoint_sbe_v8_2.stop_px.size = 8

-- Display: Stop Px
b3_b3derivatives_binaryentrypoint_sbe_v8_2.stop_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Stop Px: No Value"
  end

  return "Stop Px: "..value
end

-- Translate: Stop Px
b3_b3derivatives_binaryentrypoint_sbe_v8_2.stop_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Stop Px
b3_b3derivatives_binaryentrypoint_sbe_v8_2.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.stop_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_b3derivatives_binaryentrypoint_sbe_v8_2.stop_px.translate(raw)
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.stop_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Strategy Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.strategy_id = {}

-- Size: Strategy Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.strategy_id.size = 4

-- Display: Strategy Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.strategy_id.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Strategy Id: No Value"
  end

  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.strategy_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Symbol
b3_b3derivatives_binaryentrypoint_sbe_v8_2.symbol = {}

-- Size: Symbol
b3_b3derivatives_binaryentrypoint_sbe_v8_2.symbol.size = 20

-- Display: Symbol
b3_b3derivatives_binaryentrypoint_sbe_v8_2.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
b3_b3derivatives_binaryentrypoint_sbe_v8_2.symbol.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.symbol.size
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

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.symbol, range, value, display)

  return offset + length, value
end

-- Template Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.template_id = {}

-- Size: Template Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.template_id.size = 2

-- Display: Template Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.template_id.labels = {
  [1] = "Template Id: Negotiate Message (1)",
  [2] = "Template Id: Negotiate Response Message (2)",
  [3] = "Template Id: Negotiate Reject Message (3)",
  [4] = "Template Id: Establish Message (4)",
  [5] = "Template Id: Establish Ack Message (5)",
  [6] = "Template Id: Establish Reject Message (6)",
  [7] = "Template Id: Terminate Message (7)",
  [8] = "Template Id: Not Applied Message (8)",
  [9] = "Template Id: Sequence Message (9)",
  [12] = "Template Id: Retransmit Request Message (12)",
  [13] = "Template Id: Retransmission Message (13)",
  [14] = "Template Id: Retransmit Reject Message (14)",
  [100] = "Template Id: Simple New Order Message (100)",
  [101] = "Template Id: Simple Modify Order Message (101)",
  [102] = "Template Id: New Order Single Message (102)",
  [104] = "Template Id: Order Cancel Replace Request Message (104)",
  [105] = "Template Id: Order Cancel Request Message (105)",
  [106] = "Template Id: New Order Cross Message (106)",
  [200] = "Template Id: Execution Report New Message (200)",
  [201] = "Template Id: Execution Report Modify Message (201)",
  [202] = "Template Id: Execution Report Cancel Message (202)",
  [203] = "Template Id: Execution Report Trade Message (203)",
  [204] = "Template Id: Execution Report Reject Message (204)",
  [205] = "Template Id: Execution Report Forward Message (205)",
  [206] = "Template Id: Business Message Reject Message (206)",
  [300] = "Template Id: Security Definition Request Message (300)",
  [301] = "Template Id: Security Definition Response Message (301)",
  [401] = "Template Id: Quote Request Message (401)",
  [402] = "Template Id: Quote Status Report Message (402)",
  [403] = "Template Id: Quote Message (403)",
  [404] = "Template Id: Quote Cancel Message (404)",
  [405] = "Template Id: Quote Request Reject Message (405)",
  [501] = "Template Id: Position Maintenance Cancel Request Message (501)",
  [502] = "Template Id: Position Maintenance Request Message (502)",
  [503] = "Template Id: Position Maintenance Report Message (503)",
  [601] = "Template Id: Allocation Instruction Message (601)",
  [602] = "Template Id: Allocation Report Message (602)",
  [701] = "Template Id: Order Mass Action Request Message (701)",
  [702] = "Template Id: Order Mass Action Report Message (702)",
}

b3_b3derivatives_binaryentrypoint_sbe_v8_2.template_id.display = function(value)
  return b3_b3derivatives_binaryentrypoint_sbe_v8_2.template_id.labels[value] or "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.template_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.template_id, range, value, display)

  return offset + length, value
end

-- Termination Code
b3_b3derivatives_binaryentrypoint_sbe_v8_2.termination_code = {}

-- Size: Termination Code
b3_b3derivatives_binaryentrypoint_sbe_v8_2.termination_code.size = 1

-- Display: Termination Code
b3_b3derivatives_binaryentrypoint_sbe_v8_2.termination_code.labels = {
  [0] = "Termination Code: Unspecified (0)",
  [1] = "Termination Code: Finished (1)",
  [2] = "Termination Code: Unnegotiated (2)",
  [3] = "Termination Code: Not Established (3)",
  [4] = "Termination Code: Session Blocked (4)",
  [5] = "Termination Code: Negotiation In Progress (5)",
  [6] = "Termination Code: Establish In Progress (6)",
  [10] = "Termination Code: Keepalive Interval Lapsed (10)",
  [11] = "Termination Code: Invalid Sessionid (11)",
  [12] = "Termination Code: Invalid Sessionverid (12)",
  [13] = "Termination Code: Invalid Timestamp (13)",
  [14] = "Termination Code: Invalid Nextseqno (14)",
  [15] = "Termination Code: Unrecognized Message (15)",
  [16] = "Termination Code: Invalid Sofh (16)",
  [17] = "Termination Code: Decoding Error (17)",
  [20] = "Termination Code: Terminate Not Allowed (20)",
  [21] = "Termination Code: Terminate In Progress (21)",
  [23] = "Termination Code: Protocol Version Not Supported (23)",
  [30] = "Termination Code: Backup Takeover In Progress (30)",
}

b3_b3derivatives_binaryentrypoint_sbe_v8_2.termination_code.display = function(value)
  return b3_b3derivatives_binaryentrypoint_sbe_v8_2.termination_code.labels[value] or "Termination Code: Unknown("..value..")"
end

-- Dissect: Termination Code
b3_b3derivatives_binaryentrypoint_sbe_v8_2.termination_code.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.termination_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.termination_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.termination_code, range, value, display)

  return offset + length, value
end

-- Text Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.text_data = {}

-- Display: Text Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.text_data.display = function(value)
  return "Text Data: "..value
end

-- Dissect runtime sized field: Text Data
b3_b3derivatives_binaryentrypoint_sbe_v8_2.text_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.text_data.display(value, packet, parent, size)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.text_data, range, value, display)

  return offset + size, value
end

-- Text Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.text_length = {}

-- Size: Text Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.text_length.size = 1

-- Display: Text Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.text_length.display = function(value)
  return "Text Length: "..value
end

-- Dissect: Text Length
b3_b3derivatives_binaryentrypoint_sbe_v8_2.text_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.text_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.text_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.text_length, range, value, display)

  return offset + length, value
end

-- Threshold Amount
b3_b3derivatives_binaryentrypoint_sbe_v8_2.threshold_amount = {}

-- Size: Threshold Amount
b3_b3derivatives_binaryentrypoint_sbe_v8_2.threshold_amount.size = 8

-- Display: Threshold Amount
b3_b3derivatives_binaryentrypoint_sbe_v8_2.threshold_amount.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Threshold Amount: No Value"
  end

  return "Threshold Amount: "..value
end

-- Translate: Threshold Amount
b3_b3derivatives_binaryentrypoint_sbe_v8_2.threshold_amount.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Threshold Amount
b3_b3derivatives_binaryentrypoint_sbe_v8_2.threshold_amount.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.threshold_amount.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_b3derivatives_binaryentrypoint_sbe_v8_2.threshold_amount.translate(raw)
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.threshold_amount.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.threshold_amount, range, value, display)

  return offset + length, value
end

-- Time In Force
b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force = {}

-- Size: Time In Force
b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force.size = 1

-- Display: Time In Force
b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Time In Force: No Value"
  end

  if value == "0" then
    return "Time In Force: Day (0)"
  end
  if value == "1" then
    return "Time In Force: Good Till Cancel (1)"
  end
  if value == "3" then
    return "Time In Force: Immediate Or Cancel (3)"
  end
  if value == "4" then
    return "Time In Force: Fill Or Kill (4)"
  end
  if value == "6" then
    return "Time In Force: Good Till Date (6)"
  end
  if value == "7" then
    return "Time In Force: At The Close (7)"
  end
  if value == "A" then
    return "Time In Force: Good For Auction (A)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Time In Force Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force_optional = {}

-- Size: Time In Force Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force_optional.size = 1

-- Display: Time In Force Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Time In Force Optional: No Value"
  end

  if value == "0" then
    return "Time In Force Optional: Day (0)"
  end
  if value == "1" then
    return "Time In Force Optional: Good Till Cancel (1)"
  end
  if value == "3" then
    return "Time In Force Optional: Immediate Or Cancel (3)"
  end
  if value == "4" then
    return "Time In Force Optional: Fill Or Kill (4)"
  end
  if value == "6" then
    return "Time In Force Optional: Good Till Date (6)"
  end
  if value == "7" then
    return "Time In Force Optional: At The Close (7)"
  end
  if value == "A" then
    return "Time In Force Optional: Good For Auction (A)"
  end
  if value == 0 then
    return "Time In Force Optional: No Value"
  end

  return "Time In Force Optional: Unknown("..value..")"
end

-- Dissect: Time In Force Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force_optional.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.time_in_force_optional, range, value, display)

  return offset + length, value
end

-- Time In Force Simple
b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force_simple = {}

-- Size: Time In Force Simple
b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force_simple.size = 1

-- Display: Time In Force Simple
b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force_simple.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Time In Force Simple: No Value"
  end

  if value == "0" then
    return "Time In Force Simple: Day (0)"
  end
  if value == "3" then
    return "Time In Force Simple: Immediate Or Cancel (3)"
  end
  if value == "4" then
    return "Time In Force Simple: Fill Or Kill (4)"
  end

  return "Time In Force Simple: Unknown("..value..")"
end

-- Dissect: Time In Force Simple
b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force_simple.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force_simple.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force_simple.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.time_in_force_simple, range, value, display)

  return offset + length, value
end

-- Timestamp
b3_b3derivatives_binaryentrypoint_sbe_v8_2.timestamp = {}

-- Size: Timestamp
b3_b3derivatives_binaryentrypoint_sbe_v8_2.timestamp.size = 8

-- Dissect: Timestamp
b3_b3derivatives_binaryentrypoint_sbe_v8_2.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.timestamp
  if b3_b3derivatives_binaryentrypoint_sbe_v8_2.absolute_time_base == 1 then field = omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Tot No Related Sym
b3_b3derivatives_binaryentrypoint_sbe_v8_2.tot_no_related_sym = {}

-- Size: Tot No Related Sym
b3_b3derivatives_binaryentrypoint_sbe_v8_2.tot_no_related_sym.size = 1

-- Display: Tot No Related Sym
b3_b3derivatives_binaryentrypoint_sbe_v8_2.tot_no_related_sym.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Tot No Related Sym: No Value"
  end

  return "Tot No Related Sym: "..value
end

-- Dissect: Tot No Related Sym
b3_b3derivatives_binaryentrypoint_sbe_v8_2.tot_no_related_sym.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.tot_no_related_sym.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.tot_no_related_sym.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.tot_no_related_sym, range, value, display)

  return offset + length, value
end

-- Trade Date
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date = {}

-- Size: Trade Date
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date.size = 2

-- Display: Trade Date
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Date Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date_optional = {}

-- Size: Trade Date Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date_optional.size = 2

-- Display: Trade Date Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date_optional.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Trade Date Optional: No Value"
  end

  return "Trade Date Optional: "..value
end

-- Dissect: Trade Date Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.trade_date_optional, range, value, display)

  return offset + length, value
end

-- Trade Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id = {}

-- Size: Trade Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id.size = 4

-- Display: Trade Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id_optional = {}

-- Size: Trade Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id_optional.size = 4

-- Display: Trade Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id_optional.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Trade Id Optional: No Value"
  end

  return "Trade Id Optional: "..value
end

-- Dissect: Trade Id Optional
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.trade_id_optional, range, value, display)

  return offset + length, value
end

-- Trading Session Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trading_session_id = {}

-- Size: Trading Session Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trading_session_id.size = 1

-- Display: Trading Session Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trading_session_id.display = function(value)
  if value == 1 then
    return "Trading Session Id: Regular Day Session (1)"
  end
  if value == 6 then
    return "Trading Session Id: Non Regular Session (6)"
  end
  if value == 0 then
    return "Trading Session Id: No Value"
  end

  return "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Trading Session Sub Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trading_session_sub_id = {}

-- Size: Trading Session Sub Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trading_session_sub_id.size = 1

-- Display: Trading Session Sub Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trading_session_sub_id.display = function(value)
  if value == 2 then
    return "Trading Session Sub Id: Pause (2)"
  end
  if value == 4 then
    return "Trading Session Sub Id: Close (4)"
  end
  if value == 17 then
    return "Trading Session Sub Id: Open (17)"
  end
  if value == 18 then
    return "Trading Session Sub Id: Pre Close (18)"
  end
  if value == 21 then
    return "Trading Session Sub Id: Pre Open (21)"
  end
  if value == 101 then
    return "Trading Session Sub Id: Final Closing Call (101)"
  end
  if value == 0 then
    return "Trading Session Sub Id: No Value"
  end

  return "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.trading_session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trading_session_sub_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trading_session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Transact Time
b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time = {}

-- Size: Transact Time
b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.size = 8

-- Dissect: Transact Time
b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.transact_time
  if b3_b3derivatives_binaryentrypoint_sbe_v8_2.absolute_time_base == 1 then field = omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.transact_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Version
b3_b3derivatives_binaryentrypoint_sbe_v8_2.version = {}

-- Size: Version
b3_b3derivatives_binaryentrypoint_sbe_v8_2.version.size = 2

-- Display: Version
b3_b3derivatives_binaryentrypoint_sbe_v8_2.version.display = function(value)
  if value == 4 then
    return "Version: Version 8.2.1"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
b3_b3derivatives_binaryentrypoint_sbe_v8_2.version.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.version, range, value, display)

  return offset + length, value
end

-- Working Indicator
b3_b3derivatives_binaryentrypoint_sbe_v8_2.working_indicator = {}

-- Size: Working Indicator
b3_b3derivatives_binaryentrypoint_sbe_v8_2.working_indicator.size = 1

-- Display: Working Indicator
b3_b3derivatives_binaryentrypoint_sbe_v8_2.working_indicator.labels = {
  [0] = "Working Indicator: False Value (0)",
  [1] = "Working Indicator: True Value (1)",
}

b3_b3derivatives_binaryentrypoint_sbe_v8_2.working_indicator.display = function(value)
  return b3_b3derivatives_binaryentrypoint_sbe_v8_2.working_indicator.labels[value] or "Working Indicator: Unknown("..value..")"
end

-- Dissect: Working Indicator
b3_b3derivatives_binaryentrypoint_sbe_v8_2.working_indicator.dissect = function(buffer, offset, packet, parent)
  local length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.working_indicator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.working_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.working_indicator, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect B3 B3Derivatives BinaryEntryPoint Sbe 8.2
-----------------------------------------------------------------------

-- Text
b3_b3derivatives_binaryentrypoint_sbe_v8_2.text = {}

-- Calculate size of: Text
b3_b3derivatives_binaryentrypoint_sbe_v8_2.text.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.text_length.size

  local text_length = buffer(offset + 0, 1):uint()

  if text_length > 0 then
    -- Parse runtime size of: Text Data
    index = index + buffer(offset + index - 1, 1):uint()

  end

  return index
end

-- Display: Text
b3_b3derivatives_binaryentrypoint_sbe_v8_2.text.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Text
b3_b3derivatives_binaryentrypoint_sbe_v8_2.text.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text Length: uint8
  index, text_length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.text_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Text Data
  local text_data = nil

  local text_data_exists = text_length > 0

  if text_data_exists then

    -- Runtime Size Of: Text Data
    index, text_data = b3_b3derivatives_binaryentrypoint_sbe_v8_2.text_data.dissect(buffer, index, packet, parent, text_length)
  end

  -- Composite value
  local text = text_data

  return index, text
end

-- Dissect: Text
b3_b3derivatives_binaryentrypoint_sbe_v8_2.text.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.text, buffer(offset, 0))
    local index, value = b3_b3derivatives_binaryentrypoint_sbe_v8_2.text.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.text.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.text.fields(buffer, offset, packet, parent)
  end
end

-- Investor Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id = {}

-- Size: Investor Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefix.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_2_padding_2.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.document.size

-- Display: Investor Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Investor Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Prefix: uint16
  index, prefix = b3_b3derivatives_binaryentrypoint_sbe_v8_2.prefix.dissect(buffer, index, packet, parent)

  -- Offset 2 Padding 2: 2 Byte
  index, offset_2_padding_2 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_2_padding_2.dissect(buffer, index, packet, parent)

  -- Document: uint32
  index, document = b3_b3derivatives_binaryentrypoint_sbe_v8_2.document.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Investor Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.investor_id, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.fields(buffer, offset, packet, parent)
  end
end

-- Outbound Business Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header = {}

-- Size: Outbound Business Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.msg_seq_num.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.sending_time.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.poss_resend.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.padding.size

-- Display: Outbound Business Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outbound Business Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = b3_b3derivatives_binaryentrypoint_sbe_v8_2.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sending_time.dissect(buffer, index, packet, parent)

  -- Poss Resend: 1 Byte Unsigned Fixed Width Integer
  index, poss_resend = b3_b3derivatives_binaryentrypoint_sbe_v8_2.poss_resend.dissect(buffer, index, packet, parent)

  -- Padding: char
  index, padding = b3_b3derivatives_binaryentrypoint_sbe_v8_2.padding.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outbound Business Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.outbound_business_header, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Action Report Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_mass_action_report_message = {}

-- Calculate size of: Order Mass Action Report Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_mass_action_report_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_type.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_scope.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_report_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_response.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_reject_reason.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_cancel_restatement_reason.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.side_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_49_padding_1.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.asset.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.text.size(buffer, offset + index)

  return index
end

-- Display: Order Mass Action Report Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_mass_action_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Action Report Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_mass_action_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Mass Action Type: MassActionType
  index, mass_action_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_type.dissect(buffer, index, packet, parent)

  -- Mass Action Scope: MassActionScope
  index, mass_action_scope = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_scope.dissect(buffer, index, packet, parent)

  -- ClOrdId: ClOrdID
  index, clordid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.dissect(buffer, index, packet, parent)

  -- Mass Action Report Id: MassActionReportID
  index, mass_action_report_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_report_id.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.dissect(buffer, index, packet, parent)

  -- Mass Action Response: MassActionResponse
  index, mass_action_response = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_response.dissect(buffer, index, packet, parent)

  -- Mass Action Reject Reason: MassActionRejectReason
  index, mass_action_reject_reason = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_reject_reason.dissect(buffer, index, packet, parent)

  -- Mass Cancel Restatement Reason: ExecRestatementReasonValidForMassCancel
  index, mass_cancel_restatement_reason = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_cancel_restatement_reason.dissect(buffer, index, packet, parent)

  -- OrdTagId: OrdTagID
  index, ordtagid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.dissect(buffer, index, packet, parent)

  -- Side Optional: Side
  index, side_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side_optional.dissect(buffer, index, packet, parent)

  -- Offset 49 Padding 1: 1 Byte
  index, offset_49_padding_1 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_49_padding_1.dissect(buffer, index, packet, parent)

  -- Asset: AssetOptional
  index, asset = b3_b3derivatives_binaryentrypoint_sbe_v8_2.asset.dissect(buffer, index, packet, parent)

  -- Security Id Optional: SecurityIDOptional
  index, security_id_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id_optional.dissect(buffer, index, packet, parent)

  -- Investor Id: Struct of 3 fields
  index, investor_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = b3_b3derivatives_binaryentrypoint_sbe_v8_2.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Action Report Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_mass_action_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.order_mass_action_report_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_mass_action_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_mass_action_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_mass_action_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Inbound Business Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header = {}

-- Size: Inbound Business Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.msg_seq_num.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.sending_time.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.padding.size

-- Display: Inbound Business Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inbound Business Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = b3_b3derivatives_binaryentrypoint_sbe_v8_2.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sending_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_id.dissect(buffer, index, packet, parent)

  -- Padding: char
  index, padding = b3_b3derivatives_binaryentrypoint_sbe_v8_2.padding.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inbound Business Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.inbound_business_header, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Action Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_mass_action_request_message = {}

-- Size: Order Mass Action Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_mass_action_request_message.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_type.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_scope.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_cancel_restatement_reason.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.side_optional.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_31_padding_1.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.asset.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id_optional.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.size

-- Display: Order Mass Action Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_mass_action_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Action Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_mass_action_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.dissect(buffer, index, packet, parent)

  -- Mass Action Type: MassActionType
  index, mass_action_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_type.dissect(buffer, index, packet, parent)

  -- Mass Action Scope: MassActionScope
  index, mass_action_scope = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_scope.dissect(buffer, index, packet, parent)

  -- ClOrdId: ClOrdID
  index, clordid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.dissect(buffer, index, packet, parent)

  -- Mass Cancel Restatement Reason: ExecRestatementReasonValidForMassCancel
  index, mass_cancel_restatement_reason = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_cancel_restatement_reason.dissect(buffer, index, packet, parent)

  -- OrdTagId: OrdTagID
  index, ordtagid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.dissect(buffer, index, packet, parent)

  -- Side Optional: Side
  index, side_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side_optional.dissect(buffer, index, packet, parent)

  -- Offset 31 Padding 1: 1 Byte
  index, offset_31_padding_1 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_31_padding_1.dissect(buffer, index, packet, parent)

  -- Asset: AssetOptional
  index, asset = b3_b3derivatives_binaryentrypoint_sbe_v8_2.asset.dissect(buffer, index, packet, parent)

  -- Security Id Optional: SecurityIDOptional
  index, security_id_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id_optional.dissect(buffer, index, packet, parent)

  -- Investor Id: Struct of 3 fields
  index, investor_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Action Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_mass_action_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.order_mass_action_request_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_mass_action_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_mass_action_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_mass_action_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Allocation Report Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.allocation_report_message = {}

-- Size: Allocation Report Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.allocation_report_message.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_report_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_trans_type.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_report_type.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_no_orders_type.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_rej_code.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.quantity.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_status.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date_optional.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.size

-- Display: Allocation Report Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.allocation_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Allocation Report Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.allocation_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Alloc Id: AllocID
  index, alloc_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Alloc Report Id: AllocReportID
  index, alloc_report_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_report_id.dissect(buffer, index, packet, parent)

  -- Alloc Trans Type: AllocTransType
  index, alloc_trans_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_trans_type.dissect(buffer, index, packet, parent)

  -- Alloc Report Type: AllocReportType
  index, alloc_report_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_report_type.dissect(buffer, index, packet, parent)

  -- Alloc No Orders Type: AllocNoOrdersType
  index, alloc_no_orders_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_no_orders_type.dissect(buffer, index, packet, parent)

  -- Alloc Rej Code: RejReasonOptional
  index, alloc_rej_code = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_rej_code.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quantity.dissect(buffer, index, packet, parent)

  -- Alloc Status: AllocStatus
  index, alloc_status = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_status.dissect(buffer, index, packet, parent)

  -- Trade Date Optional: LocalMktDateOptional
  index, trade_date_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date_optional.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.dissect(buffer, index, packet, parent)

  -- Sender Location: SenderLocation
  index, sender_location = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: Trader
  index, entering_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Allocation Report Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.allocation_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.allocation_report_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.allocation_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.allocation_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.allocation_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Memo
b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo = {}

-- Calculate size of: Memo
b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo_length.size

  local memo_length = buffer(offset + 0, 1):uint()

  if memo_length > 0 then
    -- Parse runtime size of: Memo Data
    index = index + buffer(offset + index - 1, 1):uint()

  end

  return index
end

-- Display: Memo
b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Memo
b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Memo Length: uint8
  index, memo_length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Memo Data
  local memo_data = nil

  local memo_data_exists = memo_length > 0

  if memo_data_exists then

    -- Runtime Size Of: Memo Data
    index, memo_data = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo_data.dissect(buffer, index, packet, parent, memo_length)
  end

  -- Composite value
  local memo = memo_data

  return index, memo
end

-- Dissect: Memo
b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.memo, buffer(offset, 0))
    local index, value = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.fields(buffer, offset, packet, parent)
  end
end

-- Desk Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id = {}

-- Calculate size of: Desk Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id_length.size

  local desk_id_length = buffer(offset + 0, 1):uint()

  if desk_id_length > 0 then
    -- Parse runtime size of: Desk Id Data
    index = index + buffer(offset + index - 1, 1):uint()

  end

  return index
end

-- Display: Desk Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Desk Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Desk Id Length: uint8
  index, desk_id_length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Desk Id Data
  local desk_id_data = nil

  local desk_id_data_exists = desk_id_length > 0

  if desk_id_data_exists then

    -- Runtime Size Of: Desk Id Data
    index, desk_id_data = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id_data.dissect(buffer, index, packet, parent, desk_id_length)
  end

  -- Composite value
  local desk_id = desk_id_data

  return index, desk_id
end

-- Dissect: Desk Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.desk_id, buffer(offset, 0))
    local index, value = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.fields(buffer, offset, packet, parent)
  end
end

-- Allocation Instruction Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.allocation_instruction_message = {}

-- Calculate size of: Allocation Instruction Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.allocation_instruction_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_trans_type.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_type.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_no_orders_type.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.quantity.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.individual_alloc_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_account.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  return index
end

-- Display: Allocation Instruction Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.allocation_instruction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Allocation Instruction Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.allocation_instruction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.dissect(buffer, index, packet, parent)

  -- Alloc Id: AllocID
  index, alloc_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Alloc Trans Type: AllocTransType
  index, alloc_trans_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_trans_type.dissect(buffer, index, packet, parent)

  -- Alloc Type: AllocType
  index, alloc_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_type.dissect(buffer, index, packet, parent)

  -- Alloc No Orders Type: AllocNoOrdersType
  index, alloc_no_orders_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_no_orders_type.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quantity.dissect(buffer, index, packet, parent)

  -- Sender Location: SenderLocation
  index, sender_location = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: Trader
  index, entering_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.dissect(buffer, index, packet, parent)

  -- Trade Id: TradeID
  index, trade_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Date Optional: LocalMktDateOptional
  index, trade_date_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date_optional.dissect(buffer, index, packet, parent)

  -- Individual Alloc Id: AllocID
  index, individual_alloc_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.individual_alloc_id.dissect(buffer, index, packet, parent)

  -- Alloc Account: Account
  index, alloc_account = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_account.dissect(buffer, index, packet, parent)

  -- Alloc Qty: Quantity
  index, alloc_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.alloc_qty.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Allocation Instruction Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.allocation_instruction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.allocation_instruction_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.allocation_instruction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.allocation_instruction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.allocation_instruction_message.fields(buffer, offset, packet, parent)
  end
end

-- Positions Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.positions_group = {}

-- Size: Positions Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.positions_group.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_type.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.long_qty_optional.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.short_qty.size

-- Display: Positions Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.positions_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Positions Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.positions_group.fields = function(buffer, offset, packet, parent, positions_group_index)
  local index = offset

  -- Implicit Positions Group Index
  if positions_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.positions_group_index, positions_group_index)
    iteration:set_generated()
  end

  -- Pos Type: PosType
  index, pos_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_type.dissect(buffer, index, packet, parent)

  -- Long Qty Optional: QuantityOptional
  index, long_qty_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.long_qty_optional.dissect(buffer, index, packet, parent)

  -- Short Qty: QuantityOptional
  index, short_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.short_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Positions Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.positions_group.dissect = function(buffer, offset, packet, parent, positions_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.positions_group, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.positions_group.fields(buffer, offset, packet, parent, positions_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.positions_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.positions_group.fields(buffer, offset, packet, parent, positions_group_index)
  end
end

-- Group Size Encoding
b3_b3derivatives_binaryentrypoint_sbe_v8_2.group_size_encoding = {}

-- Size: Group Size Encoding
b3_b3derivatives_binaryentrypoint_sbe_v8_2.group_size_encoding.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.block_length.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.num_in_group.size

-- Display: Group Size Encoding
b3_b3derivatives_binaryentrypoint_sbe_v8_2.group_size_encoding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size Encoding
b3_b3derivatives_binaryentrypoint_sbe_v8_2.group_size_encoding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group: uint8
  index, num_in_group = b3_b3derivatives_binaryentrypoint_sbe_v8_2.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size Encoding
b3_b3derivatives_binaryentrypoint_sbe_v8_2.group_size_encoding.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.group_size_encoding, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.group_size_encoding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.group_size_encoding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.group_size_encoding.fields(buffer, offset, packet, parent)
  end
end

-- Positions Groups
b3_b3derivatives_binaryentrypoint_sbe_v8_2.positions_groups = {}

-- Calculate size of: Positions Groups
b3_b3derivatives_binaryentrypoint_sbe_v8_2.positions_groups.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.group_size_encoding.size

  -- Calculate field size from count
  local positions_group_count = buffer(offset + index - 1, 1):uint()
  index = index + positions_group_count * 17

  return index
end

-- Display: Positions Groups
b3_b3derivatives_binaryentrypoint_sbe_v8_2.positions_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Positions Groups
b3_b3derivatives_binaryentrypoint_sbe_v8_2.positions_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = b3_b3derivatives_binaryentrypoint_sbe_v8_2.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Positions Group
  for positions_group_index = 1, num_in_group do
    index, positions_group = b3_b3derivatives_binaryentrypoint_sbe_v8_2.positions_group.dissect(buffer, index, packet, parent, positions_group_index)
  end

  return index
end

-- Dissect: Positions Groups
b3_b3derivatives_binaryentrypoint_sbe_v8_2.positions_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.positions_groups, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.positions_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.positions_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.positions_groups.fields(buffer, offset, packet, parent)
  end
end

-- Position Maintenance Report Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_report_message = {}

-- Calculate size of: Position Maintenance Report Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_report_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_req_id_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_rpt_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_trans_type.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_action.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_status.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.orig_pos_req_ref_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.account_type.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.clearing_business_date.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.threshold_amount.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_result.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.contrary_instruction_indicator.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.positions_groups.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.text.size(buffer, offset + index)

  return index
end

-- Display: Position Maintenance Report Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Position Maintenance Report Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Pos Req Id Optional: PosReqIDOptional
  index, pos_req_id_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_req_id_optional.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Pos Maint Rpt Id: PosMaintRptID
  index, pos_maint_rpt_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_rpt_id.dissect(buffer, index, packet, parent)

  -- Pos Trans Type: PosTransType
  index, pos_trans_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_trans_type.dissect(buffer, index, packet, parent)

  -- Pos Maint Action: PosMaintAction
  index, pos_maint_action = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_action.dissect(buffer, index, packet, parent)

  -- Pos Maint Status: PosMaintStatus
  index, pos_maint_status = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_status.dissect(buffer, index, packet, parent)

  -- Trade Id Optional: TradeIDOptional
  index, trade_id_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id_optional.dissect(buffer, index, packet, parent)

  -- Orig Pos Req Ref Id: PosReqIDOptional
  index, orig_pos_req_ref_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.orig_pos_req_ref_id.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType
  index, account_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account_type.dissect(buffer, index, packet, parent)

  -- Clearing Business Date: LocalMktDate
  index, clearing_business_date = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clearing_business_date.dissect(buffer, index, packet, parent)

  -- Threshold Amount: PriceOffsetOptional
  index, threshold_amount = b3_b3derivatives_binaryentrypoint_sbe_v8_2.threshold_amount.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.dissect(buffer, index, packet, parent)

  -- Account: AccountOptional
  index, account = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.dissect(buffer, index, packet, parent)

  -- Sender Location: SenderLocation
  index, sender_location = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.dissect(buffer, index, packet, parent)

  -- Pos Maint Result: RejReasonOptional
  index, pos_maint_result = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_result.dissect(buffer, index, packet, parent)

  -- Contrary Instruction Indicator: Boolean
  index, contrary_instruction_indicator = b3_b3derivatives_binaryentrypoint_sbe_v8_2.contrary_instruction_indicator.dissect(buffer, index, packet, parent)

  -- Positions Groups: Struct of 2 fields
  index, positions_groups = b3_b3derivatives_binaryentrypoint_sbe_v8_2.positions_groups.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = b3_b3derivatives_binaryentrypoint_sbe_v8_2.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Position Maintenance Report Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.position_maintenance_report_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Position Maintenance Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_request_message = {}

-- Calculate size of: Position Maintenance Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_request_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_req_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.threshold_amount.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_trans_type.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.clearing_business_date.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.contrary_instruction_indicator.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.long_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  return index
end

-- Display: Position Maintenance Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Position Maintenance Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.dissect(buffer, index, packet, parent)

  -- Pos Req Id: PosReqID
  index, pos_req_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_req_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Threshold Amount: PriceOffsetOptional
  index, threshold_amount = b3_b3derivatives_binaryentrypoint_sbe_v8_2.threshold_amount.dissect(buffer, index, packet, parent)

  -- Account: AccountOptional
  index, account = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.dissect(buffer, index, packet, parent)

  -- Sender Location: SenderLocation
  index, sender_location = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.dissect(buffer, index, packet, parent)

  -- Pos Trans Type: PosTransType
  index, pos_trans_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_trans_type.dissect(buffer, index, packet, parent)

  -- Clearing Business Date: LocalMktDate
  index, clearing_business_date = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clearing_business_date.dissect(buffer, index, packet, parent)

  -- Contrary Instruction Indicator: Boolean
  index, contrary_instruction_indicator = b3_b3derivatives_binaryentrypoint_sbe_v8_2.contrary_instruction_indicator.dissect(buffer, index, packet, parent)

  -- Entering Trader: Trader
  index, entering_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.dissect(buffer, index, packet, parent)

  -- Long Qty: Quantity
  index, long_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.long_qty.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Position Maintenance Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.position_maintenance_request_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Position Maintenance Cancel Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_cancel_request_message = {}

-- Size: Position Maintenance Cancel Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_cancel_request_message.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_req_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.orig_pos_req_ref_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_rpt_ref_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.size

-- Display: Position Maintenance Cancel Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Position Maintenance Cancel Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.dissect(buffer, index, packet, parent)

  -- Pos Req Id: PosReqID
  index, pos_req_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_req_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Orig Pos Req Ref Id: PosReqIDOptional
  index, orig_pos_req_ref_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.orig_pos_req_ref_id.dissect(buffer, index, packet, parent)

  -- Pos Maint Rpt Ref Id: PosMaintRptIDOptional
  index, pos_maint_rpt_ref_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.pos_maint_rpt_ref_id.dissect(buffer, index, packet, parent)

  -- Sender Location: SenderLocation
  index, sender_location = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: Trader
  index, entering_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Position Maintenance Cancel Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.position_maintenance_cancel_request_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Sides Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_group = {}

-- Size: Sides Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_group.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.size

-- Display: Sides Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sides Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_group.fields = function(buffer, offset, packet, parent, sides_group_index)
  local index = offset

  -- Implicit Sides Group Index
  if sides_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.sides_group_index, sides_group_index)
    iteration:set_generated()
  end

  -- Side: Side
  index, side = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.dissect(buffer, index, packet, parent)

  -- Account: AccountOptional
  index, account = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sides Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_group.dissect = function(buffer, offset, packet, parent, sides_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.sides_group, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_group.fields(buffer, offset, packet, parent, sides_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_group.fields(buffer, offset, packet, parent, sides_group_index)
  end
end

-- Sides Groups
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_groups = {}

-- Calculate size of: Sides Groups
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_groups.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.group_size_encoding.size

  -- Calculate field size from count
  local sides_group_count = buffer(offset + index - 1, 1):uint()
  index = index + sides_group_count * 5

  return index
end

-- Display: Sides Groups
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sides Groups
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = b3_b3derivatives_binaryentrypoint_sbe_v8_2.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Sides Group
  for sides_group_index = 1, num_in_group do
    index, sides_group = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_group.dissect(buffer, index, packet, parent, sides_group_index)
  end

  return index
end

-- Dissect: Sides Groups
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.sides_groups, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_groups.fields(buffer, offset, packet, parent)
  end
end

-- Bidirectional Business Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.bidirectional_business_header = {}

-- Size: Bidirectional Business Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.bidirectional_business_header.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.msg_seq_num.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.sending_time.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.poss_resend.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_id_optional.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.padding.size

-- Display: Bidirectional Business Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.bidirectional_business_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bidirectional Business Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.bidirectional_business_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = b3_b3derivatives_binaryentrypoint_sbe_v8_2.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sending_time.dissect(buffer, index, packet, parent)

  -- Poss Resend: 1 Byte Unsigned Fixed Width Integer
  index, poss_resend = b3_b3derivatives_binaryentrypoint_sbe_v8_2.poss_resend.dissect(buffer, index, packet, parent)

  -- Market Segment Id Optional: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_id_optional.dissect(buffer, index, packet, parent)

  -- Padding: char
  index, padding = b3_b3derivatives_binaryentrypoint_sbe_v8_2.padding.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bidirectional Business Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.bidirectional_business_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.bidirectional_business_header, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.bidirectional_business_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.bidirectional_business_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.bidirectional_business_header.fields(buffer, offset, packet, parent)
  end
end

-- Quote Request Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_reject_message = {}

-- Calculate size of: Quote Request Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.bidirectional_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_reject_reason.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.contra_broker.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_groups.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.text.size(buffer, offset + index)

  return index
end

-- Display: Quote Request Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bidirectional Business Header: Struct of 6 fields
  index, bidirectional_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.bidirectional_business_header.dissect(buffer, index, packet, parent)

  -- Quote Request Reject Reason: RejReasonOptional
  index, quote_request_reject_reason = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_reject_reason.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Quote Req Id: QuoteReqID
  index, quote_req_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id.dissect(buffer, index, packet, parent)

  -- Quote Id Optional: QuoteIDOptional
  index, quote_id_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id_optional.dissect(buffer, index, packet, parent)

  -- Trade Id Optional: TradeIDOptional
  index, trade_id_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id_optional.dissect(buffer, index, packet, parent)

  -- Contra Broker: Firm
  index, contra_broker = b3_b3derivatives_binaryentrypoint_sbe_v8_2.contra_broker.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.dissect(buffer, index, packet, parent)

  -- Entering Trader: Trader
  index, entering_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.dissect(buffer, index, packet, parent)

  -- Settl Type Optional: SettlType
  index, settl_type_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type_optional.dissect(buffer, index, packet, parent)

  -- Price 8 Optional: Price8Optional
  index, price_8_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8_optional.dissect(buffer, index, packet, parent)

  -- Order Qty Optional: QuantityOptional
  index, order_qty_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty_optional.dissect(buffer, index, packet, parent)

  -- Sender Location: SenderLocation
  index, sender_location = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.dissect(buffer, index, packet, parent)

  -- Executing Trader: Trader
  index, executing_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader.dissect(buffer, index, packet, parent)

  -- Fixed Rate Percentage 8 Optional: Percentage8Optional
  index, fixed_rate_percentage_8_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8_optional.dissect(buffer, index, packet, parent)

  -- Days To Settlement Optional: DaysToSettlementOptional
  index, days_to_settlement_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement_optional.dissect(buffer, index, packet, parent)

  -- Sides Groups: Struct of 2 fields
  index, sides_groups = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_groups.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = b3_b3derivatives_binaryentrypoint_sbe_v8_2.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_request_reject_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Cancel Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_cancel_message = {}

-- Calculate size of: Quote Cancel Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_cancel_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.bidirectional_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  return index
end

-- Display: Quote Cancel Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bidirectional Business Header: Struct of 6 fields
  index, bidirectional_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.bidirectional_business_header.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Quote Req Id Optional: QuoteReqIDOptional
  index, quote_req_id_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id_optional.dissect(buffer, index, packet, parent)

  -- Quote Id Optional: QuoteIDOptional
  index, quote_id_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id_optional.dissect(buffer, index, packet, parent)

  -- Account: AccountOptional
  index, account = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.dissect(buffer, index, packet, parent)

  -- Sender Location: SenderLocation
  index, sender_location = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: Trader
  index, entering_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.dissect(buffer, index, packet, parent)

  -- Executing Trader: Trader
  index, executing_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_cancel_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_message = {}

-- Calculate size of: Quote Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.bidirectional_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.execute_underlying_trade.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  return index
end

-- Display: Quote Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bidirectional Business Header: Struct of 6 fields
  index, bidirectional_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.bidirectional_business_header.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Quote Req Id: QuoteReqID
  index, quote_req_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id.dissect(buffer, index, packet, parent)

  -- Quote Id: QuoteID
  index, quote_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.dissect(buffer, index, packet, parent)

  -- Price 8 Optional: Price8Optional
  index, price_8_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8_optional.dissect(buffer, index, packet, parent)

  -- Order Qty: Quantity
  index, order_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.dissect(buffer, index, packet, parent)

  -- Settl Type: SettlType
  index, settl_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type.dissect(buffer, index, packet, parent)

  -- Account: AccountOptional
  index, account = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.dissect(buffer, index, packet, parent)

  -- Sender Location: SenderLocation
  index, sender_location = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: Trader
  index, entering_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.dissect(buffer, index, packet, parent)

  -- Executing Trader: Trader
  index, executing_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader.dissect(buffer, index, packet, parent)

  -- Fixed Rate Percentage 8: Percentage8
  index, fixed_rate_percentage_8 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8.dissect(buffer, index, packet, parent)

  -- Execute Underlying Trade: ExecuteUnderlyingTrade
  index, execute_underlying_trade = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execute_underlying_trade.dissect(buffer, index, packet, parent)

  -- Days To Settlement: DaysToSettlement
  index, days_to_settlement = b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Status Report Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status_report_message = {}

-- Calculate size of: Quote Status Report Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status_report_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.bidirectional_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_reject_reason.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.contra_broker.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status_response_to.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.side_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.execute_underlying_trade.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.text.size(buffer, offset + index)

  return index
end

-- Display: Quote Status Report Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Status Report Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bidirectional Business Header: Struct of 6 fields
  index, bidirectional_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.bidirectional_business_header.dissect(buffer, index, packet, parent)

  -- Quote Reject Reason: RejReasonOptional
  index, quote_reject_reason = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_reject_reason.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Quote Req Id: QuoteReqID
  index, quote_req_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id.dissect(buffer, index, packet, parent)

  -- Quote Id: QuoteID
  index, quote_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id.dissect(buffer, index, packet, parent)

  -- Trade Id Optional: TradeIDOptional
  index, trade_id_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id_optional.dissect(buffer, index, packet, parent)

  -- Contra Broker: Firm
  index, contra_broker = b3_b3derivatives_binaryentrypoint_sbe_v8_2.contra_broker.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.dissect(buffer, index, packet, parent)

  -- Quote Status: QuoteStatus
  index, quote_status = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status.dissect(buffer, index, packet, parent)

  -- Quote Status Response To: QuoteStatusResponseTo
  index, quote_status_response_to = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status_response_to.dissect(buffer, index, packet, parent)

  -- Account: AccountOptional
  index, account = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.dissect(buffer, index, packet, parent)

  -- Side Optional: Side
  index, side_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side_optional.dissect(buffer, index, packet, parent)

  -- Settl Type Optional: SettlType
  index, settl_type_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type_optional.dissect(buffer, index, packet, parent)

  -- Price 8 Optional: Price8Optional
  index, price_8_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8_optional.dissect(buffer, index, packet, parent)

  -- Order Qty: Quantity
  index, order_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.dissect(buffer, index, packet, parent)

  -- Sender Location: SenderLocation
  index, sender_location = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: Trader
  index, entering_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.dissect(buffer, index, packet, parent)

  -- Executing Trader: Trader
  index, executing_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader.dissect(buffer, index, packet, parent)

  -- Fixed Rate Percentage 8 Optional: Percentage8Optional
  index, fixed_rate_percentage_8_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8_optional.dissect(buffer, index, packet, parent)

  -- Execute Underlying Trade: ExecuteUnderlyingTrade
  index, execute_underlying_trade = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execute_underlying_trade.dissect(buffer, index, packet, parent)

  -- Days To Settlement Optional: DaysToSettlementOptional
  index, days_to_settlement_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement_optional.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = b3_b3derivatives_binaryentrypoint_sbe_v8_2.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Status Report Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_status_report_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_message = {}

-- Calculate size of: Quote Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.bidirectional_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.contra_broker.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.execute_underlying_trade.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_groups.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  return index
end

-- Display: Quote Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bidirectional Business Header: Struct of 6 fields
  index, bidirectional_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.bidirectional_business_header.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Quote Req Id: QuoteReqID
  index, quote_req_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_req_id.dissect(buffer, index, packet, parent)

  -- Quote Id Optional: QuoteIDOptional
  index, quote_id_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_id_optional.dissect(buffer, index, packet, parent)

  -- Trade Id Optional: TradeIDOptional
  index, trade_id_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id_optional.dissect(buffer, index, packet, parent)

  -- Contra Broker: Firm
  index, contra_broker = b3_b3derivatives_binaryentrypoint_sbe_v8_2.contra_broker.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.dissect(buffer, index, packet, parent)

  -- Price 8: Price8
  index, price_8 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_8.dissect(buffer, index, packet, parent)

  -- Settl Type: SettlType
  index, settl_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type.dissect(buffer, index, packet, parent)

  -- Execute Underlying Trade: ExecuteUnderlyingTrade
  index, execute_underlying_trade = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execute_underlying_trade.dissect(buffer, index, packet, parent)

  -- Order Qty: Quantity
  index, order_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.dissect(buffer, index, packet, parent)

  -- Sender Location: SenderLocation
  index, sender_location = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: Trader
  index, entering_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.dissect(buffer, index, packet, parent)

  -- Executing Trader: Trader
  index, executing_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader.dissect(buffer, index, packet, parent)

  -- Fixed Rate Percentage 8: Percentage8
  index, fixed_rate_percentage_8 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8.dissect(buffer, index, packet, parent)

  -- Days To Settlement: DaysToSettlement
  index, days_to_settlement = b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement.dissect(buffer, index, packet, parent)

  -- Sides Groups: Struct of 2 fields
  index, sides_groups = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sides_groups.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.quote_request_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Response Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_definition_response_message = {}

-- Size: Security Definition Response Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_definition_response_message.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_18_padding_2.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_req_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id_optional.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_response_type.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_strategy_type.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.symbol.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_response_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.size

-- Display: Security Definition Response Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_definition_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Response Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_definition_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Offset 18 Padding 2: 2 Byte
  index, offset_18_padding_2 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_18_padding_2.dissect(buffer, index, packet, parent)

  -- Security Req Id: SecurityReqRespID
  index, security_req_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_req_id.dissect(buffer, index, packet, parent)

  -- Security Id Optional: SecurityIDOptional
  index, security_id_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id_optional.dissect(buffer, index, packet, parent)

  -- Security Response Type: SecurityResponseType
  index, security_response_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_response_type.dissect(buffer, index, packet, parent)

  -- Security Strategy Type: SecurityStrategyType
  index, security_strategy_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_strategy_type.dissect(buffer, index, packet, parent)

  -- Symbol: Symbol
  index, symbol = b3_b3derivatives_binaryentrypoint_sbe_v8_2.symbol.dissect(buffer, index, packet, parent)

  -- Security Response Id: SecurityReqRespID
  index, security_response_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_response_id.dissect(buffer, index, packet, parent)

  -- Sender Location: SenderLocation
  index, sender_location = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: Trader
  index, entering_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Response Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_definition_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.security_definition_response_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_definition_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_definition_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_definition_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Legs Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.legs_group = {}

-- Size: Legs Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.legs_group.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_symbol.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_ratio_qty.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_side.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.padding_1.size

-- Display: Legs Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.legs_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Legs Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.legs_group.fields = function(buffer, offset, packet, parent, legs_group_index)
  local index = offset

  -- Implicit Legs Group Index
  if legs_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.legs_group_index, legs_group_index)
    iteration:set_generated()
  end

  -- Leg Symbol: Symbol
  index, leg_symbol = b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: RatioQty
  index, leg_ratio_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: Side
  index, leg_side = b3_b3derivatives_binaryentrypoint_sbe_v8_2.leg_side.dissect(buffer, index, packet, parent)

  -- Padding 1: 1 Byte
  index, padding_1 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.padding_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Legs Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.legs_group.dissect = function(buffer, offset, packet, parent, legs_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.legs_group, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.legs_group.fields(buffer, offset, packet, parent, legs_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.legs_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.legs_group.fields(buffer, offset, packet, parent, legs_group_index)
  end
end

-- Legs Groups
b3_b3derivatives_binaryentrypoint_sbe_v8_2.legs_groups = {}

-- Calculate size of: Legs Groups
b3_b3derivatives_binaryentrypoint_sbe_v8_2.legs_groups.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.group_size_encoding.size

  -- Calculate field size from count
  local legs_group_count = buffer(offset + index - 1, 1):uint()
  index = index + legs_group_count * 30

  return index
end

-- Display: Legs Groups
b3_b3derivatives_binaryentrypoint_sbe_v8_2.legs_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Legs Groups
b3_b3derivatives_binaryentrypoint_sbe_v8_2.legs_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = b3_b3derivatives_binaryentrypoint_sbe_v8_2.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Legs Group
  for legs_group_index = 1, num_in_group do
    index, legs_group = b3_b3derivatives_binaryentrypoint_sbe_v8_2.legs_group.dissect(buffer, index, packet, parent, legs_group_index)
  end

  return index
end

-- Dissect: Legs Groups
b3_b3derivatives_binaryentrypoint_sbe_v8_2.legs_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.legs_groups, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.legs_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.legs_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.legs_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_definition_request_message = {}

-- Calculate size of: Security Definition Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_definition_request_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_req_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.legs_groups.size(buffer, offset + index)

  return index
end

-- Display: Security Definition Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_definition_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_definition_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.dissect(buffer, index, packet, parent)

  -- Security Req Id: SecurityReqRespID
  index, security_req_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_req_id.dissect(buffer, index, packet, parent)

  -- Sender Location: SenderLocation
  index, sender_location = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: Trader
  index, entering_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.dissect(buffer, index, packet, parent)

  -- Legs Groups: Struct of 2 fields
  index, legs_groups = b3_b3derivatives_binaryentrypoint_sbe_v8_2.legs_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_definition_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.security_definition_request_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_definition_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_definition_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_definition_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Business Message Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_message_reject_message = {}

-- Calculate size of: Business Message Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_message_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ref_msg_type.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_19_padding_1.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ref_seq_num.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_reject_ref_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_reject_reason.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.text.size(buffer, offset + index)

  return index
end

-- Display: Business Message Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_message_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Message Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_message_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Ref Msg Type: MessageType
  index, ref_msg_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ref_msg_type.dissect(buffer, index, packet, parent)

  -- Offset 19 Padding 1: 1 Byte
  index, offset_19_padding_1 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_19_padding_1.dissect(buffer, index, packet, parent)

  -- Ref Seq Num: SeqNum
  index, ref_seq_num = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ref_seq_num.dissect(buffer, index, packet, parent)

  -- Business Reject Ref Id: BusinessRejectRefID
  index, business_reject_ref_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_reject_ref_id.dissect(buffer, index, packet, parent)

  -- Business Reject Reason: RejReason
  index, business_reject_reason = b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_reject_reason.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = b3_b3derivatives_binaryentrypoint_sbe_v8_2.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Message Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_message_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.business_message_reject_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_message_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_message_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_message_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Forward Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_forward_message = {}

-- Calculate size of: Execution Report Forward Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_forward_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_status.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_px.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.leaves_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.cum_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.contra_broker.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.aggressor_indicator.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_118_padding_2.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_exec_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_ref_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.trading_session_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.trading_session_sub_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_trading_status.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Forward Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_forward_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Forward Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_forward_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatus
  index, ord_status = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_status.dissect(buffer, index, packet, parent)

  -- ClOrdId Optional: ClOrdIDOptional
  index, clordid_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid_optional.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: OrderID
  index, secondary_order_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Account: AccountOptional
  index, account = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.dissect(buffer, index, packet, parent)

  -- Last Qty: Quantity
  index, last_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_px.dissect(buffer, index, packet, parent)

  -- Exec Id: ExecID
  index, exec_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_id.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Quantity
  index, leaves_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: Quantity
  index, cum_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cum_qty.dissect(buffer, index, packet, parent)

  -- Trade Id: TradeID
  index, trade_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id.dissect(buffer, index, packet, parent)

  -- Contra Broker: Firm
  index, contra_broker = b3_b3derivatives_binaryentrypoint_sbe_v8_2.contra_broker.dissect(buffer, index, packet, parent)

  -- Order Id: OrderID
  index, order_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: Boolean
  index, aggressor_indicator = b3_b3derivatives_binaryentrypoint_sbe_v8_2.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- Settl Type Optional: SettlType
  index, settl_type_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.settl_type_optional.dissect(buffer, index, packet, parent)

  -- Trade Date: LocalMktDate
  index, trade_date = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date.dissect(buffer, index, packet, parent)

  -- Days To Settlement Optional: DaysToSettlementOptional
  index, days_to_settlement_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.days_to_settlement_optional.dissect(buffer, index, packet, parent)

  -- Offset 118 Padding 2: 2 Byte
  index, offset_118_padding_2 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_118_padding_2.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: ExecIDOptional
  index, secondary_exec_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: ExecIDOptional
  index, exec_ref_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Fixed Rate Percentage 8 Optional: Percentage8Optional
  index, fixed_rate_percentage_8_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.fixed_rate_percentage_8_optional.dissect(buffer, index, packet, parent)

  -- Order Qty: Quantity
  index, order_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.dissect(buffer, index, packet, parent)

  -- Trading Session Id: TradingSessionID
  index, trading_session_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: TradingSessionSubID
  index, trading_session_sub_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Security Trading Status: SecurityTradingStatus
  index, security_trading_status = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_trading_status.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Forward Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_forward_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.execution_report_forward_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_forward_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_forward_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_forward_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_reject_message = {}

-- Calculate size of: Execution Report Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.cxl_rej_response_to.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_rej_reason.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.origclordid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtype.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.expire_date.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.stop_px.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.min_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_floor.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossid_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossed_indicator.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.received_time.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_146_padding_3.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.strategy_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.text.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.dissect(buffer, index, packet, parent)

  -- Cxl Rej Response To: CxlRejResponseTo
  index, cxl_rej_response_to = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cxl_rej_response_to.dissect(buffer, index, packet, parent)

  -- ClOrdId: ClOrdID
  index, clordid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.dissect(buffer, index, packet, parent)

  -- Secondary Order Id Optional: OrderIDOptional
  index, secondary_order_id_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id_optional.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Ord Rej Reason: RejReason
  index, ord_rej_reason = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_rej_reason.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.dissect(buffer, index, packet, parent)

  -- Exec Id: ExecID
  index, exec_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_id.dissect(buffer, index, packet, parent)

  -- Order Id Optional: OrderIDOptional
  index, order_id_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id_optional.dissect(buffer, index, packet, parent)

  -- OrigClOrdId: ClOrdIDOptional
  index, origclordid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.origclordid.dissect(buffer, index, packet, parent)

  -- Account: AccountOptional
  index, account = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.dissect(buffer, index, packet, parent)

  -- OrdType: OrdType
  index, ordtype = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtype.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force.dissect(buffer, index, packet, parent)

  -- Expire Date: LocalMktDateOptional
  index, expire_date = b3_b3derivatives_binaryentrypoint_sbe_v8_2.expire_date.dissect(buffer, index, packet, parent)

  -- Order Qty: Quantity
  index, order_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.dissect(buffer, index, packet, parent)

  -- Price Optional: PriceOptional
  index, price_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.dissect(buffer, index, packet, parent)

  -- Stop Px: PriceOptional
  index, stop_px = b3_b3derivatives_binaryentrypoint_sbe_v8_2.stop_px.dissect(buffer, index, packet, parent)

  -- Min Qty: QuantityOptional
  index, min_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: QuantityOptional
  index, max_floor = b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_floor.dissect(buffer, index, packet, parent)

  -- CrossId Optional: CrossIDOptional
  index, crossid_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossid_optional.dissect(buffer, index, packet, parent)

  -- Crossed Indicator: CrossedIndicator
  index, crossed_indicator = b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossed_indicator.dissect(buffer, index, packet, parent)

  -- Received Time: UTCTimestampNanosOptional
  index, received_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.received_time.dissect(buffer, index, packet, parent)

  -- Offset 146 Padding 3: 3 Byte
  index, offset_146_padding_3 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_146_padding_3.dissect(buffer, index, packet, parent)

  -- OrdTagId: OrdTagID
  index, ordtagid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.dissect(buffer, index, packet, parent)

  -- Investor Id: Struct of 3 fields
  index, investor_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.dissect(buffer, index, packet, parent)

  -- Strategy Id: StrategyIDOptional
  index, strategy_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.strategy_id.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = b3_b3derivatives_binaryentrypoint_sbe_v8_2.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.execution_report_reject_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Implied Event Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.implied_event_id = {}

-- Size: Implied Event Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.implied_event_id.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.event_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.no_related_trades.size

-- Display: Implied Event Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.implied_event_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Implied Event Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.implied_event_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Id: uint32
  index, event_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.event_id.dissect(buffer, index, packet, parent)

  -- No Related Trades: uint16
  index, no_related_trades = b3_b3derivatives_binaryentrypoint_sbe_v8_2.no_related_trades.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Event Id
b3_b3derivatives_binaryentrypoint_sbe_v8_2.implied_event_id.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.implied_event_id, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.implied_event_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.implied_event_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.implied_event_id.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Trade Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_trade_message = {}

-- Calculate size of: Execution Report Trade Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_status.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_px.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.leaves_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.cum_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.aggressor_indicator.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_type.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_category.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.multi_leg_reporting_type.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.contra_broker.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.tot_no_related_sym.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_119_padding_1.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_exec_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_ref_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossid_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossed_indicator.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.trading_session_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.trading_session_sub_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_trading_status.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_type.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_prioritization.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_159_padding_1.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.strategy_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.implied_event_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatus
  index, ord_status = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_status.dissect(buffer, index, packet, parent)

  -- ClOrdId Optional: ClOrdIDOptional
  index, clordid_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid_optional.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: OrderID
  index, secondary_order_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Account: AccountOptional
  index, account = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.dissect(buffer, index, packet, parent)

  -- Last Qty: Quantity
  index, last_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_px.dissect(buffer, index, packet, parent)

  -- Exec Id: ExecID
  index, exec_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_id.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Quantity
  index, leaves_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: Quantity
  index, cum_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cum_qty.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: Boolean
  index, aggressor_indicator = b3_b3derivatives_binaryentrypoint_sbe_v8_2.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- Exec Type: ExecType
  index, exec_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_type.dissect(buffer, index, packet, parent)

  -- Order Category: OrderCategory
  index, order_category = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_category.dissect(buffer, index, packet, parent)

  -- Multi Leg Reporting Type: MultiLegReportingType
  index, multi_leg_reporting_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.multi_leg_reporting_type.dissect(buffer, index, packet, parent)

  -- Trade Id: TradeID
  index, trade_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_id.dissect(buffer, index, packet, parent)

  -- Contra Broker: Firm
  index, contra_broker = b3_b3derivatives_binaryentrypoint_sbe_v8_2.contra_broker.dissect(buffer, index, packet, parent)

  -- Order Id: OrderID
  index, order_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id.dissect(buffer, index, packet, parent)

  -- Trade Date: LocalMktDate
  index, trade_date = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date.dissect(buffer, index, packet, parent)

  -- Tot No Related Sym: TotNoRelatedSym
  index, tot_no_related_sym = b3_b3derivatives_binaryentrypoint_sbe_v8_2.tot_no_related_sym.dissect(buffer, index, packet, parent)

  -- Offset 119 Padding 1: 1 Byte
  index, offset_119_padding_1 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_119_padding_1.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: ExecIDOptional
  index, secondary_exec_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: ExecIDOptional
  index, exec_ref_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_ref_id.dissect(buffer, index, packet, parent)

  -- CrossId Optional: CrossIDOptional
  index, crossid_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossid_optional.dissect(buffer, index, packet, parent)

  -- Crossed Indicator: CrossedIndicator
  index, crossed_indicator = b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossed_indicator.dissect(buffer, index, packet, parent)

  -- Order Qty: Quantity
  index, order_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.dissect(buffer, index, packet, parent)

  -- Trading Session Id: TradingSessionID
  index, trading_session_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: TradingSessionSubID
  index, trading_session_sub_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Security Trading Status: SecurityTradingStatus
  index, security_trading_status = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_trading_status.dissect(buffer, index, packet, parent)

  -- Cross Type: CrossType
  index, cross_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_type.dissect(buffer, index, packet, parent)

  -- Cross Prioritization: CrossPrioritization
  index, cross_prioritization = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_prioritization.dissect(buffer, index, packet, parent)

  -- Offset 159 Padding 1: 1 Byte
  index, offset_159_padding_1 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_159_padding_1.dissect(buffer, index, packet, parent)

  -- Strategy Id: StrategyIDOptional
  index, strategy_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.strategy_id.dissect(buffer, index, packet, parent)

  -- Implied Event Id: Struct of 2 fields
  index, implied_event_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.implied_event_id.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.execution_report_trade_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Cancel Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_cancel_message = {}

-- Calculate size of: Execution Report Cancel Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_cancel_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_status.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.cum_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_received_time.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.origclordid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.working_indicator.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_restatement_reason.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_100_padding_4.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_report_id_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtype.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.expire_date.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.stop_px.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.min_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_floor.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.received_time.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_164_padding_3.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.strategy_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.action_requested_from_session_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Cancel Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Cancel Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatus
  index, ord_status = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_status.dissect(buffer, index, packet, parent)

  -- ClOrdId: ClOrdID
  index, clordid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: OrderID
  index, secondary_order_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Cum Qty: Quantity
  index, cum_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cum_qty.dissect(buffer, index, packet, parent)

  -- Account: AccountOptional
  index, account = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.dissect(buffer, index, packet, parent)

  -- Exec Id: ExecID
  index, exec_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_id.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.dissect(buffer, index, packet, parent)

  -- Market Segment Received Time: UTCTimestampNanosOptional
  index, market_segment_received_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_received_time.dissect(buffer, index, packet, parent)

  -- Order Id: OrderID
  index, order_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id.dissect(buffer, index, packet, parent)

  -- OrigClOrdId: ClOrdIDOptional
  index, origclordid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.origclordid.dissect(buffer, index, packet, parent)

  -- Trade Date: LocalMktDate
  index, trade_date = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date.dissect(buffer, index, packet, parent)

  -- Working Indicator: Boolean
  index, working_indicator = b3_b3derivatives_binaryentrypoint_sbe_v8_2.working_indicator.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: ExecRestatementReason
  index, exec_restatement_reason = b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Offset 100 Padding 4: 4 Byte
  index, offset_100_padding_4 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_100_padding_4.dissect(buffer, index, packet, parent)

  -- Mass Action Report Id Optional: MassActionReportIDOptional
  index, mass_action_report_id_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mass_action_report_id_optional.dissect(buffer, index, packet, parent)

  -- OrdType: OrdType
  index, ordtype = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtype.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force.dissect(buffer, index, packet, parent)

  -- Expire Date: LocalMktDateOptional
  index, expire_date = b3_b3derivatives_binaryentrypoint_sbe_v8_2.expire_date.dissect(buffer, index, packet, parent)

  -- Order Qty: Quantity
  index, order_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.dissect(buffer, index, packet, parent)

  -- Price Optional: PriceOptional
  index, price_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.dissect(buffer, index, packet, parent)

  -- Stop Px: PriceOptional
  index, stop_px = b3_b3derivatives_binaryentrypoint_sbe_v8_2.stop_px.dissect(buffer, index, packet, parent)

  -- Min Qty: QuantityOptional
  index, min_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: QuantityOptional
  index, max_floor = b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_floor.dissect(buffer, index, packet, parent)

  -- Received Time: UTCTimestampNanosOptional
  index, received_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.received_time.dissect(buffer, index, packet, parent)

  -- Offset 164 Padding 3: 3 Byte
  index, offset_164_padding_3 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_164_padding_3.dissect(buffer, index, packet, parent)

  -- OrdTagId: OrdTagID
  index, ordtagid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.dissect(buffer, index, packet, parent)

  -- Investor Id: Struct of 3 fields
  index, investor_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.dissect(buffer, index, packet, parent)

  -- Strategy Id: StrategyIDOptional
  index, strategy_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.strategy_id.dissect(buffer, index, packet, parent)

  -- Action Requested From Session Id: SessionIDOptional
  index, action_requested_from_session_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.action_requested_from_session_id.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Cancel Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.execution_report_cancel_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Modify Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_modify_message = {}

-- Calculate size of: Execution Report Modify Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_modify_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_status.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.leaves_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.cum_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_received_time.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.origclordid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.protection_price.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.working_indicator.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.multi_leg_reporting_type.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtype.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.expire_date.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.stop_px.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.min_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_floor.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.received_time.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_168_padding_3.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_181_padding_1.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.strategy_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Modify Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_modify_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Modify Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_modify_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatus
  index, ord_status = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_status.dissect(buffer, index, packet, parent)

  -- ClOrdId: ClOrdID
  index, clordid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: OrderID
  index, secondary_order_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Quantity
  index, leaves_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.leaves_qty.dissect(buffer, index, packet, parent)

  -- Account: AccountOptional
  index, account = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.dissect(buffer, index, packet, parent)

  -- Exec Id: ExecID
  index, exec_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_id.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.dissect(buffer, index, packet, parent)

  -- Cum Qty: Quantity
  index, cum_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cum_qty.dissect(buffer, index, packet, parent)

  -- Market Segment Received Time: UTCTimestampNanosOptional
  index, market_segment_received_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_received_time.dissect(buffer, index, packet, parent)

  -- Order Id: OrderID
  index, order_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id.dissect(buffer, index, packet, parent)

  -- OrigClOrdId: ClOrdIDOptional
  index, origclordid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.origclordid.dissect(buffer, index, packet, parent)

  -- Protection Price: PriceOptional
  index, protection_price = b3_b3derivatives_binaryentrypoint_sbe_v8_2.protection_price.dissect(buffer, index, packet, parent)

  -- Trade Date: LocalMktDate
  index, trade_date = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date.dissect(buffer, index, packet, parent)

  -- Working Indicator: Boolean
  index, working_indicator = b3_b3derivatives_binaryentrypoint_sbe_v8_2.working_indicator.dissect(buffer, index, packet, parent)

  -- Multi Leg Reporting Type: MultiLegReportingType
  index, multi_leg_reporting_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.multi_leg_reporting_type.dissect(buffer, index, packet, parent)

  -- OrdType: OrdType
  index, ordtype = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtype.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force.dissect(buffer, index, packet, parent)

  -- Expire Date: LocalMktDateOptional
  index, expire_date = b3_b3derivatives_binaryentrypoint_sbe_v8_2.expire_date.dissect(buffer, index, packet, parent)

  -- Order Qty: Quantity
  index, order_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.dissect(buffer, index, packet, parent)

  -- Price Optional: PriceOptional
  index, price_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.dissect(buffer, index, packet, parent)

  -- Stop Px: PriceOptional
  index, stop_px = b3_b3derivatives_binaryentrypoint_sbe_v8_2.stop_px.dissect(buffer, index, packet, parent)

  -- Min Qty: QuantityOptional
  index, min_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: QuantityOptional
  index, max_floor = b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_floor.dissect(buffer, index, packet, parent)

  -- Received Time: UTCTimestampNanosOptional
  index, received_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.received_time.dissect(buffer, index, packet, parent)

  -- Offset 168 Padding 3: 3 Byte
  index, offset_168_padding_3 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_168_padding_3.dissect(buffer, index, packet, parent)

  -- OrdTagId: OrdTagID
  index, ordtagid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.dissect(buffer, index, packet, parent)

  -- Investor Id: Struct of 3 fields
  index, investor_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.dissect(buffer, index, packet, parent)

  -- Mm Protection Reset Optional: Boolean
  index, mm_protection_reset_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset_optional.dissect(buffer, index, packet, parent)

  -- Offset 181 Padding 1: 1 Byte
  index, offset_181_padding_1 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_181_padding_1.dissect(buffer, index, packet, parent)

  -- Strategy Id: StrategyIDOptional
  index, strategy_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.strategy_id.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Modify Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_modify_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.execution_report_modify_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_modify_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_modify_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_modify_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report New Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_new_message = {}

-- Calculate size of: Execution Report New Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_new_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_status.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_received_time.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.protection_price.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.working_indicator.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.multi_leg_reporting_type.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtype.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.expire_date.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.stop_px.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.min_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_floor.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossid_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.received_time.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_152_padding_3.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_type.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_prioritization.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_167_padding_1.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.strategy_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  return index
end

-- Display: Execution Report New Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_new_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report New Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_new_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatus
  index, ord_status = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ord_status.dissect(buffer, index, packet, parent)

  -- ClOrdId: ClOrdID
  index, clordid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: OrderID
  index, secondary_order_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderID
  index, order_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id.dissect(buffer, index, packet, parent)

  -- Account: AccountOptional
  index, account = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.dissect(buffer, index, packet, parent)

  -- Exec Id: ExecID
  index, exec_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.exec_id.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.transact_time.dissect(buffer, index, packet, parent)

  -- Market Segment Received Time: UTCTimestampNanosOptional
  index, market_segment_received_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.market_segment_received_time.dissect(buffer, index, packet, parent)

  -- Protection Price: PriceOptional
  index, protection_price = b3_b3derivatives_binaryentrypoint_sbe_v8_2.protection_price.dissect(buffer, index, packet, parent)

  -- Trade Date: LocalMktDate
  index, trade_date = b3_b3derivatives_binaryentrypoint_sbe_v8_2.trade_date.dissect(buffer, index, packet, parent)

  -- Working Indicator: Boolean
  index, working_indicator = b3_b3derivatives_binaryentrypoint_sbe_v8_2.working_indicator.dissect(buffer, index, packet, parent)

  -- Multi Leg Reporting Type: MultiLegReportingType
  index, multi_leg_reporting_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.multi_leg_reporting_type.dissect(buffer, index, packet, parent)

  -- OrdType: OrdType
  index, ordtype = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtype.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force.dissect(buffer, index, packet, parent)

  -- Expire Date: LocalMktDateOptional
  index, expire_date = b3_b3derivatives_binaryentrypoint_sbe_v8_2.expire_date.dissect(buffer, index, packet, parent)

  -- Order Qty: Quantity
  index, order_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.dissect(buffer, index, packet, parent)

  -- Price Optional: PriceOptional
  index, price_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.dissect(buffer, index, packet, parent)

  -- Stop Px: PriceOptional
  index, stop_px = b3_b3derivatives_binaryentrypoint_sbe_v8_2.stop_px.dissect(buffer, index, packet, parent)

  -- Min Qty: QuantityOptional
  index, min_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: QuantityOptional
  index, max_floor = b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_floor.dissect(buffer, index, packet, parent)

  -- CrossId Optional: CrossIDOptional
  index, crossid_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossid_optional.dissect(buffer, index, packet, parent)

  -- Received Time: UTCTimestampNanosOptional
  index, received_time = b3_b3derivatives_binaryentrypoint_sbe_v8_2.received_time.dissect(buffer, index, packet, parent)

  -- Offset 152 Padding 3: 3 Byte
  index, offset_152_padding_3 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_152_padding_3.dissect(buffer, index, packet, parent)

  -- OrdTagId: OrdTagID
  index, ordtagid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.dissect(buffer, index, packet, parent)

  -- Investor Id: Struct of 3 fields
  index, investor_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.dissect(buffer, index, packet, parent)

  -- Cross Type: CrossType
  index, cross_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_type.dissect(buffer, index, packet, parent)

  -- Cross Prioritization: CrossPrioritization
  index, cross_prioritization = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_prioritization.dissect(buffer, index, packet, parent)

  -- Mm Protection Reset Optional: Boolean
  index, mm_protection_reset_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset_optional.dissect(buffer, index, packet, parent)

  -- Offset 167 Padding 1: 1 Byte
  index, offset_167_padding_1 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_167_padding_1.dissect(buffer, index, packet, parent)

  -- Strategy Id: StrategyIDOptional
  index, strategy_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.strategy_id.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report New Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_new_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.execution_report_new_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_new_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_new_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_new_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Sides Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_sides_group = {}

-- Size: Cross Sides Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_sides_group.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_1_padding_1.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_firm_optional.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.size

-- Display: Cross Sides Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_sides_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Sides Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_sides_group.fields = function(buffer, offset, packet, parent, cross_sides_group_index)
  local index = offset

  -- Implicit Cross Sides Group Index
  if cross_sides_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.cross_sides_group_index, cross_sides_group_index)
    iteration:set_generated()
  end

  -- Side: Side
  index, side = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.dissect(buffer, index, packet, parent)

  -- Offset 1 Padding 1: 1 Byte
  index, offset_1_padding_1 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_1_padding_1.dissect(buffer, index, packet, parent)

  -- Account: AccountOptional
  index, account = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.dissect(buffer, index, packet, parent)

  -- Entering Firm Optional: FirmOptional
  index, entering_firm_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_firm_optional.dissect(buffer, index, packet, parent)

  -- ClOrdId: ClOrdID
  index, clordid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Sides Group
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_sides_group.dissect = function(buffer, offset, packet, parent, cross_sides_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.cross_sides_group, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_sides_group.fields(buffer, offset, packet, parent, cross_sides_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_sides_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_sides_group.fields(buffer, offset, packet, parent, cross_sides_group_index)
  end
end

-- Cross Sides Groups
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_sides_groups = {}

-- Calculate size of: Cross Sides Groups
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_sides_groups.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.group_size_encoding.size

  -- Calculate field size from count
  local cross_sides_group_count = buffer(offset + index - 1, 1):uint()
  index = index + cross_sides_group_count * 18

  return index
end

-- Display: Cross Sides Groups
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_sides_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Sides Groups
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_sides_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = b3_b3derivatives_binaryentrypoint_sbe_v8_2.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Cross Sides Group
  for cross_sides_group_index = 1, num_in_group do
    index, cross_sides_group = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_sides_group.dissect(buffer, index, packet, parent, cross_sides_group_index)
  end

  return index
end

-- Dissect: Cross Sides Groups
b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_sides_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.cross_sides_groups, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_sides_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_sides_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_sides_groups.fields(buffer, offset, packet, parent)
  end
end

-- New Order Cross Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.new_order_cross_message = {}

-- Calculate size of: New Order Cross Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.new_order_cross_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_18_padding_2.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.price.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossed_indicator.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_type.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_prioritization.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_sweep_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_sides_groups.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  return index
end

-- Display: New Order Cross Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.new_order_cross_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Cross Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.new_order_cross_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.dissect(buffer, index, packet, parent)

  -- Offset 18 Padding 2: 2 Byte
  index, offset_18_padding_2 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_18_padding_2.dissect(buffer, index, packet, parent)

  -- CrossId: CrossID
  index, crossid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossid.dissect(buffer, index, packet, parent)

  -- Sender Location: SenderLocation
  index, sender_location = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: Trader
  index, entering_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.dissect(buffer, index, packet, parent)

  -- Executing Trader Optional: TraderOptional
  index, executing_trader_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader_optional.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Quantity
  index, order_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price.dissect(buffer, index, packet, parent)

  -- Crossed Indicator: CrossedIndicator
  index, crossed_indicator = b3_b3derivatives_binaryentrypoint_sbe_v8_2.crossed_indicator.dissect(buffer, index, packet, parent)

  -- Cross Type: CrossType
  index, cross_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_type.dissect(buffer, index, packet, parent)

  -- Cross Prioritization: CrossPrioritization
  index, cross_prioritization = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_prioritization.dissect(buffer, index, packet, parent)

  -- Max Sweep Qty: QuantityOptional
  index, max_sweep_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_sweep_qty.dissect(buffer, index, packet, parent)

  -- Cross Sides Groups: Struct of 2 fields
  index, cross_sides_groups = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cross_sides_groups.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Cross Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.new_order_cross_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.new_order_cross_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.new_order_cross_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.new_order_cross_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.new_order_cross_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_cancel_request_message = {}

-- Calculate size of: Order Cancel Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_cancel_request_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_18_padding_2.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.origclordid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.single_cancel_restatement_reason.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_54_padding_2.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  return index
end

-- Display: Order Cancel Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.dissect(buffer, index, packet, parent)

  -- Offset 18 Padding 2: 2 Byte
  index, offset_18_padding_2 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_18_padding_2.dissect(buffer, index, packet, parent)

  -- ClOrdId: ClOrdID
  index, clordid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Order Id Optional: OrderIDOptional
  index, order_id_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id_optional.dissect(buffer, index, packet, parent)

  -- OrigClOrdId: ClOrdIDOptional
  index, origclordid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.origclordid.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.dissect(buffer, index, packet, parent)

  -- Single Cancel Restatement Reason: ExecRestatementReasonValidForSingleCancel
  index, single_cancel_restatement_reason = b3_b3derivatives_binaryentrypoint_sbe_v8_2.single_cancel_restatement_reason.dissect(buffer, index, packet, parent)

  -- Offset 54 Padding 2: 2 Byte
  index, offset_54_padding_2 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_54_padding_2.dissect(buffer, index, packet, parent)

  -- Sender Location: SenderLocation
  index, sender_location = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: Trader
  index, entering_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.dissect(buffer, index, packet, parent)

  -- Executing Trader Optional: TraderOptional
  index, executing_trader_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader_optional.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.order_cancel_request_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Custodian Info
b3_b3derivatives_binaryentrypoint_sbe_v8_2.custodian_info = {}

-- Size: Custodian Info
b3_b3derivatives_binaryentrypoint_sbe_v8_2.custodian_info.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.custodian.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.custody_account.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.custody_allocation_type.size

-- Display: Custodian Info
b3_b3derivatives_binaryentrypoint_sbe_v8_2.custodian_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Custodian Info
b3_b3derivatives_binaryentrypoint_sbe_v8_2.custodian_info.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Custodian: uint32
  index, custodian = b3_b3derivatives_binaryentrypoint_sbe_v8_2.custodian.dissect(buffer, index, packet, parent)

  -- Custody Account: uint32
  index, custody_account = b3_b3derivatives_binaryentrypoint_sbe_v8_2.custody_account.dissect(buffer, index, packet, parent)

  -- Custody Allocation Type: uint32
  index, custody_allocation_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.custody_allocation_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Custodian Info
b3_b3derivatives_binaryentrypoint_sbe_v8_2.custodian_info.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.custodian_info, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.custodian_info.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.custodian_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.custodian_info.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Replace Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_cancel_replace_request_message = {}

-- Calculate size of: Order Cancel Replace Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_cancel_replace_request_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.self_trade_prevention_instruction.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtype.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.routing_instruction.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.origclordid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.stop_px.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.min_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_floor.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.account_type.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.expire_date.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.custodian_info.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.strategy_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  return index
end

-- Display: Order Cancel Replace Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_cancel_replace_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Replace Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_cancel_replace_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.dissect(buffer, index, packet, parent)

  -- OrdTagId: OrdTagID
  index, ordtagid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.dissect(buffer, index, packet, parent)

  -- Mm Protection Reset: Boolean
  index, mm_protection_reset = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset.dissect(buffer, index, packet, parent)

  -- ClOrdId: ClOrdID
  index, clordid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.dissect(buffer, index, packet, parent)

  -- Account: AccountOptional
  index, account = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.dissect(buffer, index, packet, parent)

  -- Sender Location: SenderLocation
  index, sender_location = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: Trader
  index, entering_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention Instruction: SelfTradePreventionInstruction
  index, self_trade_prevention_instruction = b3_b3derivatives_binaryentrypoint_sbe_v8_2.self_trade_prevention_instruction.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.dissect(buffer, index, packet, parent)

  -- OrdType: OrdType
  index, ordtype = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtype.dissect(buffer, index, packet, parent)

  -- Time In Force Optional: TimeInForce
  index, time_in_force_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force_optional.dissect(buffer, index, packet, parent)

  -- Routing Instruction: RoutingInstruction
  index, routing_instruction = b3_b3derivatives_binaryentrypoint_sbe_v8_2.routing_instruction.dissect(buffer, index, packet, parent)

  -- Order Qty: Quantity
  index, order_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.dissect(buffer, index, packet, parent)

  -- Price Optional: PriceOptional
  index, price_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.dissect(buffer, index, packet, parent)

  -- Order Id Optional: OrderIDOptional
  index, order_id_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id_optional.dissect(buffer, index, packet, parent)

  -- OrigClOrdId: ClOrdIDOptional
  index, origclordid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.origclordid.dissect(buffer, index, packet, parent)

  -- Stop Px: PriceOptional
  index, stop_px = b3_b3derivatives_binaryentrypoint_sbe_v8_2.stop_px.dissect(buffer, index, packet, parent)

  -- Min Qty: QuantityOptional
  index, min_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: QuantityOptional
  index, max_floor = b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_floor.dissect(buffer, index, packet, parent)

  -- Executing Trader Optional: TraderOptional
  index, executing_trader_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader_optional.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType
  index, account_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account_type.dissect(buffer, index, packet, parent)

  -- Expire Date: LocalMktDateOptional
  index, expire_date = b3_b3derivatives_binaryentrypoint_sbe_v8_2.expire_date.dissect(buffer, index, packet, parent)

  -- Custodian Info: Struct of 3 fields
  index, custodian_info = b3_b3derivatives_binaryentrypoint_sbe_v8_2.custodian_info.dissect(buffer, index, packet, parent)

  -- Investor Id: Struct of 3 fields
  index, investor_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.dissect(buffer, index, packet, parent)

  -- Strategy Id: StrategyIDOptional
  index, strategy_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.strategy_id.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_cancel_replace_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.order_cancel_replace_request_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_cancel_replace_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Single Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.new_order_single_message = {}

-- Calculate size of: New Order Single Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.new_order_single_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.self_trade_prevention_instruction.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtype.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.routing_instruction.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.stop_px.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.min_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_floor.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.expire_date.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.custodian_info.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.strategy_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  return index
end

-- Display: New Order Single Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.new_order_single_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Single Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.new_order_single_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.dissect(buffer, index, packet, parent)

  -- OrdTagId: OrdTagID
  index, ordtagid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.dissect(buffer, index, packet, parent)

  -- Mm Protection Reset: Boolean
  index, mm_protection_reset = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset.dissect(buffer, index, packet, parent)

  -- ClOrdId: ClOrdID
  index, clordid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.dissect(buffer, index, packet, parent)

  -- Account: AccountOptional
  index, account = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.dissect(buffer, index, packet, parent)

  -- Sender Location: SenderLocation
  index, sender_location = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: Trader
  index, entering_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention Instruction: SelfTradePreventionInstruction
  index, self_trade_prevention_instruction = b3_b3derivatives_binaryentrypoint_sbe_v8_2.self_trade_prevention_instruction.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.dissect(buffer, index, packet, parent)

  -- OrdType: OrdType
  index, ordtype = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtype.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force.dissect(buffer, index, packet, parent)

  -- Routing Instruction: RoutingInstruction
  index, routing_instruction = b3_b3derivatives_binaryentrypoint_sbe_v8_2.routing_instruction.dissect(buffer, index, packet, parent)

  -- Order Qty: Quantity
  index, order_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.dissect(buffer, index, packet, parent)

  -- Price Optional: PriceOptional
  index, price_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.dissect(buffer, index, packet, parent)

  -- Stop Px: PriceOptional
  index, stop_px = b3_b3derivatives_binaryentrypoint_sbe_v8_2.stop_px.dissect(buffer, index, packet, parent)

  -- Min Qty: QuantityOptional
  index, min_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: QuantityOptional
  index, max_floor = b3_b3derivatives_binaryentrypoint_sbe_v8_2.max_floor.dissect(buffer, index, packet, parent)

  -- Executing Trader Optional: TraderOptional
  index, executing_trader_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.executing_trader_optional.dissect(buffer, index, packet, parent)

  -- Expire Date: LocalMktDateOptional
  index, expire_date = b3_b3derivatives_binaryentrypoint_sbe_v8_2.expire_date.dissect(buffer, index, packet, parent)

  -- Custodian Info: Struct of 3 fields
  index, custodian_info = b3_b3derivatives_binaryentrypoint_sbe_v8_2.custodian_info.dissect(buffer, index, packet, parent)

  -- Investor Id: Struct of 3 fields
  index, investor_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.dissect(buffer, index, packet, parent)

  -- Strategy Id: StrategyIDOptional
  index, strategy_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.strategy_id.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.new_order_single_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.new_order_single_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.new_order_single_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.new_order_single_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.new_order_single_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Modify Order Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_modify_order_message = {}

-- Calculate size of: Simple Modify Order Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_modify_order_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.self_trade_prevention_instruction.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_ordtype.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force_simple.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.routing_instruction.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.origclordid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  return index
end

-- Display: Simple Modify Order Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Modify Order Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.dissect(buffer, index, packet, parent)

  -- OrdTagId: OrdTagID
  index, ordtagid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.dissect(buffer, index, packet, parent)

  -- Mm Protection Reset: Boolean
  index, mm_protection_reset = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset.dissect(buffer, index, packet, parent)

  -- ClOrdId: ClOrdID
  index, clordid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.dissect(buffer, index, packet, parent)

  -- Account: AccountOptional
  index, account = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.dissect(buffer, index, packet, parent)

  -- Sender Location: SenderLocation
  index, sender_location = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: Trader
  index, entering_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention Instruction: SelfTradePreventionInstruction
  index, self_trade_prevention_instruction = b3_b3derivatives_binaryentrypoint_sbe_v8_2.self_trade_prevention_instruction.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.dissect(buffer, index, packet, parent)

  -- Simple OrdType: SimpleOrdType
  index, simple_ordtype = b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_ordtype.dissect(buffer, index, packet, parent)

  -- Time In Force Simple: SimpleTimeInForce
  index, time_in_force_simple = b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force_simple.dissect(buffer, index, packet, parent)

  -- Routing Instruction: RoutingInstruction
  index, routing_instruction = b3_b3derivatives_binaryentrypoint_sbe_v8_2.routing_instruction.dissect(buffer, index, packet, parent)

  -- Order Qty: Quantity
  index, order_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.dissect(buffer, index, packet, parent)

  -- Price Optional: PriceOptional
  index, price_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.dissect(buffer, index, packet, parent)

  -- Order Id Optional: OrderIDOptional
  index, order_id_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_id_optional.dissect(buffer, index, packet, parent)

  -- OrigClOrdId: ClOrdIDOptional
  index, origclordid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.origclordid.dissect(buffer, index, packet, parent)

  -- Investor Id: Struct of 3 fields
  index, investor_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Modify Order Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.simple_modify_order_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple New Order Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_new_order_message = {}

-- Calculate size of: Simple New Order Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_new_order_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.self_trade_prevention_instruction.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_ordtype.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force_simple.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.routing_instruction.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.size(buffer, offset + index)

  return index
end

-- Display: Simple New Order Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple New Order Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.inbound_business_header.dissect(buffer, index, packet, parent)

  -- OrdTagId: OrdTagID
  index, ordtagid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.ordtagid.dissect(buffer, index, packet, parent)

  -- Mm Protection Reset: Boolean
  index, mm_protection_reset = b3_b3derivatives_binaryentrypoint_sbe_v8_2.mm_protection_reset.dissect(buffer, index, packet, parent)

  -- ClOrdId: ClOrdID
  index, clordid = b3_b3derivatives_binaryentrypoint_sbe_v8_2.clordid.dissect(buffer, index, packet, parent)

  -- Account: AccountOptional
  index, account = b3_b3derivatives_binaryentrypoint_sbe_v8_2.account.dissect(buffer, index, packet, parent)

  -- Sender Location: SenderLocation
  index, sender_location = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: Trader
  index, entering_trader = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_trader.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention Instruction: SelfTradePreventionInstruction
  index, self_trade_prevention_instruction = b3_b3derivatives_binaryentrypoint_sbe_v8_2.self_trade_prevention_instruction.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_id.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = b3_b3derivatives_binaryentrypoint_sbe_v8_2.side.dissect(buffer, index, packet, parent)

  -- Simple OrdType: SimpleOrdType
  index, simple_ordtype = b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_ordtype.dissect(buffer, index, packet, parent)

  -- Time In Force Simple: SimpleTimeInForce
  index, time_in_force_simple = b3_b3derivatives_binaryentrypoint_sbe_v8_2.time_in_force_simple.dissect(buffer, index, packet, parent)

  -- Routing Instruction: RoutingInstruction
  index, routing_instruction = b3_b3derivatives_binaryentrypoint_sbe_v8_2.routing_instruction.dissect(buffer, index, packet, parent)

  -- Order Qty: Quantity
  index, order_qty = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_qty.dissect(buffer, index, packet, parent)

  -- Price Optional: PriceOptional
  index, price_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.price_optional.dissect(buffer, index, packet, parent)

  -- Investor Id: Struct of 3 fields
  index, investor_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.investor_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_b3derivatives_binaryentrypoint_sbe_v8_2.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple New Order Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.simple_new_order_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmit Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_reject_message = {}

-- Size: Retransmit Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_reject_message.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.request_timestamp.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_reject_code.size

-- Display: Retransmit Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.dissect(buffer, index, packet, parent)

  -- Request Timestamp: UTCTimestampNanos
  index, request_timestamp = b3_b3derivatives_binaryentrypoint_sbe_v8_2.request_timestamp.dissect(buffer, index, packet, parent)

  -- Retransmit Reject Code: RetransmitRejectCode
  index, retransmit_reject_code = b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.retransmit_reject_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmission_message = {}

-- Size: Retransmission Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmission_message.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.request_timestamp.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.next_seq_no.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.count.size

-- Display: Retransmission Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmission_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmission_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.dissect(buffer, index, packet, parent)

  -- Request Timestamp: UTCTimestampNanos
  index, request_timestamp = b3_b3derivatives_binaryentrypoint_sbe_v8_2.request_timestamp.dissect(buffer, index, packet, parent)

  -- Next Seq No: SeqNum
  index, next_seq_no = b3_b3derivatives_binaryentrypoint_sbe_v8_2.next_seq_no.dissect(buffer, index, packet, parent)

  -- Count: MessageCounter
  index, count = b3_b3derivatives_binaryentrypoint_sbe_v8_2.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmission_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.retransmission_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmission_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmission_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmission_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmit Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_request_message = {}

-- Size: Retransmit Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_request_message.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.timestamp.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.from_seq_no.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.count.size

-- Display: Retransmit Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.dissect(buffer, index, packet, parent)

  -- Timestamp: UTCTimestampNanos
  index, timestamp = b3_b3derivatives_binaryentrypoint_sbe_v8_2.timestamp.dissect(buffer, index, packet, parent)

  -- From Seq No: SeqNum
  index, from_seq_no = b3_b3derivatives_binaryentrypoint_sbe_v8_2.from_seq_no.dissect(buffer, index, packet, parent)

  -- Count: MessageCounter
  index, count = b3_b3derivatives_binaryentrypoint_sbe_v8_2.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Request Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.retransmit_request_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sequence_message = {}

-- Size: Sequence Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sequence_message.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.next_seq_no.size

-- Display: Sequence Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sequence_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sequence_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Seq No: SeqNum
  index, next_seq_no = b3_b3derivatives_binaryentrypoint_sbe_v8_2.next_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.sequence_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.sequence_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sequence_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sequence_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.sequence_message.fields(buffer, offset, packet, parent)
  end
end

-- Not Applied Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.not_applied_message = {}

-- Size: Not Applied Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.not_applied_message.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.from_seq_no.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.count.size

-- Display: Not Applied Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.not_applied_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Not Applied Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.not_applied_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- From Seq No: SeqNum
  index, from_seq_no = b3_b3derivatives_binaryentrypoint_sbe_v8_2.from_seq_no.dissect(buffer, index, packet, parent)

  -- Count: MessageCounter
  index, count = b3_b3derivatives_binaryentrypoint_sbe_v8_2.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Not Applied Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.not_applied_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.not_applied_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.not_applied_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.not_applied_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.not_applied_message.fields(buffer, offset, packet, parent)
  end
end

-- Terminate Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.terminate_message = {}

-- Size: Terminate Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.terminate_message.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_ver_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.termination_code.size

-- Display: Terminate Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.terminate_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Terminate Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.terminate_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.dissect(buffer, index, packet, parent)

  -- Session Ver Id: SessionVerID
  index, session_ver_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_ver_id.dissect(buffer, index, packet, parent)

  -- Termination Code: TerminationCode
  index, termination_code = b3_b3derivatives_binaryentrypoint_sbe_v8_2.termination_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Terminate Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.terminate_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.terminate_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.terminate_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.terminate_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.terminate_message.fields(buffer, offset, packet, parent)
  end
end

-- Establish Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_reject_message = {}

-- Size: Establish Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_reject_message.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_ver_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.request_timestamp.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.establishment_reject_code.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_21_padding_1.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_incoming_seq_no_optional.size

-- Display: Establish Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Establish Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.dissect(buffer, index, packet, parent)

  -- Session Ver Id: SessionVerID
  index, session_ver_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_ver_id.dissect(buffer, index, packet, parent)

  -- Request Timestamp: UTCTimestampNanos
  index, request_timestamp = b3_b3derivatives_binaryentrypoint_sbe_v8_2.request_timestamp.dissect(buffer, index, packet, parent)

  -- Establishment Reject Code: EstablishRejectCode
  index, establishment_reject_code = b3_b3derivatives_binaryentrypoint_sbe_v8_2.establishment_reject_code.dissect(buffer, index, packet, parent)

  -- Offset 21 Padding 1: 1 Byte
  index, offset_21_padding_1 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_21_padding_1.dissect(buffer, index, packet, parent)

  -- Last Incoming Seq No Optional: SeqNumOptional
  index, last_incoming_seq_no_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_incoming_seq_no_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Establish Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.establish_reject_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Establish Ack Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_ack_message = {}

-- Size: Establish Ack Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_ack_message.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_ver_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.request_timestamp.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.keep_alive_interval.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.next_seq_no.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_incoming_seq_no.size

-- Display: Establish Ack Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Establish Ack Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.dissect(buffer, index, packet, parent)

  -- Session Ver Id: SessionVerID
  index, session_ver_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_ver_id.dissect(buffer, index, packet, parent)

  -- Request Timestamp: UTCTimestampNanos
  index, request_timestamp = b3_b3derivatives_binaryentrypoint_sbe_v8_2.request_timestamp.dissect(buffer, index, packet, parent)

  -- Keep Alive Interval: DeltaInMillis
  index, keep_alive_interval = b3_b3derivatives_binaryentrypoint_sbe_v8_2.keep_alive_interval.dissect(buffer, index, packet, parent)

  -- Next Seq No: SeqNum
  index, next_seq_no = b3_b3derivatives_binaryentrypoint_sbe_v8_2.next_seq_no.dissect(buffer, index, packet, parent)

  -- Last Incoming Seq No: SeqNum
  index, last_incoming_seq_no = b3_b3derivatives_binaryentrypoint_sbe_v8_2.last_incoming_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Establish Ack Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.establish_ack_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Credentials
b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials = {}

-- Calculate size of: Credentials
b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials_length.size

  local credentials_length = buffer(offset + 0, 1):uint()

  if credentials_length > 0 then
    -- Parse runtime size of: Credentials Data
    index = index + buffer(offset + index - 1, 1):uint()

  end

  return index
end

-- Display: Credentials
b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Credentials
b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Credentials Length: uint8
  index, credentials_length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Credentials Data
  local credentials_data = nil

  local credentials_data_exists = credentials_length > 0

  if credentials_data_exists then

    -- Runtime Size Of: Credentials Data
    index, credentials_data = b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials_data.dissect(buffer, index, packet, parent, credentials_length)
  end

  -- Composite value
  local credentials = credentials_data

  return index, credentials
end

-- Dissect: Credentials
b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.credentials, buffer(offset, 0))
    local index, value = b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials.fields(buffer, offset, packet, parent)
  end
end

-- Establish Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_message = {}

-- Calculate size of: Establish Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_ver_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.timestamp.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.keep_alive_interval.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.next_seq_no.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.cancel_on_disconnect_type.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_33_padding_1.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.cod_timeout_window.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials.size(buffer, offset + index)

  return index
end

-- Display: Establish Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Establish Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.dissect(buffer, index, packet, parent)

  -- Session Ver Id: SessionVerID
  index, session_ver_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_ver_id.dissect(buffer, index, packet, parent)

  -- Timestamp: UTCTimestampNanos
  index, timestamp = b3_b3derivatives_binaryentrypoint_sbe_v8_2.timestamp.dissect(buffer, index, packet, parent)

  -- Keep Alive Interval: DeltaInMillis
  index, keep_alive_interval = b3_b3derivatives_binaryentrypoint_sbe_v8_2.keep_alive_interval.dissect(buffer, index, packet, parent)

  -- Next Seq No: SeqNum
  index, next_seq_no = b3_b3derivatives_binaryentrypoint_sbe_v8_2.next_seq_no.dissect(buffer, index, packet, parent)

  -- Cancel On Disconnect Type: CancelOnDisconnectType
  index, cancel_on_disconnect_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cancel_on_disconnect_type.dissect(buffer, index, packet, parent)

  -- Offset 33 Padding 1: 1 Byte
  index, offset_33_padding_1 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_33_padding_1.dissect(buffer, index, packet, parent)

  -- Cod Timeout Window: DeltaInMillis
  index, cod_timeout_window = b3_b3derivatives_binaryentrypoint_sbe_v8_2.cod_timeout_window.dissect(buffer, index, packet, parent)

  -- Credentials: Struct of 2 fields
  index, credentials = b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Establish Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.establish_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_message.fields(buffer, offset, packet, parent)
  end
end

-- Negotiate Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_reject_message = {}

-- Size: Negotiate Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_reject_message.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_ver_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.request_timestamp.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_firm_optional.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiation_reject_code.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_25_padding_3.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.current_session_ver_id.size

-- Display: Negotiate Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Negotiate Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.dissect(buffer, index, packet, parent)

  -- Session Ver Id: SessionVerID
  index, session_ver_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_ver_id.dissect(buffer, index, packet, parent)

  -- Request Timestamp: UTCTimestampNanos
  index, request_timestamp = b3_b3derivatives_binaryentrypoint_sbe_v8_2.request_timestamp.dissect(buffer, index, packet, parent)

  -- Entering Firm Optional: FirmOptional
  index, entering_firm_optional = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_firm_optional.dissect(buffer, index, packet, parent)

  -- Negotiation Reject Code: NegotiationRejectCode
  index, negotiation_reject_code = b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiation_reject_code.dissect(buffer, index, packet, parent)

  -- Offset 25 Padding 3: 3 Byte
  index, offset_25_padding_3 = b3_b3derivatives_binaryentrypoint_sbe_v8_2.offset_25_padding_3.dissect(buffer, index, packet, parent)

  -- Current Session Ver Id: SessionVerIDOptional
  index, current_session_ver_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.current_session_ver_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiate Reject Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.negotiate_reject_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Semantic Version
b3_b3derivatives_binaryentrypoint_sbe_v8_2.semantic_version = {}

-- Size: Semantic Version
b3_b3derivatives_binaryentrypoint_sbe_v8_2.semantic_version.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.major_number.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.minor_number.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.patch_number.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.build_number.size

-- Display: Semantic Version
b3_b3derivatives_binaryentrypoint_sbe_v8_2.semantic_version.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Semantic Version
b3_b3derivatives_binaryentrypoint_sbe_v8_2.semantic_version.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Major Number: uint8
  index, major_number = b3_b3derivatives_binaryentrypoint_sbe_v8_2.major_number.dissect(buffer, index, packet, parent)

  -- Minor Number: uint8
  index, minor_number = b3_b3derivatives_binaryentrypoint_sbe_v8_2.minor_number.dissect(buffer, index, packet, parent)

  -- Patch Number: uint8
  index, patch_number = b3_b3derivatives_binaryentrypoint_sbe_v8_2.patch_number.dissect(buffer, index, packet, parent)

  -- Build Number: uint8
  index, build_number = b3_b3derivatives_binaryentrypoint_sbe_v8_2.build_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Semantic Version
b3_b3derivatives_binaryentrypoint_sbe_v8_2.semantic_version.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.semantic_version, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.semantic_version.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.semantic_version.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.semantic_version.fields(buffer, offset, packet, parent)
  end
end

-- Negotiate Response Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_response_message = {}

-- Size: Negotiate Response Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_response_message.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_ver_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.request_timestamp.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_firm.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.semantic_version.size

-- Display: Negotiate Response Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Negotiate Response Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.dissect(buffer, index, packet, parent)

  -- Session Ver Id: SessionVerID
  index, session_ver_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_ver_id.dissect(buffer, index, packet, parent)

  -- Request Timestamp: UTCTimestampNanos
  index, request_timestamp = b3_b3derivatives_binaryentrypoint_sbe_v8_2.request_timestamp.dissect(buffer, index, packet, parent)

  -- Entering Firm: Firm
  index, entering_firm = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_firm.dissect(buffer, index, packet, parent)

  -- Semantic Version: Struct of 4 fields
  index, semantic_version = b3_b3derivatives_binaryentrypoint_sbe_v8_2.semantic_version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiate Response Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.negotiate_response_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Client App Version
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version = {}

-- Calculate size of: Client App Version
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version_length.size

  local client_app_version_length = buffer(offset + 0, 1):uint()

  if client_app_version_length > 0 then
    -- Parse runtime size of: Client App Version Data
    index = index + buffer(offset + index - 1, 1):uint()

  end

  return index
end

-- Display: Client App Version
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Client App Version
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client App Version Length: uint8
  index, client_app_version_length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Client App Version Data
  local client_app_version_data = nil

  local client_app_version_data_exists = client_app_version_length > 0

  if client_app_version_data_exists then

    -- Runtime Size Of: Client App Version Data
    index, client_app_version_data = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version_data.dissect(buffer, index, packet, parent, client_app_version_length)
  end

  -- Composite value
  local client_app_version = client_app_version_data

  return index, client_app_version
end

-- Dissect: Client App Version
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.client_app_version, buffer(offset, 0))
    local index, value = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version.fields(buffer, offset, packet, parent)
  end
end

-- Client App Name
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name = {}

-- Calculate size of: Client App Name
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name_length.size

  local client_app_name_length = buffer(offset + 0, 1):uint()

  if client_app_name_length > 0 then
    -- Parse runtime size of: Client App Name Data
    index = index + buffer(offset + index - 1, 1):uint()

  end

  return index
end

-- Display: Client App Name
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Client App Name
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client App Name Length: uint8
  index, client_app_name_length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Client App Name Data
  local client_app_name_data = nil

  local client_app_name_data_exists = client_app_name_length > 0

  if client_app_name_data_exists then

    -- Runtime Size Of: Client App Name Data
    index, client_app_name_data = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name_data.dissect(buffer, index, packet, parent, client_app_name_length)
  end

  -- Composite value
  local client_app_name = client_app_name_data

  return index, client_app_name
end

-- Dissect: Client App Name
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.client_app_name, buffer(offset, 0))
    local index, value = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name.fields(buffer, offset, packet, parent)
  end
end

-- Client Ip
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip = {}

-- Calculate size of: Client Ip
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip_length.size

  local client_ip_length = buffer(offset + 0, 1):uint()

  if client_ip_length > 0 then
    -- Parse runtime size of: Client Ip Data
    index = index + buffer(offset + index - 1, 1):uint()

  end

  return index
end

-- Display: Client Ip
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Client Ip
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Ip Length: uint8
  index, client_ip_length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Client Ip Data
  local client_ip_data = nil

  local client_ip_data_exists = client_ip_length > 0

  if client_ip_data_exists then

    -- Runtime Size Of: Client Ip Data
    index, client_ip_data = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip_data.dissect(buffer, index, packet, parent, client_ip_length)
  end

  -- Composite value
  local client_ip = client_ip_data

  return index, client_ip
end

-- Dissect: Client Ip
b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.client_ip, buffer(offset, 0))
    local index, value = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip.fields(buffer, offset, packet, parent)
  end
end

-- Negotiate Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_message = {}

-- Calculate size of: Negotiate Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_ver_id.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.timestamp.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_firm.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.onbehalf_firm.size

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name.size(buffer, offset + index)

  index = index + b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version.size(buffer, offset + index)

  return index
end

-- Display: Negotiate Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Negotiate Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_id.dissect(buffer, index, packet, parent)

  -- Session Ver Id: SessionVerID
  index, session_ver_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.session_ver_id.dissect(buffer, index, packet, parent)

  -- Timestamp: UTCTimestampNanos
  index, timestamp = b3_b3derivatives_binaryentrypoint_sbe_v8_2.timestamp.dissect(buffer, index, packet, parent)

  -- Entering Firm: Firm
  index, entering_firm = b3_b3derivatives_binaryentrypoint_sbe_v8_2.entering_firm.dissect(buffer, index, packet, parent)

  -- Onbehalf Firm: FirmOptional
  index, onbehalf_firm = b3_b3derivatives_binaryentrypoint_sbe_v8_2.onbehalf_firm.dissect(buffer, index, packet, parent)

  -- Credentials: Struct of 2 fields
  index, credentials = b3_b3derivatives_binaryentrypoint_sbe_v8_2.credentials.dissect(buffer, index, packet, parent)

  -- Client Ip: Struct of 2 fields
  index, client_ip = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_ip.dissect(buffer, index, packet, parent)

  -- Client App Name: Struct of 2 fields
  index, client_app_name = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_name.dissect(buffer, index, packet, parent)

  -- Client App Version: Struct of 2 fields
  index, client_app_version = b3_b3derivatives_binaryentrypoint_sbe_v8_2.client_app_version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiate Message
b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.negotiate_message, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
b3_b3derivatives_binaryentrypoint_sbe_v8_2.payload = {}

-- Dispatch: Payload
b3_b3derivatives_binaryentrypoint_sbe_v8_2.payload.dispatch = {
  [1] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_message.dissect,
  [2] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_response_message.dissect,
  [3] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.negotiate_reject_message.dissect,
  [4] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_message.dissect,
  [5] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_ack_message.dissect,
  [6] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.establish_reject_message.dissect,
  [7] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.terminate_message.dissect,
  [8] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.not_applied_message.dissect,
  [9] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.sequence_message.dissect,
  [12] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_request_message.dissect,
  [13] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmission_message.dissect,
  [14] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.retransmit_reject_message.dissect,
  [100] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_new_order_message.dissect,
  [101] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_modify_order_message.dissect,
  [102] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.new_order_single_message.dissect,
  [104] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_cancel_replace_request_message.dissect,
  [105] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_cancel_request_message.dissect,
  [106] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.new_order_cross_message.dissect,
  [200] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_new_message.dissect,
  [201] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_modify_message.dissect,
  [202] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_cancel_message.dissect,
  [203] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_trade_message.dissect,
  [204] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_reject_message.dissect,
  [205] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.execution_report_forward_message.dissect,
  [206] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.business_message_reject_message.dissect,
  [300] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_definition_request_message.dissect,
  [301] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.security_definition_response_message.dissect,
  [401] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_message.dissect,
  [402] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_status_report_message.dissect,
  [403] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_message.dissect,
  [404] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_cancel_message.dissect,
  [405] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.quote_request_reject_message.dissect,
  [501] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_cancel_request_message.dissect,
  [502] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_request_message.dissect,
  [503] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.position_maintenance_report_message.dissect,
  [601] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.allocation_instruction_message.dissect,
  [602] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.allocation_report_message.dissect,
  [701] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_mass_action_request_message.dissect,
  [702] = b3_b3derivatives_binaryentrypoint_sbe_v8_2.order_mass_action_report_message.dissect,
}

-- Dissect: Payload
b3_b3derivatives_binaryentrypoint_sbe_v8_2.payload.dissect = function(buffer, offset, packet, parent, template_id)
  local dissect = b3_b3derivatives_binaryentrypoint_sbe_v8_2.payload.dispatch[template_id]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.message_header = {}

-- Size: Message Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.message_header.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.block_length.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.template_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.schema_id.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.version.size

-- Display: Message Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint16
  index, template_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint16
  index, schema_id = b3_b3derivatives_binaryentrypoint_sbe_v8_2.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = b3_b3derivatives_binaryentrypoint_sbe_v8_2.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.message_header, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Simple Open Framing Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_open_framing_header = {}

-- Size: Simple Open Framing Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_open_framing_header.size =
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.message_length.size + 
  b3_b3derivatives_binaryentrypoint_sbe_v8_2.encoding_type.size

-- Display: Simple Open Framing Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_open_framing_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Open Framing Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_open_framing_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: uint16
  index, message_length = b3_b3derivatives_binaryentrypoint_sbe_v8_2.message_length.dissect(buffer, index, packet, parent)

  -- Encoding Type: uint16
  index, encoding_type = b3_b3derivatives_binaryentrypoint_sbe_v8_2.encoding_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Open Framing Header
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_open_framing_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.simple_open_framing_header, buffer(offset, 0))
    local index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_open_framing_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_open_framing_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_open_framing_header.fields(buffer, offset, packet, parent)
  end
end

-- Simple Open Frame
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_open_frame = {}

-- Display: Simple Open Frame
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_open_frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Open Frame
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_open_frame.fields = function(buffer, offset, packet, parent, size_of_simple_open_frame)
  local index = offset

  -- Simple Open Framing Header: Struct of 2 fields
  index, simple_open_framing_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_open_framing_header.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = b3_b3derivatives_binaryentrypoint_sbe_v8_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 39 branches
  index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Simple Open Frame
b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_open_frame.dissect = function(buffer, offset, packet, parent, size_of_simple_open_frame)
  local index = offset + size_of_simple_open_frame

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.fields.simple_open_frame, buffer(offset, 0))
    local current = b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_open_frame.fields(buffer, offset, packet, parent, size_of_simple_open_frame)
    parent:set_len(size_of_simple_open_frame)
    local display = b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_open_frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_open_frame.fields(buffer, offset, packet, parent, size_of_simple_open_frame)

    return index
  end
end

-- Remaining Bytes For: Simple Open Frame
local simple_open_frame_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_open_framing_header.size then
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

-- Packet
b3_b3derivatives_binaryentrypoint_sbe_v8_2.packet = {}

-- Verify required size of Tcp packet
b3_b3derivatives_binaryentrypoint_sbe_v8_2.packet.requiredsize = function(buffer)
  return buffer:len() >= b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_open_framing_header.size + b3_b3derivatives_binaryentrypoint_sbe_v8_2.message_header.size
end

-- Dissect Packet
b3_b3derivatives_binaryentrypoint_sbe_v8_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Simple Open Frame
  local end_of_payload = buffer:len()

  -- Simple Open Frame: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_simple_open_frame = simple_open_frame_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_simple_open_frame):tvb()
      index = b3_b3derivatives_binaryentrypoint_sbe_v8_2.simple_open_frame.dissect(frame, index, packet, parent, size_of_simple_open_frame)
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
function omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.init()
end

-- Dissector for B3 B3Derivatives BinaryEntryPoint Sbe 8.2
function omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2, buffer(), omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.description, "("..buffer:len().." Bytes)")
  return b3_b3derivatives_binaryentrypoint_sbe_v8_2.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
b3_b3derivatives_binaryentrypoint_sbe_v8_2.packet.fingerprint = function(buffer)
  if buffer:len() < 8 then
    return false
  end

  local template_id = buffer(6, 2):le_uint()

  -- Negotiate Message
  if template_id == 1 then
    return true
  end

  -- Negotiate Response Message
  if template_id == 2 then
    return true
  end

  -- Negotiate Reject Message
  if template_id == 3 then
    return true
  end

  -- Establish Message
  if template_id == 4 then
    return true
  end

  -- Establish Ack Message
  if template_id == 5 then
    return true
  end

  -- Establish Reject Message
  if template_id == 6 then
    return true
  end

  -- Terminate Message
  if template_id == 7 then
    return true
  end

  -- Not Applied Message
  if template_id == 8 then
    return true
  end

  -- Sequence Message
  if template_id == 9 then
    return true
  end

  -- Retransmit Request Message
  if template_id == 12 then
    return true
  end

  -- Retransmission Message
  if template_id == 13 then
    return true
  end

  -- Retransmit Reject Message
  if template_id == 14 then
    return true
  end

  -- Simple New Order Message
  if template_id == 100 then
    return true
  end

  -- Simple Modify Order Message
  if template_id == 101 then
    return true
  end

  -- New Order Single Message
  if template_id == 102 then
    return true
  end

  -- Order Cancel Replace Request Message
  if template_id == 104 then
    return true
  end

  -- Order Cancel Request Message
  if template_id == 105 then
    return true
  end

  -- New Order Cross Message
  if template_id == 106 then
    return true
  end

  -- Execution Report New Message
  if template_id == 200 then
    return true
  end

  -- Execution Report Modify Message
  if template_id == 201 then
    return true
  end

  -- Execution Report Cancel Message
  if template_id == 202 then
    return true
  end

  -- Execution Report Trade Message
  if template_id == 203 then
    return true
  end

  -- Execution Report Reject Message
  if template_id == 204 then
    return true
  end

  -- Execution Report Forward Message
  if template_id == 205 then
    return true
  end

  -- Business Message Reject Message
  if template_id == 206 then
    return true
  end

  -- Security Definition Request Message
  if template_id == 300 then
    return true
  end

  -- Security Definition Response Message
  if template_id == 301 then
    return true
  end

  -- Quote Request Message
  if template_id == 401 then
    return true
  end

  -- Quote Status Report Message
  if template_id == 402 then
    return true
  end

  -- Quote Message
  if template_id == 403 then
    return true
  end

  -- Quote Cancel Message
  if template_id == 404 then
    return true
  end

  -- Quote Request Reject Message
  if template_id == 405 then
    return true
  end

  -- Position Maintenance Cancel Request Message
  if template_id == 501 then
    return true
  end

  -- Position Maintenance Request Message
  if template_id == 502 then
    return true
  end

  -- Position Maintenance Report Message
  if template_id == 503 then
    return true
  end

  -- Allocation Instruction Message
  if template_id == 601 then
    return true
  end

  -- Allocation Report Message
  if template_id == 602 then
    return true
  end

  -- Order Mass Action Request Message
  if template_id == 701 then
    return true
  end

  -- Order Mass Action Report Message
  if template_id == 702 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Encoding Type Field
b3_b3derivatives_binaryentrypoint_sbe_v8_2.encoding_type.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 2 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(2, 2):le_uint()

  if value == 60240 then
    return true
  end

  return false
end

-- Verify Schema Id Field
b3_b3derivatives_binaryentrypoint_sbe_v8_2.schema_id.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 8 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(8, 2):le_uint()

  if value == 1 then
    return true
  end

  return false
end

-- Verify Version Field
b3_b3derivatives_binaryentrypoint_sbe_v8_2.version.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 10 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(10, 2):le_uint()

  if value == 4 then
    return true
  end

  return false
end

-- Dissector Heuristic for B3 B3Derivatives BinaryEntryPoint Sbe 8.2 (Tcp)
local function omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not b3_b3derivatives_binaryentrypoint_sbe_v8_2.packet.requiredsize(buffer) then return false end

  -- Verify Encoding Type
  if not b3_b3derivatives_binaryentrypoint_sbe_v8_2.encoding_type.verify(buffer) then return false end

  -- Verify Schema Id
  if not b3_b3derivatives_binaryentrypoint_sbe_v8_2.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not b3_b3derivatives_binaryentrypoint_sbe_v8_2.version.verify(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not b3_b3derivatives_binaryentrypoint_sbe_v8_2.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2
  omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for B3 B3Derivatives BinaryEntryPoint Sbe 8.2
omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2:register_heuristic("tcp", omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2_tcp_heuristic)

-- Register B3 B3Derivatives BinaryEntryPoint Sbe 8.2 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_b3_b3derivatives_binaryentrypoint_sbe_v8_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Brasil, Bolsa, Balcão
--   Version: 8.2
--   Date: Friday, August 30, 2024
--   Specification: BinaryEntryPoint-MessageReference-8.2.1-enUS - Implied.pdf
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
