-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Moex Spectra OrderEntry Twime 9.12.0 Protocol
local omi_moex_spectra_orderentry_twime_v9_12_0 = Proto("Omi.Moex.Spectra.OrderEntry.Twime.v9.12.0", "Moex Spectra OrderEntry Twime 9.12.0")

-- Protocol table
local moex_spectra_orderentry_twime_v9_12_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Moex Spectra OrderEntry Twime 9.12.0 Fields
omi_moex_spectra_orderentry_twime_v9_12_0.fields.account = ProtoField.new("Account", "moex.spectra.orderentry.twime.v9.12.0.account", ftypes.STRING)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.active_side = ProtoField.new("Active Side", "moex.spectra.orderentry.twime.v9.12.0.activeside", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000020000000000, "ActiveSide")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.block_length = ProtoField.new("Block Length", "moex.spectra.orderentry.twime.v9.12.0.blocklength", ftypes.UINT16, nil, nil, nil, "Message body length")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.boc = ProtoField.new("Boc", "moex.spectra.orderentry.twime.v9.12.0.boc", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x1000000000000000)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.cancel = ProtoField.new("Cancel", "moex.spectra.orderentry.twime.v9.12.0.cancel", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000200000)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "moex.spectra.orderentry.twime.v9.12.0.clordid", ftypes.UINT64, nil, nil, nil, "ClOrdID")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.cl_ord_link_id = ProtoField.new("Cl Ord Link Id", "moex.spectra.orderentry.twime.v9.12.0.clordlinkid", ftypes.INT32, nil, nil, nil, "ClOrdLinkID")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.clearing = ProtoField.new("Clearing", "moex.spectra.orderentry.twime.v9.12.0.clearing", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000002000000)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.client_flags = ProtoField.new("Client Flags", "moex.spectra.orderentry.twime.v9.12.0.clientflags", ftypes.STRING, nil, nil, nil, "ClientFlagsSet bit set")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.cod = ProtoField.new("Cod", "moex.spectra.orderentry.twime.v9.12.0.cod", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000100000000)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.collateral = ProtoField.new("Collateral", "moex.spectra.orderentry.twime.v9.12.0.collateral", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000010)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.compliance_id = ProtoField.new("Compliance Id", "moex.spectra.orderentry.twime.v9.12.0.complianceid", ftypes.STRING, nil, nil, nil, "ComplianceID")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.count = ProtoField.new("Count", "moex.spectra.orderentry.twime.v9.12.0.count", ftypes.UINT32)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.credentials = ProtoField.new("Credentials", "moex.spectra.orderentry.twime.v9.12.0.credentials", ftypes.STRING)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.cross_trade = ProtoField.new("Cross Trade", "moex.spectra.orderentry.twime.v9.12.0.crosstrade", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000020000000, "CrossTrade")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.day = ProtoField.new("Day", "moex.spectra.orderentry.twime.v9.12.0.day", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000001)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.disclosed_iceberg = ProtoField.new("Disclosed Iceberg", "moex.spectra.orderentry.twime.v9.12.0.disclosediceberg", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0020000000000000, "DisclosedIceberg")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.display_order_id = ProtoField.new("Display Order Id", "moex.spectra.orderentry.twime.v9.12.0.displayorderid", ftypes.INT64, nil, nil, nil, "DisplayOrderID")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.display_qty = ProtoField.new("Display Qty", "moex.spectra.orderentry.twime.v9.12.0.displayqty", ftypes.UINT32, nil, nil, nil, "DisplayQty")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.display_variance_qty = ProtoField.new("Display Variance Qty", "moex.spectra.orderentry.twime.v9.12.0.displayvarianceqty", ftypes.UINT32, nil, nil, nil, "DisplayVarianceQty")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.dont_check_limits = ProtoField.new("Dont Check Limits", "moex.spectra.orderentry.twime.v9.12.0.dontchecklimits", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000200, "DontCheckLimits")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.dont_check_limits_client_flags = ProtoField.new("Dont Check Limits Client Flags", "moex.spectra.orderentry.twime.v9.12.0.dontchecklimitsclientflags", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "DontCheckLimits")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.due_to_cross_cancel = ProtoField.new("Due To Cross Cancel", "moex.spectra.orderentry.twime.v9.12.0.duetocrosscancel", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000002000, "DueToCrossCancel")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.during_discrete_auction = ProtoField.new("During Discrete Auction", "moex.spectra.orderentry.twime.v9.12.0.duringdiscreteauction", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x4000000000000000, "DuringDiscreteAuction")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.establishment_reject_code = ProtoField.new("Establishment Reject Code", "moex.spectra.orderentry.twime.v9.12.0.establishmentrejectcode", ftypes.UINT8, nil, nil, nil, "EstablishmentRejectCode")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.event_id = ProtoField.new("Event Id", "moex.spectra.orderentry.twime.v9.12.0.eventid", ftypes.INT64, nil, nil, nil, "EventId")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.expire_date_utc = ProtoField.new("Expire Date", "moex.spectra.orderentry.twime.v9.12.0.expiredate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "ExpireDate")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.expire_date = ProtoField.new("Expire Date", "moex.spectra.orderentry.twime.v9.12.0.expiredate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "ExpireDate")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.flags = ProtoField.new("Flags", "moex.spectra.orderentry.twime.v9.12.0.flags", ftypes.STRING, nil, nil, nil, "FlagsSet bit set")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.flags_2 = ProtoField.new("Flags 2", "moex.spectra.orderentry.twime.v9.12.0.flags2", ftypes.STRING, nil, nil, nil, "Flags2Set bit set")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.fok = ProtoField.new("Fok", "moex.spectra.orderentry.twime.v9.12.0.fok", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000080000)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.from_seq_no = ProtoField.new("From Seq No", "moex.spectra.orderentry.twime.v9.12.0.fromseqno", ftypes.UINT64, nil, nil, nil, "FromSeqNo")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.future = ProtoField.new("Future", "moex.spectra.orderentry.twime.v9.12.0.future", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.iceberg = ProtoField.new("Iceberg", "moex.spectra.orderentry.twime.v9.12.0.iceberg", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000800000000000)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.ioc = ProtoField.new("Ioc", "moex.spectra.orderentry.twime.v9.12.0.ioc", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000002)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.keepalive_interval = ProtoField.new("Keepalive Interval", "moex.spectra.orderentry.twime.v9.12.0.keepaliveinterval", ftypes.UINT32, nil, nil, nil, "KeepaliveInterval")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.last_px = ProtoField.new("Last Px", "moex.spectra.orderentry.twime.v9.12.0.lastpx", ftypes.DOUBLE, nil, nil, nil, "LastPx")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.last_qty = ProtoField.new("Last Qty", "moex.spectra.orderentry.twime.v9.12.0.lastqty", ftypes.UINT32, nil, nil, nil, "LastQty")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.leg_price = ProtoField.new("Leg Price", "moex.spectra.orderentry.twime.v9.12.0.legprice", ftypes.DOUBLE, nil, nil, nil, "LegPrice")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.liq_netting_rf = ProtoField.new("Liq Netting Rf", "moex.spectra.orderentry.twime.v9.12.0.liqnettingrf", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000010000000000, "LiqNettingRF")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.mass_cancel = ProtoField.new("Mass Cancel", "moex.spectra.orderentry.twime.v9.12.0.masscancel", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000400000, "MassCancel")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.mode = ProtoField.new("Mode", "moex.spectra.orderentry.twime.v9.12.0.mode", ftypes.UINT8)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.multileg = ProtoField.new("Multileg", "moex.spectra.orderentry.twime.v9.12.0.multileg", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000008000000)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.multileg_security_type = ProtoField.new("Multileg Security Type", "moex.spectra.orderentry.twime.v9.12.0.multilegsecuritytype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04, "Multileg")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.ncc = ProtoField.new("Ncc", "moex.spectra.orderentry.twime.v9.12.0.ncc", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000008000000000)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.ncc_request = ProtoField.new("Ncc Request", "moex.spectra.orderentry.twime.v9.12.0.nccrequest", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000004000000000, "NCCRequest")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.ncc_request_client_flags = ProtoField.new("Ncc Request Client Flags", "moex.spectra.orderentry.twime.v9.12.0.nccrequestclientflags", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "NCCRequest")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.negotiated = ProtoField.new("Negotiated", "moex.spectra.orderentry.twime.v9.12.0.negotiated", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000004000000)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.negotiated_match_by_ref = ProtoField.new("Negotiated Match By Ref", "moex.spectra.orderentry.twime.v9.12.0.negotiatedmatchbyref", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000080000000, "NegotiatedMatchByRef")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.next_seq_no = ProtoField.new("Next Seq No", "moex.spectra.orderentry.twime.v9.12.0.nextseqno", ftypes.UINT64, nil, nil, nil, "NextSeqNo")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.option = ProtoField.new("Option", "moex.spectra.orderentry.twime.v9.12.0.option", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.ord_rej_reason = ProtoField.new("Ord Rej Reason", "moex.spectra.orderentry.twime.v9.12.0.ordrejreason", ftypes.INT32, nil, nil, nil, "OrdRejReason")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_id = ProtoField.new("Order Id", "moex.spectra.orderentry.twime.v9.12.0.orderid", ftypes.INT64, nil, nil, nil, "OrderID")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_qty = ProtoField.new("Order Qty", "moex.spectra.orderentry.twime.v9.12.0.orderqty", ftypes.UINT32, nil, nil, nil, "OrderQty")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.otc = ProtoField.new("Otc", "moex.spectra.orderentry.twime.v9.12.0.otc", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000004)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.passive_side = ProtoField.new("Passive Side", "moex.spectra.orderentry.twime.v9.12.0.passiveside", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000040000000000, "PassiveSide")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.penalty_remain = ProtoField.new("Penalty Remain", "moex.spectra.orderentry.twime.v9.12.0.penaltyremain", ftypes.UINT32, nil, nil, nil, "PenaltyRemain")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.pos_transfer = ProtoField.new("Pos Transfer", "moex.spectra.orderentry.twime.v9.12.0.postransfer", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000008, "PosTransfer")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.prev_order_id = ProtoField.new("Prev Order Id", "moex.spectra.orderentry.twime.v9.12.0.prevorderid", ftypes.INT64, nil, nil, nil, "PrevOrderID")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.price = ProtoField.new("Price", "moex.spectra.orderentry.twime.v9.12.0.price", ftypes.DOUBLE)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.queue_size = ProtoField.new("Queue Size", "moex.spectra.orderentry.twime.v9.12.0.queuesize", ftypes.UINT32, nil, nil, nil, "QueueSize")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.ref_tag_id = ProtoField.new("Ref Tag Id", "moex.spectra.orderentry.twime.v9.12.0.reftagid", ftypes.UINT32, nil, nil, nil, "RefTagID")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.replace = ProtoField.new("Replace", "moex.spectra.orderentry.twime.v9.12.0.replace", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000100000)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.request_timestamp_utc = ProtoField.new("Request Timestamp", "moex.spectra.orderentry.twime.v9.12.0.requesttimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "RequestTimestamp")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.request_timestamp = ProtoField.new("Request Timestamp", "moex.spectra.orderentry.twime.v9.12.0.requesttimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "RequestTimestamp")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.reserved_2_to_64 = ProtoField.new("Reserved 2 To 64", "moex.spectra.orderentry.twime.v9.12.0.reserved2to64", ftypes.UINT64, nil, base.DEC, UInt64(0xFFFFFFFE, 0xFFFFFFFF), "63 reserved bits")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.reserved_3_to_8 = ProtoField.new("Reserved 3 To 8", "moex.spectra.orderentry.twime.v9.12.0.reserved3to8", ftypes.UINT8, nil, base.DEC, 0xFC, "6 reserved bits")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.reserved_4_to_8 = ProtoField.new("Reserved 4 To 8", "moex.spectra.orderentry.twime.v9.12.0.reserved4to8", ftypes.UINT8, nil, base.DEC, 0xF8, "5 reserved bits")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.reserved_64 = ProtoField.new("Reserved 64", "moex.spectra.orderentry.twime.v9.12.0.reserved64", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, UInt64(0x00000000, 0x80000000), "1 reserved bit")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.schema_id = ProtoField.new("Schema Id", "moex.spectra.orderentry.twime.v9.12.0.schemaid", ftypes.UINT16, nil, nil, nil, "Message scheme ID")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.security_group = ProtoField.new("Security Group", "moex.spectra.orderentry.twime.v9.12.0.securitygroup", ftypes.STRING, nil, nil, nil, "SecurityGroup")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.security_id = ProtoField.new("Security Id", "moex.spectra.orderentry.twime.v9.12.0.securityid", ftypes.INT32, nil, nil, nil, "SecurityID")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.security_type = ProtoField.new("Security Type", "moex.spectra.orderentry.twime.v9.12.0.securitytype", ftypes.STRING, nil, nil, nil, "SecurityTypeSet bit set")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.session_reject_reason = ProtoField.new("Session Reject Reason", "moex.spectra.orderentry.twime.v9.12.0.sessionrejectreason", ftypes.UINT8, nil, nil, nil, "SessionRejectReason")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.side = ProtoField.new("Side", "moex.spectra.orderentry.twime.v9.12.0.side", ftypes.UINT8)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.synthetic = ProtoField.new("Synthetic", "moex.spectra.orderentry.twime.v9.12.0.synthetic", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000200000000000)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.template_id = ProtoField.new("Template Id", "moex.spectra.orderentry.twime.v9.12.0.templateid", ftypes.UINT16, nil, nil, nil, "Message ID")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.termination_code = ProtoField.new("Termination Code", "moex.spectra.orderentry.twime.v9.12.0.terminationcode", ftypes.UINT8, nil, nil, nil, "TerminationCode")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.time_in_force = ProtoField.new("Time In Force", "moex.spectra.orderentry.twime.v9.12.0.timeinforce", ftypes.UINT8, nil, nil, nil, "TimeInForce")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.timestamp_utc = ProtoField.new("Timestamp", "moex.spectra.orderentry.twime.v9.12.0.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.timestamp = ProtoField.new("Timestamp", "moex.spectra.orderentry.twime.v9.12.0.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.total_affected_orders = ProtoField.new("Total Affected Orders", "moex.spectra.orderentry.twime.v9.12.0.totalaffectedorders", ftypes.INT32, nil, nil, nil, "TotalAffectedOrders")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.trad_ses_event = ProtoField.new("Trad Ses Event", "moex.spectra.orderentry.twime.v9.12.0.tradsesevent", ftypes.UINT8, nil, nil, nil, "TradSesEvent")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.trading_session_id = ProtoField.new("Trading Session Id", "moex.spectra.orderentry.twime.v9.12.0.tradingsessionid", ftypes.INT32, nil, nil, nil, "TradingSessionID")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.trd_match_id = ProtoField.new("Trd Match Id", "moex.spectra.orderentry.twime.v9.12.0.trdmatchid", ftypes.INT64, nil, nil, nil, "TrdMatchID")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.uks = ProtoField.new("Uks", "moex.spectra.orderentry.twime.v9.12.0.uks", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000002000000000)
omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bit_29 = ProtoField.new("Unused Bit 29", "moex.spectra.orderentry.twime.v9.12.0.unusedbit29", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000010000000, "1 unused bit")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bit_31 = ProtoField.new("Unused Bit 31", "moex.spectra.orderentry.twime.v9.12.0.unusedbit31", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000040000000, "1 unused bit")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bit_47 = ProtoField.new("Unused Bit 47", "moex.spectra.orderentry.twime.v9.12.0.unusedbit47", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000400000000000, "1 unused bit")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bit_62 = ProtoField.new("Unused Bit 62", "moex.spectra.orderentry.twime.v9.12.0.unusedbit62", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x2000000000000000, "1 unused bit")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bits_11_to_13 = ProtoField.new("Unused Bits 11 To 13", "moex.spectra.orderentry.twime.v9.12.0.unusedbits11to13", ftypes.UINT64, nil, base.DEC, 0x0000000000001C00, "3 unused bits")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bits_15_to_19 = ProtoField.new("Unused Bits 15 To 19", "moex.spectra.orderentry.twime.v9.12.0.unusedbits15to19", ftypes.UINT64, nil, base.DEC, 0x000000000007C000, "5 unused bits")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bits_24_to_25 = ProtoField.new("Unused Bits 24 To 25", "moex.spectra.orderentry.twime.v9.12.0.unusedbits24to25", ftypes.UINT64, nil, base.DEC, 0x0000000001800000, "2 unused bits")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bits_34_to_37 = ProtoField.new("Unused Bits 34 To 37", "moex.spectra.orderentry.twime.v9.12.0.unusedbits34to37", ftypes.UINT64, nil, base.DEC, 0x0000001E00000000, "4 unused bits")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bits_44_to_45 = ProtoField.new("Unused Bits 44 To 45", "moex.spectra.orderentry.twime.v9.12.0.unusedbits44to45", ftypes.UINT64, nil, base.DEC, 0x0000180000000000, "2 unused bits")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bits_49_to_53 = ProtoField.new("Unused Bits 49 To 53", "moex.spectra.orderentry.twime.v9.12.0.unusedbits49to53", ftypes.UINT64, nil, base.DEC, 0x001F000000000000, "5 unused bits")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bits_55_to_60 = ProtoField.new("Unused Bits 55 To 60", "moex.spectra.orderentry.twime.v9.12.0.unusedbits55to60", ftypes.UINT64, nil, base.DEC, 0x0FC0000000000000, "6 unused bits")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bits_6_to_9 = ProtoField.new("Unused Bits 6 To 9", "moex.spectra.orderentry.twime.v9.12.0.unusedbits6to9", ftypes.UINT64, nil, base.DEC, 0x00000000000001E0, "4 unused bits")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.version = ProtoField.new("Version", "moex.spectra.orderentry.twime.v9.12.0.version", ftypes.UINT16, nil, nil, nil, "Message scheme version")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.zero = ProtoField.new("Zero", "moex.spectra.orderentry.twime.v9.12.0.zero", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000001)

-- Moex Spectra OrderEntry Twime 9.12.0 Framing
omi_moex_spectra_orderentry_twime_v9_12_0.fields.client_message = ProtoField.new("Client Message", "moex.spectra.orderentry.twime.v9.12.0.clientmessage", ftypes.STRING, nil, nil, nil, "One Sbe message sent by the firm: the unit the Tcp stream repeats")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.client_packet = ProtoField.new("Client Packet", "moex.spectra.orderentry.twime.v9.12.0.clientpacket", ftypes.STRING, nil, nil, nil, "Moex Twime Messages Sent By The Firm")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.sbe_header = ProtoField.new("Sbe Header", "moex.spectra.orderentry.twime.v9.12.0.sbeheader", ftypes.STRING, nil, nil, nil, "Message body length, message id, message scheme id and message scheme version")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.server_message = ProtoField.new("Server Message", "moex.spectra.orderentry.twime.v9.12.0.servermessage", ftypes.STRING, nil, nil, nil, "One Sbe message sent by the gateway: the unit the Tcp stream repeats")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.server_packet = ProtoField.new("Server Packet", "moex.spectra.orderentry.twime.v9.12.0.serverpacket", ftypes.STRING, nil, nil, nil, "Moex Twime Messages Sent By The Gateway")

-- Moex Spectra OrderEntry 9.12.0 Application Messages
omi_moex_spectra_orderentry_twime_v9_12_0.fields.business_message_reject_message = ProtoField.new("Business Message Reject Message", "moex.spectra.orderentry.twime.v9.12.0.businessmessagerejectmessage", ftypes.STRING, nil, nil, nil, "BusinessMessageRejectMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.empty_book_message = ProtoField.new("Empty Book Message", "moex.spectra.orderentry.twime.v9.12.0.emptybookmessage", ftypes.STRING, nil, nil, nil, "EmptyBookMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.establish_message = ProtoField.new("Establish Message", "moex.spectra.orderentry.twime.v9.12.0.establishmessage", ftypes.STRING, nil, nil, nil, "EstablishMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.establishment_ack_message = ProtoField.new("Establishment Ack Message", "moex.spectra.orderentry.twime.v9.12.0.establishmentackmessage", ftypes.STRING, nil, nil, nil, "EstablishmentAckMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.establishment_reject_message = ProtoField.new("Establishment Reject Message", "moex.spectra.orderentry.twime.v9.12.0.establishmentrejectmessage", ftypes.STRING, nil, nil, nil, "EstablishmentRejectMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.execution_multileg_report_message = ProtoField.new("Execution Multileg Report Message", "moex.spectra.orderentry.twime.v9.12.0.executionmultilegreportmessage", ftypes.STRING, nil, nil, nil, "ExecutionMultilegReportMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.execution_single_report_message = ProtoField.new("Execution Single Report Message", "moex.spectra.orderentry.twime.v9.12.0.executionsinglereportmessage", ftypes.STRING, nil, nil, nil, "ExecutionSingleReportMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.flood_reject_message = ProtoField.new("Flood Reject Message", "moex.spectra.orderentry.twime.v9.12.0.floodrejectmessage", ftypes.STRING, nil, nil, nil, "FloodRejectMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.new_order_iceberg_message = ProtoField.new("New Order Iceberg Message", "moex.spectra.orderentry.twime.v9.12.0.newordericebergmessage", ftypes.STRING, nil, nil, nil, "NewOrderIcebergMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.new_order_iceberg_response_message = ProtoField.new("New Order Iceberg Response Message", "moex.spectra.orderentry.twime.v9.12.0.newordericebergresponsemessage", ftypes.STRING, nil, nil, nil, "NewOrderIcebergResponseMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.new_order_iceberg_x_message = ProtoField.new("New Order Iceberg X Message", "moex.spectra.orderentry.twime.v9.12.0.newordericebergxmessage", ftypes.STRING, nil, nil, nil, "NewOrderIcebergXMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.new_order_single_message = ProtoField.new("New Order Single Message", "moex.spectra.orderentry.twime.v9.12.0.newordersinglemessage", ftypes.STRING, nil, nil, nil, "NewOrderSingleMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.new_order_single_response_message = ProtoField.new("New Order Single Response Message", "moex.spectra.orderentry.twime.v9.12.0.newordersingleresponsemessage", ftypes.STRING, nil, nil, nil, "NewOrderSingleResponseMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "moex.spectra.orderentry.twime.v9.12.0.ordercancelrequestmessage", ftypes.STRING, nil, nil, nil, "OrderCancelRequestMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_cancel_response_message = ProtoField.new("Order Cancel Response Message", "moex.spectra.orderentry.twime.v9.12.0.ordercancelresponsemessage", ftypes.STRING, nil, nil, nil, "OrderCancelResponseMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_iceberg_cancel_request_message = ProtoField.new("Order Iceberg Cancel Request Message", "moex.spectra.orderentry.twime.v9.12.0.ordericebergcancelrequestmessage", ftypes.STRING, nil, nil, nil, "OrderIcebergCancelRequestMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_iceberg_replace_request_message = ProtoField.new("Order Iceberg Replace Request Message", "moex.spectra.orderentry.twime.v9.12.0.ordericebergreplacerequestmessage", ftypes.STRING, nil, nil, nil, "OrderIcebergReplaceRequestMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_mass_cancel_by_bf_limit_request_message = ProtoField.new("Order Mass Cancel By Bf Limit Request Message", "moex.spectra.orderentry.twime.v9.12.0.ordermasscancelbybflimitrequestmessage", ftypes.STRING, nil, nil, nil, "OrderMassCancelByBFLimitRequestMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_mass_cancel_request_message = ProtoField.new("Order Mass Cancel Request Message", "moex.spectra.orderentry.twime.v9.12.0.ordermasscancelrequestmessage", ftypes.STRING, nil, nil, nil, "OrderMassCancelRequestMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_mass_cancel_response_message = ProtoField.new("Order Mass Cancel Response Message", "moex.spectra.orderentry.twime.v9.12.0.ordermasscancelresponsemessage", ftypes.STRING, nil, nil, nil, "OrderMassCancelResponseMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_replace_request_message = ProtoField.new("Order Replace Request Message", "moex.spectra.orderentry.twime.v9.12.0.orderreplacerequestmessage", ftypes.STRING, nil, nil, nil, "OrderReplaceRequestMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_replace_response_message = ProtoField.new("Order Replace Response Message", "moex.spectra.orderentry.twime.v9.12.0.orderreplaceresponsemessage", ftypes.STRING, nil, nil, nil, "OrderReplaceResponseMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.retransmission_message = ProtoField.new("Retransmission Message", "moex.spectra.orderentry.twime.v9.12.0.retransmissionmessage", ftypes.STRING, nil, nil, nil, "RetransmissionMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.retransmit_request_message = ProtoField.new("Retransmit Request Message", "moex.spectra.orderentry.twime.v9.12.0.retransmitrequestmessage", ftypes.STRING, nil, nil, nil, "RetransmitRequestMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.sequence_message = ProtoField.new("Sequence Message", "moex.spectra.orderentry.twime.v9.12.0.sequencemessage", ftypes.STRING, nil, nil, nil, "SequenceMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.session_reject_message = ProtoField.new("Session Reject Message", "moex.spectra.orderentry.twime.v9.12.0.sessionrejectmessage", ftypes.STRING, nil, nil, nil, "SessionRejectMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.system_event_message = ProtoField.new("System Event Message", "moex.spectra.orderentry.twime.v9.12.0.systemeventmessage", ftypes.STRING, nil, nil, nil, "SystemEventMessage")
omi_moex_spectra_orderentry_twime_v9_12_0.fields.terminate_message = ProtoField.new("Terminate Message", "moex.spectra.orderentry.twime.v9.12.0.terminatemessage", ftypes.STRING, nil, nil, nil, "TerminateMessage")

-- Moex Spectra OrderEntry Twime 9.12.0 Expert Info
moex_spectra_orderentry_twime_v9_12_0.experts = {}
moex_spectra_orderentry_twime_v9_12_0.experts.undecoded = ProtoExpert.new("moex.spectra.orderentry.twime.v9.12.0.undecoded", "Fields run past the size the wire gives them", expert.group.MALFORMED, expert.severity.ERROR)
omi_moex_spectra_orderentry_twime_v9_12_0.experts = { moex_spectra_orderentry_twime_v9_12_0.experts.undecoded }

-----------------------------------------------------------------------
-- Moex Spectra OrderEntry Twime 9.12.0 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "DateTime Local", 2 },
  { 2, "DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=DateTime Local, 3=DateTime Utc, 4=DateTime Zone
moex_spectra_orderentry_twime_v9_12_0.timestamp_format = 3

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

-- Moex Spectra OrderEntry Twime 9.12.0 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Moex Spectra OrderEntry Twime 9.12.0 Show Options
omi_moex_spectra_orderentry_twime_v9_12_0.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_moex_spectra_orderentry_twime_v9_12_0.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_moex_spectra_orderentry_twime_v9_12_0.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_moex_spectra_orderentry_twime_v9_12_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_moex_spectra_orderentry_twime_v9_12_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_moex_spectra_orderentry_twime_v9_12_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

omi_moex_spectra_orderentry_twime_v9_12_0.prefs.timestamp_format = Pref.enum("Timestamp Format", 3, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_moex_spectra_orderentry_twime_v9_12_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_moex_spectra_orderentry_twime_v9_12_0.prefs.show_application_messages then
    show.application_messages = omi_moex_spectra_orderentry_twime_v9_12_0.prefs.show_application_messages
  end
  if show.headers ~= omi_moex_spectra_orderentry_twime_v9_12_0.prefs.show_headers then
    show.headers = omi_moex_spectra_orderentry_twime_v9_12_0.prefs.show_headers
  end
  if show.structs ~= omi_moex_spectra_orderentry_twime_v9_12_0.prefs.show_structs then
    show.structs = omi_moex_spectra_orderentry_twime_v9_12_0.prefs.show_structs
  end
  if moex_spectra_orderentry_twime_v9_12_0.timestamp_format ~= omi_moex_spectra_orderentry_twime_v9_12_0.prefs.timestamp_format then
    moex_spectra_orderentry_twime_v9_12_0.timestamp_format = omi_moex_spectra_orderentry_twime_v9_12_0.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------


-- Mark a sized group whose fields read past its end; raise any other failure as it was
local function undecoded(failure, parent, expert, text)
  if not string.find(tostring(failure), "Range is out of bounds", 1, true) then
    error(failure, 0)
  end

  parent:add_proto_expert_info(expert, text)
end
-----------------------------------------------------------------------
-- Moex Spectra OrderEntry Twime 9.12.0 Fields
-----------------------------------------------------------------------

-- Account
moex_spectra_orderentry_twime_v9_12_0.account = {}

-- Size: Account
moex_spectra_orderentry_twime_v9_12_0.account.size = 7

-- Display: Account
moex_spectra_orderentry_twime_v9_12_0.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
moex_spectra_orderentry_twime_v9_12_0.account.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.account.size
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

  local display = moex_spectra_orderentry_twime_v9_12_0.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.account, range, value, display)

  return offset + length, value
end

-- Block Length
moex_spectra_orderentry_twime_v9_12_0.block_length = {}

-- Size: Block Length
moex_spectra_orderentry_twime_v9_12_0.block_length.size = 2

-- Display: Block Length
moex_spectra_orderentry_twime_v9_12_0.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
moex_spectra_orderentry_twime_v9_12_0.block_length.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
moex_spectra_orderentry_twime_v9_12_0.cl_ord_id = {}

-- Size: Cl Ord Id
moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size = 8

-- Display: Cl Ord Id
moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Cl Ord Id: No Value"
  end

  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Cl Ord Link Id
moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id = {}

-- Size: Cl Ord Link Id
moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.size = 4

-- Display: Cl Ord Link Id
moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Cl Ord Link Id: No Value"
  end

  return "Cl Ord Link Id: "..value
end

-- Dissect: Cl Ord Link Id
moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.cl_ord_link_id, range, value, display)

  return offset + length, value
end

-- Compliance Id
moex_spectra_orderentry_twime_v9_12_0.compliance_id = {}

-- Size: Compliance Id
moex_spectra_orderentry_twime_v9_12_0.compliance_id.size = 1

-- Display: Compliance Id
moex_spectra_orderentry_twime_v9_12_0.compliance_id.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Compliance Id: No Value"
  end

  if value == " " then
    return "Compliance Id: Not Available (<whitespace>)"
  end
  if value == "M" then
    return "Compliance Id: Manual (M)"
  end
  if value == "S" then
    return "Compliance Id: Stop Loss (S)"
  end
  if value == "R" then
    return "Compliance Id: Algorithm (R)"
  end
  if value == "A" then
    return "Compliance Id: Autofollow (A)"
  end
  if value == "D" then
    return "Compliance Id: Margin Call (D)"
  end

  return "Compliance Id: Unknown("..value..")"
end

-- Dissect: Compliance Id
moex_spectra_orderentry_twime_v9_12_0.compliance_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.compliance_id.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = moex_spectra_orderentry_twime_v9_12_0.compliance_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.compliance_id, range, value, display)

  return offset + length, value
end

-- Count
moex_spectra_orderentry_twime_v9_12_0.count = {}

-- Size: Count
moex_spectra_orderentry_twime_v9_12_0.count.size = 4

-- Display: Count
moex_spectra_orderentry_twime_v9_12_0.count.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Count: No Value"
  end

  return "Count: "..value
end

-- Dissect: Count
moex_spectra_orderentry_twime_v9_12_0.count.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.count, range, value, display)

  return offset + length, value
end

-- Credentials
moex_spectra_orderentry_twime_v9_12_0.credentials = {}

-- Size: Credentials
moex_spectra_orderentry_twime_v9_12_0.credentials.size = 20

-- Display: Credentials
moex_spectra_orderentry_twime_v9_12_0.credentials.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Credentials: No Value"
  end

  return "Credentials: "..value
end

-- Dissect: Credentials
moex_spectra_orderentry_twime_v9_12_0.credentials.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.credentials.size
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

  local display = moex_spectra_orderentry_twime_v9_12_0.credentials.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.credentials, range, value, display)

  return offset + length, value
end

-- Display Order Id
moex_spectra_orderentry_twime_v9_12_0.display_order_id = {}

-- Size: Display Order Id
moex_spectra_orderentry_twime_v9_12_0.display_order_id.size = 8

-- Display: Display Order Id
moex_spectra_orderentry_twime_v9_12_0.display_order_id.display = function(value)
  -- Check if field has value
  if value == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Display Order Id: No Value"
  end

  return "Display Order Id: "..value
end

-- Dissect: Display Order Id
moex_spectra_orderentry_twime_v9_12_0.display_order_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.display_order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = moex_spectra_orderentry_twime_v9_12_0.display_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.display_order_id, range, value, display)

  return offset + length, value
end

-- Display Qty
moex_spectra_orderentry_twime_v9_12_0.display_qty = {}

-- Size: Display Qty
moex_spectra_orderentry_twime_v9_12_0.display_qty.size = 4

-- Display: Display Qty
moex_spectra_orderentry_twime_v9_12_0.display_qty.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Display Qty: No Value"
  end

  return "Display Qty: "..value
end

-- Dissect: Display Qty
moex_spectra_orderentry_twime_v9_12_0.display_qty.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.display_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Display Variance Qty
moex_spectra_orderentry_twime_v9_12_0.display_variance_qty = {}

-- Size: Display Variance Qty
moex_spectra_orderentry_twime_v9_12_0.display_variance_qty.size = 4

-- Display: Display Variance Qty
moex_spectra_orderentry_twime_v9_12_0.display_variance_qty.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Display Variance Qty: No Value"
  end

  return "Display Variance Qty: "..value
end

-- Dissect: Display Variance Qty
moex_spectra_orderentry_twime_v9_12_0.display_variance_qty.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.display_variance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.display_variance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.display_variance_qty, range, value, display)

  return offset + length, value
end

-- Establishment Reject Code
moex_spectra_orderentry_twime_v9_12_0.establishment_reject_code = {}

-- Size: Establishment Reject Code
moex_spectra_orderentry_twime_v9_12_0.establishment_reject_code.size = 1

-- Display: Establishment Reject Code
moex_spectra_orderentry_twime_v9_12_0.establishment_reject_code.labels = {
  [0] = "Establishment Reject Code: Unnegotiated (0)",
  [1] = "Establishment Reject Code: Already Established (1)",
  [2] = "Establishment Reject Code: Session Blocked (2)",
  [3] = "Establishment Reject Code: Keepalive Interval (3)",
  [4] = "Establishment Reject Code: Credentials (4)",
  [5] = "Establishment Reject Code: Unspecified (5)",
  [6] = "Establishment Reject Code: Too Fast Reconnect (6)",
}

moex_spectra_orderentry_twime_v9_12_0.establishment_reject_code.display = function(value)
  return moex_spectra_orderentry_twime_v9_12_0.establishment_reject_code.labels[value] or "Establishment Reject Code: Unknown("..value..")"
end

-- Dissect: Establishment Reject Code
moex_spectra_orderentry_twime_v9_12_0.establishment_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.establishment_reject_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.establishment_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.establishment_reject_code, range, value, display)

  return offset + length, value
end

-- Event Id
moex_spectra_orderentry_twime_v9_12_0.event_id = {}

-- Size: Event Id
moex_spectra_orderentry_twime_v9_12_0.event_id.size = 8

-- Display: Event Id
moex_spectra_orderentry_twime_v9_12_0.event_id.display = function(value)
  -- Check if field has value
  if value == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Event Id: No Value"
  end

  return "Event Id: "..value
end

-- Dissect: Event Id
moex_spectra_orderentry_twime_v9_12_0.event_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.event_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = moex_spectra_orderentry_twime_v9_12_0.event_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.event_id, range, value, display)

  return offset + length, value
end

-- Expire Date
moex_spectra_orderentry_twime_v9_12_0.expire_date = {}

-- Size: Expire Date
moex_spectra_orderentry_twime_v9_12_0.expire_date.size = 8

-- Dissect: Expire Date
moex_spectra_orderentry_twime_v9_12_0.expire_date.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.expire_date.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_orderentry_twime_v9_12_0.fields.expire_date
  if moex_spectra_orderentry_twime_v9_12_0.timestamp_format == 3 then field = omi_moex_spectra_orderentry_twime_v9_12_0.fields.expire_date_utc end

  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Expire Date: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- From Seq No
moex_spectra_orderentry_twime_v9_12_0.from_seq_no = {}

-- Size: From Seq No
moex_spectra_orderentry_twime_v9_12_0.from_seq_no.size = 8

-- Display: From Seq No
moex_spectra_orderentry_twime_v9_12_0.from_seq_no.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "From Seq No: No Value"
  end

  return "From Seq No: "..value
end

-- Dissect: From Seq No
moex_spectra_orderentry_twime_v9_12_0.from_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.from_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = moex_spectra_orderentry_twime_v9_12_0.from_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.from_seq_no, range, value, display)

  return offset + length, value
end

-- Keepalive Interval
moex_spectra_orderentry_twime_v9_12_0.keepalive_interval = {}

-- Size: Keepalive Interval
moex_spectra_orderentry_twime_v9_12_0.keepalive_interval.size = 4

-- Display: Keepalive Interval
moex_spectra_orderentry_twime_v9_12_0.keepalive_interval.display = function(value)
  return "Keepalive Interval: "..value
end

-- Dissect: Keepalive Interval
moex_spectra_orderentry_twime_v9_12_0.keepalive_interval.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.keepalive_interval.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.keepalive_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.keepalive_interval, range, value, display)

  return offset + length, value
end

-- Last Px
moex_spectra_orderentry_twime_v9_12_0.last_px = {}

-- Size: Last Px
moex_spectra_orderentry_twime_v9_12_0.last_px.size = 8

-- Display: Last Px
moex_spectra_orderentry_twime_v9_12_0.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
moex_spectra_orderentry_twime_v9_12_0.last_px.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Last Px
moex_spectra_orderentry_twime_v9_12_0.last_px.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_orderentry_twime_v9_12_0.last_px.translate(raw)
  local display = moex_spectra_orderentry_twime_v9_12_0.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
moex_spectra_orderentry_twime_v9_12_0.last_qty = {}

-- Size: Last Qty
moex_spectra_orderentry_twime_v9_12_0.last_qty.size = 4

-- Display: Last Qty
moex_spectra_orderentry_twime_v9_12_0.last_qty.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Last Qty: No Value"
  end

  return "Last Qty: "..value
end

-- Dissect: Last Qty
moex_spectra_orderentry_twime_v9_12_0.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Leg Price
moex_spectra_orderentry_twime_v9_12_0.leg_price = {}

-- Size: Leg Price
moex_spectra_orderentry_twime_v9_12_0.leg_price.size = 8

-- Display: Leg Price
moex_spectra_orderentry_twime_v9_12_0.leg_price.display = function(value)
  return "Leg Price: "..value
end

-- Translate: Leg Price
moex_spectra_orderentry_twime_v9_12_0.leg_price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Leg Price
moex_spectra_orderentry_twime_v9_12_0.leg_price.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.leg_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_orderentry_twime_v9_12_0.leg_price.translate(raw)
  local display = moex_spectra_orderentry_twime_v9_12_0.leg_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Mode
moex_spectra_orderentry_twime_v9_12_0.mode = {}

-- Size: Mode
moex_spectra_orderentry_twime_v9_12_0.mode.size = 1

-- Display: Mode
moex_spectra_orderentry_twime_v9_12_0.mode.labels = {
  [0] = "Mode: Dont Change Order Qty (0)",
  [1] = "Mode: Change Order Qty (1)",
  [2] = "Mode: Check Order Qty And Cancel Order (2)",
  [3] = "Mode: Fix Style Replace (3)",
}

moex_spectra_orderentry_twime_v9_12_0.mode.display = function(value)
  return moex_spectra_orderentry_twime_v9_12_0.mode.labels[value] or "Mode: Unknown("..value..")"
end

-- Dissect: Mode
moex_spectra_orderentry_twime_v9_12_0.mode.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.mode.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.mode, range, value, display)

  return offset + length, value
end

-- Next Seq No
moex_spectra_orderentry_twime_v9_12_0.next_seq_no = {}

-- Size: Next Seq No
moex_spectra_orderentry_twime_v9_12_0.next_seq_no.size = 8

-- Display: Next Seq No
moex_spectra_orderentry_twime_v9_12_0.next_seq_no.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Next Seq No: No Value"
  end

  return "Next Seq No: "..value
end

-- Dissect: Next Seq No
moex_spectra_orderentry_twime_v9_12_0.next_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.next_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = moex_spectra_orderentry_twime_v9_12_0.next_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.next_seq_no, range, value, display)

  return offset + length, value
end

-- Ord Rej Reason
moex_spectra_orderentry_twime_v9_12_0.ord_rej_reason = {}

-- Size: Ord Rej Reason
moex_spectra_orderentry_twime_v9_12_0.ord_rej_reason.size = 4

-- Display: Ord Rej Reason
moex_spectra_orderentry_twime_v9_12_0.ord_rej_reason.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Ord Rej Reason: No Value"
  end

  return "Ord Rej Reason: "..value
end

-- Dissect: Ord Rej Reason
moex_spectra_orderentry_twime_v9_12_0.ord_rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.ord_rej_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_orderentry_twime_v9_12_0.ord_rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.ord_rej_reason, range, value, display)

  return offset + length, value
end

-- Order Id
moex_spectra_orderentry_twime_v9_12_0.order_id = {}

-- Size: Order Id
moex_spectra_orderentry_twime_v9_12_0.order_id.size = 8

-- Display: Order Id
moex_spectra_orderentry_twime_v9_12_0.order_id.display = function(value)
  -- Check if field has value
  if value == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Order Id: No Value"
  end

  return "Order Id: "..value
end

-- Dissect: Order Id
moex_spectra_orderentry_twime_v9_12_0.order_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = moex_spectra_orderentry_twime_v9_12_0.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Qty
moex_spectra_orderentry_twime_v9_12_0.order_qty = {}

-- Size: Order Qty
moex_spectra_orderentry_twime_v9_12_0.order_qty.size = 4

-- Display: Order Qty
moex_spectra_orderentry_twime_v9_12_0.order_qty.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Order Qty: No Value"
  end

  return "Order Qty: "..value
end

-- Dissect: Order Qty
moex_spectra_orderentry_twime_v9_12_0.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Penalty Remain
moex_spectra_orderentry_twime_v9_12_0.penalty_remain = {}

-- Size: Penalty Remain
moex_spectra_orderentry_twime_v9_12_0.penalty_remain.size = 4

-- Display: Penalty Remain
moex_spectra_orderentry_twime_v9_12_0.penalty_remain.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Penalty Remain: No Value"
  end

  return "Penalty Remain: "..value
end

-- Dissect: Penalty Remain
moex_spectra_orderentry_twime_v9_12_0.penalty_remain.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.penalty_remain.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.penalty_remain.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.penalty_remain, range, value, display)

  return offset + length, value
end

-- Prev Order Id
moex_spectra_orderentry_twime_v9_12_0.prev_order_id = {}

-- Size: Prev Order Id
moex_spectra_orderentry_twime_v9_12_0.prev_order_id.size = 8

-- Display: Prev Order Id
moex_spectra_orderentry_twime_v9_12_0.prev_order_id.display = function(value)
  -- Check if field has value
  if value == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Prev Order Id: No Value"
  end

  return "Prev Order Id: "..value
end

-- Dissect: Prev Order Id
moex_spectra_orderentry_twime_v9_12_0.prev_order_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.prev_order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = moex_spectra_orderentry_twime_v9_12_0.prev_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.prev_order_id, range, value, display)

  return offset + length, value
end

-- Price
moex_spectra_orderentry_twime_v9_12_0.price = {}

-- Size: Price
moex_spectra_orderentry_twime_v9_12_0.price.size = 8

-- Display: Price
moex_spectra_orderentry_twime_v9_12_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
moex_spectra_orderentry_twime_v9_12_0.price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Price
moex_spectra_orderentry_twime_v9_12_0.price.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_orderentry_twime_v9_12_0.price.translate(raw)
  local display = moex_spectra_orderentry_twime_v9_12_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.price, range, value, display)

  return offset + length, value
end

-- Queue Size
moex_spectra_orderentry_twime_v9_12_0.queue_size = {}

-- Size: Queue Size
moex_spectra_orderentry_twime_v9_12_0.queue_size.size = 4

-- Display: Queue Size
moex_spectra_orderentry_twime_v9_12_0.queue_size.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Queue Size: No Value"
  end

  return "Queue Size: "..value
end

-- Dissect: Queue Size
moex_spectra_orderentry_twime_v9_12_0.queue_size.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.queue_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.queue_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.queue_size, range, value, display)

  return offset + length, value
end

-- Ref Tag Id
moex_spectra_orderentry_twime_v9_12_0.ref_tag_id = {}

-- Size: Ref Tag Id
moex_spectra_orderentry_twime_v9_12_0.ref_tag_id.size = 4

-- Display: Ref Tag Id
moex_spectra_orderentry_twime_v9_12_0.ref_tag_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Ref Tag Id: No Value"
  end

  return "Ref Tag Id: "..value
end

-- Dissect: Ref Tag Id
moex_spectra_orderentry_twime_v9_12_0.ref_tag_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.ref_tag_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.ref_tag_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.ref_tag_id, range, value, display)

  return offset + length, value
end

-- Request Timestamp
moex_spectra_orderentry_twime_v9_12_0.request_timestamp = {}

-- Size: Request Timestamp
moex_spectra_orderentry_twime_v9_12_0.request_timestamp.size = 8

-- Dissect: Request Timestamp
moex_spectra_orderentry_twime_v9_12_0.request_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.request_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_orderentry_twime_v9_12_0.fields.request_timestamp
  if moex_spectra_orderentry_twime_v9_12_0.timestamp_format == 3 then field = omi_moex_spectra_orderentry_twime_v9_12_0.fields.request_timestamp_utc end

  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Request Timestamp: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Schema Id
moex_spectra_orderentry_twime_v9_12_0.schema_id = {}

-- Size: Schema Id
moex_spectra_orderentry_twime_v9_12_0.schema_id.size = 2

-- Display: Schema Id
moex_spectra_orderentry_twime_v9_12_0.schema_id.display = function(value)
  if value == 19781 then
    return "Schema Id: Moex Spectra Twime (19781)"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
moex_spectra_orderentry_twime_v9_12_0.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Security Group
moex_spectra_orderentry_twime_v9_12_0.security_group = {}

-- Size: Security Group
moex_spectra_orderentry_twime_v9_12_0.security_group.size = 25

-- Display: Security Group
moex_spectra_orderentry_twime_v9_12_0.security_group.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group: No Value"
  end

  return "Security Group: "..value
end

-- Dissect: Security Group
moex_spectra_orderentry_twime_v9_12_0.security_group.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.security_group.size
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

  local display = moex_spectra_orderentry_twime_v9_12_0.security_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.security_group, range, value, display)

  return offset + length, value
end

-- Security Id
moex_spectra_orderentry_twime_v9_12_0.security_id = {}

-- Size: Security Id
moex_spectra_orderentry_twime_v9_12_0.security_id.size = 4

-- Display: Security Id
moex_spectra_orderentry_twime_v9_12_0.security_id.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Security Id: No Value"
  end

  return "Security Id: "..value
end

-- Dissect: Security Id
moex_spectra_orderentry_twime_v9_12_0.security_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_orderentry_twime_v9_12_0.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.security_id, range, value, display)

  return offset + length, value
end

-- Session Reject Reason
moex_spectra_orderentry_twime_v9_12_0.session_reject_reason = {}

-- Size: Session Reject Reason
moex_spectra_orderentry_twime_v9_12_0.session_reject_reason.size = 1

-- Display: Session Reject Reason
moex_spectra_orderentry_twime_v9_12_0.session_reject_reason.labels = {
  [5] = "Session Reject Reason: Value Is Incorrect (5)",
  [99] = "Session Reject Reason: Other (99)",
  [100] = "Session Reject Reason: System Is Unavailable (100)",
  [101] = "Session Reject Reason: Cl Ord Id Is Not Unique (101)",
}

moex_spectra_orderentry_twime_v9_12_0.session_reject_reason.display = function(value)
  return moex_spectra_orderentry_twime_v9_12_0.session_reject_reason.labels[value] or "Session Reject Reason: Unknown("..value..")"
end

-- Dissect: Session Reject Reason
moex_spectra_orderentry_twime_v9_12_0.session_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.session_reject_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.session_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.session_reject_reason, range, value, display)

  return offset + length, value
end

-- Side
moex_spectra_orderentry_twime_v9_12_0.side = {}

-- Size: Side
moex_spectra_orderentry_twime_v9_12_0.side.size = 1

-- Display: Side
moex_spectra_orderentry_twime_v9_12_0.side.labels = {
  [1] = "Side: Buy (1)",
  [2] = "Side: Sell (2)",
  [89] = "Side: All Orders (89)",
}

moex_spectra_orderentry_twime_v9_12_0.side.display = function(value)
  return moex_spectra_orderentry_twime_v9_12_0.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
moex_spectra_orderentry_twime_v9_12_0.side.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.side.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.side, range, value, display)

  return offset + length, value
end

-- Template Id
moex_spectra_orderentry_twime_v9_12_0.template_id = {}

-- Size: Template Id
moex_spectra_orderentry_twime_v9_12_0.template_id.size = 2

-- Display: Template Id
moex_spectra_orderentry_twime_v9_12_0.template_id.labels = {
  [5000] = "Template Id: Establish Message (5000)",
  [5001] = "Template Id: Establishment Ack Message (5001)",
  [5002] = "Template Id: Establishment Reject Message (5002)",
  [5003] = "Template Id: Terminate Message (5003)",
  [5004] = "Template Id: Retransmit Request Message (5004)",
  [5005] = "Template Id: Retransmission Message (5005)",
  [5006] = "Template Id: Sequence Message (5006)",
  [5007] = "Template Id: Flood Reject Message (5007)",
  [5008] = "Template Id: Session Reject Message (5008)",
  [5009] = "Template Id: Business Message Reject Message (5009)",
  [6000] = "Template Id: New Order Single Message (6000)",
  [6008] = "Template Id: New Order Iceberg Message (6008)",
  [6011] = "Template Id: New Order Iceberg X Message (6011)",
  [6006] = "Template Id: Order Cancel Request Message (6006)",
  [6009] = "Template Id: Order Iceberg Cancel Request Message (6009)",
  [6007] = "Template Id: Order Replace Request Message (6007)",
  [6010] = "Template Id: Order Iceberg Replace Request Message (6010)",
  [6004] = "Template Id: Order Mass Cancel Request Message (6004)",
  [6005] = "Template Id: Order Mass Cancel By Bf Limit Request Message (6005)",
  [7015] = "Template Id: New Order Single Response Message (7015)",
  [7016] = "Template Id: New Order Iceberg Response Message (7016)",
  [7017] = "Template Id: Order Cancel Response Message (7017)",
  [7018] = "Template Id: Order Replace Response Message (7018)",
  [7007] = "Template Id: Order Mass Cancel Response Message (7007)",
  [7019] = "Template Id: Execution Single Report Message (7019)",
  [7020] = "Template Id: Execution Multileg Report Message (7020)",
  [7010] = "Template Id: Empty Book Message (7010)",
  [7014] = "Template Id: System Event Message (7014)",
}

moex_spectra_orderentry_twime_v9_12_0.template_id.display = function(value)
  return moex_spectra_orderentry_twime_v9_12_0.template_id.labels[value] or "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
moex_spectra_orderentry_twime_v9_12_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Termination Code
moex_spectra_orderentry_twime_v9_12_0.termination_code = {}

-- Size: Termination Code
moex_spectra_orderentry_twime_v9_12_0.termination_code.size = 1

-- Display: Termination Code
moex_spectra_orderentry_twime_v9_12_0.termination_code.labels = {
  [0] = "Termination Code: Finished (0)",
  [1] = "Termination Code: Unspecified Error (1)",
  [2] = "Termination Code: Re Request Out Of Bounds (2)",
  [3] = "Termination Code: Re Request In Progress (3)",
  [4] = "Termination Code: Too Fast Client (4)",
  [5] = "Termination Code: Too Slow Client (5)",
  [6] = "Termination Code: Missed Heartbeat (6)",
  [7] = "Termination Code: Invalid Message (7)",
  [8] = "Termination Code: Tcp Failure (8)",
  [9] = "Termination Code: Invalid Sequence Number (9)",
  [10] = "Termination Code: Server Shutdown (10)",
  [11] = "Termination Code: Sequence Reset (11)",
}

moex_spectra_orderentry_twime_v9_12_0.termination_code.display = function(value)
  return moex_spectra_orderentry_twime_v9_12_0.termination_code.labels[value] or "Termination Code: Unknown("..value..")"
end

-- Dissect: Termination Code
moex_spectra_orderentry_twime_v9_12_0.termination_code.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.termination_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.termination_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.termination_code, range, value, display)

  return offset + length, value
end

-- Time In Force
moex_spectra_orderentry_twime_v9_12_0.time_in_force = {}

-- Size: Time In Force
moex_spectra_orderentry_twime_v9_12_0.time_in_force.size = 1

-- Display: Time In Force
moex_spectra_orderentry_twime_v9_12_0.time_in_force.labels = {
  [0] = "Time In Force: Day (0)",
  [3] = "Time In Force: Ioc (3)",
  [4] = "Time In Force: Fok (4)",
  [6] = "Time In Force: Gtd (6)",
  [122] = "Time In Force: Boc (122)",
}

moex_spectra_orderentry_twime_v9_12_0.time_in_force.display = function(value)
  return moex_spectra_orderentry_twime_v9_12_0.time_in_force.labels[value] or "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
moex_spectra_orderentry_twime_v9_12_0.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.time_in_force.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Timestamp
moex_spectra_orderentry_twime_v9_12_0.timestamp = {}

-- Size: Timestamp
moex_spectra_orderentry_twime_v9_12_0.timestamp.size = 8

-- Dissect: Timestamp
moex_spectra_orderentry_twime_v9_12_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_orderentry_twime_v9_12_0.fields.timestamp
  if moex_spectra_orderentry_twime_v9_12_0.timestamp_format == 3 then field = omi_moex_spectra_orderentry_twime_v9_12_0.fields.timestamp_utc end

  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Timestamp: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Total Affected Orders
moex_spectra_orderentry_twime_v9_12_0.total_affected_orders = {}

-- Size: Total Affected Orders
moex_spectra_orderentry_twime_v9_12_0.total_affected_orders.size = 4

-- Display: Total Affected Orders
moex_spectra_orderentry_twime_v9_12_0.total_affected_orders.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Total Affected Orders: No Value"
  end

  return "Total Affected Orders: "..value
end

-- Dissect: Total Affected Orders
moex_spectra_orderentry_twime_v9_12_0.total_affected_orders.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.total_affected_orders.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_orderentry_twime_v9_12_0.total_affected_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.total_affected_orders, range, value, display)

  return offset + length, value
end

-- Trad Ses Event
moex_spectra_orderentry_twime_v9_12_0.trad_ses_event = {}

-- Size: Trad Ses Event
moex_spectra_orderentry_twime_v9_12_0.trad_ses_event.size = 1

-- Display: Trad Ses Event
moex_spectra_orderentry_twime_v9_12_0.trad_ses_event.labels = {
  [101] = "Trad Ses Event: Session Data Ready (101)",
  [105] = "Trad Ses Event: Clearing Started (105)",
  [106] = "Trad Ses Event: Extension Of Limits Finished (106)",
  [108] = "Trad Ses Event: Broker Recalc Finished (108)",
  [122] = "Trad Ses Event: Auction Finished (122)",
  [123] = "Trad Ses Event: Auction Collect Order Started (123)",
  [124] = "Trad Ses Event: Auction Collect Order Finished (124)",
}

moex_spectra_orderentry_twime_v9_12_0.trad_ses_event.display = function(value)
  return moex_spectra_orderentry_twime_v9_12_0.trad_ses_event.labels[value] or "Trad Ses Event: Unknown("..value..")"
end

-- Dissect: Trad Ses Event
moex_spectra_orderentry_twime_v9_12_0.trad_ses_event.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.trad_ses_event.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.trad_ses_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.trad_ses_event, range, value, display)

  return offset + length, value
end

-- Trading Session Id
moex_spectra_orderentry_twime_v9_12_0.trading_session_id = {}

-- Size: Trading Session Id
moex_spectra_orderentry_twime_v9_12_0.trading_session_id.size = 4

-- Display: Trading Session Id
moex_spectra_orderentry_twime_v9_12_0.trading_session_id.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Trading Session Id: No Value"
  end

  return "Trading Session Id: "..value
end

-- Dissect: Trading Session Id
moex_spectra_orderentry_twime_v9_12_0.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_orderentry_twime_v9_12_0.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Trd Match Id
moex_spectra_orderentry_twime_v9_12_0.trd_match_id = {}

-- Size: Trd Match Id
moex_spectra_orderentry_twime_v9_12_0.trd_match_id.size = 8

-- Display: Trd Match Id
moex_spectra_orderentry_twime_v9_12_0.trd_match_id.display = function(value)
  -- Check if field has value
  if value == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Trd Match Id: No Value"
  end

  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
moex_spectra_orderentry_twime_v9_12_0.trd_match_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.trd_match_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = moex_spectra_orderentry_twime_v9_12_0.trd_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Version
moex_spectra_orderentry_twime_v9_12_0.version = {}

-- Size: Version
moex_spectra_orderentry_twime_v9_12_0.version.size = 2

-- Display: Version
moex_spectra_orderentry_twime_v9_12_0.version.display = function(value)
  if value == 7 then
    return "Version: 7"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
moex_spectra_orderentry_twime_v9_12_0.version.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_orderentry_twime_v9_12_0.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Moex Spectra OrderEntry Twime 9.12.0
-----------------------------------------------------------------------

-- System Event Message
moex_spectra_orderentry_twime_v9_12_0.system_event_message = {}

-- Size: System Event Message
moex_spectra_orderentry_twime_v9_12_0.system_event_message.size =
  moex_spectra_orderentry_twime_v9_12_0.timestamp.size + 
  moex_spectra_orderentry_twime_v9_12_0.event_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.trading_session_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.trad_ses_event.size

-- Display: System Event Message
moex_spectra_orderentry_twime_v9_12_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
moex_spectra_orderentry_twime_v9_12_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimeStamp
  index, timestamp = moex_spectra_orderentry_twime_v9_12_0.timestamp.dissect(buffer, index, packet, parent)

  -- Event Id: Int64
  index, event_id = moex_spectra_orderentry_twime_v9_12_0.event_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: Int32
  index, trading_session_id = moex_spectra_orderentry_twime_v9_12_0.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Event: TradSesEventEnum
  index, trad_ses_event = moex_spectra_orderentry_twime_v9_12_0.trad_ses_event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
moex_spectra_orderentry_twime_v9_12_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.system_event_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Empty Book Message
moex_spectra_orderentry_twime_v9_12_0.empty_book_message = {}

-- Size: Empty Book Message
moex_spectra_orderentry_twime_v9_12_0.empty_book_message.size =
  moex_spectra_orderentry_twime_v9_12_0.timestamp.size + 
  moex_spectra_orderentry_twime_v9_12_0.trading_session_id.size

-- Display: Empty Book Message
moex_spectra_orderentry_twime_v9_12_0.empty_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Empty Book Message
moex_spectra_orderentry_twime_v9_12_0.empty_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimeStamp
  index, timestamp = moex_spectra_orderentry_twime_v9_12_0.timestamp.dissect(buffer, index, packet, parent)

  -- Trading Session Id: Int32
  index, trading_session_id = moex_spectra_orderentry_twime_v9_12_0.trading_session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Empty Book Message
moex_spectra_orderentry_twime_v9_12_0.empty_book_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.empty_book_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.empty_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.empty_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.empty_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Flags 2
moex_spectra_orderentry_twime_v9_12_0.flags_2 = {}

-- Size: Flags 2
moex_spectra_orderentry_twime_v9_12_0.flags_2.size = 8

-- Display: Flags 2
moex_spectra_orderentry_twime_v9_12_0.flags_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Zero flag set?
  if value:band(0x0000000000000001) ~= UInt64(0) then
    flags[#flags + 1] = "Zero"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Flags 2
moex_spectra_orderentry_twime_v9_12_0.flags_2.bits = function(range, value, packet, parent)

  -- Zero: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.zero, range, value)

  -- Reserved 2 To 64: 63 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.reserved_2_to_64, range, value)
end

-- Dissect: Flags 2
moex_spectra_orderentry_twime_v9_12_0.flags_2.dissect = function(buffer, offset, packet, parent)
  local size = moex_spectra_orderentry_twime_v9_12_0.flags_2.size
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = moex_spectra_orderentry_twime_v9_12_0.flags_2.display(range, value, packet, parent)
  local element = parent:add_le(omi_moex_spectra_orderentry_twime_v9_12_0.fields.flags_2, range, display)

  if show.structs then
    moex_spectra_orderentry_twime_v9_12_0.flags_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Flags
moex_spectra_orderentry_twime_v9_12_0.flags = {}

-- Size: Flags
moex_spectra_orderentry_twime_v9_12_0.flags.size = 8

-- Display: Flags
moex_spectra_orderentry_twime_v9_12_0.flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Day flag set?
  if value:band(0x0000000000000001) ~= UInt64(0) then
    flags[#flags + 1] = "Day"
  end
  -- Is Ioc flag set?
  if value:band(0x0000000000000002) ~= UInt64(0) then
    flags[#flags + 1] = "Ioc"
  end
  -- Is Otc flag set?
  if value:band(0x0000000000000004) ~= UInt64(0) then
    flags[#flags + 1] = "Otc"
  end
  -- Is Pos Transfer flag set?
  if value:band(0x0000000000000008) ~= UInt64(0) then
    flags[#flags + 1] = "Pos Transfer"
  end
  -- Is Collateral flag set?
  if value:band(0x0000000000000010) ~= UInt64(0) then
    flags[#flags + 1] = "Collateral"
  end
  -- Is Dont Check Limits flag set?
  if value:band(0x0000000000000200) ~= UInt64(0) then
    flags[#flags + 1] = "Dont Check Limits"
  end
  -- Is Due To Cross Cancel flag set?
  if value:band(0x0000000000002000) ~= UInt64(0) then
    flags[#flags + 1] = "Due To Cross Cancel"
  end
  -- Is Fok flag set?
  if value:band(0x0000000000080000) ~= UInt64(0) then
    flags[#flags + 1] = "Fok"
  end
  -- Is Replace flag set?
  if value:band(0x0000000000100000) ~= UInt64(0) then
    flags[#flags + 1] = "Replace"
  end
  -- Is Cancel flag set?
  if value:band(0x0000000000200000) ~= UInt64(0) then
    flags[#flags + 1] = "Cancel"
  end
  -- Is Mass Cancel flag set?
  if value:band(0x0000000000400000) ~= UInt64(0) then
    flags[#flags + 1] = "Mass Cancel"
  end
  -- Is Clearing flag set?
  if value:band(0x0000000002000000) ~= UInt64(0) then
    flags[#flags + 1] = "Clearing"
  end
  -- Is Negotiated flag set?
  if value:band(0x0000000004000000) ~= UInt64(0) then
    flags[#flags + 1] = "Negotiated"
  end
  -- Is Multileg flag set?
  if value:band(0x0000000008000000) ~= UInt64(0) then
    flags[#flags + 1] = "Multileg"
  end
  -- Is Cross Trade flag set?
  if value:band(0x0000000020000000) ~= UInt64(0) then
    flags[#flags + 1] = "Cross Trade"
  end
  -- Is Negotiated Match By Ref flag set?
  if value:band(0x0000000080000000) ~= UInt64(0) then
    flags[#flags + 1] = "Negotiated Match By Ref"
  end
  -- Is Cod flag set?
  if value:band(0x0000000100000000) ~= UInt64(0) then
    flags[#flags + 1] = "Cod"
  end
  -- Is Uks flag set?
  if value:band(0x0000002000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Uks"
  end
  -- Is Ncc Request flag set?
  if value:band(0x0000004000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Ncc Request"
  end
  -- Is Ncc flag set?
  if value:band(0x0000008000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Ncc"
  end
  -- Is Liq Netting Rf flag set?
  if value:band(0x0000010000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Liq Netting Rf"
  end
  -- Is Active Side flag set?
  if value:band(0x0000020000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Active Side"
  end
  -- Is Passive Side flag set?
  if value:band(0x0000040000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Passive Side"
  end
  -- Is Synthetic flag set?
  if value:band(0x0000200000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Synthetic"
  end
  -- Is Iceberg flag set?
  if value:band(0x0000800000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Iceberg"
  end
  -- Is Disclosed Iceberg flag set?
  if value:band(0x0020000000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Disclosed Iceberg"
  end
  -- Is Boc flag set?
  if value:band(0x1000000000000000) ~= UInt64(0) then
    flags[#flags + 1] = "Boc"
  end
  -- Is During Discrete Auction flag set?
  if value:band(0x4000000000000000) ~= UInt64(0) then
    flags[#flags + 1] = "During Discrete Auction"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Flags
moex_spectra_orderentry_twime_v9_12_0.flags.bits = function(range, value, packet, parent)

  -- Day: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.day, range, value)

  -- Ioc: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.ioc, range, value)

  -- Otc: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.otc, range, value)

  -- Pos Transfer: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.pos_transfer, range, value)

  -- Collateral: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.collateral, range, value)

  -- Unused Bits 6 To 9: 4 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bits_6_to_9, range, value)

  -- Dont Check Limits: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.dont_check_limits, range, value)

  -- Unused Bits 11 To 13: 3 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bits_11_to_13, range, value)

  -- Due To Cross Cancel: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.due_to_cross_cancel, range, value)

  -- Unused Bits 15 To 19: 5 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bits_15_to_19, range, value)

  -- Fok: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.fok, range, value)

  -- Replace: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.replace, range, value)

  -- Cancel: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.cancel, range, value)

  -- Mass Cancel: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.mass_cancel, range, value)

  -- Unused Bits 24 To 25: 2 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bits_24_to_25, range, value)

  -- Clearing: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.clearing, range, value)

  -- Negotiated: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.negotiated, range, value)

  -- Multileg: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.multileg, range, value)

  -- Unused Bit 29: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bit_29, range, value)

  -- Cross Trade: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.cross_trade, range, value)

  -- Unused Bit 31: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bit_31, range, value)

  -- Negotiated Match By Ref: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.negotiated_match_by_ref, range, value)

  -- Cod: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.cod, range, value)

  -- Unused Bits 34 To 37: 4 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bits_34_to_37, range, value)

  -- Uks: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.uks, range, value)

  -- Ncc Request: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.ncc_request, range, value)

  -- Ncc: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.ncc, range, value)

  -- Liq Netting Rf: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.liq_netting_rf, range, value)

  -- Active Side: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.active_side, range, value)

  -- Passive Side: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.passive_side, range, value)

  -- Unused Bits 44 To 45: 2 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bits_44_to_45, range, value)

  -- Synthetic: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.synthetic, range, value)

  -- Unused Bit 47: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bit_47, range, value)

  -- Iceberg: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.iceberg, range, value)

  -- Unused Bits 49 To 53: 5 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bits_49_to_53, range, value)

  -- Disclosed Iceberg: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.disclosed_iceberg, range, value)

  -- Unused Bits 55 To 60: 6 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bits_55_to_60, range, value)

  -- Boc: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.boc, range, value)

  -- Unused Bit 62: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.unused_bit_62, range, value)

  -- During Discrete Auction: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.during_discrete_auction, range, value)

  -- Reserved 64: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.reserved_64, range, value)
end

-- Dissect: Flags
moex_spectra_orderentry_twime_v9_12_0.flags.dissect = function(buffer, offset, packet, parent)
  local size = moex_spectra_orderentry_twime_v9_12_0.flags.size
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = moex_spectra_orderentry_twime_v9_12_0.flags.display(range, value, packet, parent)
  local element = parent:add_le(omi_moex_spectra_orderentry_twime_v9_12_0.fields.flags, range, display)

  if show.structs then
    moex_spectra_orderentry_twime_v9_12_0.flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Execution Multileg Report Message
moex_spectra_orderentry_twime_v9_12_0.execution_multileg_report_message = {}

-- Size: Execution Multileg Report Message
moex_spectra_orderentry_twime_v9_12_0.execution_multileg_report_message.size =
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.timestamp.size + 
  moex_spectra_orderentry_twime_v9_12_0.order_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.trd_match_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.flags.size + 
  moex_spectra_orderentry_twime_v9_12_0.flags_2.size + 
  moex_spectra_orderentry_twime_v9_12_0.last_px.size + 
  moex_spectra_orderentry_twime_v9_12_0.leg_price.size + 
  moex_spectra_orderentry_twime_v9_12_0.last_qty.size + 
  moex_spectra_orderentry_twime_v9_12_0.order_qty.size + 
  moex_spectra_orderentry_twime_v9_12_0.trading_session_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.security_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.side.size

-- Display: Execution Multileg Report Message
moex_spectra_orderentry_twime_v9_12_0.execution_multileg_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Multileg Report Message
moex_spectra_orderentry_twime_v9_12_0.execution_multileg_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: UInt64
  index, cl_ord_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Timestamp: TimeStamp
  index, timestamp = moex_spectra_orderentry_twime_v9_12_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Int64
  index, order_id = moex_spectra_orderentry_twime_v9_12_0.order_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: Int64
  index, trd_match_id = moex_spectra_orderentry_twime_v9_12_0.trd_match_id.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 41 fields
  index, flags = moex_spectra_orderentry_twime_v9_12_0.flags.dissect(buffer, index, packet, parent)

  -- Flags 2: Struct of 2 fields
  index, flags_2 = moex_spectra_orderentry_twime_v9_12_0.flags_2.dissect(buffer, index, packet, parent)

  -- Last Px: Decimal5
  index, last_px = moex_spectra_orderentry_twime_v9_12_0.last_px.dissect(buffer, index, packet, parent)

  -- Leg Price: Decimal5
  index, leg_price = moex_spectra_orderentry_twime_v9_12_0.leg_price.dissect(buffer, index, packet, parent)

  -- Last Qty: UInt32
  index, last_qty = moex_spectra_orderentry_twime_v9_12_0.last_qty.dissect(buffer, index, packet, parent)

  -- Order Qty: UInt32
  index, order_qty = moex_spectra_orderentry_twime_v9_12_0.order_qty.dissect(buffer, index, packet, parent)

  -- Trading Session Id: Int32
  index, trading_session_id = moex_spectra_orderentry_twime_v9_12_0.trading_session_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Link Id: Int32
  index, cl_ord_link_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = moex_spectra_orderentry_twime_v9_12_0.security_id.dissect(buffer, index, packet, parent)

  -- Side: SideEnum
  index, side = moex_spectra_orderentry_twime_v9_12_0.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Multileg Report Message
moex_spectra_orderentry_twime_v9_12_0.execution_multileg_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.execution_multileg_report_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.execution_multileg_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.execution_multileg_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.execution_multileg_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Single Report Message
moex_spectra_orderentry_twime_v9_12_0.execution_single_report_message = {}

-- Size: Execution Single Report Message
moex_spectra_orderentry_twime_v9_12_0.execution_single_report_message.size =
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.timestamp.size + 
  moex_spectra_orderentry_twime_v9_12_0.order_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.trd_match_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.flags.size + 
  moex_spectra_orderentry_twime_v9_12_0.flags_2.size + 
  moex_spectra_orderentry_twime_v9_12_0.last_px.size + 
  moex_spectra_orderentry_twime_v9_12_0.last_qty.size + 
  moex_spectra_orderentry_twime_v9_12_0.order_qty.size + 
  moex_spectra_orderentry_twime_v9_12_0.trading_session_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.security_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.side.size

-- Display: Execution Single Report Message
moex_spectra_orderentry_twime_v9_12_0.execution_single_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Single Report Message
moex_spectra_orderentry_twime_v9_12_0.execution_single_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: UInt64
  index, cl_ord_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Timestamp: TimeStamp
  index, timestamp = moex_spectra_orderentry_twime_v9_12_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Int64
  index, order_id = moex_spectra_orderentry_twime_v9_12_0.order_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: Int64
  index, trd_match_id = moex_spectra_orderentry_twime_v9_12_0.trd_match_id.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 41 fields
  index, flags = moex_spectra_orderentry_twime_v9_12_0.flags.dissect(buffer, index, packet, parent)

  -- Flags 2: Struct of 2 fields
  index, flags_2 = moex_spectra_orderentry_twime_v9_12_0.flags_2.dissect(buffer, index, packet, parent)

  -- Last Px: Decimal5
  index, last_px = moex_spectra_orderentry_twime_v9_12_0.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: UInt32
  index, last_qty = moex_spectra_orderentry_twime_v9_12_0.last_qty.dissect(buffer, index, packet, parent)

  -- Order Qty: UInt32
  index, order_qty = moex_spectra_orderentry_twime_v9_12_0.order_qty.dissect(buffer, index, packet, parent)

  -- Trading Session Id: Int32
  index, trading_session_id = moex_spectra_orderentry_twime_v9_12_0.trading_session_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Link Id: Int32
  index, cl_ord_link_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = moex_spectra_orderentry_twime_v9_12_0.security_id.dissect(buffer, index, packet, parent)

  -- Side: SideEnum
  index, side = moex_spectra_orderentry_twime_v9_12_0.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Single Report Message
moex_spectra_orderentry_twime_v9_12_0.execution_single_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.execution_single_report_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.execution_single_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.execution_single_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.execution_single_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Cancel Response Message
moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_response_message = {}

-- Size: Order Mass Cancel Response Message
moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_response_message.size =
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.timestamp.size + 
  moex_spectra_orderentry_twime_v9_12_0.total_affected_orders.size

-- Display: Order Mass Cancel Response Message
moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Cancel Response Message
moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: UInt64
  index, cl_ord_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Timestamp: TimeStamp
  index, timestamp = moex_spectra_orderentry_twime_v9_12_0.timestamp.dissect(buffer, index, packet, parent)

  -- Total Affected Orders: Int32
  index, total_affected_orders = moex_spectra_orderentry_twime_v9_12_0.total_affected_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Cancel Response Message
moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_mass_cancel_response_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replace Response Message
moex_spectra_orderentry_twime_v9_12_0.order_replace_response_message = {}

-- Size: Order Replace Response Message
moex_spectra_orderentry_twime_v9_12_0.order_replace_response_message.size =
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.timestamp.size + 
  moex_spectra_orderentry_twime_v9_12_0.order_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.prev_order_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.flags.size + 
  moex_spectra_orderentry_twime_v9_12_0.flags_2.size + 
  moex_spectra_orderentry_twime_v9_12_0.price.size + 
  moex_spectra_orderentry_twime_v9_12_0.order_qty.size + 
  moex_spectra_orderentry_twime_v9_12_0.trading_session_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.compliance_id.size

-- Display: Order Replace Response Message
moex_spectra_orderentry_twime_v9_12_0.order_replace_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Response Message
moex_spectra_orderentry_twime_v9_12_0.order_replace_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: UInt64
  index, cl_ord_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Timestamp: TimeStamp
  index, timestamp = moex_spectra_orderentry_twime_v9_12_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Int64
  index, order_id = moex_spectra_orderentry_twime_v9_12_0.order_id.dissect(buffer, index, packet, parent)

  -- Prev Order Id: Int64
  index, prev_order_id = moex_spectra_orderentry_twime_v9_12_0.prev_order_id.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 41 fields
  index, flags = moex_spectra_orderentry_twime_v9_12_0.flags.dissect(buffer, index, packet, parent)

  -- Flags 2: Struct of 2 fields
  index, flags_2 = moex_spectra_orderentry_twime_v9_12_0.flags_2.dissect(buffer, index, packet, parent)

  -- Price: Decimal5
  index, price = moex_spectra_orderentry_twime_v9_12_0.price.dissect(buffer, index, packet, parent)

  -- Order Qty: UInt32
  index, order_qty = moex_spectra_orderentry_twime_v9_12_0.order_qty.dissect(buffer, index, packet, parent)

  -- Trading Session Id: Int32
  index, trading_session_id = moex_spectra_orderentry_twime_v9_12_0.trading_session_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Link Id: Int32
  index, cl_ord_link_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.dissect(buffer, index, packet, parent)

  -- Compliance Id: ComplianceIDEnum
  index, compliance_id = moex_spectra_orderentry_twime_v9_12_0.compliance_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Response Message
moex_spectra_orderentry_twime_v9_12_0.order_replace_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_replace_response_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.order_replace_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.order_replace_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.order_replace_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Response Message
moex_spectra_orderentry_twime_v9_12_0.order_cancel_response_message = {}

-- Size: Order Cancel Response Message
moex_spectra_orderentry_twime_v9_12_0.order_cancel_response_message.size =
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.timestamp.size + 
  moex_spectra_orderentry_twime_v9_12_0.order_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.flags.size + 
  moex_spectra_orderentry_twime_v9_12_0.flags_2.size + 
  moex_spectra_orderentry_twime_v9_12_0.order_qty.size + 
  moex_spectra_orderentry_twime_v9_12_0.trading_session_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.size

-- Display: Order Cancel Response Message
moex_spectra_orderentry_twime_v9_12_0.order_cancel_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Response Message
moex_spectra_orderentry_twime_v9_12_0.order_cancel_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: UInt64
  index, cl_ord_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Timestamp: TimeStamp
  index, timestamp = moex_spectra_orderentry_twime_v9_12_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Int64
  index, order_id = moex_spectra_orderentry_twime_v9_12_0.order_id.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 41 fields
  index, flags = moex_spectra_orderentry_twime_v9_12_0.flags.dissect(buffer, index, packet, parent)

  -- Flags 2: Struct of 2 fields
  index, flags_2 = moex_spectra_orderentry_twime_v9_12_0.flags_2.dissect(buffer, index, packet, parent)

  -- Order Qty: UInt32
  index, order_qty = moex_spectra_orderentry_twime_v9_12_0.order_qty.dissect(buffer, index, packet, parent)

  -- Trading Session Id: Int32
  index, trading_session_id = moex_spectra_orderentry_twime_v9_12_0.trading_session_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Link Id: Int32
  index, cl_ord_link_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Response Message
moex_spectra_orderentry_twime_v9_12_0.order_cancel_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_cancel_response_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.order_cancel_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.order_cancel_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.order_cancel_response_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Iceberg Response Message
moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_response_message = {}

-- Size: New Order Iceberg Response Message
moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_response_message.size =
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.timestamp.size + 
  moex_spectra_orderentry_twime_v9_12_0.expire_date.size + 
  moex_spectra_orderentry_twime_v9_12_0.order_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.display_order_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.flags.size + 
  moex_spectra_orderentry_twime_v9_12_0.flags_2.size + 
  moex_spectra_orderentry_twime_v9_12_0.price.size + 
  moex_spectra_orderentry_twime_v9_12_0.security_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.order_qty.size + 
  moex_spectra_orderentry_twime_v9_12_0.display_qty.size + 
  moex_spectra_orderentry_twime_v9_12_0.display_variance_qty.size + 
  moex_spectra_orderentry_twime_v9_12_0.trading_session_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.side.size + 
  moex_spectra_orderentry_twime_v9_12_0.compliance_id.size

-- Display: New Order Iceberg Response Message
moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Iceberg Response Message
moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: UInt64
  index, cl_ord_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Timestamp: TimeStamp
  index, timestamp = moex_spectra_orderentry_twime_v9_12_0.timestamp.dissect(buffer, index, packet, parent)

  -- Expire Date: TimeStamp
  index, expire_date = moex_spectra_orderentry_twime_v9_12_0.expire_date.dissect(buffer, index, packet, parent)

  -- Order Id: Int64
  index, order_id = moex_spectra_orderentry_twime_v9_12_0.order_id.dissect(buffer, index, packet, parent)

  -- Display Order Id: Int64
  index, display_order_id = moex_spectra_orderentry_twime_v9_12_0.display_order_id.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 41 fields
  index, flags = moex_spectra_orderentry_twime_v9_12_0.flags.dissect(buffer, index, packet, parent)

  -- Flags 2: Struct of 2 fields
  index, flags_2 = moex_spectra_orderentry_twime_v9_12_0.flags_2.dissect(buffer, index, packet, parent)

  -- Price: Decimal5
  index, price = moex_spectra_orderentry_twime_v9_12_0.price.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = moex_spectra_orderentry_twime_v9_12_0.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: UInt32
  index, order_qty = moex_spectra_orderentry_twime_v9_12_0.order_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: UInt32
  index, display_qty = moex_spectra_orderentry_twime_v9_12_0.display_qty.dissect(buffer, index, packet, parent)

  -- Display Variance Qty: UInt32
  index, display_variance_qty = moex_spectra_orderentry_twime_v9_12_0.display_variance_qty.dissect(buffer, index, packet, parent)

  -- Trading Session Id: Int32
  index, trading_session_id = moex_spectra_orderentry_twime_v9_12_0.trading_session_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Link Id: Int32
  index, cl_ord_link_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.dissect(buffer, index, packet, parent)

  -- Side: SideEnum
  index, side = moex_spectra_orderentry_twime_v9_12_0.side.dissect(buffer, index, packet, parent)

  -- Compliance Id: ComplianceIDEnum
  index, compliance_id = moex_spectra_orderentry_twime_v9_12_0.compliance_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Iceberg Response Message
moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.new_order_iceberg_response_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_response_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Single Response Message
moex_spectra_orderentry_twime_v9_12_0.new_order_single_response_message = {}

-- Size: New Order Single Response Message
moex_spectra_orderentry_twime_v9_12_0.new_order_single_response_message.size =
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.timestamp.size + 
  moex_spectra_orderentry_twime_v9_12_0.expire_date.size + 
  moex_spectra_orderentry_twime_v9_12_0.order_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.flags.size + 
  moex_spectra_orderentry_twime_v9_12_0.flags_2.size + 
  moex_spectra_orderentry_twime_v9_12_0.price.size + 
  moex_spectra_orderentry_twime_v9_12_0.security_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.order_qty.size + 
  moex_spectra_orderentry_twime_v9_12_0.trading_session_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.side.size + 
  moex_spectra_orderentry_twime_v9_12_0.compliance_id.size

-- Display: New Order Single Response Message
moex_spectra_orderentry_twime_v9_12_0.new_order_single_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Single Response Message
moex_spectra_orderentry_twime_v9_12_0.new_order_single_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: UInt64
  index, cl_ord_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Timestamp: TimeStamp
  index, timestamp = moex_spectra_orderentry_twime_v9_12_0.timestamp.dissect(buffer, index, packet, parent)

  -- Expire Date: TimeStamp
  index, expire_date = moex_spectra_orderentry_twime_v9_12_0.expire_date.dissect(buffer, index, packet, parent)

  -- Order Id: Int64
  index, order_id = moex_spectra_orderentry_twime_v9_12_0.order_id.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 41 fields
  index, flags = moex_spectra_orderentry_twime_v9_12_0.flags.dissect(buffer, index, packet, parent)

  -- Flags 2: Struct of 2 fields
  index, flags_2 = moex_spectra_orderentry_twime_v9_12_0.flags_2.dissect(buffer, index, packet, parent)

  -- Price: Decimal5
  index, price = moex_spectra_orderentry_twime_v9_12_0.price.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = moex_spectra_orderentry_twime_v9_12_0.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: UInt32
  index, order_qty = moex_spectra_orderentry_twime_v9_12_0.order_qty.dissect(buffer, index, packet, parent)

  -- Trading Session Id: Int32
  index, trading_session_id = moex_spectra_orderentry_twime_v9_12_0.trading_session_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Link Id: Int32
  index, cl_ord_link_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.dissect(buffer, index, packet, parent)

  -- Side: SideEnum
  index, side = moex_spectra_orderentry_twime_v9_12_0.side.dissect(buffer, index, packet, parent)

  -- Compliance Id: ComplianceIDEnum
  index, compliance_id = moex_spectra_orderentry_twime_v9_12_0.compliance_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Response Message
moex_spectra_orderentry_twime_v9_12_0.new_order_single_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.new_order_single_response_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.new_order_single_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.new_order_single_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.new_order_single_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Business Message Reject Message
moex_spectra_orderentry_twime_v9_12_0.business_message_reject_message = {}

-- Size: Business Message Reject Message
moex_spectra_orderentry_twime_v9_12_0.business_message_reject_message.size =
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.timestamp.size + 
  moex_spectra_orderentry_twime_v9_12_0.ord_rej_reason.size

-- Display: Business Message Reject Message
moex_spectra_orderentry_twime_v9_12_0.business_message_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Message Reject Message
moex_spectra_orderentry_twime_v9_12_0.business_message_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: UInt64
  index, cl_ord_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Timestamp: TimeStamp
  index, timestamp = moex_spectra_orderentry_twime_v9_12_0.timestamp.dissect(buffer, index, packet, parent)

  -- Ord Rej Reason: Int32
  index, ord_rej_reason = moex_spectra_orderentry_twime_v9_12_0.ord_rej_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Message Reject Message
moex_spectra_orderentry_twime_v9_12_0.business_message_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.business_message_reject_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.business_message_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.business_message_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.business_message_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Session Reject Message
moex_spectra_orderentry_twime_v9_12_0.session_reject_message = {}

-- Size: Session Reject Message
moex_spectra_orderentry_twime_v9_12_0.session_reject_message.size =
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.ref_tag_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.session_reject_reason.size

-- Display: Session Reject Message
moex_spectra_orderentry_twime_v9_12_0.session_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Reject Message
moex_spectra_orderentry_twime_v9_12_0.session_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: UInt64
  index, cl_ord_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Ref Tag Id: UInt32
  index, ref_tag_id = moex_spectra_orderentry_twime_v9_12_0.ref_tag_id.dissect(buffer, index, packet, parent)

  -- Session Reject Reason: SessionRejectReasonEnum
  index, session_reject_reason = moex_spectra_orderentry_twime_v9_12_0.session_reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Reject Message
moex_spectra_orderentry_twime_v9_12_0.session_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.session_reject_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.session_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.session_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.session_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Flood Reject Message
moex_spectra_orderentry_twime_v9_12_0.flood_reject_message = {}

-- Size: Flood Reject Message
moex_spectra_orderentry_twime_v9_12_0.flood_reject_message.size =
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.queue_size.size + 
  moex_spectra_orderentry_twime_v9_12_0.penalty_remain.size

-- Display: Flood Reject Message
moex_spectra_orderentry_twime_v9_12_0.flood_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Flood Reject Message
moex_spectra_orderentry_twime_v9_12_0.flood_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: UInt64
  index, cl_ord_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Queue Size: UInt32
  index, queue_size = moex_spectra_orderentry_twime_v9_12_0.queue_size.dissect(buffer, index, packet, parent)

  -- Penalty Remain: UInt32
  index, penalty_remain = moex_spectra_orderentry_twime_v9_12_0.penalty_remain.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Flood Reject Message
moex_spectra_orderentry_twime_v9_12_0.flood_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.flood_reject_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.flood_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.flood_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.flood_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Message
moex_spectra_orderentry_twime_v9_12_0.sequence_message = {}

-- Size: Sequence Message
moex_spectra_orderentry_twime_v9_12_0.sequence_message.size =
  moex_spectra_orderentry_twime_v9_12_0.next_seq_no.size

-- Display: Sequence Message
moex_spectra_orderentry_twime_v9_12_0.sequence_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Message
moex_spectra_orderentry_twime_v9_12_0.sequence_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Seq No: UInt64
  index, next_seq_no = moex_spectra_orderentry_twime_v9_12_0.next_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Message
moex_spectra_orderentry_twime_v9_12_0.sequence_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.sequence_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.sequence_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.sequence_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.sequence_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Message
moex_spectra_orderentry_twime_v9_12_0.retransmission_message = {}

-- Size: Retransmission Message
moex_spectra_orderentry_twime_v9_12_0.retransmission_message.size =
  moex_spectra_orderentry_twime_v9_12_0.next_seq_no.size + 
  moex_spectra_orderentry_twime_v9_12_0.request_timestamp.size + 
  moex_spectra_orderentry_twime_v9_12_0.count.size

-- Display: Retransmission Message
moex_spectra_orderentry_twime_v9_12_0.retransmission_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Message
moex_spectra_orderentry_twime_v9_12_0.retransmission_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Seq No: UInt64
  index, next_seq_no = moex_spectra_orderentry_twime_v9_12_0.next_seq_no.dissect(buffer, index, packet, parent)

  -- Request Timestamp: TimeStamp
  index, request_timestamp = moex_spectra_orderentry_twime_v9_12_0.request_timestamp.dissect(buffer, index, packet, parent)

  -- Count: UInt32
  index, count = moex_spectra_orderentry_twime_v9_12_0.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Message
moex_spectra_orderentry_twime_v9_12_0.retransmission_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.retransmission_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.retransmission_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.retransmission_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.retransmission_message.fields(buffer, offset, packet, parent)
  end
end

-- Terminate Message
moex_spectra_orderentry_twime_v9_12_0.terminate_message = {}

-- Size: Terminate Message
moex_spectra_orderentry_twime_v9_12_0.terminate_message.size =
  moex_spectra_orderentry_twime_v9_12_0.termination_code.size

-- Display: Terminate Message
moex_spectra_orderentry_twime_v9_12_0.terminate_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Terminate Message
moex_spectra_orderentry_twime_v9_12_0.terminate_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Termination Code: TerminationCodeEnum
  index, termination_code = moex_spectra_orderentry_twime_v9_12_0.termination_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Terminate Message
moex_spectra_orderentry_twime_v9_12_0.terminate_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.terminate_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.terminate_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.terminate_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.terminate_message.fields(buffer, offset, packet, parent)
  end
end

-- Establishment Reject Message
moex_spectra_orderentry_twime_v9_12_0.establishment_reject_message = {}

-- Size: Establishment Reject Message
moex_spectra_orderentry_twime_v9_12_0.establishment_reject_message.size =
  moex_spectra_orderentry_twime_v9_12_0.request_timestamp.size + 
  moex_spectra_orderentry_twime_v9_12_0.establishment_reject_code.size

-- Display: Establishment Reject Message
moex_spectra_orderentry_twime_v9_12_0.establishment_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Establishment Reject Message
moex_spectra_orderentry_twime_v9_12_0.establishment_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Timestamp: TimeStamp
  index, request_timestamp = moex_spectra_orderentry_twime_v9_12_0.request_timestamp.dissect(buffer, index, packet, parent)

  -- Establishment Reject Code: EstablishmentRejectCodeEnum
  index, establishment_reject_code = moex_spectra_orderentry_twime_v9_12_0.establishment_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Establishment Reject Message
moex_spectra_orderentry_twime_v9_12_0.establishment_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.establishment_reject_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.establishment_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.establishment_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.establishment_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Establishment Ack Message
moex_spectra_orderentry_twime_v9_12_0.establishment_ack_message = {}

-- Size: Establishment Ack Message
moex_spectra_orderentry_twime_v9_12_0.establishment_ack_message.size =
  moex_spectra_orderentry_twime_v9_12_0.request_timestamp.size + 
  moex_spectra_orderentry_twime_v9_12_0.keepalive_interval.size + 
  moex_spectra_orderentry_twime_v9_12_0.next_seq_no.size

-- Display: Establishment Ack Message
moex_spectra_orderentry_twime_v9_12_0.establishment_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Establishment Ack Message
moex_spectra_orderentry_twime_v9_12_0.establishment_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Timestamp: TimeStamp
  index, request_timestamp = moex_spectra_orderentry_twime_v9_12_0.request_timestamp.dissect(buffer, index, packet, parent)

  -- Keepalive Interval: DeltaMillisecs
  index, keepalive_interval = moex_spectra_orderentry_twime_v9_12_0.keepalive_interval.dissect(buffer, index, packet, parent)

  -- Next Seq No: UInt64
  index, next_seq_no = moex_spectra_orderentry_twime_v9_12_0.next_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Establishment Ack Message
moex_spectra_orderentry_twime_v9_12_0.establishment_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.establishment_ack_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.establishment_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.establishment_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.establishment_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
moex_spectra_orderentry_twime_v9_12_0.server_payload = {}

-- Dispatch: Server Payload
moex_spectra_orderentry_twime_v9_12_0.server_payload.dispatch = {
  [5001] = moex_spectra_orderentry_twime_v9_12_0.establishment_ack_message.dissect,
  [5002] = moex_spectra_orderentry_twime_v9_12_0.establishment_reject_message.dissect,
  [5003] = moex_spectra_orderentry_twime_v9_12_0.terminate_message.dissect,
  [5005] = moex_spectra_orderentry_twime_v9_12_0.retransmission_message.dissect,
  [5006] = moex_spectra_orderentry_twime_v9_12_0.sequence_message.dissect,
  [5007] = moex_spectra_orderentry_twime_v9_12_0.flood_reject_message.dissect,
  [5008] = moex_spectra_orderentry_twime_v9_12_0.session_reject_message.dissect,
  [5009] = moex_spectra_orderentry_twime_v9_12_0.business_message_reject_message.dissect,
  [7015] = moex_spectra_orderentry_twime_v9_12_0.new_order_single_response_message.dissect,
  [7016] = moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_response_message.dissect,
  [7017] = moex_spectra_orderentry_twime_v9_12_0.order_cancel_response_message.dissect,
  [7018] = moex_spectra_orderentry_twime_v9_12_0.order_replace_response_message.dissect,
  [7007] = moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_response_message.dissect,
  [7019] = moex_spectra_orderentry_twime_v9_12_0.execution_single_report_message.dissect,
  [7020] = moex_spectra_orderentry_twime_v9_12_0.execution_multileg_report_message.dissect,
  [7010] = moex_spectra_orderentry_twime_v9_12_0.empty_book_message.dissect,
  [7014] = moex_spectra_orderentry_twime_v9_12_0.system_event_message.dissect,
}

-- Dissect: Server Payload
moex_spectra_orderentry_twime_v9_12_0.server_payload.dissect = function(buffer, offset, packet, parent, template_id)
  local dissect = moex_spectra_orderentry_twime_v9_12_0.server_payload.dispatch[template_id]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sbe Header
moex_spectra_orderentry_twime_v9_12_0.sbe_header = {}

-- Size: Sbe Header
moex_spectra_orderentry_twime_v9_12_0.sbe_header.size =
  moex_spectra_orderentry_twime_v9_12_0.block_length.size + 
  moex_spectra_orderentry_twime_v9_12_0.template_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.schema_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.version.size

-- Display: Sbe Header
moex_spectra_orderentry_twime_v9_12_0.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
moex_spectra_orderentry_twime_v9_12_0.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = moex_spectra_orderentry_twime_v9_12_0.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint16
  index, template_id = moex_spectra_orderentry_twime_v9_12_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint16
  index, schema_id = moex_spectra_orderentry_twime_v9_12_0.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = moex_spectra_orderentry_twime_v9_12_0.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
moex_spectra_orderentry_twime_v9_12_0.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.sbe_header, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Message
moex_spectra_orderentry_twime_v9_12_0.server_message = {}

-- Display: Server Message
moex_spectra_orderentry_twime_v9_12_0.server_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Message
moex_spectra_orderentry_twime_v9_12_0.server_message.fields = function(buffer, offset, packet, parent, size_of_server_message)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = moex_spectra_orderentry_twime_v9_12_0.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Server Payload: Runtime Type with 17 branches
  index = moex_spectra_orderentry_twime_v9_12_0.server_payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Server Message
moex_spectra_orderentry_twime_v9_12_0.server_message.dissect = function(buffer, offset, packet, parent, size_of_server_message)
  local index = offset + size_of_server_message

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.server_message, buffer(offset, 0))
    local decoded, failure = pcall(moex_spectra_orderentry_twime_v9_12_0.server_message.fields, bounded, offset, packet, parent, size_of_server_message)
    if not decoded then
      undecoded(failure, parent, moex_spectra_orderentry_twime_v9_12_0.experts.undecoded, "Server Message does not decode within its "..size_of_server_message.." bytes")
    end
    parent:set_len(size_of_server_message)
    local display = moex_spectra_orderentry_twime_v9_12_0.server_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(moex_spectra_orderentry_twime_v9_12_0.server_message.fields, bounded, offset, packet, parent, size_of_server_message)
    if not decoded then
      undecoded(failure, parent, moex_spectra_orderentry_twime_v9_12_0.experts.undecoded, "Server Message does not decode within its "..size_of_server_message.." bytes")
    end

    return index
  end
end

-- Remaining Bytes For: Server Message
local server_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < moex_spectra_orderentry_twime_v9_12_0.sbe_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint() + 8

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Server Packet
moex_spectra_orderentry_twime_v9_12_0.server_packet = {}

-- Verify required size of Tcp packet
moex_spectra_orderentry_twime_v9_12_0.server_packet.requiredsize = function(buffer)
  return buffer:len() >= moex_spectra_orderentry_twime_v9_12_0.sbe_header.size
end

-- Dissect Server Packet
moex_spectra_orderentry_twime_v9_12_0.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Message
  local end_of_payload = buffer:len()

  -- Server Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_message = server_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_server_message):tvb()
      index = moex_spectra_orderentry_twime_v9_12_0.server_message.dissect(frame, index, packet, parent, size_of_server_message)
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

-- Order Mass Cancel By Bf Limit Request Message
moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_by_bf_limit_request_message = {}

-- Size: Order Mass Cancel By Bf Limit Request Message
moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_by_bf_limit_request_message.size =
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.account.size

-- Display: Order Mass Cancel By Bf Limit Request Message
moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_by_bf_limit_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Cancel By Bf Limit Request Message
moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_by_bf_limit_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: UInt64
  index, cl_ord_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Account: String7
  index, account = moex_spectra_orderentry_twime_v9_12_0.account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Cancel By Bf Limit Request Message
moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_by_bf_limit_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_mass_cancel_by_bf_limit_request_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_by_bf_limit_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_by_bf_limit_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_by_bf_limit_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Type
moex_spectra_orderentry_twime_v9_12_0.security_type = {}

-- Size: Security Type
moex_spectra_orderentry_twime_v9_12_0.security_type.size = 1

-- Display: Security Type
moex_spectra_orderentry_twime_v9_12_0.security_type.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Future flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Future"
  end
  -- Is Option flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Option"
  end
  -- Is Multileg Security Type flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Multileg Security Type"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Security Type
moex_spectra_orderentry_twime_v9_12_0.security_type.bits = function(range, value, packet, parent)

  -- Future: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.future, range, value)

  -- Option: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.option, range, value)

  -- Multileg Security Type: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.multileg_security_type, range, value)

  -- Reserved 4 To 8: 5 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.reserved_4_to_8, range, value)
end

-- Dissect: Security Type
moex_spectra_orderentry_twime_v9_12_0.security_type.dissect = function(buffer, offset, packet, parent)
  local size = moex_spectra_orderentry_twime_v9_12_0.security_type.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.security_type.display(range, value, packet, parent)
  local element = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.security_type, range, display)

  if show.structs then
    moex_spectra_orderentry_twime_v9_12_0.security_type.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Mass Cancel Request Message
moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_request_message = {}

-- Size: Order Mass Cancel Request Message
moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_request_message.size =
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.security_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.security_type.size + 
  moex_spectra_orderentry_twime_v9_12_0.side.size + 
  moex_spectra_orderentry_twime_v9_12_0.account.size + 
  moex_spectra_orderentry_twime_v9_12_0.security_group.size

-- Display: Order Mass Cancel Request Message
moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Cancel Request Message
moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: UInt64
  index, cl_ord_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Link Id: Int32
  index, cl_ord_link_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = moex_spectra_orderentry_twime_v9_12_0.security_id.dissect(buffer, index, packet, parent)

  -- Security Type: Struct of 4 fields
  index, security_type = moex_spectra_orderentry_twime_v9_12_0.security_type.dissect(buffer, index, packet, parent)

  -- Side: SideEnum
  index, side = moex_spectra_orderentry_twime_v9_12_0.side.dissect(buffer, index, packet, parent)

  -- Account: String7
  index, account = moex_spectra_orderentry_twime_v9_12_0.account.dissect(buffer, index, packet, parent)

  -- Security Group: String25
  index, security_group = moex_spectra_orderentry_twime_v9_12_0.security_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Cancel Request Message
moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_mass_cancel_request_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Flags
moex_spectra_orderentry_twime_v9_12_0.client_flags = {}

-- Size: Client Flags
moex_spectra_orderentry_twime_v9_12_0.client_flags.size = 1

-- Display: Client Flags
moex_spectra_orderentry_twime_v9_12_0.client_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Dont Check Limits Client Flags flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Dont Check Limits Client Flags"
  end
  -- Is Ncc Request Client Flags flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Ncc Request Client Flags"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Client Flags
moex_spectra_orderentry_twime_v9_12_0.client_flags.bits = function(range, value, packet, parent)

  -- Dont Check Limits Client Flags: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.dont_check_limits_client_flags, range, value)

  -- Ncc Request Client Flags: 1 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.ncc_request_client_flags, range, value)

  -- Reserved 3 To 8: 6 Bit
  parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.reserved_3_to_8, range, value)
end

-- Dissect: Client Flags
moex_spectra_orderentry_twime_v9_12_0.client_flags.dissect = function(buffer, offset, packet, parent)
  local size = moex_spectra_orderentry_twime_v9_12_0.client_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = moex_spectra_orderentry_twime_v9_12_0.client_flags.display(range, value, packet, parent)
  local element = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.client_flags, range, display)

  if show.structs then
    moex_spectra_orderentry_twime_v9_12_0.client_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Iceberg Replace Request Message
moex_spectra_orderentry_twime_v9_12_0.order_iceberg_replace_request_message = {}

-- Size: Order Iceberg Replace Request Message
moex_spectra_orderentry_twime_v9_12_0.order_iceberg_replace_request_message.size =
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.order_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.price.size + 
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.security_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.compliance_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.client_flags.size + 
  moex_spectra_orderentry_twime_v9_12_0.account.size

-- Display: Order Iceberg Replace Request Message
moex_spectra_orderentry_twime_v9_12_0.order_iceberg_replace_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Iceberg Replace Request Message
moex_spectra_orderentry_twime_v9_12_0.order_iceberg_replace_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: UInt64
  index, cl_ord_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Int64
  index, order_id = moex_spectra_orderentry_twime_v9_12_0.order_id.dissect(buffer, index, packet, parent)

  -- Price: Decimal5
  index, price = moex_spectra_orderentry_twime_v9_12_0.price.dissect(buffer, index, packet, parent)

  -- Cl Ord Link Id: Int32
  index, cl_ord_link_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = moex_spectra_orderentry_twime_v9_12_0.security_id.dissect(buffer, index, packet, parent)

  -- Compliance Id: ComplianceIDEnum
  index, compliance_id = moex_spectra_orderentry_twime_v9_12_0.compliance_id.dissect(buffer, index, packet, parent)

  -- Client Flags: Struct of 3 fields
  index, client_flags = moex_spectra_orderentry_twime_v9_12_0.client_flags.dissect(buffer, index, packet, parent)

  -- Account: String7
  index, account = moex_spectra_orderentry_twime_v9_12_0.account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Iceberg Replace Request Message
moex_spectra_orderentry_twime_v9_12_0.order_iceberg_replace_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_iceberg_replace_request_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.order_iceberg_replace_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.order_iceberg_replace_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.order_iceberg_replace_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replace Request Message
moex_spectra_orderentry_twime_v9_12_0.order_replace_request_message = {}

-- Size: Order Replace Request Message
moex_spectra_orderentry_twime_v9_12_0.order_replace_request_message.size =
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.order_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.price.size + 
  moex_spectra_orderentry_twime_v9_12_0.order_qty.size + 
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.security_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.compliance_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.mode.size + 
  moex_spectra_orderentry_twime_v9_12_0.client_flags.size + 
  moex_spectra_orderentry_twime_v9_12_0.account.size

-- Display: Order Replace Request Message
moex_spectra_orderentry_twime_v9_12_0.order_replace_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Request Message
moex_spectra_orderentry_twime_v9_12_0.order_replace_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: UInt64
  index, cl_ord_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Int64
  index, order_id = moex_spectra_orderentry_twime_v9_12_0.order_id.dissect(buffer, index, packet, parent)

  -- Price: Decimal5
  index, price = moex_spectra_orderentry_twime_v9_12_0.price.dissect(buffer, index, packet, parent)

  -- Order Qty: UInt32
  index, order_qty = moex_spectra_orderentry_twime_v9_12_0.order_qty.dissect(buffer, index, packet, parent)

  -- Cl Ord Link Id: Int32
  index, cl_ord_link_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = moex_spectra_orderentry_twime_v9_12_0.security_id.dissect(buffer, index, packet, parent)

  -- Compliance Id: ComplianceIDEnum
  index, compliance_id = moex_spectra_orderentry_twime_v9_12_0.compliance_id.dissect(buffer, index, packet, parent)

  -- Mode: ModeEnum
  index, mode = moex_spectra_orderentry_twime_v9_12_0.mode.dissect(buffer, index, packet, parent)

  -- Client Flags: Struct of 3 fields
  index, client_flags = moex_spectra_orderentry_twime_v9_12_0.client_flags.dissect(buffer, index, packet, parent)

  -- Account: String7
  index, account = moex_spectra_orderentry_twime_v9_12_0.account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Request Message
moex_spectra_orderentry_twime_v9_12_0.order_replace_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_replace_request_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.order_replace_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.order_replace_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.order_replace_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Iceberg Cancel Request Message
moex_spectra_orderentry_twime_v9_12_0.order_iceberg_cancel_request_message = {}

-- Size: Order Iceberg Cancel Request Message
moex_spectra_orderentry_twime_v9_12_0.order_iceberg_cancel_request_message.size =
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.order_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.security_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.client_flags.size + 
  moex_spectra_orderentry_twime_v9_12_0.account.size

-- Display: Order Iceberg Cancel Request Message
moex_spectra_orderentry_twime_v9_12_0.order_iceberg_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Iceberg Cancel Request Message
moex_spectra_orderentry_twime_v9_12_0.order_iceberg_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: UInt64
  index, cl_ord_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Int64
  index, order_id = moex_spectra_orderentry_twime_v9_12_0.order_id.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = moex_spectra_orderentry_twime_v9_12_0.security_id.dissect(buffer, index, packet, parent)

  -- Client Flags: Struct of 3 fields
  index, client_flags = moex_spectra_orderentry_twime_v9_12_0.client_flags.dissect(buffer, index, packet, parent)

  -- Account: String7
  index, account = moex_spectra_orderentry_twime_v9_12_0.account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Iceberg Cancel Request Message
moex_spectra_orderentry_twime_v9_12_0.order_iceberg_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_iceberg_cancel_request_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.order_iceberg_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.order_iceberg_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.order_iceberg_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Request Message
moex_spectra_orderentry_twime_v9_12_0.order_cancel_request_message = {}

-- Size: Order Cancel Request Message
moex_spectra_orderentry_twime_v9_12_0.order_cancel_request_message.size =
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.order_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.security_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.client_flags.size + 
  moex_spectra_orderentry_twime_v9_12_0.account.size

-- Display: Order Cancel Request Message
moex_spectra_orderentry_twime_v9_12_0.order_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
moex_spectra_orderentry_twime_v9_12_0.order_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: UInt64
  index, cl_ord_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Int64
  index, order_id = moex_spectra_orderentry_twime_v9_12_0.order_id.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = moex_spectra_orderentry_twime_v9_12_0.security_id.dissect(buffer, index, packet, parent)

  -- Client Flags: Struct of 3 fields
  index, client_flags = moex_spectra_orderentry_twime_v9_12_0.client_flags.dissect(buffer, index, packet, parent)

  -- Account: String7
  index, account = moex_spectra_orderentry_twime_v9_12_0.account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
moex_spectra_orderentry_twime_v9_12_0.order_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.order_cancel_request_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.order_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.order_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.order_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Iceberg X Message
moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_x_message = {}

-- Size: New Order Iceberg X Message
moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_x_message.size =
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.expire_date.size + 
  moex_spectra_orderentry_twime_v9_12_0.price.size + 
  moex_spectra_orderentry_twime_v9_12_0.security_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.display_qty.size + 
  moex_spectra_orderentry_twime_v9_12_0.display_variance_qty.size + 
  moex_spectra_orderentry_twime_v9_12_0.order_qty.size + 
  moex_spectra_orderentry_twime_v9_12_0.compliance_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.time_in_force.size + 
  moex_spectra_orderentry_twime_v9_12_0.side.size + 
  moex_spectra_orderentry_twime_v9_12_0.client_flags.size + 
  moex_spectra_orderentry_twime_v9_12_0.account.size

-- Display: New Order Iceberg X Message
moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_x_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Iceberg X Message
moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_x_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: UInt64
  index, cl_ord_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Expire Date: TimeStamp
  index, expire_date = moex_spectra_orderentry_twime_v9_12_0.expire_date.dissect(buffer, index, packet, parent)

  -- Price: Decimal5
  index, price = moex_spectra_orderentry_twime_v9_12_0.price.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = moex_spectra_orderentry_twime_v9_12_0.security_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Link Id: Int32
  index, cl_ord_link_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.dissect(buffer, index, packet, parent)

  -- Display Qty: UInt32
  index, display_qty = moex_spectra_orderentry_twime_v9_12_0.display_qty.dissect(buffer, index, packet, parent)

  -- Display Variance Qty: UInt32
  index, display_variance_qty = moex_spectra_orderentry_twime_v9_12_0.display_variance_qty.dissect(buffer, index, packet, parent)

  -- Order Qty: UInt32
  index, order_qty = moex_spectra_orderentry_twime_v9_12_0.order_qty.dissect(buffer, index, packet, parent)

  -- Compliance Id: ComplianceIDEnum
  index, compliance_id = moex_spectra_orderentry_twime_v9_12_0.compliance_id.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForceEnum
  index, time_in_force = moex_spectra_orderentry_twime_v9_12_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Side: SideEnum
  index, side = moex_spectra_orderentry_twime_v9_12_0.side.dissect(buffer, index, packet, parent)

  -- Client Flags: Struct of 3 fields
  index, client_flags = moex_spectra_orderentry_twime_v9_12_0.client_flags.dissect(buffer, index, packet, parent)

  -- Account: String7
  index, account = moex_spectra_orderentry_twime_v9_12_0.account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Iceberg X Message
moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_x_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.new_order_iceberg_x_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_x_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_x_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_x_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Iceberg Message
moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_message = {}

-- Size: New Order Iceberg Message
moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_message.size =
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.expire_date.size + 
  moex_spectra_orderentry_twime_v9_12_0.price.size + 
  moex_spectra_orderentry_twime_v9_12_0.security_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.display_qty.size + 
  moex_spectra_orderentry_twime_v9_12_0.display_variance_qty.size + 
  moex_spectra_orderentry_twime_v9_12_0.order_qty.size + 
  moex_spectra_orderentry_twime_v9_12_0.compliance_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.side.size + 
  moex_spectra_orderentry_twime_v9_12_0.client_flags.size + 
  moex_spectra_orderentry_twime_v9_12_0.account.size

-- Display: New Order Iceberg Message
moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Iceberg Message
moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: UInt64
  index, cl_ord_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Expire Date: TimeStamp
  index, expire_date = moex_spectra_orderentry_twime_v9_12_0.expire_date.dissect(buffer, index, packet, parent)

  -- Price: Decimal5
  index, price = moex_spectra_orderentry_twime_v9_12_0.price.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = moex_spectra_orderentry_twime_v9_12_0.security_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Link Id: Int32
  index, cl_ord_link_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.dissect(buffer, index, packet, parent)

  -- Display Qty: UInt32
  index, display_qty = moex_spectra_orderentry_twime_v9_12_0.display_qty.dissect(buffer, index, packet, parent)

  -- Display Variance Qty: UInt32
  index, display_variance_qty = moex_spectra_orderentry_twime_v9_12_0.display_variance_qty.dissect(buffer, index, packet, parent)

  -- Order Qty: UInt32
  index, order_qty = moex_spectra_orderentry_twime_v9_12_0.order_qty.dissect(buffer, index, packet, parent)

  -- Compliance Id: ComplianceIDEnum
  index, compliance_id = moex_spectra_orderentry_twime_v9_12_0.compliance_id.dissect(buffer, index, packet, parent)

  -- Side: SideEnum
  index, side = moex_spectra_orderentry_twime_v9_12_0.side.dissect(buffer, index, packet, parent)

  -- Client Flags: Struct of 3 fields
  index, client_flags = moex_spectra_orderentry_twime_v9_12_0.client_flags.dissect(buffer, index, packet, parent)

  -- Account: String7
  index, account = moex_spectra_orderentry_twime_v9_12_0.account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Iceberg Message
moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.new_order_iceberg_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Single Message
moex_spectra_orderentry_twime_v9_12_0.new_order_single_message = {}

-- Size: New Order Single Message
moex_spectra_orderentry_twime_v9_12_0.new_order_single_message.size =
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.expire_date.size + 
  moex_spectra_orderentry_twime_v9_12_0.price.size + 
  moex_spectra_orderentry_twime_v9_12_0.security_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.order_qty.size + 
  moex_spectra_orderentry_twime_v9_12_0.compliance_id.size + 
  moex_spectra_orderentry_twime_v9_12_0.time_in_force.size + 
  moex_spectra_orderentry_twime_v9_12_0.side.size + 
  moex_spectra_orderentry_twime_v9_12_0.client_flags.size + 
  moex_spectra_orderentry_twime_v9_12_0.account.size

-- Display: New Order Single Message
moex_spectra_orderentry_twime_v9_12_0.new_order_single_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Single Message
moex_spectra_orderentry_twime_v9_12_0.new_order_single_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: UInt64
  index, cl_ord_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Expire Date: TimeStamp
  index, expire_date = moex_spectra_orderentry_twime_v9_12_0.expire_date.dissect(buffer, index, packet, parent)

  -- Price: Decimal5
  index, price = moex_spectra_orderentry_twime_v9_12_0.price.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = moex_spectra_orderentry_twime_v9_12_0.security_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Link Id: Int32
  index, cl_ord_link_id = moex_spectra_orderentry_twime_v9_12_0.cl_ord_link_id.dissect(buffer, index, packet, parent)

  -- Order Qty: UInt32
  index, order_qty = moex_spectra_orderentry_twime_v9_12_0.order_qty.dissect(buffer, index, packet, parent)

  -- Compliance Id: ComplianceIDEnum
  index, compliance_id = moex_spectra_orderentry_twime_v9_12_0.compliance_id.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForceEnum
  index, time_in_force = moex_spectra_orderentry_twime_v9_12_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Side: SideEnum
  index, side = moex_spectra_orderentry_twime_v9_12_0.side.dissect(buffer, index, packet, parent)

  -- Client Flags: Struct of 3 fields
  index, client_flags = moex_spectra_orderentry_twime_v9_12_0.client_flags.dissect(buffer, index, packet, parent)

  -- Account: String7
  index, account = moex_spectra_orderentry_twime_v9_12_0.account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Message
moex_spectra_orderentry_twime_v9_12_0.new_order_single_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.new_order_single_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.new_order_single_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.new_order_single_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.new_order_single_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmit Request Message
moex_spectra_orderentry_twime_v9_12_0.retransmit_request_message = {}

-- Size: Retransmit Request Message
moex_spectra_orderentry_twime_v9_12_0.retransmit_request_message.size =
  moex_spectra_orderentry_twime_v9_12_0.timestamp.size + 
  moex_spectra_orderentry_twime_v9_12_0.from_seq_no.size + 
  moex_spectra_orderentry_twime_v9_12_0.count.size

-- Display: Retransmit Request Message
moex_spectra_orderentry_twime_v9_12_0.retransmit_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Request Message
moex_spectra_orderentry_twime_v9_12_0.retransmit_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimeStamp
  index, timestamp = moex_spectra_orderentry_twime_v9_12_0.timestamp.dissect(buffer, index, packet, parent)

  -- From Seq No: UInt64
  index, from_seq_no = moex_spectra_orderentry_twime_v9_12_0.from_seq_no.dissect(buffer, index, packet, parent)

  -- Count: UInt32
  index, count = moex_spectra_orderentry_twime_v9_12_0.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Request Message
moex_spectra_orderentry_twime_v9_12_0.retransmit_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.retransmit_request_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.retransmit_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.retransmit_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.retransmit_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Establish Message
moex_spectra_orderentry_twime_v9_12_0.establish_message = {}

-- Size: Establish Message
moex_spectra_orderentry_twime_v9_12_0.establish_message.size =
  moex_spectra_orderentry_twime_v9_12_0.timestamp.size + 
  moex_spectra_orderentry_twime_v9_12_0.keepalive_interval.size + 
  moex_spectra_orderentry_twime_v9_12_0.credentials.size

-- Display: Establish Message
moex_spectra_orderentry_twime_v9_12_0.establish_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Establish Message
moex_spectra_orderentry_twime_v9_12_0.establish_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: TimeStamp
  index, timestamp = moex_spectra_orderentry_twime_v9_12_0.timestamp.dissect(buffer, index, packet, parent)

  -- Keepalive Interval: DeltaMillisecs
  index, keepalive_interval = moex_spectra_orderentry_twime_v9_12_0.keepalive_interval.dissect(buffer, index, packet, parent)

  -- Credentials: String20
  index, credentials = moex_spectra_orderentry_twime_v9_12_0.credentials.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Establish Message
moex_spectra_orderentry_twime_v9_12_0.establish_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.establish_message, buffer(offset, 0))
    local index = moex_spectra_orderentry_twime_v9_12_0.establish_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_orderentry_twime_v9_12_0.establish_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_orderentry_twime_v9_12_0.establish_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
moex_spectra_orderentry_twime_v9_12_0.client_payload = {}

-- Dispatch: Client Payload
moex_spectra_orderentry_twime_v9_12_0.client_payload.dispatch = {
  [5000] = moex_spectra_orderentry_twime_v9_12_0.establish_message.dissect,
  [5003] = moex_spectra_orderentry_twime_v9_12_0.terminate_message.dissect,
  [5004] = moex_spectra_orderentry_twime_v9_12_0.retransmit_request_message.dissect,
  [5006] = moex_spectra_orderentry_twime_v9_12_0.sequence_message.dissect,
  [6000] = moex_spectra_orderentry_twime_v9_12_0.new_order_single_message.dissect,
  [6008] = moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_message.dissect,
  [6011] = moex_spectra_orderentry_twime_v9_12_0.new_order_iceberg_x_message.dissect,
  [6006] = moex_spectra_orderentry_twime_v9_12_0.order_cancel_request_message.dissect,
  [6009] = moex_spectra_orderentry_twime_v9_12_0.order_iceberg_cancel_request_message.dissect,
  [6007] = moex_spectra_orderentry_twime_v9_12_0.order_replace_request_message.dissect,
  [6010] = moex_spectra_orderentry_twime_v9_12_0.order_iceberg_replace_request_message.dissect,
  [6004] = moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_request_message.dissect,
  [6005] = moex_spectra_orderentry_twime_v9_12_0.order_mass_cancel_by_bf_limit_request_message.dissect,
}

-- Dissect: Client Payload
moex_spectra_orderentry_twime_v9_12_0.client_payload.dissect = function(buffer, offset, packet, parent, template_id)
  local dissect = moex_spectra_orderentry_twime_v9_12_0.client_payload.dispatch[template_id]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Message
moex_spectra_orderentry_twime_v9_12_0.client_message = {}

-- Display: Client Message
moex_spectra_orderentry_twime_v9_12_0.client_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Message
moex_spectra_orderentry_twime_v9_12_0.client_message.fields = function(buffer, offset, packet, parent, size_of_client_message)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = moex_spectra_orderentry_twime_v9_12_0.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Client Payload: Runtime Type with 13 branches
  index = moex_spectra_orderentry_twime_v9_12_0.client_payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Client Message
moex_spectra_orderentry_twime_v9_12_0.client_message.dissect = function(buffer, offset, packet, parent, size_of_client_message)
  local index = offset + size_of_client_message

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0.fields.client_message, buffer(offset, 0))
    local decoded, failure = pcall(moex_spectra_orderentry_twime_v9_12_0.client_message.fields, bounded, offset, packet, parent, size_of_client_message)
    if not decoded then
      undecoded(failure, parent, moex_spectra_orderentry_twime_v9_12_0.experts.undecoded, "Client Message does not decode within its "..size_of_client_message.." bytes")
    end
    parent:set_len(size_of_client_message)
    local display = moex_spectra_orderentry_twime_v9_12_0.client_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(moex_spectra_orderentry_twime_v9_12_0.client_message.fields, bounded, offset, packet, parent, size_of_client_message)
    if not decoded then
      undecoded(failure, parent, moex_spectra_orderentry_twime_v9_12_0.experts.undecoded, "Client Message does not decode within its "..size_of_client_message.." bytes")
    end

    return index
  end
end

-- Remaining Bytes For: Client Message
local client_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < moex_spectra_orderentry_twime_v9_12_0.sbe_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint() + 8

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Client Packet
moex_spectra_orderentry_twime_v9_12_0.client_packet = {}

-- Verify required size of Tcp packet
moex_spectra_orderentry_twime_v9_12_0.client_packet.requiredsize = function(buffer)
  return buffer:len() >= moex_spectra_orderentry_twime_v9_12_0.sbe_header.size
end

-- Dissect Client Packet
moex_spectra_orderentry_twime_v9_12_0.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Message
  local end_of_payload = buffer:len()

  -- Client Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_message = client_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_client_message):tvb()
      index = moex_spectra_orderentry_twime_v9_12_0.client_message.dissect(frame, index, packet, parent, size_of_client_message)
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
function omi_moex_spectra_orderentry_twime_v9_12_0.init()
end

-- Connection roles for Moex Spectra OrderEntry Twime 9.12.0: Client is the initiator, Server is the acceptor
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
moex_spectra_orderentry_twime_v9_12_0.role = function(packet)
  if omi_moex_spectra_orderentry_twime_v9_12_0.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_moex_spectra_orderentry_twime_v9_12_0.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_moex_spectra_orderentry_twime_v9_12_0.prefs.acceptor_port

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

  if omi_moex_spectra_orderentry_twime_v9_12_0.prefs.swap_sides then
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
moex_spectra_orderentry_twime_v9_12_0.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Moex Spectra OrderEntry Twime 9.12.0
function omi_moex_spectra_orderentry_twime_v9_12_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_moex_spectra_orderentry_twime_v9_12_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_moex_spectra_orderentry_twime_v9_12_0, buffer(), omi_moex_spectra_orderentry_twime_v9_12_0.description, "("..buffer:len().." Bytes)")
  local role = moex_spectra_orderentry_twime_v9_12_0.role(packet)

  if role == "initiator" then
    return moex_spectra_orderentry_twime_v9_12_0.client_packet.dissect(buffer, packet, protocol)
  end

  return moex_spectra_orderentry_twime_v9_12_0.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
moex_spectra_orderentry_twime_v9_12_0.client_packet.fingerprint = function(buffer)
  if buffer:len() < 4 then
    return false
  end

  local template_id = buffer(2, 2):le_uint()

  -- Establish Message
  if template_id == 5000 then
    return true
  end

  -- Terminate Message
  if template_id == 5003 then
    return true
  end

  -- Retransmit Request Message
  if template_id == 5004 then
    return true
  end

  -- Sequence Message
  if template_id == 5006 then
    return true
  end

  -- New Order Single Message
  if template_id == 6000 then
    return true
  end

  -- New Order Iceberg Message
  if template_id == 6008 then
    return true
  end

  -- New Order Iceberg X Message
  if template_id == 6011 then
    return true
  end

  -- Order Cancel Request Message
  if template_id == 6006 then
    return true
  end

  -- Order Iceberg Cancel Request Message
  if template_id == 6009 then
    return true
  end

  -- Order Replace Request Message
  if template_id == 6007 then
    return true
  end

  -- Order Iceberg Replace Request Message
  if template_id == 6010 then
    return true
  end

  -- Order Mass Cancel Request Message
  if template_id == 6004 then
    return true
  end

  -- Order Mass Cancel By Bf Limit Request Message
  if template_id == 6005 then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
moex_spectra_orderentry_twime_v9_12_0.server_packet.fingerprint = function(buffer)
  if buffer:len() < 4 then
    return false
  end

  local template_id = buffer(2, 2):le_uint()

  -- Establishment Ack Message
  if template_id == 5001 then
    return true
  end

  -- Establishment Reject Message
  if template_id == 5002 then
    return true
  end

  -- Terminate Message
  if template_id == 5003 then
    return true
  end

  -- Retransmission Message
  if template_id == 5005 then
    return true
  end

  -- Sequence Message
  if template_id == 5006 then
    return true
  end

  -- Flood Reject Message
  if template_id == 5007 then
    return true
  end

  -- Session Reject Message
  if template_id == 5008 then
    return true
  end

  -- Business Message Reject Message
  if template_id == 5009 then
    return true
  end

  -- New Order Single Response Message
  if template_id == 7015 then
    return true
  end

  -- New Order Iceberg Response Message
  if template_id == 7016 then
    return true
  end

  -- Order Cancel Response Message
  if template_id == 7017 then
    return true
  end

  -- Order Replace Response Message
  if template_id == 7018 then
    return true
  end

  -- Order Mass Cancel Response Message
  if template_id == 7007 then
    return true
  end

  -- Execution Single Report Message
  if template_id == 7019 then
    return true
  end

  -- Execution Multileg Report Message
  if template_id == 7020 then
    return true
  end

  -- Empty Book Message
  if template_id == 7010 then
    return true
  end

  -- System Event Message
  if template_id == 7014 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
moex_spectra_orderentry_twime_v9_12_0.schema_id.client_packet_verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 4 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(4, 2):le_uint()

  if value == 19781 then
    return true
  end

  return false
end

-- Verify Version Field
moex_spectra_orderentry_twime_v9_12_0.version.client_packet_verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 6 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(6, 2):le_uint()

  if value == 7 then
    return true
  end

  return false
end

-- Verify Schema Id Field
moex_spectra_orderentry_twime_v9_12_0.schema_id.server_packet_verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 4 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(4, 2):le_uint()

  if value == 19781 then
    return true
  end

  return false
end

-- Verify Version Field
moex_spectra_orderentry_twime_v9_12_0.version.server_packet_verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 6 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(6, 2):le_uint()

  if value == 7 then
    return true
  end

  return false
end

-- Dissector Heuristic for Moex Spectra OrderEntry Twime 9.12.0 (Tcp)
local function omi_moex_spectra_orderentry_twime_v9_12_0_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not moex_spectra_orderentry_twime_v9_12_0.client_packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not moex_spectra_orderentry_twime_v9_12_0.schema_id.client_packet_verify(buffer) then return false end

  -- Verify Version
  if not moex_spectra_orderentry_twime_v9_12_0.version.client_packet_verify(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not moex_spectra_orderentry_twime_v9_12_0.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_moex_spectra_orderentry_twime_v9_12_0
  omi_moex_spectra_orderentry_twime_v9_12_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Moex Spectra OrderEntry Twime 9.12.0 (Tcp)
local function omi_moex_spectra_orderentry_twime_v9_12_0_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not moex_spectra_orderentry_twime_v9_12_0.server_packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not moex_spectra_orderentry_twime_v9_12_0.schema_id.server_packet_verify(buffer) then return false end

  -- Verify Version
  if not moex_spectra_orderentry_twime_v9_12_0.version.server_packet_verify(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not moex_spectra_orderentry_twime_v9_12_0.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_moex_spectra_orderentry_twime_v9_12_0
  omi_moex_spectra_orderentry_twime_v9_12_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Moex Spectra OrderEntry Twime 9.12.0 (Tcp): apply the heuristic of the sender's connection role
local function omi_moex_spectra_orderentry_twime_v9_12_0_tcp_heuristic(buffer, packet, parent)
  local role = moex_spectra_orderentry_twime_v9_12_0.role(packet)
  local initiator = omi_moex_spectra_orderentry_twime_v9_12_0_tcp_initiator_heuristic
  local acceptor = omi_moex_spectra_orderentry_twime_v9_12_0_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  moex_spectra_orderentry_twime_v9_12_0.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  moex_spectra_orderentry_twime_v9_12_0.swap(packet)

  return false
end

-- Register Heuristics for Moex Spectra OrderEntry Twime 9.12.0
omi_moex_spectra_orderentry_twime_v9_12_0:register_heuristic("tcp", omi_moex_spectra_orderentry_twime_v9_12_0_tcp_heuristic)

-- Register Moex Spectra OrderEntry Twime 9.12.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_moex_spectra_orderentry_twime_v9_12_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Moscow Exchange
--   Version: 9.12.0
--   Date: Monday, October 19, 2026
--   Specification: MOEX Spectra TWIME Order Entry (9.12.0).pdf
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
--   https://patents.google.com/patent/US12101388B2/en
--   https://patents.google.com/patent/US20240419416A1/en
--   https://patents.google.com/patent/US20260368281A1/en
--
-----------------------------------------------------------------------
