-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg Turquoise NativeTradingGatewayRecovery Ntgi 6.1.2 Protocol
local omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2 = Proto("Omi.Lseg.Turquoise.NativeTradingGatewayRecovery.Ntgi.v6.1.2", "Lseg Turquoise NativeTradingGatewayRecovery Ntgi 6.1.2")

-- Protocol table
local lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg Turquoise NativeTradingGatewayRecovery Ntgi 6.1.2 Fields
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.app_id = ProtoField.new("App Id", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.appid", ftypes.INT8, nil, nil, nil, "Partition ID.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.app_status = ProtoField.new("App Status", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.appstatus", ftypes.INT8, nil, nil, nil, "Availability of the recovery service for the partition.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.cancel_reject_reason = ProtoField.new("Cancel Reject Reason", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.cancelrejectreason", ftypes.INT32, nil, nil, nil, "Code specifying the reason for the reject.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.capacity = ProtoField.new("Capacity", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.capacity", ftypes.INT8, nil, nil, nil, "Capacity of the order.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.client_order_id = ProtoField.new("Client Order Id", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.clientorderid", ftypes.STRING, nil, nil, nil, "Participant specified identifier of the rejected message if it is available.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.common_symbol = ProtoField.new("Common Symbol", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.commonsymbol", ftypes.STRING, nil, nil, nil, "MTF Common Symbol of the instrument.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.comp_id = ProtoField.new("Comp Id", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.compid", ftypes.STRING, nil, nil, nil, "Participant name.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.counterparty = ProtoField.new("Counterparty", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.counterparty", ftypes.STRING, nil, nil, nil, "Own Firm ID if internalised, Contra Party Firm ID if not cleared, else the CCP (ECCP, LCH, X-Clear).")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.display_qty = ProtoField.new("Display Qty", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.displayqty", ftypes.INT32, nil, nil, nil, "Maximum quantity that may be displayed.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.exec_type = ProtoField.new("Exec Type", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.exectype", ftypes.STRING, nil, nil, nil, "The reason the Execution Report is being sent.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.executed_price = ProtoField.new("Executed Price", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.executedprice", ftypes.DOUBLE, nil, nil, nil, "Value of this fill. Required if ExecType is Trade.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.executed_qty = ProtoField.new("Executed Qty", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.executedqty", ftypes.INT32, nil, nil, nil, "Quantity that was executed in this fill.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.execution_id = ProtoField.new("Execution Id", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.executionid", ftypes.STRING, nil, nil, nil, "Unique ID of the Execution Report. Unique across all partitions.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.execution_report_ref_id = ProtoField.new("Execution Report Ref Id", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.executionreportrefid", ftypes.STRING, nil, nil, nil, "Execution ID of the trade being cancelled or corrected. Populated if ExecType is Trade Cancel.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.last_market = ProtoField.new("Last Market", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.lastmarket", ftypes.UINT8, nil, nil, nil, "Market (Segment MIC) where execution took place.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.last_msg_seq_num = ProtoField.new("Last Msg Seq Num", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.lastmsgseqnum", ftypes.INT32, nil, nil, nil, "Last received Sequence Number. The response will include the LastMsgSeqNum message.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.leaves_qty = ProtoField.new("Leaves Qty", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.leavesqty", ftypes.INT32, nil, nil, nil, "Quantity available for further execution.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.logout_reason = ProtoField.new("Logout Reason", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.logoutreason", ftypes.STRING, nil, nil, nil, "Reason for the logout.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.mass_cancel_reject_reason = ProtoField.new("Mass Cancel Reject Reason", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.masscancelrejectreason", ftypes.INT32, nil, nil, nil, "The code that identifies the reason the order mass cancel was rejected.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.mass_cancel_response = ProtoField.new("Mass Cancel Response", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.masscancelresponse", ftypes.INT8, nil, nil, nil, "Whether the Mass Cancel Request was accepted or rejected.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.message_length = ProtoField.new("Message Length", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.messagelength", ftypes.INT16, nil, nil, nil, "Length of the message from the Message Type field onwards")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.message_type = ProtoField.new("Message Type", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.messagetype", ftypes.STRING, nil, nil, nil, "Type of message")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.message_version = ProtoField.new("Message Version", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.messageversion", ftypes.INT8, nil, nil, nil, "Message Version that will be used in this session. Always set to one (1).")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.minimum_quantity = ProtoField.new("Minimum Quantity", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.minimumquantity", ftypes.INT32, nil, nil, nil, "Minimum Fill size. Set to zero if there is no minimum fill size.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.missed_message_report_response_type = ProtoField.new("Missed Message Report Response Type", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.missedmessagereportresponsetype", ftypes.INT8, nil, nil, nil, "Whether all requested messages have been sent.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.missed_message_request_ack_response_type = ProtoField.new("Missed Message Request Ack Response Type", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.missedmessagerequestackresponsetype", ftypes.INT8, nil, nil, nil, "Whether the recovery request is successful.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.nanoseconds = ProtoField.new("Nanoseconds", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.nanoseconds", ftypes.UINT32, nil, nil, nil, "Nanosecond portion of the Transact Time")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.new_password = ProtoField.new("New Password", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.newpassword", ftypes.STRING, nil, nil, nil, "New Password.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.order_id = ProtoField.new("Order Id", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.orderid", ftypes.STRING, nil, nil, nil, "Unique identifier of the order assigned by the matching system: 11 character base 62 with an O prefix.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.order_reject_code = ProtoField.new("Order Reject Code", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.orderrejectcode", ftypes.INT32, nil, nil, nil, "Code specifying the reason for the reject. See TQ801.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.order_status = ProtoField.new("Order Status", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.orderstatus", ftypes.INT8, nil, nil, nil, "The status of the order.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.owner_type = ProtoField.new("Owner Type", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.ownertype", ftypes.UINT8, nil, nil, nil, "Denotes whether the order is originated from a retail investor, retail liquidity provider or not.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.password = ProtoField.new("Password", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.password", ftypes.STRING, nil, nil, nil, "Password.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.password_expiry_day_count = ProtoField.new("Password Expiry Day Count", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.passwordexpirydaycount", ftypes.STRING, nil, nil, nil, "The number of days before the password will expire.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.peg_price_type = ProtoField.new("Peg Price Type", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.pegpricetype", ftypes.UINT8, nil, nil, nil, "Pegged Price Type of the order or trade.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.public_order_id = ProtoField.new("Public Order Id", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.publicorderid", ftypes.STRING, nil, nil, nil, "Unique for each replenishment of a particular iceberg order. Base 62 in ASCII.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.reject_code = ProtoField.new("Reject Code", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.rejectcode", ftypes.INT32, nil, nil, nil, "Code specifying the reason for the reject.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.reject_reason = ProtoField.new("Reject Reason", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.rejectreason", ftypes.STRING, nil, nil, nil, "Reject Reason.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.rejected_message_type = ProtoField.new("Rejected Message Type", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.rejectedmessagetype", ftypes.STRING, nil, nil, nil, "Message type of the rejected message.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.reputational_score = ProtoField.new("Reputational Score", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.reputationalscore", ftypes.INT8, nil, nil, nil, "Reputational Score for a BI Participant at the time of the Turquoise Block Discovery match.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.reserved_1 = ProtoField.new("Reserved 1", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.reserved_10 = ProtoField.new("Reserved 10", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.reserved10", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.reserved_21 = ProtoField.new("Reserved 21", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.reserved21", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.reserved_4 = ProtoField.new("Reserved 4", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.reserved4", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.secondaryorderid", ftypes.UINT64, nil, nil, nil, "GTP Order ID.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.seconds_utc = ProtoField.new("Seconds", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.seconds.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Seconds elapsed since midnight 1 January 1970 UTC, not counting leap seconds")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.seconds = ProtoField.new("Seconds", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.seconds", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Seconds elapsed since midnight 1 January 1970 UTC, not counting leap seconds")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.sequence_no = ProtoField.new("Sequence No", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.sequenceno", ftypes.INT32, nil, nil, nil, "Sequence number of the message.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.side = ProtoField.new("Side", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.side", ftypes.INT8, nil, nil, nil, "Side of the order.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.start_of_message = ProtoField.new("Start Of Message", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.startofmessage", ftypes.INT8, nil, nil, nil, "Indicates the start of the message; always the binary value 2")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.target_book = ProtoField.new("Target Book", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.targetbook", ftypes.UINT8, nil, nil, nil, "Indicates the order book that generated the execution report.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.trade_liquidity_indicator = ProtoField.new("Trade Liquidity Indicator", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.tradeliquidityindicator", ftypes.STRING, nil, nil, nil, "Whether the order added or removed liquidity. Only considered if Exec Type is Trade (F) or Trade Cancel (H).")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.trade_match_id = ProtoField.new("Trade Match Id", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.tradematchid", ftypes.UINT64, nil, nil, nil, "Contains the trade identifier sent on the GTP market data feed.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.transact_time_utc = ProtoField.new("Transact Time", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.transacttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Composite")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.transact_time = ProtoField.new("Transact Time", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.transacttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Composite")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.type_of_trade = ProtoField.new("Type Of Trade", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.typeoftrade", ftypes.INT8, nil, nil, nil, "Indicates whether the executed portion of a passive order is visible or hidden.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.waiver_flags = ProtoField.new("Waiver Flags", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.waiverflags", ftypes.UINT8, nil, nil, nil, "Pre-trade waiver flag. Populated when Execution Type is F or H.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.waiver_flags_rfpt = ProtoField.new("RFPT", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.waiverflags.rfpt", ftypes.UINT8, {[0]="Not Set", [1]="Set"}, base.DEC, 0x20, "Bit 5: RFPT (Reference price)")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.waiver_flags_2 = ProtoField.new("Waiver Flags 2", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.waiverflags2", ftypes.UINT8, nil, nil, nil, "The pre-trade waiver flag introduced in MiFID II. Populated when ExecType is F and H.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.waiver_flags_2_pretrade_pric = ProtoField.new("Pre-trade PRIC", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.waiverflags2.pretradepric", ftypes.UINT8, {[0]="Not Set", [1]="Set"}, base.DEC, 0x01, "Bit 0: Pre-trade PRIC")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.waiver_flags_2_netw = ProtoField.new("NETW", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.waiverflags2.netw", ftypes.UINT8, {[0]="Not Set", [1]="Set"}, base.DEC, 0x02, "Bit 1: NETW, set for BTF trades (TGHL only)")

-- Lseg Turquoise NativeTradingGatewayRecovery Ntgi 6.1.2 Framing
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.message = ProtoField.new("Message", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.message", ftypes.STRING, nil, nil, nil, "Native Trading Gateway Message")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.message_header = ProtoField.new("Message Header", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.messageheader", ftypes.STRING, nil, nil, nil, "Native Trading Gateway Message Header")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.packet = ProtoField.new("Packet", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.packet", ftypes.STRING, nil, nil, nil, "Native Trading Gateway Tcp Message Block")

-- Lseg Turquoise NativeTradingGatewayRecovery 6.1.2 Application Messages
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.business_reject_message = ProtoField.new("Business Reject Message", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.businessrejectmessage", ftypes.STRING, nil, nil, nil, "Indicates that an application message could not be processed.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.execution_report_message = ProtoField.new("Execution Report Message", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.executionreportmessage", ftypes.STRING, nil, nil, nil, "Indicates order accepted, rejected, executed, expired, cancelled, cancel/replaced, trade cancel, BI triggered or pending cancel.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "Allows the Participant and server to exercise the communication line during periods of inactivity and verify that the interfaces at each end are available.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.logon_message = ProtoField.new("Logon Message", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.logonmessage", ftypes.STRING, nil, nil, nil, "Allows the Participant and server to establish a session.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.logon_reply_message = ProtoField.new("Logon Reply Message", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.logonreplymessage", ftypes.STRING, nil, nil, nil, "Allows the server to acknowledge a Participant's Logon.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.logout_message = ProtoField.new("Logout Message", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.logoutmessage", ftypes.STRING, nil, nil, nil, "Allows the Participant and server to terminate a session.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.missed_message_report_message = ProtoField.new("Missed Message Report Message", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.missedmessagereportmessage", ftypes.STRING, nil, nil, nil, "Allows the Server to communicate the result of a Missed Message Request.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.missed_message_request_ack_message = ProtoField.new("Missed Message Request Ack Message", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.missedmessagerequestackmessage", ftypes.STRING, nil, nil, nil, "Allows the server to acknowledge a Participant's Missed Message Request.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.missed_message_request_message = ProtoField.new("Missed Message Request Message", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.missedmessagerequestmessage", ftypes.STRING, nil, nil, nil, "Allows the Participant to subscribe to missed messages through the Recovery Channel.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.order_cancel_reject_message = ProtoField.new("Order Cancel Reject Message", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.ordercancelrejectmessage", ftypes.STRING, nil, nil, nil, "Indicates that an Order Cancel Request or Order Cancel/Replace Request has been rejected.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.order_mass_cancel_report_message = ProtoField.new("Order Mass Cancel Report Message", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.ordermasscancelreportmessage", ftypes.STRING, nil, nil, nil, "Indicates a mass order cancel request was accepted or rejected.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.reject_message = ProtoField.new("Reject Message", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.rejectmessage", ftypes.STRING, nil, nil, nil, "Allows the Server to reject a message that does not comply with the Native Trading Gateway messaging protocol.")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.system_status_message = ProtoField.new("System Status Message", "lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.systemstatusmessage", ftypes.STRING, nil, nil, nil, "Sent to All Native Recovery Channel Participants on the event of Order Cache Outage.")

-- Lseg Turquoise NativeTradingGatewayRecovery Ntgi 6.1.2 Expert Info
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.experts = {}
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.experts.undecoded = ProtoExpert.new("lseg.turquoise.nativetradinggatewayrecovery.ntgi.v6.1.2.undecoded", "Fields run past the size the wire gives them", expert.group.MALFORMED, expert.severity.ERROR)
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.experts = { lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.experts.undecoded }

-----------------------------------------------------------------------
-- Lseg Turquoise NativeTradingGatewayRecovery Ntgi 6.1.2 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "DateTime Local", 2 },
  { 2, "DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=DateTime Local, 3=DateTime Utc, 4=DateTime Zone
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.timestamp_format = 3


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lseg Turquoise NativeTradingGatewayRecovery Ntgi 6.1.2 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.padding = false

-- Register Lseg Turquoise NativeTradingGatewayRecovery Ntgi 6.1.2 Show Options
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")

omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.prefs.timestamp_format = Pref.enum("Timestamp Format", 3, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.prefs.show_application_messages then
    show.application_messages = omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.prefs.show_application_messages
  end
  if show.headers ~= omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.prefs.show_headers then
    show.headers = omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.prefs.show_headers
  end
  if show.padding ~= omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.prefs.show_padding then
    show.padding = omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.prefs.show_padding
  end
  if show.structs ~= omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.prefs.show_structs then
    show.structs = omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.prefs.show_structs
  end
  if lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.timestamp_format ~= omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.prefs.timestamp_format then
    lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.timestamp_format = omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.prefs.timestamp_format
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
-- Lseg Turquoise NativeTradingGatewayRecovery Ntgi 6.1.2 Fields
-----------------------------------------------------------------------

-- App Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_id = {}

-- Size: App Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_id.size = 1

-- Display: App Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_id.labels = {
  [0] = "App Id: System Suspended Unknown Instrument (0)",
  [1] = "App Id: Partition 1 (1)",
  [2] = "App Id: Partition 2 (2)",
  [3] = "App Id: Partition 3 (3)",
}

lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_id.display = function(value)
  return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_id.labels[value] or "App Id: Unknown("..value..")"
end

-- Dissect: App Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.app_id, range, value, display)

  return offset + length, value
end

-- App Status
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_status = {}

-- Size: App Status
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_status.size = 1

-- Display: App Status
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_status.labels = {
  [1] = "App Status: Recovery Service Resumed (1)",
  [2] = "App Status: Recovery Service Not Available (2)",
}

lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_status.display = function(value)
  return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_status.labels[value] or "App Status: Unknown("..value..")"
end

-- Dissect: App Status
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.app_status, range, value, display)

  return offset + length, value
end

-- Cancel Reject Reason
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.cancel_reject_reason = {}

-- Size: Cancel Reject Reason
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.cancel_reject_reason.size = 4

-- Display: Cancel Reject Reason
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.cancel_reject_reason.display = function(value)
  return "Cancel Reject Reason: "..value
end

-- Dissect: Cancel Reject Reason
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Capacity
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.capacity = {}

-- Size: Capacity
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.capacity.size = 1

-- Display: Capacity
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.capacity.labels = {
  [1] = "Capacity: Matched Principal Mtch (1)",
  [2] = "Capacity: Dealing On Own Account Deal (2)",
  [3] = "Capacity: Any Other Trading Capacity Aotc (3)",
}

lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.capacity.display = function(value)
  return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.capacity.labels[value] or "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.capacity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.capacity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.capacity, range, value, display)

  return offset + length, value
end

-- Client Order Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.client_order_id = {}

-- Size: Client Order Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.client_order_id.size = 20

-- Display: Client Order Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.client_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Order Id: No Value"
  end

  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.client_order_id.size
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

  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Common Symbol
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.common_symbol = {}

-- Size: Common Symbol
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.common_symbol.size = 8

-- Display: Common Symbol
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.common_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Common Symbol: No Value"
  end

  return "Common Symbol: "..value
end

-- Dissect: Common Symbol
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.common_symbol.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.common_symbol.size
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

  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.common_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.common_symbol, range, value, display)

  return offset + length, value
end

-- Comp Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.comp_id = {}

-- Size: Comp Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.comp_id.size = 25

-- Display: Comp Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.comp_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Comp Id: No Value"
  end

  return "Comp Id: "..value
end

-- Dissect: Comp Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.comp_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.comp_id.size
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

  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.comp_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.comp_id, range, value, display)

  return offset + length, value
end

-- Counterparty
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.counterparty = {}

-- Size: Counterparty
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.counterparty.size = 11

-- Display: Counterparty
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.counterparty.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Counterparty: No Value"
  end

  return "Counterparty: "..value
end

-- Dissect: Counterparty
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.counterparty.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.counterparty.size
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

  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.counterparty.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.counterparty, range, value, display)

  return offset + length, value
end

-- Display Qty
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.display_qty = {}

-- Size: Display Qty
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.display_qty.size = 4

-- Display: Display Qty
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.display_qty.display = function(value)
  return "Display Qty: "..value
end

-- Dissect: Display Qty
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.display_qty.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.display_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Exec Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.exec_type = {}

-- Size: Exec Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.exec_type.size = 1

-- Display: Exec Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.exec_type.labels = {
  ["0"] = "Exec Type: New (0)",
  ["4"] = "Exec Type: Cancelled (4)",
  ["5"] = "Exec Type: Replaced (5)",
  ["6"] = "Exec Type: Pending Cancel (6)",
  ["8"] = "Exec Type: Rejected (8)",
  ["C"] = "Exec Type: Expired (C)",
  ["D"] = "Exec Type: Restated (D)",
  ["F"] = "Exec Type: Trade (F)",
  ["H"] = "Exec Type: Trade Cancel (H)",
  ["L"] = "Exec Type: Triggered (L)",
}

lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.exec_type.display = function(value)
  return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.exec_type.labels[value] or "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.exec_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Executed Price
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.executed_price = {}

-- Size: Executed Price
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.executed_price.size = 8

-- Display: Executed Price
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.executed_price.display = function(value)
  return "Executed Price: "..value
end

-- Translate: Executed Price
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.executed_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Executed Price
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.executed_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.executed_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.executed_price.translate(raw)
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.executed_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.executed_price, range, value, display)

  return offset + length, value
end

-- Executed Qty
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.executed_qty = {}

-- Size: Executed Qty
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.executed_qty.size = 4

-- Display: Executed Qty
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.executed_qty.display = function(value)
  return "Executed Qty: "..value
end

-- Dissect: Executed Qty
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.executed_qty.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.executed_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.executed_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.executed_qty, range, value, display)

  return offset + length, value
end

-- Execution Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_id = {}

-- Size: Execution Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_id.size = 12

-- Display: Execution Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Execution Id: No Value"
  end

  return "Execution Id: "..value
end

-- Dissect: Execution Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_id.size
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

  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Execution Report Ref Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_report_ref_id = {}

-- Size: Execution Report Ref Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_report_ref_id.size = 12

-- Display: Execution Report Ref Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_report_ref_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Execution Report Ref Id: No Value"
  end

  return "Execution Report Ref Id: "..value
end

-- Dissect: Execution Report Ref Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_report_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_report_ref_id.size
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

  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_report_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.execution_report_ref_id, range, value, display)

  return offset + length, value
end

-- Last Market
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.last_market = {}

-- Size: Last Market
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.last_market.size = 1

-- Display: Last Market
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.last_market.labels = {
  [1] = "Last Market: Trqx Turquoise Lit Order Book (1)",
  [2] = "Last Market: Trqm Turquoise Dark Order Book (2)",
  [3] = "Last Market: Trqa Turquoise Periodic Auctions Order Book (3)",
  [5] = "Last Market: Tqex Turquoise Lit Order Book Tghe (5)",
  [6] = "Last Market: Tqem Turquoise Dark Order Book Tghe (6)",
  [7] = "Last Market: Tqea Turquoise Periodic Auctions Order Book Tghe (7)",
}

lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.last_market.display = function(value)
  return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.last_market.labels[value] or "Last Market: Unknown("..value..")"
end

-- Dissect: Last Market
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.last_market.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.last_market.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.last_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.last_market, range, value, display)

  return offset + length, value
end

-- Last Msg Seq Num
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.last_msg_seq_num = {}

-- Size: Last Msg Seq Num
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.last_msg_seq_num.size = 4

-- Display: Last Msg Seq Num
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.last_msg_seq_num.display = function(value)
  return "Last Msg Seq Num: "..value
end

-- Dissect: Last Msg Seq Num
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.last_msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.last_msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.last_msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.last_msg_seq_num, range, value, display)

  return offset + length, value
end

-- Leaves Qty
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.leaves_qty = {}

-- Size: Leaves Qty
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.leaves_qty.size = 4

-- Display: Leaves Qty
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Logout Reason
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logout_reason = {}

-- Size: Logout Reason
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logout_reason.size = 20

-- Display: Logout Reason
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logout_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Logout Reason: No Value"
  end

  return "Logout Reason: "..value
end

-- Dissect: Logout Reason
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logout_reason.size
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

  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Mass Cancel Reject Reason
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.mass_cancel_reject_reason = {}

-- Size: Mass Cancel Reject Reason
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.mass_cancel_reject_reason.size = 4

-- Display: Mass Cancel Reject Reason
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.mass_cancel_reject_reason.display = function(value)
  return "Mass Cancel Reject Reason: "..value
end

-- Dissect: Mass Cancel Reject Reason
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.mass_cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.mass_cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.mass_cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.mass_cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Mass Cancel Response
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.mass_cancel_response = {}

-- Size: Mass Cancel Response
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.mass_cancel_response.size = 1

-- Display: Mass Cancel Response
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.mass_cancel_response.labels = {
  [0] = "Mass Cancel Response: Rejected (0)",
  [7] = "Mass Cancel Response: Accepted (7)",
}

lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.mass_cancel_response.display = function(value)
  return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.mass_cancel_response.labels[value] or "Mass Cancel Response: Unknown("..value..")"
end

-- Dissect: Mass Cancel Response
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.mass_cancel_response.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.mass_cancel_response.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.mass_cancel_response.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.mass_cancel_response, range, value, display)

  return offset + length, value
end

-- Message Length
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_length = {}

-- Size: Message Length
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_length.size = 2

-- Display: Message Length
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_length.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_type = {}

-- Size: Message Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_type.size = 1

-- Display: Message Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_type.labels = {
  ["A"] = "Message Type: Logon Message (A)",
  ["B"] = "Message Type: Logon Reply Message (B)",
  ["5"] = "Message Type: Logout Message (5)",
  ["0"] = "Message Type: Heartbeat Message (0)",
  ["M"] = "Message Type: Missed Message Request Message (M)",
  ["N"] = "Message Type: Missed Message Request Ack Message (N)",
  ["P"] = "Message Type: Missed Message Report Message (P)",
  ["3"] = "Message Type: Reject Message (3)",
  ["n"] = "Message Type: System Status Message (n)",
  ["8"] = "Message Type: Execution Report Message (8)",
  ["9"] = "Message Type: Order Cancel Reject Message (9)",
  ["r"] = "Message Type: Order Mass Cancel Report Message (r)",
  ["j"] = "Message Type: Business Reject Message (j)",
}

lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_type.display = function(value)
  return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Version
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_version = {}

-- Size: Message Version
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_version.size = 1

-- Display: Message Version
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_version.display = function(value)
  return "Message Version: "..value
end

-- Dissect: Message Version
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_version.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_version.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.message_version, range, value, display)

  return offset + length, value
end

-- Minimum Quantity
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.minimum_quantity = {}

-- Size: Minimum Quantity
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.minimum_quantity.size = 4

-- Display: Minimum Quantity
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.minimum_quantity.display = function(value)
  return "Minimum Quantity: "..value
end

-- Dissect: Minimum Quantity
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.minimum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.minimum_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.minimum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.minimum_quantity, range, value, display)

  return offset + length, value
end

-- Missed Message Report Response Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_report_response_type = {}

-- Size: Missed Message Report Response Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_report_response_type.size = 1

-- Display: Missed Message Report Response Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_report_response_type.labels = {
  [0] = "Missed Message Report Response Type: Download Complete (0)",
  [1] = "Missed Message Report Response Type: Message Limit Reached (1)",
  [2] = "Missed Message Report Response Type: Service Unavailable (2)",
}

lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_report_response_type.display = function(value)
  return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_report_response_type.labels[value] or "Missed Message Report Response Type: Unknown("..value..")"
end

-- Dissect: Missed Message Report Response Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_report_response_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_report_response_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_report_response_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.missed_message_report_response_type, range, value, display)

  return offset + length, value
end

-- Missed Message Request Ack Response Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_ack_response_type = {}

-- Size: Missed Message Request Ack Response Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_ack_response_type.size = 1

-- Display: Missed Message Request Ack Response Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_ack_response_type.labels = {
  [0] = "Missed Message Request Ack Response Type: Successful (0)",
  [1] = "Missed Message Request Ack Response Type: Recovery Request Limit Reached (1)",
  [2] = "Missed Message Request Ack Response Type: Invalid App Id (2)",
  [3] = "Missed Message Request Ack Response Type: Service Unavailable (3)",
}

lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_ack_response_type.display = function(value)
  return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_ack_response_type.labels[value] or "Missed Message Request Ack Response Type: Unknown("..value..")"
end

-- Dissect: Missed Message Request Ack Response Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_ack_response_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_ack_response_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_ack_response_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.missed_message_request_ack_response_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.nanoseconds = {}

-- Size: Nanoseconds
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.nanoseconds.size = 4

-- Display: Nanoseconds
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- New Password
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.new_password = {}

-- Size: New Password
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.new_password.size = 25

-- Display: New Password
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.new_password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "New Password: No Value"
  end

  return "New Password: "..value
end

-- Dissect: New Password
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.new_password.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.new_password.size
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

  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.new_password.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.new_password, range, value, display)

  return offset + length, value
end

-- Order Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_id = {}

-- Size: Order Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_id.size = 12

-- Display: Order Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Order Id: No Value"
  end

  return "Order Id: "..value
end

-- Dissect: Order Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_id.size
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

  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Reject Code
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_reject_code = {}

-- Size: Order Reject Code
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_reject_code.size = 4

-- Display: Order Reject Code
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_reject_code.display = function(value)
  return "Order Reject Code: "..value
end

-- Dissect: Order Reject Code
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_reject_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.order_reject_code, range, value, display)

  return offset + length, value
end

-- Order Status
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_status = {}

-- Size: Order Status
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_status.size = 1

-- Display: Order Status
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_status.labels = {
  [0] = "Order Status: New (0)",
  [1] = "Order Status: Partially Filled (1)",
  [2] = "Order Status: Filled (2)",
  [4] = "Order Status: Cancelled (4)",
  [6] = "Order Status: Expired (6)",
  [8] = "Order Status: Rejected (8)",
  [13] = "Order Status: Pending Cancel (13)",
}

lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_status.display = function(value)
  return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_status.labels[value] or "Order Status: Unknown("..value..")"
end

-- Dissect: Order Status
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.order_status, range, value, display)

  return offset + length, value
end

-- Owner Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.owner_type = {}

-- Size: Owner Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.owner_type.size = 1

-- Display: Owner Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.owner_type.labels = {
  [0] = "Owner Type: Non Retail (0)",
  [1] = "Owner Type: Retail (1)",
  [2] = "Owner Type: Retail Lp (2)",
}

lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.owner_type.display = function(value)
  return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.owner_type.labels[value] or "Owner Type: Unknown("..value..")"
end

-- Dissect: Owner Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.owner_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.owner_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.owner_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.owner_type, range, value, display)

  return offset + length, value
end

-- Password
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.password = {}

-- Size: Password
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.password.size = 25

-- Display: Password
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.password.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.password.size
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

  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.password, range, value, display)

  return offset + length, value
end

-- Password Expiry Day Count
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.password_expiry_day_count = {}

-- Size: Password Expiry Day Count
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.password_expiry_day_count.size = 30

-- Display: Password Expiry Day Count
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.password_expiry_day_count.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password Expiry Day Count: No Value"
  end

  return "Password Expiry Day Count: "..value
end

-- Dissect: Password Expiry Day Count
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.password_expiry_day_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.password_expiry_day_count.size
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

  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.password_expiry_day_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.password_expiry_day_count, range, value, display)

  return offset + length, value
end

-- Peg Price Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.peg_price_type = {}

-- Size: Peg Price Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.peg_price_type.size = 1

-- Display: Peg Price Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.peg_price_type.labels = {
  [0] = "Peg Price Type: Default Midpoint (0)",
  [1] = "Peg Price Type: Closing Price Clse Tghl Only (1)",
  [2] = "Peg Price Type: Midpoint (2)",
  [10] = "Peg Price Type: Best Bid (10)",
  [11] = "Peg Price Type: Best Offer (11)",
}

lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.peg_price_type.display = function(value)
  return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.peg_price_type.labels[value] or "Peg Price Type: Unknown("..value..")"
end

-- Dissect: Peg Price Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.peg_price_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.peg_price_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.peg_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.peg_price_type, range, value, display)

  return offset + length, value
end

-- Public Order Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.public_order_id = {}

-- Size: Public Order Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.public_order_id.size = 12

-- Display: Public Order Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.public_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Public Order Id: No Value"
  end

  return "Public Order Id: "..value
end

-- Dissect: Public Order Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.public_order_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.public_order_id.size
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

  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.public_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.public_order_id, range, value, display)

  return offset + length, value
end

-- Reject Code
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_code = {}

-- Size: Reject Code
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_code.size = 4

-- Display: Reject Code
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_code.display = function(value)
  return "Reject Code: "..value
end

-- Dissect: Reject Code
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.reject_code, range, value, display)

  return offset + length, value
end

-- Reject Reason
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_reason = {}

-- Size: Reject Reason
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_reason.size = 30

-- Display: Reject Reason
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reject Reason: No Value"
  end

  return "Reject Reason: "..value
end

-- Dissect: Reject Reason
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_reason.size
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

  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Rejected Message Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.rejected_message_type = {}

-- Size: Rejected Message Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.rejected_message_type.size = 1

-- Display: Rejected Message Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.rejected_message_type.display = function(value)
  return "Rejected Message Type: "..value
end

-- Dissect: Rejected Message Type
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.rejected_message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.rejected_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.rejected_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.rejected_message_type, range, value, display)

  return offset + length, value
end

-- Reputational Score
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reputational_score = {}

-- Size: Reputational Score
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reputational_score.size = 1

-- Display: Reputational Score
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reputational_score.display = function(value)
  return "Reputational Score: "..value
end

-- Dissect: Reputational Score
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reputational_score.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reputational_score.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reputational_score.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.reputational_score, range, value, display)

  return offset + length, value
end

-- Reserved 1
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_1 = {}

-- Size: Reserved 1
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_1.size = 1

-- Display: Reserved 1
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 10
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_10 = {}

-- Size: Reserved 10
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_10.size = 10

-- Display: Reserved 10
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_10.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.reserved_10, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 21
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_21 = {}

-- Size: Reserved 21
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_21.size = 21

-- Display: Reserved 21
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_21.display = function(value)
  return "Reserved 21: "..value
end

-- Dissect: Reserved 21
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_21.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_21.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_21.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.reserved_21, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 4
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_4 = {}

-- Size: Reserved 4
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_4.size = 4

-- Display: Reserved 4
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.reserved_4, range, range:raw(), display)

  return offset + length, value
end

-- Secondary Order Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.secondary_order_id = {}

-- Size: Secondary Order Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.secondary_order_id.size = 8

-- Display: Secondary Order Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Seconds
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.seconds = {}

-- Size: Seconds
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.seconds.size = 4

-- Dissect: Seconds
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.seconds.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.seconds
  if lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.timestamp_format == 3 then field = omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.seconds_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Sequence No
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.sequence_no = {}

-- Size: Sequence No
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.sequence_no.size = 4

-- Display: Sequence No
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.sequence_no.display = function(value)
  return "Sequence No: "..value
end

-- Dissect: Sequence No
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.sequence_no.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.sequence_no.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.sequence_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.sequence_no, range, value, display)

  return offset + length, value
end

-- Side
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.side = {}

-- Size: Side
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.side.size = 1

-- Display: Side
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.side.labels = {
  [1] = "Side: Buy (1)",
  [2] = "Side: Sell (2)",
}

lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.side.display = function(value)
  return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.side.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.side.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.side, range, value, display)

  return offset + length, value
end

-- Start Of Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.start_of_message = {}

-- Size: Start Of Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.start_of_message.size = 1

-- Display: Start Of Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.start_of_message.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Target Book
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.target_book = {}

-- Size: Target Book
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.target_book.size = 1

-- Display: Target Book
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.target_book.labels = {
  [0] = "Target Book: Turquoise Dark Order Book Trqm Or Tqem (0)",
  [1] = "Target Book: Turquoise Lit Order Book Trqx Or Tqex (1)",
  [3] = "Target Book: Turquoise Dark Lit Sweep Trqm And Trqx Or Tqem And Tqex (3)",
  [4] = "Target Book: Turquoise Periodic Auctions Order Book Trqa Or Tqea (4)",
}

lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.target_book.display = function(value)
  return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.target_book.labels[value] or "Target Book: Unknown("..value..")"
end

-- Dissect: Target Book
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.target_book.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.target_book.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.target_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.target_book, range, value, display)

  return offset + length, value
end

-- Trade Liquidity Indicator
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.trade_liquidity_indicator = {}

-- Size: Trade Liquidity Indicator
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.trade_liquidity_indicator.size = 1

-- Display: Trade Liquidity Indicator
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.trade_liquidity_indicator.labels = {
  ["A"] = "Trade Liquidity Indicator: Added Liquidity (A)",
  ["R"] = "Trade Liquidity Indicator: Removed Liquidity (R)",
  ["C"] = "Trade Liquidity Indicator: Turquoise Dark Uncross Or Periodic Auctions Execution (C)",
  ["S"] = "Trade Liquidity Indicator: Turquoise Block Discovery Execution Turquoise Dark Uncross (S)",
  ["B"] = "Trade Liquidity Indicator: Btf Trade (B)",
}

lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.trade_liquidity_indicator.display = function(value)
  return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.trade_liquidity_indicator.labels[value] or "Trade Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Trade Liquidity Indicator
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.trade_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.trade_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.trade_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.trade_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Trade Match Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.trade_match_id = {}

-- Size: Trade Match Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.trade_match_id.size = 8

-- Display: Trade Match Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.trade_match_id.display = function(value)
  return "Trade Match Id: "..value
end

-- Dissect: Trade Match Id
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.trade_match_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.trade_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.trade_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.trade_match_id, range, value, display)

  return offset + length, value
end

-- Type Of Trade
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.type_of_trade = {}

-- Size: Type Of Trade
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.type_of_trade.size = 1

-- Display: Type Of Trade
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.type_of_trade.labels = {
  [0] = "Type Of Trade: Visible (0)",
  [1] = "Type Of Trade: Hidden (1)",
  [2] = "Type Of Trade: Not Specified (2)",
}

lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.type_of_trade.display = function(value)
  return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.type_of_trade.labels[value] or "Type Of Trade: Unknown("..value..")"
end

-- Dissect: Type Of Trade
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.type_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.type_of_trade.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.type_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.type_of_trade, range, value, display)

  return offset + length, value
end

-- Waiver Flags
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.waiver_flags = {}

-- Size: Waiver Flags
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.waiver_flags.size = 1

-- Display: Waiver Flags
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.waiver_flags.display = function(value)
  return "Waiver Flags: "..value
end

-- Dissect: Waiver Flags
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.waiver_flags.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.waiver_flags.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.waiver_flags.display(value, buffer, offset, packet, parent)

  local item = parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.waiver_flags, range, value, display)
  item:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.waiver_flags_rfpt, range, value)

  return offset + length, value
end

-- Waiver Flags 2
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.waiver_flags_2 = {}

-- Size: Waiver Flags 2
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.waiver_flags_2.size = 1

-- Display: Waiver Flags 2
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.waiver_flags_2.display = function(value)
  return "Waiver Flags 2: "..value
end

-- Dissect: Waiver Flags 2
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.waiver_flags_2.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.waiver_flags_2.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.waiver_flags_2.display(value, buffer, offset, packet, parent)

  local item = parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.waiver_flags_2, range, value, display)
  item:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.waiver_flags_2_pretrade_pric, range, value)
  item:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.waiver_flags_2_netw, range, value)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lseg Turquoise NativeTradingGatewayRecovery Ntgi 6.1.2
-----------------------------------------------------------------------

-- Transact Time
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.transact_time = {}

-- Size: Transact Time
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.transact_time.size =
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.seconds.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.nanoseconds.size

-- Display: Transact Time
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.transact_time.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  local format = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
  return os.date(format, seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Transact Time
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.transact_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local transact_time = UInt64.new(seconds) * 1000000000 + nanoseconds

  return index, transact_time
end

-- Dissect: Transact Time
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.transact_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- An absolute time item carries its value from the moment it is created,
    -- so the parts are read here rather than taken from the fields below it
    local seconds = buffer(offset, 4):le_uint()
    local nanoseconds = buffer(offset + 4, 4):le_uint()
    local length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.transact_time.size
    -- A field's absolute time base is fixed when it is declared, so the
    -- protocol declares one per base and the preference picks between them
    local field = omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.transact_time_utc
    if lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.timestamp_format == 2 then field = omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.transact_time end
    parent = parent:add(field, buffer(offset, length), NSTime.new(seconds, nanoseconds))
    local index = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.transact_time.fields(buffer, offset, packet, parent)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.transact_time.fields(buffer, offset, packet, parent)
  end
end

-- Business Reject Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.business_reject_message = {}

-- Size: Business Reject Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.business_reject_message.size =
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_id.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.sequence_no.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_code.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.client_order_id.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_id.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.transact_time.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_10.size

-- Display: Business Reject Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.business_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Reject Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.business_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- App Id: Int8
  index, app_id = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_id.dissect(buffer, index, packet, parent)

  -- Sequence No: Int32
  index, sequence_no = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.sequence_no.dissect(buffer, index, packet, parent)

  -- Reject Code: Int32
  index, reject_code = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_code.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: String
  index, order_id = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_id.dissect(buffer, index, packet, parent)

  -- Transact Time: Struct of 2 fields
  index, transact_time = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.transact_time.dissect(buffer, index, packet, parent)

  -- Reserved 10: String
  if show.padding then
    index, reserved_10 = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_10.size
  end

  return index
end

-- Dissect: Business Reject Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.business_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.business_reject_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.business_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.business_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.business_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Cancel Report Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_mass_cancel_report_message = {}

-- Size: Order Mass Cancel Report Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_mass_cancel_report_message.size =
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_id.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.sequence_no.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.client_order_id.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.mass_cancel_response.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.mass_cancel_reject_reason.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_4.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.transact_time.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_10.size

-- Display: Order Mass Cancel Report Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_mass_cancel_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Cancel Report Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_mass_cancel_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- App Id: Int8
  index, app_id = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_id.dissect(buffer, index, packet, parent)

  -- Sequence No: Int32
  index, sequence_no = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.sequence_no.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Response: Int8
  index, mass_cancel_response = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.mass_cancel_response.dissect(buffer, index, packet, parent)

  -- Mass Cancel Reject Reason: Int32
  index, mass_cancel_reject_reason = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.mass_cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Reserved 4: String
  if show.padding then
    index, reserved_4 = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_4.size
  end

  -- Transact Time: Struct of 2 fields
  index, transact_time = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.transact_time.dissect(buffer, index, packet, parent)

  -- Reserved 10: String
  if show.padding then
    index, reserved_10 = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_10.size
  end

  return index
end

-- Dissect: Order Mass Cancel Report Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_mass_cancel_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.order_mass_cancel_report_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_mass_cancel_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_mass_cancel_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_mass_cancel_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Reject Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_cancel_reject_message = {}

-- Size: Order Cancel Reject Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_cancel_reject_message.size =
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_id.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.sequence_no.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.client_order_id.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_id.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.cancel_reject_reason.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.transact_time.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_10.size

-- Display: Order Cancel Reject Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Reject Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- App Id: Int8
  index, app_id = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_id.dissect(buffer, index, packet, parent)

  -- Sequence No: Int32
  index, sequence_no = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.sequence_no.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: String
  index, order_id = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_id.dissect(buffer, index, packet, parent)

  -- Cancel Reject Reason: Int32
  index, cancel_reject_reason = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Transact Time: Struct of 2 fields
  index, transact_time = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.transact_time.dissect(buffer, index, packet, parent)

  -- Reserved 10: String
  if show.padding then
    index, reserved_10 = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_10.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_10.size
  end

  return index
end

-- Dissect: Order Cancel Reject Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.order_cancel_reject_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_report_message = {}

-- Size: Execution Report Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_report_message.size =
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_id.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.sequence_no.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_id.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.client_order_id.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_id.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.exec_type.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_report_ref_id.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_status.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_reject_code.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.executed_price.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.executed_qty.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.leaves_qty.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.waiver_flags.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.display_qty.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.common_symbol.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.side.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.secondary_order_id.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.counterparty.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.trade_liquidity_indicator.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.trade_match_id.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.transact_time.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.target_book.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.type_of_trade.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.capacity.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_1.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.public_order_id.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.minimum_quantity.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reputational_score.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.last_market.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.peg_price_type.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.owner_type.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.waiver_flags_2.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_21.size

-- Display: Execution Report Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- App Id: Int8
  index, app_id = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_id.dissect(buffer, index, packet, parent)

  -- Sequence No: Int32
  index, sequence_no = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.sequence_no.dissect(buffer, index, packet, parent)

  -- Execution Id: String
  index, execution_id = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: String
  index, order_id = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_id.dissect(buffer, index, packet, parent)

  -- Exec Type: Alpha
  index, exec_type = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.exec_type.dissect(buffer, index, packet, parent)

  -- Execution Report Ref Id: String
  index, execution_report_ref_id = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_report_ref_id.dissect(buffer, index, packet, parent)

  -- Order Status: Int8
  index, order_status = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_status.dissect(buffer, index, packet, parent)

  -- Order Reject Code: Int32
  index, order_reject_code = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_reject_code.dissect(buffer, index, packet, parent)

  -- Executed Price: Price
  index, executed_price = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.executed_price.dissect(buffer, index, packet, parent)

  -- Executed Qty: Int32
  index, executed_qty = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.executed_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Int32
  index, leaves_qty = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.leaves_qty.dissect(buffer, index, packet, parent)

  -- Waiver Flags: UInt8
  index, waiver_flags = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.waiver_flags.dissect(buffer, index, packet, parent)

  -- Display Qty: Int32
  index, display_qty = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.display_qty.dissect(buffer, index, packet, parent)

  -- Common Symbol: String
  index, common_symbol = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.common_symbol.dissect(buffer, index, packet, parent)

  -- Side: Int8
  index, side = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.side.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: UInt64
  index, secondary_order_id = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Counterparty: String
  index, counterparty = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.counterparty.dissect(buffer, index, packet, parent)

  -- Trade Liquidity Indicator: Alpha
  index, trade_liquidity_indicator = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.trade_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Trade Match Id: UInt64
  index, trade_match_id = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.trade_match_id.dissect(buffer, index, packet, parent)

  -- Transact Time: Struct of 2 fields
  index, transact_time = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.transact_time.dissect(buffer, index, packet, parent)

  -- Target Book: UInt8
  index, target_book = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.target_book.dissect(buffer, index, packet, parent)

  -- Type Of Trade: Int8
  index, type_of_trade = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.type_of_trade.dissect(buffer, index, packet, parent)

  -- Capacity: Int8
  index, capacity = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.capacity.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  if show.padding then
    index, reserved_1 = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_1.size
  end

  -- Public Order Id: String
  index, public_order_id = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.public_order_id.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Int32
  index, minimum_quantity = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Reputational Score: Int8
  index, reputational_score = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reputational_score.dissect(buffer, index, packet, parent)

  -- Last Market: UInt8
  index, last_market = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.last_market.dissect(buffer, index, packet, parent)

  -- Peg Price Type: UInt8
  index, peg_price_type = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.peg_price_type.dissect(buffer, index, packet, parent)

  -- Owner Type: UInt8
  index, owner_type = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.owner_type.dissect(buffer, index, packet, parent)

  -- Waiver Flags 2: UInt8
  index, waiver_flags_2 = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.waiver_flags_2.dissect(buffer, index, packet, parent)

  -- Reserved 21: String
  if show.padding then
    index, reserved_21 = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_21.dissect(buffer, index, packet, parent)
  else
    index = index + lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reserved_21.size
  end

  return index
end

-- Dissect: Execution Report Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.execution_report_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_report_message.fields(buffer, offset, packet, parent)
  end
end

-- System Status Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.system_status_message = {}

-- Size: System Status Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.system_status_message.size =
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_id.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_status.size

-- Display: System Status Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.system_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Status Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.system_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- App Id: Int8
  index, app_id = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_id.dissect(buffer, index, packet, parent)

  -- App Status: Int8
  index, app_status = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Status Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.system_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.system_status_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.system_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.system_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.system_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Reject Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_message = {}

-- Size: Reject Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_message.size =
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_code.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_reason.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.rejected_message_type.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.client_order_id.size

-- Display: Reject Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Code: Int32
  index, reject_code = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_code.dissect(buffer, index, packet, parent)

  -- Reject Reason: String
  index, reject_reason = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_reason.dissect(buffer, index, packet, parent)

  -- Rejected Message Type: Alpha
  index, rejected_message_type = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.rejected_message_type.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.client_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.reject_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Missed Message Report Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_report_message = {}

-- Size: Missed Message Report Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_report_message.size =
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_report_response_type.size

-- Display: Missed Message Report Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Missed Message Report Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Missed Message Report Response Type: Int8
  index, missed_message_report_response_type = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_report_response_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Missed Message Report Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.missed_message_report_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Missed Message Request Ack Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_ack_message = {}

-- Size: Missed Message Request Ack Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_ack_message.size =
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_ack_response_type.size

-- Display: Missed Message Request Ack Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Missed Message Request Ack Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Missed Message Request Ack Response Type: Int8
  index, missed_message_request_ack_response_type = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_ack_response_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Missed Message Request Ack Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.missed_message_request_ack_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Missed Message Request Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_message = {}

-- Size: Missed Message Request Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_message.size =
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_id.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.last_msg_seq_num.size

-- Display: Missed Message Request Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Missed Message Request Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- App Id: Int8
  index, app_id = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.app_id.dissect(buffer, index, packet, parent)

  -- Last Msg Seq Num: Int32
  index, last_msg_seq_num = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.last_msg_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Missed Message Request Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.missed_message_request_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.heartbeat_message = {}

-- Display: Heartbeat Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logout_message = {}

-- Size: Logout Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logout_message.size =
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logout_reason.size

-- Display: Logout Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logout_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: String
  index, logout_reason = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logout_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logout_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.logout_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logout_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logout_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logout_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Reply Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logon_reply_message = {}

-- Size: Logon Reply Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logon_reply_message.size =
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_code.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.password_expiry_day_count.size

-- Display: Logon Reply Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logon_reply_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Reply Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logon_reply_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Code: Int32
  index, reject_code = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_code.dissect(buffer, index, packet, parent)

  -- Password Expiry Day Count: String
  index, password_expiry_day_count = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.password_expiry_day_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Reply Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logon_reply_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.logon_reply_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logon_reply_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logon_reply_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logon_reply_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logon_message = {}

-- Size: Logon Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logon_message.size =
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.comp_id.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.password.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.new_password.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_version.size

-- Display: Logon Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Comp Id: String
  index, comp_id = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.comp_id.dissect(buffer, index, packet, parent)

  -- Password: String
  index, password = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.password.dissect(buffer, index, packet, parent)

  -- New Password: String
  index, new_password = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.new_password.dissect(buffer, index, packet, parent)

  -- Message Version: Int8
  index, message_version = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.logon_message, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.payload = {}

-- Dispatch: Payload
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.payload.dispatch = {
  ["A"] = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logon_message.dissect,
  ["B"] = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logon_reply_message.dissect,
  ["5"] = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.logout_message.dissect,
  ["0"] = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.heartbeat_message.dissect,
  ["M"] = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_message.dissect,
  ["N"] = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_request_ack_message.dissect,
  ["P"] = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.missed_message_report_message.dissect,
  ["3"] = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.reject_message.dissect,
  ["n"] = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.system_status_message.dissect,
  ["8"] = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.execution_report_message.dissect,
  ["9"] = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_cancel_reject_message.dissect,
  ["r"] = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.order_mass_cancel_report_message.dissect,
  ["j"] = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.business_reject_message.dissect,
}

-- Dissect: Payload
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_header = {}

-- Size: Message Header
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_header.size =
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.start_of_message.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_length.size + 
  lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_type.size

-- Display: Message Header
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: Int8
  index, start_of_message = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: Int16
  index, message_length = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: Alpha
  index, message_type = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.message_header, buffer(offset, 0))
    local index = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message = {}

-- Display: Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 13 branches
  index = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.fields.message, buffer(offset, 0))
    local decoded, failure = pcall(lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message.fields, bounded, offset, packet, parent, size_of_message)
    if not decoded then
      undecoded(failure, parent, lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.experts.undecoded, "Message does not decode within its "..size_of_message.." bytes")
    end
    parent:set_len(size_of_message)
    local display = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message.fields, bounded, offset, packet, parent, size_of_message)
    if not decoded then
      undecoded(failure, parent, lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.experts.undecoded, "Message does not decode within its "..size_of_message.." bytes")
    end

    return index
  end
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 1, 2):le_int() + 3

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.packet = {}

-- Verify required size of Tcp packet
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.packet.requiredsize = function(buffer)
  return buffer:len() >= lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message_header.size
end

-- Dissect Packet
lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_message = message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_message):tvb()
      index = lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.message.dissect(frame, index, packet, parent, size_of_message)
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
function omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.init()
end

-- Dissector for Lseg Turquoise NativeTradingGatewayRecovery Ntgi 6.1.2
function omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2, buffer(), omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.description, "("..buffer:len().." Bytes)")
  return lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lseg Turquoise NativeTradingGatewayRecovery Ntgi 6.1.2 (Tcp)
local function omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2
  omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg Turquoise NativeTradingGatewayRecovery Ntgi 6.1.2
omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2:register_heuristic("tcp", omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2_tcp_heuristic)

-- Register Lseg Turquoise NativeTradingGatewayRecovery Ntgi 6.1.2 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_lseg_turquoise_nativetradinggatewayrecovery_ntgi_v6_1_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: London Stock Exchange
--   Version: 6.1.2
--   Date: Wednesday, October 7, 2026
--   Specification: tq301-trading-gateway-native-issue-6-1-2.pdf
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
