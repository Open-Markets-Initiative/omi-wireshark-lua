-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe CxjEquities BinaryOrderEntry Boe3 1.0.12 Protocol
local omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12 = Proto("Omi.Cboe.CxjEquities.BinaryOrderEntry.Boe3.v1.0.12", "Cboe CxjEquities BinaryOrderEntry Boe3 1.0.12")

-- Protocol table
local cboe_cxjequities_binaryorderentry_boe3_v1_0_12 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe CxjEquities BinaryOrderEntry Boe3 1.0.12 Fields
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.account = ProtoField.new("Account", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.account", ftypes.STRING, nil, nil, nil, "Used by a trading participant to provide a broker cross reference")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.base_liquidity_indicator = ProtoField.new("Base Liquidity Indicator", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.baseliquidityindicator", ftypes.STRING, nil, nil, nil, "Indicates whether the trade added or removed liquidity")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.cancel_orig_on_reject = ProtoField.new("Cancel Orig On Reject", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.cancelorigonreject", ftypes.STRING, nil, nil, nil, "Cancel original order if modification fails")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.cancel_reason = ProtoField.new("Cancel Reason", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.cancelreason", ftypes.STRING, nil, nil, nil, "See Section 4.5 - Order Reason Codes")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.cancel_reject_reason = ProtoField.new("Cancel Reject Reason", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.cancelrejectreason", ftypes.STRING, nil, nil, nil, "See Section 4.5 - Order Reason Codes")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.cancelled_order_count = ProtoField.new("Cancelled Order Count", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.cancelledordercount", ftypes.UINT32, nil, nil, nil, "Number of orders cancelled")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.capacity = ProtoField.new("Capacity", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.capacity", ftypes.STRING, nil, nil, nil, "The capacity for the order. Required on all orders")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.cash_margin = ProtoField.new("Cash Margin", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.cashmargin", ftypes.STRING, nil, nil, nil, "Indicates the type of cash or margin order")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.clordid", ftypes.STRING, nil, nil, nil, "Unique Id chosen by the participant")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.client_sequence = ProtoField.new("Client Sequence", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.clientsequence", ftypes.UINT32, nil, nil, nil, "Last inbound (TPH to CFE) message sequence number processed by CFE on this port.")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.company_id = ProtoField.new("Company Id", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.companyid", ftypes.STRING, nil, nil, nil, "Up to 4 alphanumeric characters to identify the order entry firm. This field is not validated")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.exchange_message_type = ProtoField.new("Message Type", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.exchangemessagetype", ftypes.UINT16, nil, nil, nil, "type of message")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.exec_id = ProtoField.new("Exec Id", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.execid", ftypes.UINT64, nil, nil, nil, "Execution Id. Unique across all matching units on a given day")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.expire_time = ProtoField.new("Expire Time", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.expiretime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Required for GTD order (TimeInForce = 6), ExpireTime specifies the date-time (in UTC) when the order expires")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.expire_time_utc = ProtoField.new("Expire Time", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.expiretime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Required for GTD order (TimeInForce = 6), ExpireTime specifies the date-time (in UTC) when the order expires")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.firm_message_type = ProtoField.new("Message Type", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.firmmessagetype", ftypes.UINT16, nil, nil, nil, "type of message")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.last_capacity = ProtoField.new("Last Capacity", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.lastcapacity", ftypes.STRING, nil, nil, nil, "Capacity of the order")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.last_px = ProtoField.new("Last Px", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.lastpx", ftypes.DOUBLE, nil, nil, nil, "Price of this fill")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.last_shares = ProtoField.new("Last Shares", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.lastshares", ftypes.UINT32, nil, nil, nil, "Executed quantity")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.leaves_qty = ProtoField.new("Leaves Qty", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.leavesqty", ftypes.UINT32, nil, nil, nil, "Quantity still open for further execution. If zero, the order is complete")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.loginresponsestatus", ftypes.STRING, nil, nil, nil, "Accepted, or the reason for the rejection.")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.login_response_text = ProtoField.new("Login Response Text", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.loginresponsetext", ftypes.STRING, nil, nil, nil, "Human-readable text with additional information about the reason for rejection. ASCII NUL (0x00) filled on the right, if necessary.")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.logout_reason = ProtoField.new("Logout Reason", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.logoutreason", ftypes.STRING, nil, nil, nil, "reason for the logout")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.logout_reason_text = ProtoField.new("Logout Reason Text", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.logoutreasontext", ftypes.STRING, nil, nil, nil, "Human-readable text with additional information about the reason for logout")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.margin_transaction_type = ProtoField.new("Margin Transaction Type", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.margintransactiontype", ftypes.STRING, nil, nil, nil, "Specifies if a margin order is a Negotiable or a Standardized")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.mass_cancel_id = ProtoField.new("Mass Cancel Id", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.masscancelid", ftypes.STRING, nil, nil, nil, "User-defined identifier of the mass cancel or purge request")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.mass_cancel_inst = ProtoField.new("Mass Cancel Inst", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.masscancelinst", ftypes.STRING, nil, nil, nil, "At least one character must be provided (Firm Filter)")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.matching_unit = ProtoField.new("Matching Unit", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.matchingunit", ftypes.UINT8, nil, nil, nil, "The matching unit which created this message. Matching units in BOE correspond to matching units on Multicast PITCH")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.message_length = ProtoField.new("Message Length", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.messagelength", ftypes.UINT16, nil, nil, nil, "Number of bytes for the message, including this field but not including the two bytes of the StartOfMessage field")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.modify_reject_reason = ProtoField.new("Modify Reject Reason", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.modifyrejectreason", ftypes.STRING, nil, nil, nil, "See Section 4.5 - Order Reason Codes")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.no_trade_feat = ProtoField.new("No Trade Feat", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.notradefeat", ftypes.STRING, nil, nil, nil, "Ignored if NoTradeKey is not set. Declares the handling of self-trading")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.no_trade_key = ProtoField.new("No Trade Key", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.notradekey", ftypes.STRING, nil, nil, nil, "Interactions of orders from the same participant with the same NoTradeKey value will be managed by the newer order's NoTradeFeat instruction")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.number_of_units = ProtoField.new("Number Of Units", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.numberofunits", ftypes.UINT8, nil, nil, nil, "The number (possibly 0) of unit/sequence pairs to follow, one per unit from which the TPH has received messages over this port. The value must be 0 or 1 since all BOEv3 ports are associated to a single unit.")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.ord_type = ProtoField.new("Ord Type", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.ordtype", ftypes.STRING, nil, nil, nil, "Order type")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.order_classification = ProtoField.new("Order Classification", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.orderclassification", ftypes.STRING, nil, nil, nil, "Specify the order classification")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.order_id = ProtoField.new("Order Id", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.orderid", ftypes.UINT64, nil, nil, nil, "Order identifier supplied by Cboe Japan")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.order_qty = ProtoField.new("Order Qty", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.orderqty", ftypes.UINT32, nil, nil, nil, "Order quantity. System limit is 999,999,999")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.orderrejectreason", ftypes.STRING, nil, nil, nil, "See Section 4.5 - Order Reason Codes")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.origclordid", ftypes.STRING, nil, nil, nil, "The ClOrdID of the original order")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.password = ProtoField.new("Password", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.password", ftypes.STRING, nil, nil, nil, "The password associated with the SessionId and SessionSubId.")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.posting_instruction = ProtoField.new("Posting Instruction", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.postinginstruction", ftypes.STRING)
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.price = ProtoField.new("Price", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.price", ftypes.DOUBLE, nil, nil, nil, "Price must be an applicable minimum trading increment")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.purge_reject_reason = ProtoField.new("Purge Reject Reason", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.purgerejectreason", ftypes.STRING, nil, nil, nil, "Reason for the purge rejection. See Section 4.5 - Order Reason Codes")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.replay_unspecified_unit = ProtoField.new("Replay Unspecified Unit", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.replayunspecifiedunit", ftypes.STRING, nil, nil, nil, "Controls replay behavior for unknown units.")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.reserved_field = ProtoField.new("Reserved Field", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.reservedfield", ftypes.UINT8, nil, nil, nil, "Reserved header field")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.restatement_reason = ProtoField.new("Restatement Reason", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.restatementreason", ftypes.STRING, nil, nil, nil, "The reason for this Order Restated message")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.risk_group_id = ProtoField.new("Risk Group Id", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.riskgroupid", ftypes.UINT16, nil, nil, nil, "Used to group orders for use in order purges where multiple orders can be cancelled by specifying a list of RiskGroupIDs")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.risk_group_id_cnt = ProtoField.new("Risk Group Id Cnt", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.riskgroupidcnt", ftypes.UINT8, nil, nil, nil, "Number of repeating RiskGroupID included in this message. Value 0 to 10")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.secondaryorderid", ftypes.UINT64, nil, nil, nil, "Present on a Self-Trade Protection triggered restatement. Cboe OrderID of contra side of prevented match")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.sequencenumber", ftypes.UINT32, nil, nil, nil, "Last Received Sequence number for the unit.")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.session_id = ProtoField.new("Session Id", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.sessionid", ftypes.STRING, nil, nil, nil, "Session Id as supplied by CFE")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.sessionsubid", ftypes.STRING, nil, nil, nil, "Session Sub Id as supplied by CFE")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.side = ProtoField.new("Side", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.side", ftypes.STRING, nil, nil, nil, "Side of the order")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.start_of_message = ProtoField.new("Start Of Message", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.startofmessage", ftypes.UINT16, nil, nil, nil, "B0 E3 (58288)")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.symbol = ProtoField.new("Symbol", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.symbol", ftypes.STRING, nil, nil, nil, "Instrument symbol (QUICK symbology)")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.text = ProtoField.new("Text", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.text", ftypes.STRING, nil, nil, nil, "Human readable text with more information")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.time_in_force = ProtoField.new("Time In Force", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.timeinforce", ftypes.STRING)
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.trading_firm = ProtoField.new("Trading Firm", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.tradingfirm", ftypes.STRING, nil, nil, nil, "The four-character identifier of the trading firm")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.transactiontime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time the event occurred in the Matching Engine (not the time the message was sent)")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.transaction_time_utc = ProtoField.new("Transaction Time", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.transactiontime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time the event occurred in the Matching Engine (not the time the message was sent)")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.unit_number = ProtoField.new("Unit Number", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.unitnumber", ftypes.UINT8, nil, nil, nil, "A unit number.")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.unit_sequence = ProtoField.new("Unit Sequence", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.unitsequence", ftypes.STRING)

-- Cboe CxjEquities BinaryOrderEntry Boe3 1.0.12 Framing
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.exchange_message_header = ProtoField.new("Message Header", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.exchangemessageheader", ftypes.STRING, nil, nil, nil, "Message header of a packet sent by the exchange")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.exchange_packet = ProtoField.new("Packet", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.exchangepacket", ftypes.STRING, nil, nil, nil, "Binary Order Entry Tcp Packet sent by the exchange")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.firm_message_header = ProtoField.new("Message Header", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.firmmessageheader", ftypes.STRING, nil, nil, nil, "Message header of a packet sent by the firm")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.firm_packet = ProtoField.new("Packet", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.firmpacket", ftypes.STRING, nil, nil, nil, "Binary Order Entry Tcp Packet sent by the firm")

-- Cboe CxjEquities BinaryOrderEntry 1.0.12 Application Messages
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.cancel_order_jp_equities_v_1 = ProtoField.new("Cancel Order Jp Equities V 1", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.cancelorderjpequitiesv1", ftypes.STRING, nil, nil, nil, "Request to cancel a single order")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.cancel_rejected_jp_equities_v_1 = ProtoField.new("Cancel Rejected Jp Equities V 1", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.cancelrejectedjpequitiesv1", ftypes.STRING, nil, nil, nil, "A Cancel Rejected message is sent in response to a Cancel Order message to indicate that the cancellation cannot occur")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.modify_order_jp_equities_v_1 = ProtoField.new("Modify Order Jp Equities V 1", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.modifyorderjpequitiesv1", ftypes.STRING, nil, nil, nil, "Request to modify an order. Only Price and OrderQty may be adjusted")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.modify_rejected_jp_equities_v_1 = ProtoField.new("Modify Rejected Jp Equities V 1", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.modifyrejectedjpequitiesv1", ftypes.STRING, nil, nil, nil, "Modify Rejected messages are sent in response to a Modify Order for an order which cannot be modified")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.new_order_jp_equities_v_1 = ProtoField.new("New Order Jp Equities V 1", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.neworderjpequitiesv1", ftypes.STRING, nil, nil, nil, "Submission of a new order to Cboe Japan")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.order_acknowledgement_jp_equities_v_1 = ProtoField.new("Order Acknowledgement Jp Equities V 1", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.orderacknowledgementjpequitiesv1", ftypes.STRING, nil, nil, nil, "Order Acknowledgement messages are sent in response to a New Order message")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.order_cancelled_jp_equities_v_1 = ProtoField.new("Order Cancelled Jp Equities V 1", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.ordercancelledjpequitiesv1", ftypes.STRING, nil, nil, nil, "Order Cancelled message")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.order_execution_jp_equities_v_1 = ProtoField.new("Order Execution Jp Equities V 1", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.orderexecutionjpequitiesv1", ftypes.STRING, nil, nil, nil, "An Order Execution is sent for each fill on an order")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.order_modified_jp_equities_v_1 = ProtoField.new("Order Modified Jp Equities V 1", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.ordermodifiedjpequitiesv1", ftypes.STRING, nil, nil, nil, "Order Modified messages are sent in response to a Modify Order to indicate that the order has been successfully modified")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.order_rejected_jp_equities_v_1 = ProtoField.new("Order Rejected Jp Equities V 1", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.orderrejectedjpequitiesv1", ftypes.STRING, nil, nil, nil, "Order Rejected messages are sent in response to a New Order which must be rejected")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.order_restated_jp_equities_v_1 = ProtoField.new("Order Restated Jp Equities V 1", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.orderrestatedjpequitiesv1", ftypes.STRING, nil, nil, nil, "If an order is cancelled or reduced due to Self-Trade Protection instructions, the order will be restated with reductions to OrderQty and/or LeavesQty")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.purge_acknowledgement_jp_equities_v_1 = ProtoField.new("Purge Acknowledgement Jp Equities V 1", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.purgeacknowledgementjpequitiesv1", ftypes.STRING, nil, nil, nil, "A Purge Acknowledgment is an unsequenced message sent when a Purge Orders message requesting an order purge has completed cancelling all individual orders")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.purge_orders_jp_equities_v_1 = ProtoField.new("Purge Orders Jp Equities V 1", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.purgeordersjpequitiesv1", ftypes.STRING, nil, nil, nil, "Request to cancel a group of orders across all of the participant's sessions")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.purge_rejected_jp_equities_v_1 = ProtoField.new("Purge Rejected Jp Equities V 1", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.purgerejectedjpequitiesv1", ftypes.STRING, nil, nil, nil, "A Purge Rejected message is sent in response to a Purge Orders message to indicate that the mass cancellation cannot occur")

-- Cboe CxjEquities BinaryOrderEntry 1.0.12 Session Messages
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.clientheartbeat", ftypes.BYTES, nil, nil, nil, "Boe3 client sends a heartbeat to indicate the connection is alive; carries no payload")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.login_request_message = ProtoField.new("Login Request Message", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.loginrequestmessage", ftypes.STRING, nil, nil, nil, "A Login Request message must be sent as the first message upon connection")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.loginresponsemessage", ftypes.STRING, nil, nil, nil, "A Login Response message is sent in response to a Login Request message")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.logout_request = ProtoField.new("Logout Request", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.logoutrequest", ftypes.BYTES, nil, nil, nil, "Boe3 client requests session logout; server completes any in-flight messages then closes. Carries no payload")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.logout_response_message = ProtoField.new("Logout Response Message", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.logoutresponsemessage", ftypes.STRING, nil, nil, nil, "A Logout Response is usually sent in response to a Logout Request")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.replay_complete = ProtoField.new("Replay Complete", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.replaycomplete", ftypes.BYTES, nil, nil, nil, "Boe3 server signals that the replay of missed messages is complete; carries no payload")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.serverheartbeat", ftypes.BYTES, nil, nil, nil, "Boe3 server sends a heartbeat to indicate the connection is alive; carries no payload")

-- Cboe CxjEquities BinaryOrderEntry Boe3 1.0.12 Generated Fields
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.risk_group_id_index = ProtoField.new("Risk Group Id Index", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.riskgroupidindex", ftypes.UINT16)
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.unit_sequence_index = ProtoField.new("Unit Sequence Index", "cboe.cxjequities.binaryorderentry.boe3.v1.0.12.unitsequenceindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Cboe CxjEquities BinaryOrderEntry Boe3 1.0.12 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.absolute_time_base = 0

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

-- Cboe CxjEquities BinaryOrderEntry Boe3 1.0.12 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true
show.session_messages = true
show.indexes = true

-- Register Cboe CxjEquities BinaryOrderEntry Boe3 1.0.12 Show Options
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.show_application_messages then
    show.application_messages = omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.show_headers then
    show.headers = omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.show_headers
  end
  if show.session_messages ~= omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.show_session_messages then
    show.session_messages = omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.show_session_messages
  end
  if show.structs ~= omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.show_structs then
    show.structs = omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.show_indexes then
    show.indexes = omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.show_indexes
  end
  if cboe_cxjequities_binaryorderentry_boe3_v1_0_12.absolute_time_base ~= omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.absolute_time_base then
    cboe_cxjequities_binaryorderentry_boe3_v1_0_12.absolute_time_base = omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Cboe CxjEquities BinaryOrderEntry Boe3 1.0.12 Fields
-----------------------------------------------------------------------

-- Account
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.account = {}

-- Size: Account
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.account.size = 10

-- Display: Account
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.account.size
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

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.account, range, value, display)

  return offset + length, value
end

-- Base Liquidity Indicator
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.base_liquidity_indicator = {}

-- Size: Base Liquidity Indicator
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.base_liquidity_indicator.size = 1

-- Display: Base Liquidity Indicator
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.base_liquidity_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Base Liquidity Indicator: No Value"
  end

  if value == "A" then
    return "Base Liquidity Indicator: Added Liquidity (A)"
  end
  if value == "R" then
    return "Base Liquidity Indicator: Removed Liquidity (R)"
  end
  if value == 0 then
    return "Base Liquidity Indicator: N/A"
  end

  return "Base Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Base Liquidity Indicator
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.base_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.base_liquidity_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.base_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.base_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Cancel Orig On Reject
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_orig_on_reject = {}

-- Size: Cancel Orig On Reject
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_orig_on_reject.size = 1

-- Display: Cancel Orig On Reject
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_orig_on_reject.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Cancel Orig On Reject: No Value"
  end

  if value == "Y" then
    return "Cancel Orig On Reject: Cancel Original Order If Modification Fails (Y)"
  end
  if value == "N" then
    return "Cancel Orig On Reject: Leave Original Order Alone (N)"
  end
  if value == 0 then
    return "Cancel Orig On Reject: Apply Port Default"
  end

  return "Cancel Orig On Reject: Unknown("..value..")"
end

-- Dissect: Cancel Orig On Reject
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_orig_on_reject.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_orig_on_reject.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_orig_on_reject.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.cancel_orig_on_reject, range, value, display)

  return offset + length, value
end

-- Cancel Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_reason = {}

-- Size: Cancel Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_reason.size = 1

-- Display: Cancel Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Cancel Reason: No Value"
  end

  if value == "A" then
    return "Cancel Reason: Admin (A)"
  end
  if value == "D" then
    return "Cancel Reason: Duplicate Identifier Eg Cl Ord Id (D)"
  end
  if value == "H" then
    return "Cancel Reason: Halted (H)"
  end
  if value == "I" then
    return "Cancel Reason: Incorrect Data Center (I)"
  end
  if value == "K" then
    return "Cancel Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "N" then
    return "Cancel Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Cancel Reason: Cl Ord Id Does Not Match A Known Order (O)"
  end
  if value == "U" then
    return "Cancel Reason: User Requested (U)"
  end
  if value == "W" then
    return "Cancel Reason: Add Liquidity Only Order Would Remove (W)"
  end
  if value == "X" then
    return "Cancel Reason: Order Expired (X)"
  end
  if value == "Y" then
    return "Cancel Reason: Symbol Not Supported (Y)"
  end
  if value == "Z" then
    return "Cancel Reason: Unforeseen Reason (Z)"
  end
  if value == "o" then
    return "Cancel Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "y" then
    return "Cancel Reason: Order Received By Cboe Japan During Replay (y)"
  end
  if value == "z" then
    return "Cancel Reason: Session End (z)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cancel Reject Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_reject_reason = {}

-- Size: Cancel Reject Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_reject_reason.size = 1

-- Display: Cancel Reject Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_reject_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Cancel Reject Reason: No Value"
  end

  if value == "A" then
    return "Cancel Reject Reason: Admin (A)"
  end
  if value == "D" then
    return "Cancel Reject Reason: Duplicate Identifier Eg Cl Ord Id (D)"
  end
  if value == "H" then
    return "Cancel Reject Reason: Halted (H)"
  end
  if value == "I" then
    return "Cancel Reject Reason: Incorrect Data Center (I)"
  end
  if value == "K" then
    return "Cancel Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "N" then
    return "Cancel Reject Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Cancel Reject Reason: Cl Ord Id Does Not Match A Known Order (O)"
  end
  if value == "U" then
    return "Cancel Reject Reason: User Requested (U)"
  end
  if value == "W" then
    return "Cancel Reject Reason: Add Liquidity Only Order Would Remove (W)"
  end
  if value == "X" then
    return "Cancel Reject Reason: Order Expired (X)"
  end
  if value == "Y" then
    return "Cancel Reject Reason: Symbol Not Supported (Y)"
  end
  if value == "Z" then
    return "Cancel Reject Reason: Unforeseen Reason (Z)"
  end
  if value == "o" then
    return "Cancel Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "y" then
    return "Cancel Reject Reason: Order Received By Cboe Japan During Replay (y)"
  end
  if value == "z" then
    return "Cancel Reject Reason: Session End (z)"
  end

  return "Cancel Reject Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reject Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_reject_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Cancelled Order Count
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancelled_order_count = {}

-- Size: Cancelled Order Count
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancelled_order_count.size = 4

-- Display: Cancelled Order Count
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancelled_order_count.display = function(value)
  return "Cancelled Order Count: "..value
end

-- Dissect: Cancelled Order Count
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancelled_order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancelled_order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancelled_order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.cancelled_order_count, range, value, display)

  return offset + length, value
end

-- Capacity
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.capacity = {}

-- Size: Capacity
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.capacity.size = 1

-- Display: Capacity
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.capacity.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Capacity: No Value"
  end

  if value == "A" then
    return "Capacity: Agency (A)"
  end
  if value == "P" then
    return "Capacity: Principal (P)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.capacity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.capacity.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.capacity, range, value, display)

  return offset + length, value
end

-- Cash Margin
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cash_margin = {}

-- Size: Cash Margin
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cash_margin.size = 1

-- Display: Cash Margin
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cash_margin.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Cash Margin: No Value"
  end

  if value == "1" then
    return "Cash Margin: Cash (1)"
  end
  if value == "2" then
    return "Cash Margin: Margin Open (2)"
  end
  if value == "3" then
    return "Cash Margin: Margin Close (3)"
  end

  return "Cash Margin: Unknown("..value..")"
end

-- Dissect: Cash Margin
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cash_margin.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cash_margin.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cash_margin.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.cash_margin, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id = {}

-- Size: Cl Ord Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.size = 20

-- Display: Cl Ord Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord Id: No Value"
  end

  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.size
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

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Client Sequence
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.client_sequence = {}

-- Size: Client Sequence
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.client_sequence.size = 4

-- Display: Client Sequence
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.client_sequence.display = function(value)
  return "Client Sequence: "..value
end

-- Dissect: Client Sequence
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.client_sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.client_sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.client_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.client_sequence, range, value, display)

  return offset + length, value
end

-- Company Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.company_id = {}

-- Size: Company Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.company_id.size = 4

-- Display: Company Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.company_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Company Id: No Value"
  end

  return "Company Id: "..value
end

-- Dissect: Company Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.company_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.company_id.size
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

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.company_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.company_id, range, value, display)

  return offset + length, value
end

-- Exchange Message Type
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message_type = {}

-- Size: Exchange Message Type
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message_type.size = 2

-- Display: Exchange Message Type
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message_type.labels = {
  [501] = "Message Type: Login Response Message (501)",
  [502] = "Message Type: Replay Complete Message (502)",
  [503] = "Message Type: Logout Response Message (503)",
  [504] = "Message Type: Server Heartbeat Message (504)",
  [5501] = "Message Type: Order Acknowledgement Jp Equities V 1 (5501)",
  [5502] = "Message Type: Order Rejected Jp Equities V 1 (5502)",
  [5503] = "Message Type: Order Modified Jp Equities V 1 (5503)",
  [5504] = "Message Type: Modify Rejected Jp Equities V 1 (5504)",
  [5505] = "Message Type: Order Restated Jp Equities V 1 (5505)",
  [5506] = "Message Type: Order Execution Jp Equities V 1 (5506)",
  [5507] = "Message Type: Order Cancelled Jp Equities V 1 (5507)",
  [5508] = "Message Type: Cancel Rejected Jp Equities V 1 (5508)",
  [5510] = "Message Type: Purge Acknowledgement Jp Equities V 1 (5510)",
  [5511] = "Message Type: Purge Rejected Jp Equities V 1 (5511)",
}

cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message_type.display = function(value)
  return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Exchange Message Type
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.exchange_message_type, range, value, display)

  return offset + length, value
end

-- Exec Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exec_id = {}

-- Size: Exec Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exec_id.size = 8

-- Display: Exec Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Expire Time
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.expire_time = {}

-- Size: Expire Time
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.expire_time.size = 8

-- Dissect: Expire Time
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.expire_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.expire_time
  if cboe_cxjequities_binaryorderentry_boe3_v1_0_12.absolute_time_base == 1 then field = omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.expire_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Firm Message Type
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_type = {}

-- Size: Firm Message Type
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_type.size = 2

-- Display: Firm Message Type
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_type.labels = {
  [1] = "Message Type: Login Request Message (1)",
  [2] = "Message Type: Logout Request Message (2)",
  [3] = "Message Type: Client Heartbeat Message (3)",
  [5001] = "Message Type: New Order Jp Equities V 1 (5001)",
  [5002] = "Message Type: Modify Order Jp Equities V 1 (5002)",
  [5003] = "Message Type: Cancel Order Jp Equities V 1 (5003)",
  [5004] = "Message Type: Purge Orders Jp Equities V 1 (5004)",
}

cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_type.display = function(value)
  return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Firm Message Type
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.firm_message_type, range, value, display)

  return offset + length, value
end

-- Last Capacity
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_capacity = {}

-- Size: Last Capacity
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_capacity.size = 1

-- Display: Last Capacity
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_capacity.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Last Capacity: No Value"
  end

  if value == "1" then
    return "Last Capacity: Agent (1)"
  end
  if value == "2" then
    return "Last Capacity: Cross As Agent (2)"
  end
  if value == "3" then
    return "Last Capacity: Cross As Principal (3)"
  end
  if value == "4" then
    return "Last Capacity: Principal (4)"
  end

  return "Last Capacity: Unknown("..value..")"
end

-- Dissect: Last Capacity
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_capacity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_capacity.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.last_capacity, range, value, display)

  return offset + length, value
end

-- Last Px
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_px = {}

-- Size: Last Px
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_px.size = 8

-- Display: Last Px
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Px
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_px.translate(raw)
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Shares
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_shares = {}

-- Size: Last Shares
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_shares.size = 4

-- Display: Last Shares
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_shares.display = function(value)
  return "Last Shares: "..value
end

-- Dissect: Last Shares
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Leaves Qty
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.leaves_qty = {}

-- Size: Leaves Qty
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.leaves_qty.size = 4

-- Display: Leaves Qty
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_status = {}

-- Size: Login Response Status
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_status.size = 1

-- Display: Login Response Status
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_status.labels = {
  ["A"] = "Login Response Status: Accepted (A)",
  ["B"] = "Login Response Status: Session In Use (B)",
  ["D"] = "Login Response Status: Disabled (D)",
  ["I"] = "Login Response Status: Invalid Unit (I)",
  ["M"] = "Login Response Status: Invalid Message (M)",
  ["N"] = "Login Response Status: Not Authorized (N)",
  ["Q"] = "Login Response Status: Sequence Ahead (Q)",
  ["S"] = "Login Response Status: Invalid Session (S)",
}

cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_status.display = function(value)
  return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_status.labels[value] or "Login Response Status: Unknown("..value..")"
end

-- Dissect: Login Response Status
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Login Response Text
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_text = {}

-- Size: Login Response Text
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_text.size = 60

-- Display: Login Response Text
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Login Response Text: No Value"
  end

  return "Login Response Text: "..value
end

-- Dissect: Login Response Text
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_text.size
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

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.login_response_text, range, value, display)

  return offset + length, value
end

-- Logout Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_reason = {}

-- Size: Logout Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_reason.size = 1

-- Display: Logout Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_reason.labels = {
  ["U"] = "Logout Reason: User Requested (U)",
  ["A"] = "Logout Reason: Administrative (A)",
  ["!"] = "Logout Reason: Protocol Violation (!)",
}

cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_reason.display = function(value)
  return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_reason.labels[value] or "Logout Reason: Unknown("..value..")"
end

-- Dissect: Logout Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Reason Text
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_reason_text = {}

-- Size: Logout Reason Text
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_reason_text.size = 60

-- Display: Logout Reason Text
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_reason_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Logout Reason Text: No Value"
  end

  return "Logout Reason Text: "..value
end

-- Dissect: Logout Reason Text
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_reason_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_reason_text.size
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

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_reason_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.logout_reason_text, range, value, display)

  return offset + length, value
end

-- Margin Transaction Type
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.margin_transaction_type = {}

-- Size: Margin Transaction Type
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.margin_transaction_type.size = 1

-- Display: Margin Transaction Type
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.margin_transaction_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Margin Transaction Type: No Value"
  end

  if value == "1" then
    return "Margin Transaction Type: Negotiable (1)"
  end
  if value == "2" then
    return "Margin Transaction Type: Standardized (2)"
  end
  if value == 0 then
    return "Margin Transaction Type: None"
  end

  return "Margin Transaction Type: Unknown("..value..")"
end

-- Dissect: Margin Transaction Type
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.margin_transaction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.margin_transaction_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.margin_transaction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.margin_transaction_type, range, value, display)

  return offset + length, value
end

-- Mass Cancel Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.mass_cancel_id = {}

-- Size: Mass Cancel Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.mass_cancel_id.size = 20

-- Display: Mass Cancel Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.mass_cancel_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mass Cancel Id: No Value"
  end

  return "Mass Cancel Id: "..value
end

-- Dissect: Mass Cancel Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.mass_cancel_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.mass_cancel_id.size
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

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.mass_cancel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.mass_cancel_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Inst
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.mass_cancel_inst = {}

-- Size: Mass Cancel Inst
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.mass_cancel_inst.size = 16

-- Display: Mass Cancel Inst
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.mass_cancel_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mass Cancel Inst: No Value"
  end

  return "Mass Cancel Inst: "..value
end

-- Dissect: Mass Cancel Inst
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.mass_cancel_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.mass_cancel_inst.size
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

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.mass_cancel_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.mass_cancel_inst, range, value, display)

  return offset + length, value
end

-- Matching Unit
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.matching_unit = {}

-- Size: Matching Unit
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.matching_unit.size = 1

-- Display: Matching Unit
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.matching_unit.display = function(value)
  return "Matching Unit: "..value
end

-- Dissect: Matching Unit
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.matching_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.matching_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.matching_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.matching_unit, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.message_length = {}

-- Size: Message Length
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.message_length.size = 2

-- Display: Message Length
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.message_length, range, value, display)

  return offset + length, value
end

-- Modify Reject Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_reject_reason = {}

-- Size: Modify Reject Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_reject_reason.size = 1

-- Display: Modify Reject Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_reject_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Modify Reject Reason: No Value"
  end

  if value == "A" then
    return "Modify Reject Reason: Admin (A)"
  end
  if value == "D" then
    return "Modify Reject Reason: Duplicate Identifier Eg Cl Ord Id (D)"
  end
  if value == "H" then
    return "Modify Reject Reason: Halted (H)"
  end
  if value == "I" then
    return "Modify Reject Reason: Incorrect Data Center (I)"
  end
  if value == "K" then
    return "Modify Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "N" then
    return "Modify Reject Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Modify Reject Reason: Cl Ord Id Does Not Match A Known Order (O)"
  end
  if value == "U" then
    return "Modify Reject Reason: User Requested (U)"
  end
  if value == "W" then
    return "Modify Reject Reason: Add Liquidity Only Order Would Remove (W)"
  end
  if value == "X" then
    return "Modify Reject Reason: Order Expired (X)"
  end
  if value == "Y" then
    return "Modify Reject Reason: Symbol Not Supported (Y)"
  end
  if value == "Z" then
    return "Modify Reject Reason: Unforeseen Reason (Z)"
  end
  if value == "o" then
    return "Modify Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "y" then
    return "Modify Reject Reason: Order Received By Cboe Japan During Replay (y)"
  end
  if value == "z" then
    return "Modify Reject Reason: Session End (z)"
  end

  return "Modify Reject Reason: Unknown("..value..")"
end

-- Dissect: Modify Reject Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_reject_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.modify_reject_reason, range, value, display)

  return offset + length, value
end

-- No Trade Feat
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.no_trade_feat = {}

-- Size: No Trade Feat
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.no_trade_feat.size = 1

-- Display: No Trade Feat
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.no_trade_feat.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "No Trade Feat: No Value"
  end

  if value == "U" then
    return "No Trade Feat: No Self Trade Protection (U)"
  end
  if value == "N" then
    return "No Trade Feat: Cancel Newest (N)"
  end
  if value == "O" then
    return "No Trade Feat: Cancel Oldest (O)"
  end
  if value == "B" then
    return "No Trade Feat: Cancel Both (B)"
  end
  if value == "S" then
    return "No Trade Feat: Cancel Smallest (S)"
  end
  if value == "D" then
    return "No Trade Feat: Decrement Larger Cancel Smaller (D)"
  end
  if value == "d" then
    return "No Trade Feat: Same As D Above But Only Decrement Leaves Qty (d)"
  end
  if value == 0 then
    return "No Trade Feat: Apply The Port Default"
  end

  return "No Trade Feat: Unknown("..value..")"
end

-- Dissect: No Trade Feat
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.no_trade_feat.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.no_trade_feat.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.no_trade_feat.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.no_trade_feat, range, value, display)

  return offset + length, value
end

-- No Trade Key
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.no_trade_key = {}

-- Size: No Trade Key
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.no_trade_key.size = 10

-- Display: No Trade Key
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.no_trade_key.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "No Trade Key: No Value"
  end

  return "No Trade Key: "..value
end

-- Dissect: No Trade Key
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.no_trade_key.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.no_trade_key.size
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

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.no_trade_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.no_trade_key, range, value, display)

  return offset + length, value
end

-- Number Of Units
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.number_of_units = {}

-- Size: Number Of Units
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.number_of_units.size = 1

-- Display: Number Of Units
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.number_of_units.display = function(value)
  return "Number Of Units: "..value
end

-- Dissect: Number Of Units
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.number_of_units.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.number_of_units.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.number_of_units.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.number_of_units, range, value, display)

  return offset + length, value
end

-- Ord Type
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.ord_type = {}

-- Size: Ord Type
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.ord_type.size = 1

-- Display: Ord Type
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.ord_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ord Type: No Value"
  end

  if value == "2" then
    return "Ord Type: Limit (2)"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.ord_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Classification
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_classification = {}

-- Size: Order Classification
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_classification.size = 1

-- Display: Order Classification
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_classification.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Order Classification: No Value"
  end

  if value == "1" then
    return "Order Classification: Non Low Latency Trading Auto (1)"
  end
  if value == "2" then
    return "Order Classification: Non Low Latency Trading Manual (2)"
  end
  if value == "3" then
    return "Order Classification: Market Making Strategy (3)"
  end
  if value == "4" then
    return "Order Classification: Arbitrage Strategy (4)"
  end
  if value == "5" then
    return "Order Classification: Directional Strategy (5)"
  end
  if value == "6" then
    return "Order Classification: Other Strategy (6)"
  end
  if value == 0 then
    return "Order Classification: Not Specified"
  end

  return "Order Classification: Unknown("..value..")"
end

-- Dissect: Order Classification
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_classification.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_classification.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.order_classification, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_id = {}

-- Size: Order Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_id.size = 8

-- Display: Order Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Qty
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_qty = {}

-- Size: Order Qty
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_qty.size = 4

-- Display: Order Qty
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Reject Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_reject_reason = {}

-- Size: Order Reject Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_reject_reason.size = 1

-- Display: Order Reject Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_reject_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Order Reject Reason: No Value"
  end

  if value == "A" then
    return "Order Reject Reason: Admin (A)"
  end
  if value == "D" then
    return "Order Reject Reason: Duplicate Identifier Eg Cl Ord Id (D)"
  end
  if value == "H" then
    return "Order Reject Reason: Halted (H)"
  end
  if value == "I" then
    return "Order Reject Reason: Incorrect Data Center (I)"
  end
  if value == "K" then
    return "Order Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "N" then
    return "Order Reject Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Order Reject Reason: Cl Ord Id Does Not Match A Known Order (O)"
  end
  if value == "U" then
    return "Order Reject Reason: User Requested (U)"
  end
  if value == "W" then
    return "Order Reject Reason: Add Liquidity Only Order Would Remove (W)"
  end
  if value == "X" then
    return "Order Reject Reason: Order Expired (X)"
  end
  if value == "Y" then
    return "Order Reject Reason: Symbol Not Supported (Y)"
  end
  if value == "Z" then
    return "Order Reject Reason: Unforeseen Reason (Z)"
  end
  if value == "o" then
    return "Order Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "y" then
    return "Order Reject Reason: Order Received By Cboe Japan During Replay (y)"
  end
  if value == "z" then
    return "Order Reject Reason: Session End (z)"
  end

  return "Order Reject Reason: Unknown("..value..")"
end

-- Dissect: Order Reject Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_reject_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.orig_cl_ord_id.size = 20

-- Display: Orig Cl Ord Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.orig_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Orig Cl Ord Id: No Value"
  end

  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.orig_cl_ord_id.size
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

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Password
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.password = {}

-- Size: Password
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.password.size = 10

-- Display: Password
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.password.size
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

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.password, range, value, display)

  return offset + length, value
end

-- Posting Instruction
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.posting_instruction = {}

-- Size: Posting Instruction
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.posting_instruction.size = 1

-- Display: Posting Instruction
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.posting_instruction.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Posting Instruction: No Value"
  end

  if value == "P" then
    return "Posting Instruction: Post Only Never Take Liquidity (P)"
  end
  if value == 0 then
    return "Posting Instruction: Allow Taking"
  end

  return "Posting Instruction: Unknown("..value..")"
end

-- Dissect: Posting Instruction
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.posting_instruction.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.posting_instruction.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.posting_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.posting_instruction, range, value, display)

  return offset + length, value
end

-- Price
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.price = {}

-- Size: Price
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.price.size = 8

-- Display: Price
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.price.translate(raw)
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.price, range, value, display)

  return offset + length, value
end

-- Purge Reject Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_reject_reason = {}

-- Size: Purge Reject Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_reject_reason.size = 1

-- Display: Purge Reject Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_reject_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Purge Reject Reason: No Value"
  end

  if value == "A" then
    return "Purge Reject Reason: Admin (A)"
  end
  if value == "D" then
    return "Purge Reject Reason: Duplicate Identifier Eg Cl Ord Id (D)"
  end
  if value == "H" then
    return "Purge Reject Reason: Halted (H)"
  end
  if value == "I" then
    return "Purge Reject Reason: Incorrect Data Center (I)"
  end
  if value == "K" then
    return "Purge Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "N" then
    return "Purge Reject Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Purge Reject Reason: Cl Ord Id Does Not Match A Known Order (O)"
  end
  if value == "U" then
    return "Purge Reject Reason: User Requested (U)"
  end
  if value == "W" then
    return "Purge Reject Reason: Add Liquidity Only Order Would Remove (W)"
  end
  if value == "X" then
    return "Purge Reject Reason: Order Expired (X)"
  end
  if value == "Y" then
    return "Purge Reject Reason: Symbol Not Supported (Y)"
  end
  if value == "Z" then
    return "Purge Reject Reason: Unforeseen Reason (Z)"
  end
  if value == "o" then
    return "Purge Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "y" then
    return "Purge Reject Reason: Order Received By Cboe Japan During Replay (y)"
  end
  if value == "z" then
    return "Purge Reject Reason: Session End (z)"
  end

  return "Purge Reject Reason: Unknown("..value..")"
end

-- Dissect: Purge Reject Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_reject_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.purge_reject_reason, range, value, display)

  return offset + length, value
end

-- Replay Unspecified Unit
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.replay_unspecified_unit = {}

-- Size: Replay Unspecified Unit
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.replay_unspecified_unit.size = 1

-- Display: Replay Unspecified Unit
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.replay_unspecified_unit.labels = {
  ["F"] = "Replay Unspecified Unit: Fail If Unit Not Specified (F)",
  ["R"] = "Replay Unspecified Unit: Replay Any Unspecified Unit From Zero (R)",
  ["S"] = "Replay Unspecified Unit: Skip Replay Of Unspecified Units (S)",
}

cboe_cxjequities_binaryorderentry_boe3_v1_0_12.replay_unspecified_unit.display = function(value)
  return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.replay_unspecified_unit.labels[value] or "Replay Unspecified Unit: Unknown("..value..")"
end

-- Dissect: Replay Unspecified Unit
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.replay_unspecified_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.replay_unspecified_unit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.replay_unspecified_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.replay_unspecified_unit, range, value, display)

  return offset + length, value
end

-- Reserved Field
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.reserved_field = {}

-- Size: Reserved Field
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.reserved_field.size = 1

-- Display: Reserved Field
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.reserved_field.display = function(value)
  return "Reserved Field: "..value
end

-- Dissect: Reserved Field
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.reserved_field.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.reserved_field.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.reserved_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.reserved_field, range, value, display)

  return offset + length, value
end

-- Restatement Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.restatement_reason = {}

-- Size: Restatement Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.restatement_reason.size = 1

-- Display: Restatement Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.restatement_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Restatement Reason: No Value"
  end

  if value == "W" then
    return "Restatement Reason: Would Have Self Traded (W)"
  end

  return "Restatement Reason: Unknown("..value..")"
end

-- Dissect: Restatement Reason
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.restatement_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.restatement_reason, range, value, display)

  return offset + length, value
end

-- Risk Group Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.risk_group_id = {}

-- Size: Risk Group Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.risk_group_id.size = 2

-- Display: Risk Group Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.risk_group_id.display = function(value)
  return "Risk Group Id: "..value
end

-- Dissect: Risk Group Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.risk_group_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.risk_group_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.risk_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.risk_group_id, range, value, display)

  return offset + length, value
end

-- Risk Group Id Cnt
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.risk_group_id_cnt = {}

-- Size: Risk Group Id Cnt
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.risk_group_id_cnt.size = 1

-- Display: Risk Group Id Cnt
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.risk_group_id_cnt.display = function(value)
  return "Risk Group Id Cnt: "..value
end

-- Dissect: Risk Group Id Cnt
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.risk_group_id_cnt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.risk_group_id_cnt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.risk_group_id_cnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.risk_group_id_cnt, range, value, display)

  return offset + length, value
end

-- Secondary Order Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.secondary_order_id = {}

-- Size: Secondary Order Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.secondary_order_id.size = 8

-- Display: Secondary Order Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.sequence_number = {}

-- Size: Sequence Number
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.sequence_number.size = 4

-- Display: Sequence Number
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.session_id = {}

-- Size: Session Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.session_id.size = 4

-- Display: Session Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.session_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session Id: No Value"
  end

  return "Session Id: "..value
end

-- Dissect: Session Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.session_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.session_id.size
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

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.session_sub_id = {}

-- Size: Session Sub Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.session_sub_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session Sub Id: No Value"
  end

  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.session_sub_id.size
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

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Side
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.side = {}

-- Size: Side
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.side.size = 1

-- Display: Side
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.side.display = function(value)
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
  if value == "5" then
    return "Side: Sell Short (5)"
  end
  if value == "6" then
    return "Side: Sell Short Exempt (6)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.side, range, value, display)

  return offset + length, value
end

-- Start Of Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.start_of_message = {}

-- Size: Start Of Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.start_of_message.size = 2

-- Display: Start Of Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.start_of_message.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.symbol = {}

-- Size: Symbol
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.symbol.size = 8

-- Display: Symbol
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.symbol.size
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

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.symbol, range, value, display)

  return offset + length, value
end

-- Text
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.text = {}

-- Size: Text
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.text.size = 60

-- Display: Text
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.text.size
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

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.text, range, value, display)

  return offset + length, value
end

-- Time In Force
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.time_in_force = {}

-- Size: Time In Force
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.time_in_force.size = 1

-- Display: Time In Force
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.time_in_force.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Time In Force: No Value"
  end

  if value == "0" then
    return "Time In Force: Day Default (0)"
  end
  if value == "3" then
    return "Time In Force: Ioc (3)"
  end
  if value == "4" then
    return "Time In Force: Fok (4)"
  end
  if value == "6" then
    return "Time In Force: Gtd (6)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.time_in_force.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Trading Firm
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm = {}

-- Size: Trading Firm
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.size = 4

-- Display: Trading Firm
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading Firm: No Value"
  end

  return "Trading Firm: "..value
end

-- Dissect: Trading Firm
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.size
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

  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.trading_firm, range, value, display)

  return offset + length, value
end

-- Transaction Time
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time = {}

-- Size: Transaction Time
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.size = 8

-- Dissect: Transaction Time
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.transaction_time
  if cboe_cxjequities_binaryorderentry_boe3_v1_0_12.absolute_time_base == 1 then field = omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.transaction_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Unit Number
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.unit_number = {}

-- Size: Unit Number
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.unit_number.size = 1

-- Display: Unit Number
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.unit_number.display = function(value)
  return "Unit Number: "..value
end

-- Dissect: Unit Number
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.unit_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.unit_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.unit_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.unit_number, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe CxjEquities BinaryOrderEntry Boe3 1.0.12
-----------------------------------------------------------------------

-- Purge Rejected Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_rejected_jp_equities_v_1 = {}

-- Size: Purge Rejected Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_rejected_jp_equities_v_1.size =
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.mass_cancel_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_reject_reason.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.text.size

-- Display: Purge Rejected Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_rejected_jp_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Rejected Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_rejected_jp_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Alphanumeric
  index, mass_cancel_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Purge Reject Reason: Text
  index, purge_reject_reason = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Rejected Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_rejected_jp_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.purge_rejected_jp_equities_v_1, buffer(offset, 0))
    local index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_rejected_jp_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_rejected_jp_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_rejected_jp_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Purge Acknowledgement Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_acknowledgement_jp_equities_v_1 = {}

-- Size: Purge Acknowledgement Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_acknowledgement_jp_equities_v_1.size =
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.mass_cancel_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancelled_order_count.size

-- Display: Purge Acknowledgement Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_acknowledgement_jp_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Acknowledgement Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_acknowledgement_jp_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Alphanumeric
  index, mass_cancel_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Cancelled Order Count: Binary
  index, cancelled_order_count = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancelled_order_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Acknowledgement Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_acknowledgement_jp_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.purge_acknowledgement_jp_equities_v_1, buffer(offset, 0))
    local index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_acknowledgement_jp_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_acknowledgement_jp_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_acknowledgement_jp_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Rejected Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_rejected_jp_equities_v_1 = {}

-- Size: Cancel Rejected Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_rejected_jp_equities_v_1.size =
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_reject_reason.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.text.size

-- Display: Cancel Rejected Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_rejected_jp_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Rejected Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_rejected_jp_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Trading Firm: Alphanumeric
  index, trading_firm = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cancel Reject Reason: Text
  index, cancel_reject_reason = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Rejected Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_rejected_jp_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.cancel_rejected_jp_equities_v_1, buffer(offset, 0))
    local index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_rejected_jp_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_rejected_jp_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_rejected_jp_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancelled Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_cancelled_jp_equities_v_1 = {}

-- Size: Order Cancelled Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_cancelled_jp_equities_v_1.size =
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_reason.size

-- Display: Order Cancelled Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_cancelled_jp_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancelled Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_cancelled_jp_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Trading Firm: Alphanumeric
  index, trading_firm = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Text
  index, cancel_reason = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancelled Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_cancelled_jp_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.order_cancelled_jp_equities_v_1, buffer(offset, 0))
    local index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_cancelled_jp_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_cancelled_jp_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_cancelled_jp_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_execution_jp_equities_v_1 = {}

-- Size: Order Execution Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_execution_jp_equities_v_1.size =
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exec_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_capacity.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_px.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_shares.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.side.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.symbol.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.leaves_qty.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.base_liquidity_indicator.size

-- Display: Order Execution Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_execution_jp_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_execution_jp_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Trading Firm: Alphanumeric
  index, trading_firm = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exec_id.dissect(buffer, index, packet, parent)

  -- Last Capacity: Alphanumeric
  index, last_capacity = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_capacity.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_px.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_shares.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.side.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_execution_jp_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.order_execution_jp_equities_v_1, buffer(offset, 0))
    local index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_execution_jp_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_execution_jp_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_execution_jp_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Restated Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_restated_jp_equities_v_1 = {}

-- Size: Order Restated Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_restated_jp_equities_v_1.size =
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_qty.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.price.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.leaves_qty.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.secondary_order_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_px.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_shares.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.base_liquidity_indicator.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.restatement_reason.size

-- Display: Order Restated Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_restated_jp_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Restated Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_restated_jp_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Trading Firm: Alphanumeric
  index, trading_firm = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_qty.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.price.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: Binary
  index, secondary_order_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_px.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.last_shares.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Restatement Reason: Alphanumeric
  index, restatement_reason = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.restatement_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Restated Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_restated_jp_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.order_restated_jp_equities_v_1, buffer(offset, 0))
    local index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_restated_jp_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_restated_jp_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_restated_jp_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Modify Rejected Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_rejected_jp_equities_v_1 = {}

-- Size: Modify Rejected Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_rejected_jp_equities_v_1.size =
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.orig_cl_ord_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_reject_reason.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.text.size

-- Display: Modify Rejected Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_rejected_jp_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Rejected Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_rejected_jp_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Trading Firm: Alphanumeric
  index, trading_firm = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Modify Reject Reason: Text
  index, modify_reject_reason = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Rejected Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_rejected_jp_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.modify_rejected_jp_equities_v_1, buffer(offset, 0))
    local index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_rejected_jp_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_rejected_jp_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_rejected_jp_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Modified Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_modified_jp_equities_v_1 = {}

-- Size: Order Modified Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_modified_jp_equities_v_1.size =
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_qty.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.orig_cl_ord_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.price.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.leaves_qty.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.base_liquidity_indicator.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.company_id.size

-- Display: Order Modified Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_modified_jp_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_modified_jp_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Trading Firm: Alphanumeric
  index, trading_firm = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_qty.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_id.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.price.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Company Id: Alphanumeric
  index, company_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.company_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modified Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_modified_jp_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.order_modified_jp_equities_v_1, buffer(offset, 0))
    local index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_modified_jp_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_modified_jp_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_modified_jp_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Rejected Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_rejected_jp_equities_v_1 = {}

-- Size: Order Rejected Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_rejected_jp_equities_v_1.size =
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_reject_reason.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.text.size

-- Display: Order Rejected Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_rejected_jp_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Rejected Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_rejected_jp_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Trading Firm: Alphanumeric
  index, trading_firm = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: Text
  index, order_reject_reason = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Rejected Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_rejected_jp_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.order_rejected_jp_equities_v_1, buffer(offset, 0))
    local index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_rejected_jp_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_rejected_jp_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_rejected_jp_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Acknowledgement Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_acknowledgement_jp_equities_v_1 = {}

-- Size: Order Acknowledgement Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_acknowledgement_jp_equities_v_1.size =
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.account.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_qty.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.ord_type.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.price.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.capacity.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.side.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.symbol.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.time_in_force.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.expire_time.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cash_margin.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.risk_group_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.no_trade_feat.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.no_trade_key.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.posting_instruction.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_classification.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.margin_transaction_type.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.base_liquidity_indicator.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.company_id.size

-- Display: Order Acknowledgement Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_acknowledgement_jp_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Acknowledgement Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_acknowledgement_jp_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.account.dissect(buffer, index, packet, parent)

  -- Trading Firm: Alphanumeric
  index, trading_firm = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.ord_type.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.price.dissect(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.capacity.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.side.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.time_in_force.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.expire_time.dissect(buffer, index, packet, parent)

  -- Cash Margin: Alphanumeric
  index, cash_margin = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cash_margin.dissect(buffer, index, packet, parent)

  -- Risk Group Id: Binary
  index, risk_group_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.risk_group_id.dissect(buffer, index, packet, parent)

  -- No Trade Feat: Alphanumeric
  index, no_trade_feat = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.no_trade_feat.dissect(buffer, index, packet, parent)

  -- No Trade Key: Text
  index, no_trade_key = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.no_trade_key.dissect(buffer, index, packet, parent)

  -- Posting Instruction: Alpha
  index, posting_instruction = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.posting_instruction.dissect(buffer, index, packet, parent)

  -- Order Classification: Alphanumeric
  index, order_classification = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_classification.dissect(buffer, index, packet, parent)

  -- Margin Transaction Type: Alphanumeric
  index, margin_transaction_type = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.margin_transaction_type.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Company Id: Alphanumeric
  index, company_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.company_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Acknowledgement Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_acknowledgement_jp_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.order_acknowledgement_jp_equities_v_1, buffer(offset, 0))
    local index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_acknowledgement_jp_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_acknowledgement_jp_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_acknowledgement_jp_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Server Heartbeat
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.server_heartbeat = {}

-- Display: Server Heartbeat
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout Response Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_response_message = {}

-- Size: Logout Response Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_response_message.size =
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_reason.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_reason_text.size

-- Display: Logout Response Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Response Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 3 values
  index, logout_reason = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_reason.dissect(buffer, index, packet, parent)

  -- Logout Reason Text: 60 Byte Ascii String
  index, logout_reason_text = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_reason_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_response_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.logout_response_message, buffer(offset, 0))
    local index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Complete
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.replay_complete = {}

-- Display: Replay Complete
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.replay_complete.display = function(packet, parent, length)
  return "Replay Complete"
end


-- Dissect: Replay Complete
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.replay_complete.dissect = function(buffer, offset, packet, parent)
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.replay_complete.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unit Sequence
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.unit_sequence = {}

-- Size: Unit Sequence
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.unit_sequence.size =
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.unit_number.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.sequence_number.size

-- Display: Unit Sequence
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.unit_sequence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Sequence
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.unit_sequence.fields = function(buffer, offset, packet, parent, unit_sequence_index)
  local index = offset

  -- Implicit Unit Sequence Index
  if unit_sequence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.unit_sequence_index, unit_sequence_index)
    iteration:set_generated()
  end

  -- Unit Number: 1 Byte Unsigned Fixed Width Integer
  index, unit_number = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.unit_number.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Sequence
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.unit_sequence.dissect = function(buffer, offset, packet, parent, unit_sequence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.unit_sequence, buffer(offset, 0))
    local index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.unit_sequence.fields(buffer, offset, packet, parent, unit_sequence_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.unit_sequence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.unit_sequence.fields(buffer, offset, packet, parent, unit_sequence_index)
  end
end

-- Login Response Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_message = {}

-- Calculate size of: Login Response Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_status.size

  index = index + cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_text.size

  index = index + cboe_cxjequities_binaryorderentry_boe3_v1_0_12.client_sequence.size

  index = index + cboe_cxjequities_binaryorderentry_boe3_v1_0_12.number_of_units.size

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  return index
end

-- Display: Login Response Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: 1 Byte Ascii String Enum with 8 values
  index, login_response_status = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_status.dissect(buffer, index, packet, parent)

  -- Login Response Text: 60 Byte Ascii String
  index, login_response_text = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_text.dissect(buffer, index, packet, parent)

  -- Client Sequence: 4 Byte Unsigned Fixed Width Integer
  index, client_sequence = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.client_sequence.dissect(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index, number_of_units = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Unit Sequence
  for unit_sequence_index = 1, number_of_units do
    index, unit_sequence = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.unit_sequence.dissect(buffer, index, packet, parent, unit_sequence_index)
  end

  return index
end

-- Dissect: Login Response Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.login_response_message, buffer(offset, 0))
    local index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message = {}

-- Dispatch: Exchange Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message.dispatch = {
  [501] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_response_message.dissect,
  [502] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.replay_complete.dissect,
  [503] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_response_message.dissect,
  [504] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.server_heartbeat.dissect,
  [5501] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_acknowledgement_jp_equities_v_1.dissect,
  [5502] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_rejected_jp_equities_v_1.dissect,
  [5503] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_modified_jp_equities_v_1.dissect,
  [5504] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_rejected_jp_equities_v_1.dissect,
  [5505] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_restated_jp_equities_v_1.dissect,
  [5506] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_execution_jp_equities_v_1.dissect,
  [5507] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_cancelled_jp_equities_v_1.dissect,
  [5508] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_rejected_jp_equities_v_1.dissect,
  [5510] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_acknowledgement_jp_equities_v_1.dissect,
  [5511] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_rejected_jp_equities_v_1.dissect,
}

-- Dissect: Exchange Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message.dissect = function(buffer, offset, packet, parent, exchange_message_type)
  local dissect = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message.dispatch[exchange_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Exchange Message Header
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message_header = {}

-- Size: Exchange Message Header
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message_header.size =
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.start_of_message.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.message_length.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message_type.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.matching_unit.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.reserved_field.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.sequence_number.size

-- Display: Exchange Message Header
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Exchange Message Header
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: 2 Byte Unsigned Fixed Width Integer
  index, start_of_message = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.message_length.dissect(buffer, index, packet, parent)

  -- Exchange Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, exchange_message_type = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message_type.dissect(buffer, index, packet, parent)

  -- Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, matching_unit = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.matching_unit.dissect(buffer, index, packet, parent)

  -- Reserved Field: 1 Byte Unsigned Fixed Width Integer
  index, reserved_field = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.reserved_field.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Exchange Message Header
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.exchange_message_header, buffer(offset, 0))
    local index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Packet
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_packet = {}

-- Verify required size of Tcp packet
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message_header.size
end

-- Dissect Exchange Packet
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Exchange Message Header: Struct of 6 fields
  index, exchange_message_header = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Exchange Message Type
  local exchange_message_type = buffer(index - 8, 2):le_uint()

  -- Exchange Message: Runtime Type with 14 branches
  index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_message.dissect(buffer, index, packet, parent, exchange_message_type)

  return index
end

-- Purge Orders Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_orders_jp_equities_v_1 = {}

-- Calculate size of: Purge Orders Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_orders_jp_equities_v_1.size = function(buffer, offset)
  local index = 0

  index = index + cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.size

  index = index + cboe_cxjequities_binaryorderentry_boe3_v1_0_12.mass_cancel_inst.size

  index = index + cboe_cxjequities_binaryorderentry_boe3_v1_0_12.mass_cancel_id.size

  index = index + cboe_cxjequities_binaryorderentry_boe3_v1_0_12.symbol.size

  index = index + cboe_cxjequities_binaryorderentry_boe3_v1_0_12.risk_group_id_cnt.size

  -- Calculate field size from count
  local risk_group_id_count = buffer(offset + index - 1, 1):le_uint()
  index = index + risk_group_id_count * 2

  return index
end

-- Display: Purge Orders Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_orders_jp_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Orders Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_orders_jp_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Firm: Alphanumeric
  index, trading_firm = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.dissect(buffer, index, packet, parent)

  -- Mass Cancel Inst: Alphanumeric
  index, mass_cancel_inst = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.mass_cancel_inst.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Alphanumeric
  index, mass_cancel_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  -- Risk Group Id Cnt: Binary
  index, risk_group_id_cnt = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.risk_group_id_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Risk Group Id
  for risk_group_id_index = 1, risk_group_id_cnt do
    index, risk_group_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.risk_group_id.dissect(buffer, index, packet, parent, risk_group_id_index)
  end

  return index
end

-- Dissect: Purge Orders Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_orders_jp_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.purge_orders_jp_equities_v_1, buffer(offset, 0))
    local index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_orders_jp_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_orders_jp_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_orders_jp_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_order_jp_equities_v_1 = {}

-- Size: Cancel Order Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_order_jp_equities_v_1.size =
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.orig_cl_ord_id.size

-- Display: Cancel Order Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_order_jp_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_order_jp_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Firm: Alphanumeric
  index, trading_firm = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_order_jp_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.cancel_order_jp_equities_v_1, buffer(offset, 0))
    local index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_order_jp_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_order_jp_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_order_jp_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_order_jp_equities_v_1 = {}

-- Size: Modify Order Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_order_jp_equities_v_1.size =
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_qty.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.orig_cl_ord_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.price.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_orig_on_reject.size

-- Display: Modify Order Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_order_jp_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_order_jp_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Firm: Alphanumeric
  index, trading_firm = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_qty.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.price.dissect(buffer, index, packet, parent)

  -- Cancel Orig On Reject: Alpha
  index, cancel_orig_on_reject = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_orig_on_reject.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_order_jp_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.modify_order_jp_equities_v_1, buffer(offset, 0))
    local index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_order_jp_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_order_jp_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_order_jp_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- New Order Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.new_order_jp_equities_v_1 = {}

-- Size: New Order Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.new_order_jp_equities_v_1.size =
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.account.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_qty.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.ord_type.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.price.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.capacity.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.side.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.symbol.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.time_in_force.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.expire_time.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cash_margin.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.risk_group_id.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.no_trade_feat.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.no_trade_key.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.posting_instruction.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_classification.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.margin_transaction_type.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.company_id.size

-- Display: New Order Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.new_order_jp_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.new_order_jp_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Account: Text
  index, account = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.account.dissect(buffer, index, packet, parent)

  -- Trading Firm: Alphanumeric
  index, trading_firm = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.trading_firm.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.ord_type.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.price.dissect(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.capacity.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.side.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.time_in_force.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.expire_time.dissect(buffer, index, packet, parent)

  -- Cash Margin: Alphanumeric
  index, cash_margin = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cash_margin.dissect(buffer, index, packet, parent)

  -- Risk Group Id: Binary
  index, risk_group_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.risk_group_id.dissect(buffer, index, packet, parent)

  -- No Trade Feat: Alphanumeric
  index, no_trade_feat = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.no_trade_feat.dissect(buffer, index, packet, parent)

  -- No Trade Key: Text
  index, no_trade_key = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.no_trade_key.dissect(buffer, index, packet, parent)

  -- Posting Instruction: Alpha
  index, posting_instruction = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.posting_instruction.dissect(buffer, index, packet, parent)

  -- Order Classification: Alphanumeric
  index, order_classification = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.order_classification.dissect(buffer, index, packet, parent)

  -- Margin Transaction Type: Alphanumeric
  index, margin_transaction_type = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.margin_transaction_type.dissect(buffer, index, packet, parent)

  -- Company Id: Alphanumeric
  index, company_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.company_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Jp Equities V 1
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.new_order_jp_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.new_order_jp_equities_v_1, buffer(offset, 0))
    local index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.new_order_jp_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.new_order_jp_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.new_order_jp_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Client Heartbeat
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.client_heartbeat = {}

-- Display: Client Heartbeat
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout Request
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_request = {}

-- Display: Logout Request
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Request Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_request_message = {}

-- Calculate size of: Login Request Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_request_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_cxjequities_binaryorderentry_boe3_v1_0_12.session_id.size

  index = index + cboe_cxjequities_binaryorderentry_boe3_v1_0_12.session_sub_id.size

  index = index + cboe_cxjequities_binaryorderentry_boe3_v1_0_12.password.size

  index = index + cboe_cxjequities_binaryorderentry_boe3_v1_0_12.replay_unspecified_unit.size

  index = index + cboe_cxjequities_binaryorderentry_boe3_v1_0_12.number_of_units.size

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  return index
end

-- Display: Login Request Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Ascii String
  index, session_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.session_id.dissect(buffer, index, packet, parent)

  -- Session Sub Id: 4 Byte Ascii String
  index, session_sub_id = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.session_sub_id.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.password.dissect(buffer, index, packet, parent)

  -- Replay Unspecified Unit: 1 Byte Ascii String Enum with 3 values
  index, replay_unspecified_unit = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.replay_unspecified_unit.dissect(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index, number_of_units = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Unit Sequence
  for unit_sequence_index = 1, number_of_units do
    index, unit_sequence = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.unit_sequence.dissect(buffer, index, packet, parent, unit_sequence_index)
  end

  return index
end

-- Dissect: Login Request Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.login_request_message, buffer(offset, 0))
    local index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Firm Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message = {}

-- Dispatch: Firm Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message.dispatch = {
  [1] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.login_request_message.dissect,
  [2] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.logout_request.dissect,
  [3] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.client_heartbeat.dissect,
  [5001] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.new_order_jp_equities_v_1.dissect,
  [5002] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.modify_order_jp_equities_v_1.dissect,
  [5003] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.cancel_order_jp_equities_v_1.dissect,
  [5004] = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.purge_orders_jp_equities_v_1.dissect,
}

-- Dissect: Firm Message
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message.dissect = function(buffer, offset, packet, parent, firm_message_type)
  local dissect = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message.dispatch[firm_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Firm Message Header
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_header = {}

-- Size: Firm Message Header
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_header.size =
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.start_of_message.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.message_length.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_type.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.matching_unit.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.reserved_field.size + 
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.sequence_number.size

-- Display: Firm Message Header
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Firm Message Header
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: 2 Byte Unsigned Fixed Width Integer
  index, start_of_message = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.message_length.dissect(buffer, index, packet, parent)

  -- Firm Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, firm_message_type = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_type.dissect(buffer, index, packet, parent)

  -- Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, matching_unit = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.matching_unit.dissect(buffer, index, packet, parent)

  -- Reserved Field: 1 Byte Unsigned Fixed Width Integer
  index, reserved_field = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.reserved_field.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Firm Message Header
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.fields.firm_message_header, buffer(offset, 0))
    local index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Firm Packet
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_packet = {}

-- Verify required size of Tcp packet
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_header.size
end

-- Dissect Firm Packet
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Firm Message Header: Struct of 6 fields
  index, firm_message_header = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Firm Message Type
  local firm_message_type = buffer(index - 8, 2):le_uint()

  -- Firm Message: Runtime Type with 7 branches
  index = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message.dissect(buffer, index, packet, parent, firm_message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.init()
end

-- Connection roles for Cboe CxjEquities BinaryOrderEntry Boe3 1.0.12: Firm is the initiator, Exchange is the acceptor
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
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.role = function(packet)
  if omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.acceptor_port

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

  if omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.prefs.swap_sides then
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
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Cboe CxjEquities BinaryOrderEntry Boe3 1.0.12
function omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.name

  local role = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.role(packet)
  local dissect = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_packet.dissect
  if role == "initiator" then
    dissect = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_packet.dissect
  end

  local length = buffer:len()
  local index = 0

  -- Dissect each message the segment carries
  while index < length do
    local remaining = length - index

    -- The message length lives in the header: wait for the header before reading it
    if remaining < cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_message_header.size then
      packet.desegment_offset = index
      packet.desegment_len = DESEGMENT_ONE_MORE_SEGMENT
      return length
    end

    local size = buffer(index + 2, 2):le_uint() + 2
    -- A message split across segments: ask TCP for exactly the bytes still missing
    if remaining < size then
      packet.desegment_offset = index
      packet.desegment_len = size - remaining
      return length
    end

    local protocol = parent:add(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12, buffer(index, size), omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.description, "("..size.." Bytes)")
    dissect(buffer(index, size):tvb(), packet, protocol)
    protocol:set_len(size)
    index = index + size
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Firm Packet: would its message dispatch accept this frame?
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_packet.fingerprint = function(buffer)
  if buffer:len() < 6 then
    return false
  end

  local firm_message_type = buffer(4, 2):le_uint()

  -- Login Request Message
  if firm_message_type == 1 then
    return true
  end

  -- Logout Request
  if firm_message_type == 2 then
    return true
  end

  -- Client Heartbeat
  if firm_message_type == 3 then
    return true
  end

  -- New Order Jp Equities V 1
  if firm_message_type == 5001 then
    return true
  end

  -- Modify Order Jp Equities V 1
  if firm_message_type == 5002 then
    return true
  end

  -- Cancel Order Jp Equities V 1
  if firm_message_type == 5003 then
    return true
  end

  -- Purge Orders Jp Equities V 1
  if firm_message_type == 5004 then
    return true
  end

  return false
end

-- Fingerprint of Exchange Packet: would its message dispatch accept this frame?
cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_packet.fingerprint = function(buffer)
  if buffer:len() < 6 then
    return false
  end

  local exchange_message_type = buffer(4, 2):le_uint()

  -- Login Response Message
  if exchange_message_type == 501 then
    return true
  end

  -- Replay Complete
  if exchange_message_type == 502 then
    return true
  end

  -- Logout Response Message
  if exchange_message_type == 503 then
    return true
  end

  -- Server Heartbeat
  if exchange_message_type == 504 then
    return true
  end

  -- Order Acknowledgement Jp Equities V 1
  if exchange_message_type == 5501 then
    return true
  end

  -- Order Rejected Jp Equities V 1
  if exchange_message_type == 5502 then
    return true
  end

  -- Order Modified Jp Equities V 1
  if exchange_message_type == 5503 then
    return true
  end

  -- Modify Rejected Jp Equities V 1
  if exchange_message_type == 5504 then
    return true
  end

  -- Order Restated Jp Equities V 1
  if exchange_message_type == 5505 then
    return true
  end

  -- Order Execution Jp Equities V 1
  if exchange_message_type == 5506 then
    return true
  end

  -- Order Cancelled Jp Equities V 1
  if exchange_message_type == 5507 then
    return true
  end

  -- Cancel Rejected Jp Equities V 1
  if exchange_message_type == 5508 then
    return true
  end

  -- Purge Acknowledgement Jp Equities V 1
  if exchange_message_type == 5510 then
    return true
  end

  -- Purge Rejected Jp Equities V 1
  if exchange_message_type == 5511 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe CxjEquities BinaryOrderEntry Boe3 1.0.12 (Tcp)
local function omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp firm packet message dispatch
  if not cboe_cxjequities_binaryorderentry_boe3_v1_0_12.firm_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12
  omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Cboe CxjEquities BinaryOrderEntry Boe3 1.0.12 (Tcp)
local function omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp exchange packet message dispatch
  if not cboe_cxjequities_binaryorderentry_boe3_v1_0_12.exchange_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12
  omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Cboe CxjEquities BinaryOrderEntry Boe3 1.0.12 (Tcp): apply the heuristic of the sender's connection role
local function omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12_tcp_heuristic(buffer, packet, parent)
  local role = cboe_cxjequities_binaryorderentry_boe3_v1_0_12.role(packet)
  local initiator = omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12_tcp_initiator_heuristic
  local acceptor = omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  cboe_cxjequities_binaryorderentry_boe3_v1_0_12.swap(packet)

  return false
end

-- Register Heuristics for Cboe CxjEquities BinaryOrderEntry Boe3 1.0.12
omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12:register_heuristic("tcp", omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12_tcp_heuristic)

-- Register Cboe CxjEquities BinaryOrderEntry Boe3 1.0.12 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_cxjequities_binaryorderentry_boe3_v1_0_12)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0.12
--   Since: 1.0.7
--   Date: Monday, June 9, 2025
--   Specification: CXJ Equities BOEv3 Specification.pdf
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
