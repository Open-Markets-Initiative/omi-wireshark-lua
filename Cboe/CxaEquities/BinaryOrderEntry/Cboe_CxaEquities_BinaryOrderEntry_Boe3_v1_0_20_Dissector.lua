-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe CxaEquities BinaryOrderEntry Boe3 1.0.20 Protocol
local omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20 = Proto("Omi.Cboe.CxaEquities.BinaryOrderEntry.Boe3.v1.0.20", "Cboe CxaEquities BinaryOrderEntry Boe3 1.0.20")

-- Protocol table
local cboe_cxaequities_binaryorderentry_boe3_v1_0_20 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe CxaEquities BinaryOrderEntry Boe3 1.0.20 Fields
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.account = ProtoField.new("Account", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.account", ftypes.STRING, nil, nil, nil, "Used by a trading participant to provide a broker cross reference")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.base_liquidity_indicator = ProtoField.new("Base Liquidity Indicator", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.baseliquidityindicator", ftypes.STRING, nil, nil, nil, "Indicates whether the trade added or removed liquidity")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.broker_preferencing = ProtoField.new("Broker Preferencing", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.brokerpreferencing", ftypes.STRING, nil, nil, nil, "Broker preferencing instruction")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.cancel_orig_on_reject = ProtoField.new("Cancel Orig On Reject", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.cancelorigonreject", ftypes.STRING, nil, nil, nil, "Cancel original order if modification fails")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.cancel_reason = ProtoField.new("Cancel Reason", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.cancelreason", ftypes.STRING, nil, nil, nil, "See Section 4.4 - Order Reason Codes")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.cancel_reject_reason = ProtoField.new("Cancel Reject Reason", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.cancelrejectreason", ftypes.STRING, nil, nil, nil, "See Section 4.4 - Order Reason Codes")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.cancelled_order_count = ProtoField.new("Cancelled Order Count", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.cancelledordercount", ftypes.UINT32, nil, nil, nil, "Number of orders cancelled")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.capacity = ProtoField.new("Capacity", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.capacity", ftypes.STRING, nil, nil, nil, "The capacity for the order. Required on all orders")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.clordid", ftypes.STRING, nil, nil, nil, "Unique Id chosen by the participant")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.clearing_account = ProtoField.new("Clearing Account", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.clearingaccount", ftypes.STRING, nil, nil, nil, "Supplemental identifier")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.clearing_participant_id = ProtoField.new("Clearing Participant Id", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.clearingparticipantid", ftypes.UINT32, nil, nil, nil, "The CHESS clearing participant identifier. Must be a valid 5-digit CHESS PID")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.client_cross_ref = ProtoField.new("Client Cross Ref", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.clientcrossref", ftypes.STRING, nil, nil, nil, "Can be used to provide additional participant-side cross reference information")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.client_sequence = ProtoField.new("Client Sequence", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.clientsequence", ftypes.UINT32, nil, nil, nil, "Last inbound (TPH to CFE) message sequence number processed by CFE on this port.")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.contra_participant_id = ProtoField.new("Contra Participant Id", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.contraparticipantid", ftypes.UINT16, nil, nil, nil, "Trading Participant Identifier (PID) of the counter party on a trade. 0 If unattributed")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.corrected_price = ProtoField.new("Corrected Price", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.correctedprice", ftypes.DOUBLE, nil, nil, nil, "The corrected price of the trade, or 0 for a trade cancellation")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.directed_wholesale_indicator = ProtoField.new("Directed Wholesale Indicator", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.directedwholesaleindicator", ftypes.STRING, nil, nil, nil, "Market Integrity Rule defined field to identify wholesale participant")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.display_indicator = ProtoField.new("Display Indicator", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.displayindicator", ftypes.STRING, nil, nil, nil, "Treatment of Post Only orders on entry if creating a locked NBBO")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.exchange_message_type = ProtoField.new("Message Type", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.exchangemessagetype", ftypes.UINT16, nil, nil, nil, "type of message")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.exec_id = ProtoField.new("Exec Id", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.execid", ftypes.UINT64, nil, nil, nil, "Execution Id. Unique across all matching units on a given day")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.exec_inst = ProtoField.new("Exec Inst", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.execinst", ftypes.STRING, nil, nil, nil, "All values not defined below are rejected. Ignored if blank (0x00)")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.execrefid", ftypes.UINT64, nil, nil, nil, "Refers to the ExecId of the fill being cancelled or corrected")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.execrestatementreason", ftypes.STRING, nil, nil, nil, "The reason for this Order Execution Restated message")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.expire_date = ProtoField.new("Expire Date", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.expiredate", ftypes.UINT32, nil, nil, nil, "Only applicable for TimeInForce (59) = 6 (GTD) orders. Specifies the date on which a GTD order will expire")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.expire_time = ProtoField.new("Expire Time", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.expiretime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Required for GTD order (TimeInForce = 6), ExpireTime specifies the date-time (in UTC) when the order expires")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.expire_time_utc = ProtoField.new("Expire Time", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.expiretime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Required for GTD order (TimeInForce = 6), ExpireTime specifies the date-time (in UTC) when the order expires")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.fee_code = ProtoField.new("Fee Code", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.feecode", ftypes.STRING, nil, nil, nil, "Indicates fee associated with an execution")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.firm_message_type = ProtoField.new("Message Type", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.firmmessagetype", ftypes.UINT16, nil, nil, nil, "type of message")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.intermediary_id = ProtoField.new("Intermediary Id", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.intermediaryid", ftypes.STRING, nil, nil, nil, "Market Integrity Rule defined field for Intermediary Identifier")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.last_capacity = ProtoField.new("Last Capacity", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.lastcapacity", ftypes.STRING, nil, nil, nil, "Capacity of the order")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.last_mkt = ProtoField.new("Last Mkt", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.lastmkt", ftypes.STRING, nil, nil, nil, "Supported MIC code values")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.last_px = ProtoField.new("Last Px", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.lastpx", ftypes.DOUBLE, nil, nil, nil, "Price of this fill")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.last_shares = ProtoField.new("Last Shares", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.lastshares", ftypes.UINT32, nil, nil, nil, "Executed quantity")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.leaves_qty = ProtoField.new("Leaves Qty", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.leavesqty", ftypes.UINT32, nil, nil, nil, "Quantity still open for further execution. If zero, the order is complete")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.loginresponsestatus", ftypes.STRING, nil, nil, nil, "Accepted, or the reason for the rejection.")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.login_response_text = ProtoField.new("Login Response Text", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.loginresponsetext", ftypes.STRING, nil, nil, nil, "Human-readable text with additional information about the reason for rejection. ASCII NUL (0x00) filled on the right, if necessary.")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.logout_reason = ProtoField.new("Logout Reason", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.logoutreason", ftypes.STRING, nil, nil, nil, "reason for the logout")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.logout_reason_text = ProtoField.new("Logout Reason Text", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.logoutreasontext", ftypes.STRING, nil, nil, nil, "Human-readable text with additional information about the reason for logout")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.mass_cancel_id = ProtoField.new("Mass Cancel Id", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.masscancelid", ftypes.STRING, nil, nil, nil, "User-defined identifier of the mass cancel or purge request")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.mass_cancel_inst = ProtoField.new("Mass Cancel Inst", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.masscancelinst", ftypes.STRING, nil, nil, nil, "At least one character must be provided (PID Filter)")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.matching_unit = ProtoField.new("Matching Unit", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.matchingunit", ftypes.UINT8, nil, nil, nil, "The matching unit which created this message. Matching units in BOE correspond to matching units on Multicast PITCH")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.max_floor = ProtoField.new("Max Floor", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.maxfloor", ftypes.UINT32, nil, nil, nil, "Portion of OrderQty to display. Used for iceberg orders and hidden orders")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.meqse = ProtoField.new("Meqse", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.meqse", ftypes.STRING, nil, nil, nil, "If true, then any single fill will be for at least MinQty shares")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.message_length = ProtoField.new("Message Length", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.messagelength", ftypes.UINT16, nil, nil, nil, "Number of bytes for the message, including this field but not including the two bytes of the StartOfMessage field")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.min_qty = ProtoField.new("Min Qty", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.minqty", ftypes.UINT32, nil, nil, nil, "Minimum fill quantity for orders")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.modify_reject_reason = ProtoField.new("Modify Reject Reason", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.modifyrejectreason", ftypes.STRING, nil, nil, nil, "See Section 4.4 - Order Reason Codes")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.no_trade_feat = ProtoField.new("No Trade Feat", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.notradefeat", ftypes.STRING, nil, nil, nil, "Ignored if NoTradeKey is not set. Declares the handling of self-trading")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.no_trade_key = ProtoField.new("No Trade Key", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.notradekey", ftypes.STRING, nil, nil, nil, "Interactions of orders from the same participant with the same NoTradeKey value will be managed by the newer order's NoTradeFeat instruction")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.number_of_units = ProtoField.new("Number Of Units", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.numberofunits", ftypes.UINT8, nil, nil, nil, "The number (possibly 0) of unit/sequence pairs to follow, one per unit from which the TPH has received messages over this port. The value must be 0 or 1 since all BOEv3 ports are associated to a single unit.")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.on_market_cross_type = ProtoField.new("On Market Cross Type", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.onmarketcrosstype", ftypes.STRING, nil, nil, nil, "Type of on-market crossing")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.ord_type = ProtoField.new("Ord Type", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.ordtype", ftypes.STRING, nil, nil, nil, "Order type")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.order_id = ProtoField.new("Order Id", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.orderid", ftypes.UINT64, nil, nil, nil, "Order identifier supplied by Cboe Australia")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.order_qty = ProtoField.new("Order Qty", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.orderqty", ftypes.UINT32, nil, nil, nil, "Order quantity. System limit is 999,999,999")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.orderrejectreason", ftypes.STRING, nil, nil, nil, "See Section 4.4 - Order Reason Codes")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.origclordid", ftypes.STRING, nil, nil, nil, "The ClOrdID of the original order")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.orig_time = ProtoField.new("Orig Time", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.origtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "TransactionTime of the original trade")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.orig_time_utc = ProtoField.new("Orig Time", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.origtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "TransactionTime of the original trade")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.origin_of_trans = ProtoField.new("Origin Of Trans", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.originoftrans", ftypes.STRING, nil, nil, nil, "Market Integrity Rule defined field for Origin of Order (ex. ACN, ABN, CHESS HIN)")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.password = ProtoField.new("Password", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.password", ftypes.STRING, nil, nil, nil, "The password associated with the SessionId and SessionSubId.")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.price = ProtoField.new("Price", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.price", ftypes.DOUBLE, nil, nil, nil, "Price of the order")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.price_improvement = ProtoField.new("Price Improvement", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.priceimprovement", ftypes.DOUBLE, nil, nil, nil, "Amount of price improvement against the primary best bid/offer at the time of execution")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.purge_reject_reason = ProtoField.new("Purge Reject Reason", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.purgerejectreason", ftypes.STRING, nil, nil, nil, "Reason for the purge rejection. See Section 4.4 - Order Reason Codes")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.remove_crossing_from_clearing = ProtoField.new("Remove Crossing From Clearing", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.removecrossingfromclearing", ftypes.STRING, nil, nil, nil, "If Y, instructs Cboe Australia on how to process crossed trades with CHESS")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.replay_unspecified_unit = ProtoField.new("Replay Unspecified Unit", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.replayunspecifiedunit", ftypes.STRING, nil, nil, nil, "Controls replay behavior for unknown units.")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.reserved_field = ProtoField.new("Reserved Field", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.reservedfield", ftypes.UINT8, nil, nil, nil, "Reserved header field")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.restatement_reason = ProtoField.new("Restatement Reason", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.restatementreason", ftypes.STRING, nil, nil, nil, "The reason for this Order Restated message")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.risk_group_id = ProtoField.new("Risk Group Id", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.riskgroupid", ftypes.UINT16, nil, nil, nil, "Used to group orders for use in order purges where multiple orders can be cancelled by specifying a list of RiskGroupIDs")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.risk_group_id_cnt = ProtoField.new("Risk Group Id Cnt", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.riskgroupidcnt", ftypes.UINT8, nil, nil, nil, "Number of repeating RiskGroupID included in this message. Value 0 to 10")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.routing_inst = ProtoField.new("Routing Inst", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.routinginst", ftypes.STRING, nil, nil, nil, "Indicates the order is a Post Only order")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.secondaryorderid", ftypes.UINT64, nil, nil, nil, "Alternative Cboe OrderId: contra side of a prevented match, or the displayed portion of an iceberg order")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.sequencenumber", ftypes.UINT32, nil, nil, nil, "Last Received Sequence number for the unit.")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.session_id = ProtoField.new("Session Id", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.sessionid", ftypes.STRING, nil, nil, nil, "Session Id as supplied by CFE")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.sessionsubid", ftypes.STRING, nil, nil, nil, "Session Sub Id as supplied by CFE")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.short_sell_covered_qty = ProtoField.new("Short Sell Covered Qty", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.shortsellcoveredqty", ftypes.UINT32, nil, nil, nil, "Defines the portion of OrderQty (38) that is covered")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.short_sell_long_qty = ProtoField.new("Short Sell Long Qty", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.shortselllongqty", ftypes.UINT32, nil, nil, nil, "Defines the portion of OrderQty (38) that is owned by the participant who placed the order")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.short_sell_naked_qty = ProtoField.new("Short Sell Naked Qty", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.shortsellnakedqty", ftypes.UINT32, nil, nil, nil, "Defines the portion of OrderQty (38) that is naked")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.side = ProtoField.new("Side", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.side", ftypes.STRING, nil, nil, nil, "Side of the order")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.start_of_message = ProtoField.new("Start Of Message", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.startofmessage", ftypes.UINT16, nil, nil, nil, "B0 E3 (58288)")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.sub_liquidity_indicator = ProtoField.new("Sub Liquidity Indicator", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.subliquidityindicator", ftypes.STRING, nil, nil, nil, "Additional information about the liquidity of an order")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.symbol = ProtoField.new("Symbol", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.symbol", ftypes.STRING, nil, nil, nil, "Instrument symbol (upper case alphanumeric)")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.target_matching_unit = ProtoField.new("Target Matching Unit", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.targetmatchingunit", ftypes.UINT8, nil, nil, nil, "Matching unit to which the purge should be restricted. Zero is considered all matching engines")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.text = ProtoField.new("Text", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.text", ftypes.STRING, nil, nil, nil, "Human readable text with more information")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.time_in_force = ProtoField.new("Time In Force", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.timeinforce", ftypes.STRING)
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.trade_report_type = ProtoField.new("Trade Report Type", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.tradereporttype", ftypes.STRING, nil, nil, nil, "Booking purpose or normal trade")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.trading_participant_id = ProtoField.new("Trading Participant Id", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.tradingparticipantid", ftypes.UINT16, nil, nil, nil, "The (4 digit) trading participant identifier")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.transact_id = ProtoField.new("Transact Id", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.transactid", ftypes.STRING, nil, nil, nil, "Transaction Identifier as sent to CHESS for this order execution")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.transactiontime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time the event occurred in the Matching Engine (not the time the message was sent)")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.transaction_time_utc = ProtoField.new("Transaction Time", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.transactiontime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time the event occurred in the Matching Engine (not the time the message was sent)")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.undisclosed = ProtoField.new("Undisclosed", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.undisclosed", ftypes.STRING, nil, nil, nil, "If true, indicates an undisclosed order")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.unit_number = ProtoField.new("Unit Number", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.unitnumber", ftypes.UINT8, nil, nil, nil, "A unit number.")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.unit_sequence = ProtoField.new("Unit Sequence", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.unitsequence", ftypes.STRING)
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.working_price = ProtoField.new("Working Price", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.workingprice", ftypes.DOUBLE, nil, nil, nil, "The Price at which an order is effectively working in the book")

-- Cboe CxaEquities BinaryOrderEntry Boe3 1.0.20 Framing
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.exchange_message_header = ProtoField.new("Message Header", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.exchangemessageheader", ftypes.STRING, nil, nil, nil, "Message header of a packet sent by the exchange")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.exchange_packet = ProtoField.new("Packet", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.exchangepacket", ftypes.STRING, nil, nil, nil, "Binary Order Entry Tcp Packet sent by the exchange")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.firm_message_header = ProtoField.new("Message Header", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.firmmessageheader", ftypes.STRING, nil, nil, nil, "Message header of a packet sent by the firm")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.firm_packet = ProtoField.new("Packet", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.firmpacket", ftypes.STRING, nil, nil, nil, "Binary Order Entry Tcp Packet sent by the firm")

-- Cboe CxaEquities BinaryOrderEntry 1.0.20 Application Messages
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.cancel_order_au_equities_v_1 = ProtoField.new("Cancel Order Au Equities V 1", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.cancelorderauequitiesv1", ftypes.STRING, nil, nil, nil, "Request to cancel a single order")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.cancel_rejected_au_equities_v_1 = ProtoField.new("Cancel Rejected Au Equities V 1", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.cancelrejectedauequitiesv1", ftypes.STRING, nil, nil, nil, "A Cancel Rejected message is sent in response to a Cancel Order message to indicate that the cancellation cannot occur")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.carried_restatement_au_equities_v_1 = ProtoField.new("Carried Restatement Au Equities V 1", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.carriedrestatementauequitiesv1", ftypes.STRING, nil, nil, nil, "The Carried Restatement message is used to indicate the restoration of a multi-day GTC or GTD orders at the start of a new business day")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.done_for_day_au_equities_v_1 = ProtoField.new("Done For Day Au Equities V 1", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.donefordayauequitiesv1", ftypes.STRING, nil, nil, nil, "Done For Day messages represent orders persisted during the current day session to carry over to the next session")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.execution_restatement_au_equities_v_1 = ProtoField.new("Execution Restatement Au Equities V 1", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.executionrestatementauequitiesv1", ftypes.STRING, nil, nil, nil, "Order Execution Restated messages will be issued for all (unbroken) fills of MOC orders after the closing price has been determined")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.modify_order_au_equities_v_1 = ProtoField.new("Modify Order Au Equities V 1", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.modifyorderauequitiesv1", ftypes.STRING, nil, nil, nil, "Request to modify an order")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.modify_order_au_equities_v_2 = ProtoField.new("Modify Order Au Equities V 2", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.modifyorderauequitiesv2", ftypes.STRING, nil, nil, nil, "Request to modify an order, with ExpireDate for multi-day orders")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.modify_rejected_au_equities_v_1 = ProtoField.new("Modify Rejected Au Equities V 1", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.modifyrejectedauequitiesv1", ftypes.STRING, nil, nil, nil, "Modify Rejected messages are sent in response to a Modify Order for an order which cannot be modified")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.new_order_au_equities_v_1 = ProtoField.new("New Order Au Equities V 1", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.neworderauequitiesv1", ftypes.STRING, nil, nil, nil, "Submission of a new order to Cboe Australia")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.new_order_au_equities_v_2 = ProtoField.new("New Order Au Equities V 2", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.neworderauequitiesv2", ftypes.STRING, nil, nil, nil, "Submission of a new order to Cboe Australia, with Post Only and multi-day order fields")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.order_acknowledgement_au_equities_v_1 = ProtoField.new("Order Acknowledgement Au Equities V 1", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.orderacknowledgementauequitiesv1", ftypes.STRING, nil, nil, nil, "Order Acknowledgement messages are sent in response to a New Order message")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.order_cancelled_au_equities_v_1 = ProtoField.new("Order Cancelled Au Equities V 1", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.ordercancelledauequitiesv1", ftypes.STRING, nil, nil, nil, "Order Cancelled message")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.order_execution_au_equities_v_1 = ProtoField.new("Order Execution Au Equities V 1", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.orderexecutionauequitiesv1", ftypes.STRING, nil, nil, nil, "An Order Execution is sent for each fill on an order")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.order_modified_au_equities_v_1 = ProtoField.new("Order Modified Au Equities V 1", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.ordermodifiedauequitiesv1", ftypes.STRING, nil, nil, nil, "Order Modified messages are sent in response to a Modify Order to indicate that the order has been successfully modified")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.order_modified_au_equities_v_2 = ProtoField.new("Order Modified Au Equities V 2", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.ordermodifiedauequitiesv2", ftypes.STRING, nil, nil, nil, "Order Modified messages are sent in response to a Modify Order, with ExpireDate for multi-day orders")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.order_rejected_au_equities_v_1 = ProtoField.new("Order Rejected Au Equities V 1", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.orderrejectedauequitiesv1", ftypes.STRING, nil, nil, nil, "Order Rejected messages are sent in response to a New Order which must be rejected")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.order_restated_au_equities_v_1 = ProtoField.new("Order Restated Au Equities V 1", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.orderrestatedauequitiesv1", ftypes.STRING, nil, nil, nil, "Order restatement for an iceberg reload or a Self-Trade Protection reduction or cancellation")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.purge_acknowledgement_au_equities_v_1 = ProtoField.new("Purge Acknowledgement Au Equities V 1", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.purgeacknowledgementauequitiesv1", ftypes.STRING, nil, nil, nil, "A Purge Acknowledgment is an unsequenced message sent when a Purge Orders message requesting an order purge has completed cancelling all individual orders")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.purge_orders_au_equities_v_1 = ProtoField.new("Purge Orders Au Equities V 1", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.purgeordersauequitiesv1", ftypes.STRING, nil, nil, nil, "Request to cancel a group of orders across all of the participant's sessions")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.purge_rejected_au_equities_v_1 = ProtoField.new("Purge Rejected Au Equities V 1", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.purgerejectedauequitiesv1", ftypes.STRING, nil, nil, nil, "A Purge Rejected message is sent in response to a Purge Orders message to indicate that the mass cancellation cannot occur")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.trade_cancel_correct_au_equities_v_1 = ProtoField.new("Trade Cancel Correct Au Equities V 1", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.tradecancelcorrectauequitiesv1", ftypes.STRING, nil, nil, nil, "Used to provide notification that a trade has been cancelled (busted) or corrected (price change only)")

-- Cboe CxaEquities BinaryOrderEntry 1.0.20 Session Messages
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.clientheartbeat", ftypes.BYTES, nil, nil, nil, "Boe3 client sends a heartbeat to indicate the connection is alive; carries no payload")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.login_request_message = ProtoField.new("Login Request Message", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.loginrequestmessage", ftypes.STRING, nil, nil, nil, "A Login Request message must be sent as the first message upon connection")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.loginresponsemessage", ftypes.STRING, nil, nil, nil, "A Login Response message is sent in response to a Login Request message")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.logout_request = ProtoField.new("Logout Request", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.logoutrequest", ftypes.BYTES, nil, nil, nil, "Boe3 client requests session logout; server completes any in-flight messages then closes. Carries no payload")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.logout_response_message = ProtoField.new("Logout Response Message", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.logoutresponsemessage", ftypes.STRING, nil, nil, nil, "A Logout Response is usually sent in response to a Logout Request")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.replay_complete = ProtoField.new("Replay Complete", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.replaycomplete", ftypes.BYTES, nil, nil, nil, "Boe3 server signals that the replay of missed messages is complete; carries no payload")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.serverheartbeat", ftypes.BYTES, nil, nil, nil, "Boe3 server sends a heartbeat to indicate the connection is alive; carries no payload")

-- Cboe CxaEquities BinaryOrderEntry Boe3 1.0.20 Generated Fields
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.risk_group_id_index = ProtoField.new("Risk Group Id Index", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.riskgroupidindex", ftypes.UINT16)
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.unit_sequence_index = ProtoField.new("Unit Sequence Index", "cboe.cxaequities.binaryorderentry.boe3.v1.0.20.unitsequenceindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Cboe CxaEquities BinaryOrderEntry Boe3 1.0.20 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.absolute_time_base = 0

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

-- Cboe CxaEquities BinaryOrderEntry Boe3 1.0.20 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true
show.session_messages = true
show.indexes = true

-- Register Cboe CxaEquities BinaryOrderEntry Boe3 1.0.20 Show Options
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.show_application_messages then
    show.application_messages = omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.show_headers then
    show.headers = omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.show_headers
  end
  if show.session_messages ~= omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.show_session_messages then
    show.session_messages = omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.show_session_messages
  end
  if show.structs ~= omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.show_structs then
    show.structs = omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.show_indexes then
    show.indexes = omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.show_indexes
  end
  if cboe_cxaequities_binaryorderentry_boe3_v1_0_20.absolute_time_base ~= omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.absolute_time_base then
    cboe_cxaequities_binaryorderentry_boe3_v1_0_20.absolute_time_base = omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Cboe CxaEquities BinaryOrderEntry Boe3 1.0.20 Fields
-----------------------------------------------------------------------

-- Account
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.account = {}

-- Size: Account
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.account.size = 10

-- Display: Account
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.account.size
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

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.account, range, value, display)

  return offset + length, value
end

-- Base Liquidity Indicator
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.base_liquidity_indicator = {}

-- Size: Base Liquidity Indicator
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.base_liquidity_indicator.size = 1

-- Display: Base Liquidity Indicator
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.base_liquidity_indicator.display = function(value)
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
  if value == "C" then
    return "Base Liquidity Indicator: Auction Uncrossing (C)"
  end
  if value == 0 then
    return "Base Liquidity Indicator: N/A"
  end

  return "Base Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Base Liquidity Indicator
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.base_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.base_liquidity_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.base_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.base_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Broker Preferencing
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.broker_preferencing = {}

-- Size: Broker Preferencing
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.broker_preferencing.size = 1

-- Display: Broker Preferencing
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.broker_preferencing.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Broker Preferencing: No Value"
  end

  if value == "Y" then
    return "Broker Preferencing: Match With Other Orders Using Broker Preferencing When Possible (Y)"
  end
  if value == "N" then
    return "Broker Preferencing: Do Not Apply Broker Preferencing (N)"
  end
  if value == 0 then
    return "Broker Preferencing: Apply Port Default"
  end

  return "Broker Preferencing: Unknown("..value..")"
end

-- Dissect: Broker Preferencing
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.broker_preferencing.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.broker_preferencing.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.broker_preferencing.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.broker_preferencing, range, value, display)

  return offset + length, value
end

-- Cancel Orig On Reject
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_orig_on_reject = {}

-- Size: Cancel Orig On Reject
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_orig_on_reject.size = 1

-- Display: Cancel Orig On Reject
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_orig_on_reject.display = function(value)
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
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_orig_on_reject.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_orig_on_reject.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_orig_on_reject.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.cancel_orig_on_reject, range, value, display)

  return offset + length, value
end

-- Cancel Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_reason = {}

-- Size: Cancel Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_reason.size = 1

-- Display: Cancel Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_reason.display = function(value)
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
    return "Cancel Reason: Incorrect Data Centre (I)"
  end
  if value == "K" then
    return "Cancel Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "L" then
    return "Cancel Reason: Order Would Lock Or Cross Nbbo (L)"
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
    return "Cancel Reason: Order Received By Cboe Australia During Replay (y)"
  end
  if value == "z" then
    return "Cancel Reason: Session End (z)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cancel Reject Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_reject_reason = {}

-- Size: Cancel Reject Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_reject_reason.size = 1

-- Display: Cancel Reject Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_reject_reason.display = function(value)
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
    return "Cancel Reject Reason: Incorrect Data Centre (I)"
  end
  if value == "K" then
    return "Cancel Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "L" then
    return "Cancel Reject Reason: Order Would Lock Or Cross Nbbo (L)"
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
    return "Cancel Reject Reason: Order Received By Cboe Australia During Replay (y)"
  end
  if value == "z" then
    return "Cancel Reject Reason: Session End (z)"
  end

  return "Cancel Reject Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reject Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_reject_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Cancelled Order Count
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancelled_order_count = {}

-- Size: Cancelled Order Count
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancelled_order_count.size = 4

-- Display: Cancelled Order Count
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancelled_order_count.display = function(value)
  return "Cancelled Order Count: "..value
end

-- Dissect: Cancelled Order Count
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancelled_order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancelled_order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancelled_order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.cancelled_order_count, range, value, display)

  return offset + length, value
end

-- Capacity
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.capacity = {}

-- Size: Capacity
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.capacity.size = 1

-- Display: Capacity
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.capacity.display = function(value)
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
  if value == "X" then
    return "Capacity: Mixed (X)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.capacity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.capacity.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.capacity, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id = {}

-- Size: Cl Ord Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.size = 20

-- Display: Cl Ord Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord Id: No Value"
  end

  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.size
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

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Clearing Account
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_account = {}

-- Size: Clearing Account
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_account.size = 10

-- Display: Clearing Account
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account: No Value"
  end

  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_account.size
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

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Clearing Participant Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_participant_id = {}

-- Size: Clearing Participant Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_participant_id.size = 4

-- Display: Clearing Participant Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_participant_id.display = function(value)
  return "Clearing Participant Id: "..value
end

-- Dissect: Clearing Participant Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_participant_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.clearing_participant_id, range, value, display)

  return offset + length, value
end

-- Client Cross Ref
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_cross_ref = {}

-- Size: Client Cross Ref
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_cross_ref.size = 15

-- Display: Client Cross Ref
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_cross_ref.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Cross Ref: No Value"
  end

  return "Client Cross Ref: "..value
end

-- Dissect: Client Cross Ref
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_cross_ref.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_cross_ref.size
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

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_cross_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.client_cross_ref, range, value, display)

  return offset + length, value
end

-- Client Sequence
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_sequence = {}

-- Size: Client Sequence
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_sequence.size = 4

-- Display: Client Sequence
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_sequence.display = function(value)
  return "Client Sequence: "..value
end

-- Dissect: Client Sequence
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.client_sequence, range, value, display)

  return offset + length, value
end

-- Contra Participant Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.contra_participant_id = {}

-- Size: Contra Participant Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.contra_participant_id.size = 2

-- Display: Contra Participant Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.contra_participant_id.display = function(value)
  return "Contra Participant Id: "..value
end

-- Dissect: Contra Participant Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.contra_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.contra_participant_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.contra_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.contra_participant_id, range, value, display)

  return offset + length, value
end

-- Corrected Price
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.corrected_price = {}

-- Size: Corrected Price
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.corrected_price.size = 8

-- Display: Corrected Price
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.corrected_price.display = function(value)
  return "Corrected Price: "..value
end

-- Translate: Corrected Price
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.corrected_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Corrected Price
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.corrected_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.corrected_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.corrected_price.translate(raw)
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.corrected_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.corrected_price, range, value, display)

  return offset + length, value
end

-- Directed Wholesale Indicator
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.directed_wholesale_indicator = {}

-- Size: Directed Wholesale Indicator
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.directed_wholesale_indicator.size = 1

-- Display: Directed Wholesale Indicator
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.directed_wholesale_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Directed Wholesale Indicator: No Value"
  end

  if value == "Y" then
    return "Directed Wholesale Indicator: True (Y)"
  end
  if value == "N" then
    return "Directed Wholesale Indicator: False (N)"
  end

  return "Directed Wholesale Indicator: Unknown("..value..")"
end

-- Dissect: Directed Wholesale Indicator
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.directed_wholesale_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.directed_wholesale_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.directed_wholesale_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.directed_wholesale_indicator, range, value, display)

  return offset + length, value
end

-- Display Indicator
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.display_indicator = {}

-- Size: Display Indicator
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.display_indicator.size = 1

-- Display: Display Indicator
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.display_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Display Indicator: No Value"
  end

  if value == "V" then
    return "Display Indicator: Post Only Orders Which Would Lock The Nbbo On Entry Are Allowed To Do So (V)"
  end
  if value == "R" then
    return "Display Indicator: Cancel Back A Post Only Order On Entry If It Were To Create A Locked Nbbo (R)"
  end

  return "Display Indicator: Unknown("..value..")"
end

-- Dissect: Display Indicator
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.display_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.display_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.display_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.display_indicator, range, value, display)

  return offset + length, value
end

-- Exchange Message Type
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message_type = {}

-- Size: Exchange Message Type
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message_type.size = 2

-- Display: Exchange Message Type
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message_type.display = function(value)
  if value == 501 then
    return "Message Type: Login Response Message (501)"
  end
  if value == 502 then
    return "Message Type: Replay Complete Message (502)"
  end
  if value == 503 then
    return "Message Type: Logout Response Message (503)"
  end
  if value == 504 then
    return "Message Type: Server Heartbeat Message (504)"
  end
  if value == 3501 then
    return "Message Type: Order Acknowledgement Au Equities V 1 (3501)"
  end
  if value == 3502 then
    return "Message Type: Order Rejected Au Equities V 1 (3502)"
  end
  if value == 3503 then
    return "Message Type: Order Modified Au Equities V 1 (3503)"
  end
  if value == 3504 then
    return "Message Type: Modify Rejected Au Equities V 1 (3504)"
  end
  if value == 3505 then
    return "Message Type: Order Restated Au Equities V 1 (3505)"
  end
  if value == 3506 then
    return "Message Type: Order Execution Au Equities V 1 (3506)"
  end
  if value == 3507 then
    return "Message Type: Order Cancelled Au Equities V 1 (3507)"
  end
  if value == 3508 then
    return "Message Type: Cancel Rejected Au Equities V 1 (3508)"
  end
  if value == 3509 then
    return "Message Type: Execution Restatement Au Equities V 1 (3509)"
  end
  if value == 3510 then
    return "Message Type: Purge Acknowledgement Au Equities V 1 (3510)"
  end
  if value == 3511 then
    return "Message Type: Purge Rejected Au Equities V 1 (3511)"
  end
  if value == 3512 then
    return "Message Type: Trade Cancel Correct Au Equities V 1 (3512)"
  end
  if value == 3513 then
    return "Message Type: Order Modified Au Equities V 2 (3513)"
  end
  if value == 3514 then
    return "Message Type: Carried Restatement Au Equities V 1 (3514)"
  end
  if value == 3515 then
    return "Message Type: Done For Day Au Equities V 1 (3515)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Exchange Message Type
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.exchange_message_type, range, value, display)

  return offset + length, value
end

-- Exec Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_id = {}

-- Size: Exec Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_id.size = 8

-- Display: Exec Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Exec Inst
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst = {}

-- Size: Exec Inst
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.size = 1

-- Display: Exec Inst
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Exec Inst: No Value"
  end

  if value == "P" then
    return "Exec Inst: Market Peg (P)"
  end
  if value == "R" then
    return "Exec Inst: Primary Peg (R)"
  end
  if value == "M" then
    return "Exec Inst: Midpoint (M)"
  end
  if value == "j" then
    return "Exec Inst: Best X Order (j)"
  end
  if value == "k" then
    return "Exec Inst: Market X Order (k)"
  end

  return "Exec Inst: Unknown("..value..")"
end

-- Dissect: Exec Inst
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.exec_inst, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_ref_id = {}

-- Size: Exec Ref Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_ref_id.size = 8

-- Display: Exec Ref Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Exec Restatement Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_restatement_reason = {}

-- Size: Exec Restatement Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_restatement_reason.size = 1

-- Display: Exec Restatement Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_restatement_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Exec Restatement Reason: No Value"
  end

  if value == "R" then
    return "Exec Restatement Reason: Market On Close Repricing (R)"
  end

  return "Exec Restatement Reason: Unknown("..value..")"
end

-- Dissect: Exec Restatement Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_restatement_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Expire Date
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_date = {}

-- Size: Expire Date
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_date.size = 4

-- Display: Expire Date
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_date.display = function(value)
  return "Expire Date: "..value
end

-- Dissect: Expire Date
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.expire_date, range, value, display)

  return offset + length, value
end

-- Expire Time
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_time = {}

-- Size: Expire Time
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_time.size = 8

-- Dissect: Expire Time
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.expire_time
  if cboe_cxaequities_binaryorderentry_boe3_v1_0_20.absolute_time_base == 1 then field = omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.expire_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Fee Code
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fee_code = {}

-- Size: Fee Code
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fee_code.size = 2

-- Display: Fee Code
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fee_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fee Code: No Value"
  end

  return "Fee Code: "..value
end

-- Dissect: Fee Code
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fee_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fee_code.size
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

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fee_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.fee_code, range, value, display)

  return offset + length, value
end

-- Firm Message Type
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message_type = {}

-- Size: Firm Message Type
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message_type.size = 2

-- Display: Firm Message Type
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message_type.display = function(value)
  if value == 1 then
    return "Message Type: Login Request Message (1)"
  end
  if value == 2 then
    return "Message Type: Logout Request Message (2)"
  end
  if value == 3 then
    return "Message Type: Client Heartbeat Message (3)"
  end
  if value == 3001 then
    return "Message Type: New Order Au Equities V 1 (3001)"
  end
  if value == 3005 then
    return "Message Type: New Order Au Equities V 2 (3005)"
  end
  if value == 3002 then
    return "Message Type: Modify Order Au Equities V 1 (3002)"
  end
  if value == 3006 then
    return "Message Type: Modify Order Au Equities V 2 (3006)"
  end
  if value == 3003 then
    return "Message Type: Cancel Order Au Equities V 1 (3003)"
  end
  if value == 3004 then
    return "Message Type: Purge Orders Au Equities V 1 (3004)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Firm Message Type
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.firm_message_type, range, value, display)

  return offset + length, value
end

-- Intermediary Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.intermediary_id = {}

-- Size: Intermediary Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.intermediary_id.size = 10

-- Display: Intermediary Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.intermediary_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Intermediary Id: No Value"
  end

  return "Intermediary Id: "..value
end

-- Dissect: Intermediary Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.intermediary_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.intermediary_id.size
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

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.intermediary_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.intermediary_id, range, value, display)

  return offset + length, value
end

-- Last Capacity
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_capacity = {}

-- Size: Last Capacity
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_capacity.size = 1

-- Display: Last Capacity
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_capacity.display = function(value)
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
  if value == "5" then
    return "Last Capacity: Mixed (5)"
  end
  if value == "6" then
    return "Last Capacity: Cross As Mixed (6)"
  end

  return "Last Capacity: Unknown("..value..")"
end

-- Dissect: Last Capacity
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_capacity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_capacity.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.last_capacity, range, value, display)

  return offset + length, value
end

-- Last Mkt
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_mkt = {}

-- Size: Last Mkt
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_mkt.size = 4

-- Display: Last Mkt
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_mkt.display = function(value)
  if value == "CXAC" then
    return "Last Mkt: Limit (CXAC)"
  end
  if value == "CXAP" then
    return "Last Mkt: Mid Point (CXAP)"
  end
  if value == "CXAN" then
    return "Last Mkt: Near Point (CXAN)"
  end
  if value == "CXAF" then
    return "Last Mkt: Far Point (CXAF)"
  end
  if value == "CXAM" then
    return "Last Mkt: Moc (CXAM)"
  end

  return "Last Mkt: Unknown("..value..")"
end

-- Dissect: Last Mkt
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_mkt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_mkt.size
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

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_mkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.last_mkt, range, value, display)

  return offset + length, value
end

-- Last Px
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_px = {}

-- Size: Last Px
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_px.size = 8

-- Display: Last Px
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Px
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_px.translate(raw)
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Shares
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_shares = {}

-- Size: Last Shares
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_shares.size = 4

-- Display: Last Shares
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_shares.display = function(value)
  return "Last Shares: "..value
end

-- Dissect: Last Shares
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Leaves Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.leaves_qty = {}

-- Size: Leaves Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.leaves_qty.size = 4

-- Display: Leaves Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_status = {}

-- Size: Login Response Status
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_status.size = 1

-- Display: Login Response Status
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_status.display = function(value)
  if value == "A" then
    return "Login Response Status: Accepted (A)"
  end
  if value == "B" then
    return "Login Response Status: Session In Use (B)"
  end
  if value == "D" then
    return "Login Response Status: Disabled (D)"
  end
  if value == "I" then
    return "Login Response Status: Invalid Unit (I)"
  end
  if value == "M" then
    return "Login Response Status: Invalid Message (M)"
  end
  if value == "N" then
    return "Login Response Status: Not Authorized (N)"
  end
  if value == "Q" then
    return "Login Response Status: Sequence Ahead (Q)"
  end
  if value == "S" then
    return "Login Response Status: Invalid Session (S)"
  end

  return "Login Response Status: Unknown("..value..")"
end

-- Dissect: Login Response Status
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Login Response Text
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_text = {}

-- Size: Login Response Text
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_text.size = 60

-- Display: Login Response Text
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Login Response Text: No Value"
  end

  return "Login Response Text: "..value
end

-- Dissect: Login Response Text
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_text.size
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

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.login_response_text, range, value, display)

  return offset + length, value
end

-- Logout Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_reason = {}

-- Size: Logout Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_reason.size = 1

-- Display: Logout Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_reason.display = function(value)
  if value == "U" then
    return "Logout Reason: User Requested (U)"
  end
  if value == "A" then
    return "Logout Reason: Administrative (A)"
  end
  if value == "!" then
    return "Logout Reason: Protocol Violation (!)"
  end

  return "Logout Reason: Unknown("..value..")"
end

-- Dissect: Logout Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Reason Text
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_reason_text = {}

-- Size: Logout Reason Text
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_reason_text.size = 60

-- Display: Logout Reason Text
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_reason_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Logout Reason Text: No Value"
  end

  return "Logout Reason Text: "..value
end

-- Dissect: Logout Reason Text
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_reason_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_reason_text.size
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

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_reason_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.logout_reason_text, range, value, display)

  return offset + length, value
end

-- Mass Cancel Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.mass_cancel_id = {}

-- Size: Mass Cancel Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.mass_cancel_id.size = 20

-- Display: Mass Cancel Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.mass_cancel_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mass Cancel Id: No Value"
  end

  return "Mass Cancel Id: "..value
end

-- Dissect: Mass Cancel Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.mass_cancel_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.mass_cancel_id.size
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

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.mass_cancel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.mass_cancel_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Inst
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.mass_cancel_inst = {}

-- Size: Mass Cancel Inst
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.mass_cancel_inst.size = 16

-- Display: Mass Cancel Inst
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.mass_cancel_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mass Cancel Inst: No Value"
  end

  return "Mass Cancel Inst: "..value
end

-- Dissect: Mass Cancel Inst
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.mass_cancel_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.mass_cancel_inst.size
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

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.mass_cancel_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.mass_cancel_inst, range, value, display)

  return offset + length, value
end

-- Matching Unit
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.matching_unit = {}

-- Size: Matching Unit
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.matching_unit.size = 1

-- Display: Matching Unit
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.matching_unit.display = function(value)
  return "Matching Unit: "..value
end

-- Dissect: Matching Unit
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.matching_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.matching_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.matching_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.matching_unit, range, value, display)

  return offset + length, value
end

-- Max Floor
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor = {}

-- Size: Max Floor
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.size = 4

-- Display: Max Floor
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.display = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Meqse
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.meqse = {}

-- Size: Meqse
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.meqse.size = 1

-- Display: Meqse
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.meqse.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Meqse: No Value"
  end

  if value == "Y" then
    return "Meqse: True (Y)"
  end
  if value == "N" then
    return "Meqse: False (N)"
  end

  return "Meqse: Unknown("..value..")"
end

-- Dissect: Meqse
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.meqse.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.meqse.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.meqse.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.meqse, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.message_length = {}

-- Size: Message Length
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.message_length.size = 2

-- Display: Message Length
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.message_length, range, value, display)

  return offset + length, value
end

-- Min Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty = {}

-- Size: Min Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.size = 4

-- Display: Min Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Modify Reject Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_reject_reason = {}

-- Size: Modify Reject Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_reject_reason.size = 1

-- Display: Modify Reject Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_reject_reason.display = function(value)
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
    return "Modify Reject Reason: Incorrect Data Centre (I)"
  end
  if value == "K" then
    return "Modify Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "L" then
    return "Modify Reject Reason: Order Would Lock Or Cross Nbbo (L)"
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
    return "Modify Reject Reason: Order Received By Cboe Australia During Replay (y)"
  end
  if value == "z" then
    return "Modify Reject Reason: Session End (z)"
  end

  return "Modify Reject Reason: Unknown("..value..")"
end

-- Dissect: Modify Reject Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_reject_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.modify_reject_reason, range, value, display)

  return offset + length, value
end

-- No Trade Feat
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_feat = {}

-- Size: No Trade Feat
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_feat.size = 1

-- Display: No Trade Feat
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_feat.display = function(value)
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
  if value == "X" then
    return "No Trade Feat: Booking Purpose Trade (X)"
  end
  if value == 0 then
    return "No Trade Feat: Apply The Port Default"
  end

  return "No Trade Feat: Unknown("..value..")"
end

-- Dissect: No Trade Feat
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_feat.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_feat.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_feat.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.no_trade_feat, range, value, display)

  return offset + length, value
end

-- No Trade Key
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_key = {}

-- Size: No Trade Key
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_key.size = 10

-- Display: No Trade Key
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_key.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "No Trade Key: No Value"
  end

  return "No Trade Key: "..value
end

-- Dissect: No Trade Key
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_key.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_key.size
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

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.no_trade_key, range, value, display)

  return offset + length, value
end

-- Number Of Units
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.number_of_units = {}

-- Size: Number Of Units
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.number_of_units.size = 1

-- Display: Number Of Units
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.number_of_units.display = function(value)
  return "Number Of Units: "..value
end

-- Dissect: Number Of Units
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.number_of_units.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.number_of_units.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.number_of_units.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.number_of_units, range, value, display)

  return offset + length, value
end

-- On Market Cross Type
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.on_market_cross_type = {}

-- Size: On Market Cross Type
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.on_market_cross_type.size = 1

-- Display: On Market Cross Type
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.on_market_cross_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "On Market Cross Type: No Value"
  end

  if value == "B" then
    return "On Market Cross Type: Trade Was The Result Of A Broker Preferenced Crossing (B)"
  end
  if value == 0 then
    return "On Market Cross Type: Other"
  end

  return "On Market Cross Type: Unknown("..value..")"
end

-- Dissect: On Market Cross Type
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.on_market_cross_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.on_market_cross_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.on_market_cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.on_market_cross_type, range, value, display)

  return offset + length, value
end

-- Ord Type
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.ord_type = {}

-- Size: Ord Type
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.ord_type.size = 1

-- Display: Ord Type
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.ord_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ord Type: No Value"
  end

  if value == "2" then
    return "Ord Type: Limit (2)"
  end
  if value == "5" then
    return "Ord Type: Market On Close Moc (5)"
  end
  if value == "P" then
    return "Ord Type: Pegged (P)"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.ord_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_id = {}

-- Size: Order Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_id.size = 8

-- Display: Order Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty = {}

-- Size: Order Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.size = 4

-- Display: Order Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Reject Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_reject_reason = {}

-- Size: Order Reject Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_reject_reason.size = 1

-- Display: Order Reject Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_reject_reason.display = function(value)
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
    return "Order Reject Reason: Incorrect Data Centre (I)"
  end
  if value == "K" then
    return "Order Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "L" then
    return "Order Reject Reason: Order Would Lock Or Cross Nbbo (L)"
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
    return "Order Reject Reason: Order Received By Cboe Australia During Replay (y)"
  end
  if value == "z" then
    return "Order Reject Reason: Session End (z)"
  end

  return "Order Reject Reason: Unknown("..value..")"
end

-- Dissect: Order Reject Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_reject_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_cl_ord_id.size = 20

-- Display: Orig Cl Ord Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Orig Cl Ord Id: No Value"
  end

  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_cl_ord_id.size
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

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Orig Time
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_time = {}

-- Size: Orig Time
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_time.size = 8

-- Dissect: Orig Time
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.orig_time
  if cboe_cxaequities_binaryorderentry_boe3_v1_0_20.absolute_time_base == 1 then field = omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.orig_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Origin Of Trans
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.origin_of_trans = {}

-- Size: Origin Of Trans
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.origin_of_trans.size = 20

-- Display: Origin Of Trans
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.origin_of_trans.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Origin Of Trans: No Value"
  end

  return "Origin Of Trans: "..value
end

-- Dissect: Origin Of Trans
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.origin_of_trans.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.origin_of_trans.size
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

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.origin_of_trans.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.origin_of_trans, range, value, display)

  return offset + length, value
end

-- Password
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.password = {}

-- Size: Password
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.password.size = 10

-- Display: Password
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.password.size
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

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.password, range, value, display)

  return offset + length, value
end

-- Price
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price = {}

-- Size: Price
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.size = 8

-- Display: Price
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.translate(raw)
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.price, range, value, display)

  return offset + length, value
end

-- Price Improvement
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price_improvement = {}

-- Size: Price Improvement
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price_improvement.size = 8

-- Display: Price Improvement
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price_improvement.display = function(value)
  return "Price Improvement: "..value
end

-- Translate: Price Improvement
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price_improvement.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Improvement
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price_improvement.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price_improvement.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price_improvement.translate(raw)
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price_improvement.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.price_improvement, range, value, display)

  return offset + length, value
end

-- Purge Reject Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_reject_reason = {}

-- Size: Purge Reject Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_reject_reason.size = 1

-- Display: Purge Reject Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_reject_reason.display = function(value)
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
    return "Purge Reject Reason: Incorrect Data Centre (I)"
  end
  if value == "K" then
    return "Purge Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "L" then
    return "Purge Reject Reason: Order Would Lock Or Cross Nbbo (L)"
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
    return "Purge Reject Reason: Order Received By Cboe Australia During Replay (y)"
  end
  if value == "z" then
    return "Purge Reject Reason: Session End (z)"
  end

  return "Purge Reject Reason: Unknown("..value..")"
end

-- Dissect: Purge Reject Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_reject_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.purge_reject_reason, range, value, display)

  return offset + length, value
end

-- Remove Crossing From Clearing
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.remove_crossing_from_clearing = {}

-- Size: Remove Crossing From Clearing
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.remove_crossing_from_clearing.size = 1

-- Display: Remove Crossing From Clearing
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.remove_crossing_from_clearing.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Remove Crossing From Clearing: No Value"
  end

  if value == "Y" then
    return "Remove Crossing From Clearing: True (Y)"
  end
  if value == "N" then
    return "Remove Crossing From Clearing: False (N)"
  end

  return "Remove Crossing From Clearing: Unknown("..value..")"
end

-- Dissect: Remove Crossing From Clearing
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.remove_crossing_from_clearing.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.remove_crossing_from_clearing.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.remove_crossing_from_clearing.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.remove_crossing_from_clearing, range, value, display)

  return offset + length, value
end

-- Replay Unspecified Unit
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.replay_unspecified_unit = {}

-- Size: Replay Unspecified Unit
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.replay_unspecified_unit.size = 1

-- Display: Replay Unspecified Unit
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.replay_unspecified_unit.display = function(value)
  if value == "F" then
    return "Replay Unspecified Unit: Fail If Unit Not Specified (F)"
  end
  if value == "R" then
    return "Replay Unspecified Unit: Replay Any Unspecified Unit From Zero (R)"
  end
  if value == "S" then
    return "Replay Unspecified Unit: Skip Replay Of Unspecified Units (S)"
  end

  return "Replay Unspecified Unit: Unknown("..value..")"
end

-- Dissect: Replay Unspecified Unit
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.replay_unspecified_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.replay_unspecified_unit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.replay_unspecified_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.replay_unspecified_unit, range, value, display)

  return offset + length, value
end

-- Reserved Field
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.reserved_field = {}

-- Size: Reserved Field
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.reserved_field.size = 1

-- Display: Reserved Field
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.reserved_field.display = function(value)
  return "Reserved Field: "..value
end

-- Dissect: Reserved Field
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.reserved_field.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.reserved_field.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.reserved_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.reserved_field, range, value, display)

  return offset + length, value
end

-- Restatement Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.restatement_reason = {}

-- Size: Restatement Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.restatement_reason.size = 1

-- Display: Restatement Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.restatement_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Restatement Reason: No Value"
  end

  if value == "r" then
    return "Restatement Reason: Iceberg Order Reload (r)"
  end
  if value == "W" then
    return "Restatement Reason: Would Have Selftraded (W)"
  end
  if value == "R" then
    return "Restatement Reason: Replaced By Another Port Ie Purge Amend Port (R)"
  end

  return "Restatement Reason: Unknown("..value..")"
end

-- Dissect: Restatement Reason
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.restatement_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.restatement_reason, range, value, display)

  return offset + length, value
end

-- Risk Group Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id = {}

-- Size: Risk Group Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id.size = 2

-- Display: Risk Group Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id.display = function(value)
  return "Risk Group Id: "..value
end

-- Dissect: Risk Group Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.risk_group_id, range, value, display)

  return offset + length, value
end

-- Risk Group Id Cnt
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id_cnt = {}

-- Size: Risk Group Id Cnt
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id_cnt.size = 1

-- Display: Risk Group Id Cnt
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id_cnt.display = function(value)
  return "Risk Group Id Cnt: "..value
end

-- Dissect: Risk Group Id Cnt
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id_cnt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id_cnt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id_cnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.risk_group_id_cnt, range, value, display)

  return offset + length, value
end

-- Routing Inst
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.routing_inst = {}

-- Size: Routing Inst
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.routing_inst.size = 1

-- Display: Routing Inst
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.routing_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Routing Inst: No Value"
  end

  if value == "P" then
    return "Routing Inst: Post Only Never Take Liquidity (P)"
  end
  if value == "F" then
    return "Routing Inst: Focused Nearpoint (F)"
  end

  return "Routing Inst: Unknown("..value..")"
end

-- Dissect: Routing Inst
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.routing_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.routing_inst.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.routing_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.routing_inst, range, value, display)

  return offset + length, value
end

-- Secondary Order Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.secondary_order_id = {}

-- Size: Secondary Order Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.secondary_order_id.size = 8

-- Display: Secondary Order Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sequence_number = {}

-- Size: Sequence Number
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sequence_number.size = 4

-- Display: Sequence Number
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.session_id = {}

-- Size: Session Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.session_id.size = 4

-- Display: Session Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.session_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session Id: No Value"
  end

  return "Session Id: "..value
end

-- Dissect: Session Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.session_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.session_id.size
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

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.session_sub_id = {}

-- Size: Session Sub Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.session_sub_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session Sub Id: No Value"
  end

  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.session_sub_id.size
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

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Short Sell Covered Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty = {}

-- Size: Short Sell Covered Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.size = 4

-- Display: Short Sell Covered Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.display = function(value)
  return "Short Sell Covered Qty: "..value
end

-- Dissect: Short Sell Covered Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.short_sell_covered_qty, range, value, display)

  return offset + length, value
end

-- Short Sell Long Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty = {}

-- Size: Short Sell Long Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.size = 4

-- Display: Short Sell Long Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.display = function(value)
  return "Short Sell Long Qty: "..value
end

-- Dissect: Short Sell Long Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.short_sell_long_qty, range, value, display)

  return offset + length, value
end

-- Short Sell Naked Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty = {}

-- Size: Short Sell Naked Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.size = 4

-- Display: Short Sell Naked Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.display = function(value)
  return "Short Sell Naked Qty: "..value
end

-- Dissect: Short Sell Naked Qty
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.short_sell_naked_qty, range, value, display)

  return offset + length, value
end

-- Side
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.side = {}

-- Size: Side
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.side.size = 1

-- Display: Side
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.side.display = function(value)
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

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.side, range, value, display)

  return offset + length, value
end

-- Start Of Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.start_of_message = {}

-- Size: Start Of Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.start_of_message.size = 2

-- Display: Start Of Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.start_of_message.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Sub Liquidity Indicator
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sub_liquidity_indicator = {}

-- Size: Sub Liquidity Indicator
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sub_liquidity_indicator.size = 1

-- Display: Sub Liquidity Indicator
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sub_liquidity_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Sub Liquidity Indicator: No Value"
  end

  if value == "I" then
    return "Sub Liquidity Indicator: Added Hidden Liquidity That Was Price Improved (I)"
  end
  if value == "J" then
    return "Sub Liquidity Indicator: Added Liquidity Nbbo Joiner (J)"
  end
  if value == "K" then
    return "Sub Liquidity Indicator: Added Liquidity From The Hidden Reserve Portion Of An Iceberg Order (K)"
  end
  if value == "S" then
    return "Sub Liquidity Indicator: Added Liquidity Nbbo Setter (S)"
  end
  if value == "O" then
    return "Sub Liquidity Indicator: Opening Auction Or Intraday Auction Trade (O)"
  end
  if value == "e" then
    return "Sub Liquidity Indicator: Closing Auction Trade (e)"
  end
  if value == "h" then
    return "Sub Liquidity Indicator: Halt Auction Re Opening (h)"
  end
  if value == 0 then
    return "Sub Liquidity Indicator: No Additional Information"
  end

  return "Sub Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Sub Liquidity Indicator
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sub_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sub_liquidity_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sub_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.sub_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol = {}

-- Size: Symbol
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.size = 6

-- Display: Symbol
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.size
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

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.symbol, range, value, display)

  return offset + length, value
end

-- Target Matching Unit
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.target_matching_unit = {}

-- Size: Target Matching Unit
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.target_matching_unit.size = 1

-- Display: Target Matching Unit
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.target_matching_unit.display = function(value)
  return "Target Matching Unit: "..value
end

-- Dissect: Target Matching Unit
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.target_matching_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.target_matching_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.target_matching_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.target_matching_unit, range, value, display)

  return offset + length, value
end

-- Text
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.text = {}

-- Size: Text
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.text.size = 60

-- Display: Text
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.text.size
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

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.text, range, value, display)

  return offset + length, value
end

-- Time In Force
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.time_in_force = {}

-- Size: Time In Force
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.time_in_force.size = 1

-- Display: Time In Force
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.time_in_force.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Time In Force: No Value"
  end

  if value == "0" then
    return "Time In Force: Day Default (0)"
  end
  if value == "1" then
    return "Time In Force: Gtc Good Till Cancel (1)"
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
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.time_in_force.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Trade Report Type
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trade_report_type = {}

-- Size: Trade Report Type
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trade_report_type.size = 1

-- Display: Trade Report Type
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trade_report_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Trade Report Type: No Value"
  end

  if value == "X" then
    return "Trade Report Type: Booking Purpose Trade (X)"
  end
  if value == 0 then
    return "Trade Report Type: Normal Trade"
  end

  return "Trade Report Type: Unknown("..value..")"
end

-- Dissect: Trade Report Type
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trade_report_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trade_report_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trade_report_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.trade_report_type, range, value, display)

  return offset + length, value
end

-- Trading Participant Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id = {}

-- Size: Trading Participant Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.size = 2

-- Display: Trading Participant Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.display = function(value)
  return "Trading Participant Id: "..value
end

-- Dissect: Trading Participant Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.trading_participant_id, range, value, display)

  return offset + length, value
end

-- Transact Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transact_id = {}

-- Size: Transact Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transact_id.size = 10

-- Display: Transact Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transact_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Transact Id: No Value"
  end

  return "Transact Id: "..value
end

-- Dissect: Transact Id
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transact_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transact_id.size
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

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transact_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.transact_id, range, value, display)

  return offset + length, value
end

-- Transaction Time
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time = {}

-- Size: Transaction Time
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.size = 8

-- Dissect: Transaction Time
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.transaction_time
  if cboe_cxaequities_binaryorderentry_boe3_v1_0_20.absolute_time_base == 1 then field = omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.transaction_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Undisclosed
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.undisclosed = {}

-- Size: Undisclosed
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.undisclosed.size = 1

-- Display: Undisclosed
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.undisclosed.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Undisclosed: No Value"
  end

  if value == "Y" then
    return "Undisclosed: True (Y)"
  end
  if value == "N" then
    return "Undisclosed: False (N)"
  end

  return "Undisclosed: Unknown("..value..")"
end

-- Dissect: Undisclosed
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.undisclosed.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.undisclosed.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.undisclosed.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.undisclosed, range, value, display)

  return offset + length, value
end

-- Unit Number
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.unit_number = {}

-- Size: Unit Number
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.unit_number.size = 1

-- Display: Unit Number
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.unit_number.display = function(value)
  return "Unit Number: "..value
end

-- Dissect: Unit Number
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.unit_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.unit_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.unit_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.unit_number, range, value, display)

  return offset + length, value
end

-- Working Price
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.working_price = {}

-- Size: Working Price
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.working_price.size = 8

-- Display: Working Price
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.working_price.display = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.working_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Working Price
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.working_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.working_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.working_price.translate(raw)
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.working_price, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe CxaEquities BinaryOrderEntry Boe3 1.0.20
-----------------------------------------------------------------------

-- Done For Day Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.done_for_day_au_equities_v_1 = {}

-- Size: Done For Day Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.done_for_day_au_equities_v_1.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.size

-- Display: Done For Day Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.done_for_day_au_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Done For Day Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.done_for_day_au_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Done For Day Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.done_for_day_au_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.done_for_day_au_equities_v_1, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.done_for_day_au_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.done_for_day_au_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.done_for_day_au_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Carried Restatement Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.carried_restatement_au_equities_v_1 = {}

-- Size: Carried Restatement Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.carried_restatement_au_equities_v_1.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.account.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.ord_type.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.capacity.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.side.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.time_in_force.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_time.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_account.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.undisclosed.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_cross_ref.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_feat.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_key.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.meqse.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.origin_of_trans.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.intermediary_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.directed_wholesale_indicator.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.remove_crossing_from_clearing.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.broker_preferencing.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.routing_inst.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.display_indicator.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_date.size

-- Display: Carried Restatement Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.carried_restatement_au_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Carried Restatement Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.carried_restatement_au_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.account.dissect(buffer, index, packet, parent)

  -- Trading Participant Id: Binary
  index, trading_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.ord_type.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.dissect(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.capacity.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.side.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.dissect(buffer, index, packet, parent)

  -- Time In Force: Text
  index, time_in_force = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.time_in_force.dissect(buffer, index, packet, parent)

  -- Min Qty: Binary
  index, min_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_time.dissect(buffer, index, packet, parent)

  -- Clearing Participant Id: Binary
  index, clearing_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_participant_id.dissect(buffer, index, packet, parent)

  -- Clearing Account: Alphanumeric
  index, clearing_account = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_account.dissect(buffer, index, packet, parent)

  -- Undisclosed: Text
  index, undisclosed = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.undisclosed.dissect(buffer, index, packet, parent)

  -- Client Cross Ref: Text
  index, client_cross_ref = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_cross_ref.dissect(buffer, index, packet, parent)

  -- Short Sell Naked Qty: Binary
  index, short_sell_naked_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.dissect(buffer, index, packet, parent)

  -- Short Sell Covered Qty: Binary
  index, short_sell_covered_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.dissect(buffer, index, packet, parent)

  -- Short Sell Long Qty: Binary
  index, short_sell_long_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.dissect(buffer, index, packet, parent)

  -- Risk Group Id: Binary
  index, risk_group_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id.dissect(buffer, index, packet, parent)

  -- No Trade Feat: Alpha
  index, no_trade_feat = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_feat.dissect(buffer, index, packet, parent)

  -- No Trade Key: Text
  index, no_trade_key = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_key.dissect(buffer, index, packet, parent)

  -- Meqse: Text
  index, meqse = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.meqse.dissect(buffer, index, packet, parent)

  -- Origin Of Trans: Text
  index, origin_of_trans = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.origin_of_trans.dissect(buffer, index, packet, parent)

  -- Intermediary Id: Text
  index, intermediary_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.intermediary_id.dissect(buffer, index, packet, parent)

  -- Directed Wholesale Indicator: Text
  index, directed_wholesale_indicator = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.directed_wholesale_indicator.dissect(buffer, index, packet, parent)

  -- Remove Crossing From Clearing: Text
  index, remove_crossing_from_clearing = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.remove_crossing_from_clearing.dissect(buffer, index, packet, parent)

  -- Broker Preferencing: Text
  index, broker_preferencing = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.broker_preferencing.dissect(buffer, index, packet, parent)

  -- Routing Inst: Text
  index, routing_inst = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.routing_inst.dissect(buffer, index, packet, parent)

  -- Display Indicator: Text
  index, display_indicator = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.display_indicator.dissect(buffer, index, packet, parent)

  -- Expire Date: Date
  index, expire_date = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Carried Restatement Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.carried_restatement_au_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.carried_restatement_au_equities_v_1, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.carried_restatement_au_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.carried_restatement_au_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.carried_restatement_au_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Modified Au Equities V 2
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_modified_au_equities_v_2 = {}

-- Size: Order Modified Au Equities V 2
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_modified_au_equities_v_2.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.leaves_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.secondary_order_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.working_price.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.base_liquidity_indicator.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sub_liquidity_indicator.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_date.size

-- Display: Order Modified Au Equities V 2
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_modified_au_equities_v_2.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified Au Equities V 2
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_modified_au_equities_v_2.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Trading Participant Id: Binary
  index, trading_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.dissect(buffer, index, packet, parent)

  -- Min Qty: Binary
  index, min_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.leaves_qty.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: Binary
  index, secondary_order_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Short Sell Naked Qty: Binary
  index, short_sell_naked_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.dissect(buffer, index, packet, parent)

  -- Short Sell Covered Qty: Binary
  index, short_sell_covered_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.dissect(buffer, index, packet, parent)

  -- Short Sell Long Qty: Binary
  index, short_sell_long_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.dissect(buffer, index, packet, parent)

  -- Working Price: BinaryPrice
  index, working_price = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.working_price.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Text
  index, sub_liquidity_indicator = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Expire Date: Date
  index, expire_date = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modified Au Equities V 2
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_modified_au_equities_v_2.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.order_modified_au_equities_v_2, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_modified_au_equities_v_2.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_modified_au_equities_v_2.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_modified_au_equities_v_2.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Correct Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trade_cancel_correct_au_equities_v_1 = {}

-- Size: Trade Cancel Correct Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trade_cancel_correct_au_equities_v_1.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_ref_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_px.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_shares.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_time.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.side.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transact_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.corrected_price.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.base_liquidity_indicator.size

-- Display: Trade Cancel Correct Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trade_cancel_correct_au_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Correct Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trade_cancel_correct_au_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Trading Participant Id: Binary
  index, trading_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: Binary
  index, exec_ref_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_px.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_shares.dissect(buffer, index, packet, parent)

  -- Orig Time: DateTime
  index, orig_time = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_time.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.side.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.dissect(buffer, index, packet, parent)

  -- Clearing Participant Id: Binary
  index, clearing_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_participant_id.dissect(buffer, index, packet, parent)

  -- Transact Id: Alphanumeric
  index, transact_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transact_id.dissect(buffer, index, packet, parent)

  -- Corrected Price: BinaryPrice
  index, corrected_price = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.corrected_price.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Correct Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trade_cancel_correct_au_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.trade_cancel_correct_au_equities_v_1, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trade_cancel_correct_au_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trade_cancel_correct_au_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trade_cancel_correct_au_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Purge Rejected Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_rejected_au_equities_v_1 = {}

-- Size: Purge Rejected Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_rejected_au_equities_v_1.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.mass_cancel_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_reject_reason.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.text.size

-- Display: Purge Rejected Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_rejected_au_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Rejected Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_rejected_au_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Purge Reject Reason: Text
  index, purge_reject_reason = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Rejected Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_rejected_au_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.purge_rejected_au_equities_v_1, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_rejected_au_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_rejected_au_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_rejected_au_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Purge Acknowledgement Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_acknowledgement_au_equities_v_1 = {}

-- Size: Purge Acknowledgement Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_acknowledgement_au_equities_v_1.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.mass_cancel_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancelled_order_count.size

-- Display: Purge Acknowledgement Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_acknowledgement_au_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Acknowledgement Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_acknowledgement_au_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Cancelled Order Count: Binary
  index, cancelled_order_count = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancelled_order_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Acknowledgement Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_acknowledgement_au_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.purge_acknowledgement_au_equities_v_1, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_acknowledgement_au_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_acknowledgement_au_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_acknowledgement_au_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Execution Restatement Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.execution_restatement_au_equities_v_1 = {}

-- Size: Execution Restatement Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.execution_restatement_au_equities_v_1.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_px.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_shares.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.side.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transact_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.base_liquidity_indicator.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.contra_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fee_code.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_restatement_reason.size

-- Display: Execution Restatement Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.execution_restatement_au_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Restatement Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.execution_restatement_au_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Trading Participant Id: Binary
  index, trading_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_id.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_px.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_shares.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.side.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.dissect(buffer, index, packet, parent)

  -- Transact Id: Alphanumeric
  index, transact_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transact_id.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Contra Participant Id: Binary
  index, contra_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.contra_participant_id.dissect(buffer, index, packet, parent)

  -- Fee Code: Alphanumeric
  index, fee_code = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fee_code.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: Text
  index, exec_restatement_reason = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_restatement_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Restatement Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.execution_restatement_au_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.execution_restatement_au_equities_v_1, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.execution_restatement_au_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.execution_restatement_au_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.execution_restatement_au_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Rejected Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_rejected_au_equities_v_1 = {}

-- Size: Cancel Rejected Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_rejected_au_equities_v_1.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_reject_reason.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.text.size

-- Display: Cancel Rejected Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_rejected_au_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Rejected Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_rejected_au_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Trading Participant Id: Binary
  index, trading_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cancel Reject Reason: Text
  index, cancel_reject_reason = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Rejected Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_rejected_au_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.cancel_rejected_au_equities_v_1, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_rejected_au_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_rejected_au_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_rejected_au_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancelled Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_cancelled_au_equities_v_1 = {}

-- Size: Order Cancelled Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_cancelled_au_equities_v_1.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_reason.size

-- Display: Order Cancelled Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_cancelled_au_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancelled Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_cancelled_au_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Trading Participant Id: Binary
  index, trading_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Text
  index, cancel_reason = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancelled Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_cancelled_au_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.order_cancelled_au_equities_v_1, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_cancelled_au_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_cancelled_au_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_cancelled_au_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_execution_au_equities_v_1 = {}

-- Size: Order Execution Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_execution_au_equities_v_1.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_capacity.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_mkt.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_px.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_shares.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.side.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.leaves_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.secondary_order_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price_improvement.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transact_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.on_market_cross_type.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trade_report_type.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.base_liquidity_indicator.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sub_liquidity_indicator.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.contra_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fee_code.size

-- Display: Order Execution Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_execution_au_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_execution_au_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Trading Participant Id: Binary
  index, trading_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_id.dissect(buffer, index, packet, parent)

  -- Last Capacity: Text
  index, last_capacity = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_capacity.dissect(buffer, index, packet, parent)

  -- Last Mkt: Alphanumeric
  index, last_mkt = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_mkt.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_px.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_shares.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.side.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.leaves_qty.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: Binary
  index, secondary_order_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Clearing Participant Id: Binary
  index, clearing_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_participant_id.dissect(buffer, index, packet, parent)

  -- Price Improvement: BinaryPrice
  index, price_improvement = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price_improvement.dissect(buffer, index, packet, parent)

  -- Transact Id: Alphanumeric
  index, transact_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transact_id.dissect(buffer, index, packet, parent)

  -- On Market Cross Type: Text
  index, on_market_cross_type = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.on_market_cross_type.dissect(buffer, index, packet, parent)

  -- Trade Report Type: Text
  index, trade_report_type = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trade_report_type.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Text
  index, sub_liquidity_indicator = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Contra Participant Id: Binary
  index, contra_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.contra_participant_id.dissect(buffer, index, packet, parent)

  -- Fee Code: Alphanumeric
  index, fee_code = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fee_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_execution_au_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.order_execution_au_equities_v_1, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_execution_au_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_execution_au_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_execution_au_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Restated Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_restated_au_equities_v_1 = {}

-- Size: Order Restated Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_restated_au_equities_v_1.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.leaves_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.secondary_order_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_px.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_shares.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.base_liquidity_indicator.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.restatement_reason.size

-- Display: Order Restated Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_restated_au_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Restated Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_restated_au_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Trading Participant Id: Binary
  index, trading_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.leaves_qty.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: Binary
  index, secondary_order_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_px.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.last_shares.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Restatement Reason: Text
  index, restatement_reason = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.restatement_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Restated Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_restated_au_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.order_restated_au_equities_v_1, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_restated_au_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_restated_au_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_restated_au_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Modify Rejected Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_rejected_au_equities_v_1 = {}

-- Size: Modify Rejected Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_rejected_au_equities_v_1.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_reject_reason.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.text.size

-- Display: Modify Rejected Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_rejected_au_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Rejected Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_rejected_au_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Trading Participant Id: Binary
  index, trading_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Modify Reject Reason: Text
  index, modify_reject_reason = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Rejected Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_rejected_au_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.modify_rejected_au_equities_v_1, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_rejected_au_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_rejected_au_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_rejected_au_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Modified Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_modified_au_equities_v_1 = {}

-- Size: Order Modified Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_modified_au_equities_v_1.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.leaves_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.secondary_order_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.working_price.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.base_liquidity_indicator.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sub_liquidity_indicator.size

-- Display: Order Modified Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_modified_au_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_modified_au_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Trading Participant Id: Binary
  index, trading_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.dissect(buffer, index, packet, parent)

  -- Min Qty: Binary
  index, min_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.leaves_qty.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: Binary
  index, secondary_order_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Short Sell Naked Qty: Binary
  index, short_sell_naked_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.dissect(buffer, index, packet, parent)

  -- Short Sell Covered Qty: Binary
  index, short_sell_covered_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.dissect(buffer, index, packet, parent)

  -- Short Sell Long Qty: Binary
  index, short_sell_long_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.dissect(buffer, index, packet, parent)

  -- Working Price: BinaryPrice
  index, working_price = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.working_price.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Text
  index, sub_liquidity_indicator = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modified Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_modified_au_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.order_modified_au_equities_v_1, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_modified_au_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_modified_au_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_modified_au_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Rejected Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_rejected_au_equities_v_1 = {}

-- Size: Order Rejected Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_rejected_au_equities_v_1.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_reject_reason.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.text.size

-- Display: Order Rejected Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_rejected_au_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Rejected Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_rejected_au_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Trading Participant Id: Binary
  index, trading_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: Text
  index, order_reject_reason = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Rejected Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_rejected_au_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.order_rejected_au_equities_v_1, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_rejected_au_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_rejected_au_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_rejected_au_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Acknowledgement Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_acknowledgement_au_equities_v_1 = {}

-- Size: Order Acknowledgement Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_acknowledgement_au_equities_v_1.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.account.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.ord_type.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.capacity.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.side.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.time_in_force.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_time.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_account.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.undisclosed.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_cross_ref.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_feat.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_key.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.meqse.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.origin_of_trans.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.intermediary_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.directed_wholesale_indicator.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.remove_crossing_from_clearing.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.broker_preferencing.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.working_price.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.base_liquidity_indicator.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sub_liquidity_indicator.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.routing_inst.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.display_indicator.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_date.size

-- Display: Order Acknowledgement Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_acknowledgement_au_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Acknowledgement Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_acknowledgement_au_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.account.dissect(buffer, index, packet, parent)

  -- Trading Participant Id: Binary
  index, trading_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.ord_type.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.dissect(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.capacity.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.side.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.dissect(buffer, index, packet, parent)

  -- Time In Force: Text
  index, time_in_force = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.time_in_force.dissect(buffer, index, packet, parent)

  -- Min Qty: Binary
  index, min_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_time.dissect(buffer, index, packet, parent)

  -- Clearing Participant Id: Binary
  index, clearing_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_participant_id.dissect(buffer, index, packet, parent)

  -- Clearing Account: Alphanumeric
  index, clearing_account = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_account.dissect(buffer, index, packet, parent)

  -- Undisclosed: Text
  index, undisclosed = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.undisclosed.dissect(buffer, index, packet, parent)

  -- Client Cross Ref: Text
  index, client_cross_ref = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_cross_ref.dissect(buffer, index, packet, parent)

  -- Short Sell Naked Qty: Binary
  index, short_sell_naked_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.dissect(buffer, index, packet, parent)

  -- Short Sell Covered Qty: Binary
  index, short_sell_covered_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.dissect(buffer, index, packet, parent)

  -- Short Sell Long Qty: Binary
  index, short_sell_long_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.dissect(buffer, index, packet, parent)

  -- Risk Group Id: Binary
  index, risk_group_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id.dissect(buffer, index, packet, parent)

  -- No Trade Feat: Alpha
  index, no_trade_feat = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_feat.dissect(buffer, index, packet, parent)

  -- No Trade Key: Text
  index, no_trade_key = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_key.dissect(buffer, index, packet, parent)

  -- Meqse: Text
  index, meqse = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.meqse.dissect(buffer, index, packet, parent)

  -- Origin Of Trans: Text
  index, origin_of_trans = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.origin_of_trans.dissect(buffer, index, packet, parent)

  -- Intermediary Id: Text
  index, intermediary_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.intermediary_id.dissect(buffer, index, packet, parent)

  -- Directed Wholesale Indicator: Text
  index, directed_wholesale_indicator = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.directed_wholesale_indicator.dissect(buffer, index, packet, parent)

  -- Remove Crossing From Clearing: Text
  index, remove_crossing_from_clearing = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.remove_crossing_from_clearing.dissect(buffer, index, packet, parent)

  -- Broker Preferencing: Text
  index, broker_preferencing = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.broker_preferencing.dissect(buffer, index, packet, parent)

  -- Working Price: BinaryPrice
  index, working_price = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.working_price.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Text
  index, sub_liquidity_indicator = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Routing Inst: Text
  index, routing_inst = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.routing_inst.dissect(buffer, index, packet, parent)

  -- Display Indicator: Text
  index, display_indicator = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.display_indicator.dissect(buffer, index, packet, parent)

  -- Expire Date: Date
  index, expire_date = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Acknowledgement Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_acknowledgement_au_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.order_acknowledgement_au_equities_v_1, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_acknowledgement_au_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_acknowledgement_au_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_acknowledgement_au_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Server Heartbeat
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.server_heartbeat = {}

-- Display: Server Heartbeat
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout Response Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_response_message = {}

-- Size: Logout Response Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_response_message.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_reason.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_reason_text.size

-- Display: Logout Response Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Response Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 3 values
  index, logout_reason = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_reason.dissect(buffer, index, packet, parent)

  -- Logout Reason Text: 60 Byte Ascii String
  index, logout_reason_text = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_reason_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_response_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.logout_response_message, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Complete
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.replay_complete = {}

-- Display: Replay Complete
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.replay_complete.display = function(packet, parent, length)
  return "Replay Complete"
end


-- Dissect: Replay Complete
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.replay_complete.dissect = function(buffer, offset, packet, parent)
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.replay_complete.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unit Sequence
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.unit_sequence = {}

-- Size: Unit Sequence
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.unit_sequence.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.unit_number.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sequence_number.size

-- Display: Unit Sequence
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.unit_sequence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Sequence
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.unit_sequence.fields = function(buffer, offset, packet, parent, unit_sequence_index)
  local index = offset

  -- Implicit Unit Sequence Index
  if unit_sequence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.unit_sequence_index, unit_sequence_index)
    iteration:set_generated()
  end

  -- Unit Number: 1 Byte Unsigned Fixed Width Integer
  index, unit_number = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.unit_number.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Sequence
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.unit_sequence.dissect = function(buffer, offset, packet, parent, unit_sequence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.unit_sequence, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.unit_sequence.fields(buffer, offset, packet, parent, unit_sequence_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.unit_sequence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.unit_sequence.fields(buffer, offset, packet, parent, unit_sequence_index)
  end
end

-- Login Response Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_message = {}

-- Calculate size of: Login Response Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_status.size

  index = index + cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_text.size

  index = index + cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_sequence.size

  index = index + cboe_cxaequities_binaryorderentry_boe3_v1_0_20.number_of_units.size

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  return index
end

-- Display: Login Response Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: 1 Byte Ascii String Enum with 8 values
  index, login_response_status = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_status.dissect(buffer, index, packet, parent)

  -- Login Response Text: 60 Byte Ascii String
  index, login_response_text = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_text.dissect(buffer, index, packet, parent)

  -- Client Sequence: 4 Byte Unsigned Fixed Width Integer
  index, client_sequence = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_sequence.dissect(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index, number_of_units = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Unit Sequence
  for unit_sequence_index = 1, number_of_units do
    index, unit_sequence = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.unit_sequence.dissect(buffer, index, packet, parent, unit_sequence_index)
  end

  return index
end

-- Dissect: Login Response Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.login_response_message, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message = {}

-- Dissect: Exchange Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message.dissect = function(buffer, offset, packet, parent, exchange_message_type)
  -- Dissect Login Response Message
  if exchange_message_type == 501 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete
  if exchange_message_type == 502 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.replay_complete.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Response Message
  if exchange_message_type == 503 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if exchange_message_type == 504 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Acknowledgement Au Equities V 1
  if exchange_message_type == 3501 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_acknowledgement_au_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Rejected Au Equities V 1
  if exchange_message_type == 3502 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_rejected_au_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified Au Equities V 1
  if exchange_message_type == 3503 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_modified_au_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Rejected Au Equities V 1
  if exchange_message_type == 3504 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_rejected_au_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Restated Au Equities V 1
  if exchange_message_type == 3505 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_restated_au_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Au Equities V 1
  if exchange_message_type == 3506 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_execution_au_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancelled Au Equities V 1
  if exchange_message_type == 3507 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_cancelled_au_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Rejected Au Equities V 1
  if exchange_message_type == 3508 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_rejected_au_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Restatement Au Equities V 1
  if exchange_message_type == 3509 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.execution_restatement_au_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Acknowledgement Au Equities V 1
  if exchange_message_type == 3510 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_acknowledgement_au_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Rejected Au Equities V 1
  if exchange_message_type == 3511 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_rejected_au_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Correct Au Equities V 1
  if exchange_message_type == 3512 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trade_cancel_correct_au_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified Au Equities V 2
  if exchange_message_type == 3513 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_modified_au_equities_v_2.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Carried Restatement Au Equities V 1
  if exchange_message_type == 3514 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.carried_restatement_au_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Done For Day Au Equities V 1
  if exchange_message_type == 3515 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.done_for_day_au_equities_v_1.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Exchange Message Header
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message_header = {}

-- Size: Exchange Message Header
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message_header.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.start_of_message.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.message_length.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message_type.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.matching_unit.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.reserved_field.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sequence_number.size

-- Display: Exchange Message Header
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Exchange Message Header
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: 2 Byte Unsigned Fixed Width Integer
  index, start_of_message = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.message_length.dissect(buffer, index, packet, parent)

  -- Exchange Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 19 values
  index, exchange_message_type = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message_type.dissect(buffer, index, packet, parent)

  -- Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, matching_unit = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.matching_unit.dissect(buffer, index, packet, parent)

  -- Reserved Field: 1 Byte Unsigned Fixed Width Integer
  index, reserved_field = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.reserved_field.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Exchange Message Header
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.exchange_message_header, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Packet
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_packet = {}

-- Verify required size of Tcp packet
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message_header.size
end

-- Dissect Exchange Packet
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Exchange Message Header: Struct of 6 fields
  index, exchange_message_header = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Exchange Message Type
  local exchange_message_type = buffer(index - 8, 2):le_uint()

  -- Exchange Message: Runtime Type with 19 branches
  index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_message.dissect(buffer, index, packet, parent, exchange_message_type)

  return index
end

-- Purge Orders Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_orders_au_equities_v_1 = {}

-- Calculate size of: Purge Orders Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_orders_au_equities_v_1.size = function(buffer, offset)
  local index = 0

  index = index + cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.size

  index = index + cboe_cxaequities_binaryorderentry_boe3_v1_0_20.mass_cancel_inst.size

  index = index + cboe_cxaequities_binaryorderentry_boe3_v1_0_20.mass_cancel_id.size

  index = index + cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.size

  index = index + cboe_cxaequities_binaryorderentry_boe3_v1_0_20.target_matching_unit.size

  index = index + cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id_cnt.size

  -- Calculate field size from count
  local risk_group_id_count = buffer(offset + index - 1, 1):le_uint()
  index = index + risk_group_id_count * 2

  return index
end

-- Display: Purge Orders Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_orders_au_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Orders Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_orders_au_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Participant Id: Binary
  index, trading_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Inst: Text
  index, mass_cancel_inst = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.mass_cancel_inst.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.dissect(buffer, index, packet, parent)

  -- Target Matching Unit: Binary
  index, target_matching_unit = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.target_matching_unit.dissect(buffer, index, packet, parent)

  -- Risk Group Id Cnt: Binary
  index, risk_group_id_cnt = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Risk Group Id
  for risk_group_id_index = 1, risk_group_id_cnt do
    index, risk_group_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id.dissect(buffer, index, packet, parent, risk_group_id_index)
  end

  return index
end

-- Dissect: Purge Orders Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_orders_au_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.purge_orders_au_equities_v_1, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_orders_au_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_orders_au_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_orders_au_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_order_au_equities_v_1 = {}

-- Size: Cancel Order Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_order_au_equities_v_1.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_cl_ord_id.size

-- Display: Cancel Order Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_order_au_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_order_au_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Participant Id: Binary
  index, trading_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_order_au_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.cancel_order_au_equities_v_1, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_order_au_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_order_au_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_order_au_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Au Equities V 2
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_order_au_equities_v_2 = {}

-- Size: Modify Order Au Equities V 2
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_order_au_equities_v_2.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_orig_on_reject.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_date.size

-- Display: Modify Order Au Equities V 2
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_order_au_equities_v_2.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Au Equities V 2
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_order_au_equities_v_2.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Participant Id: Binary
  index, trading_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.dissect(buffer, index, packet, parent)

  -- Min Qty: Binary
  index, min_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.dissect(buffer, index, packet, parent)

  -- Short Sell Naked Qty: Binary
  index, short_sell_naked_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.dissect(buffer, index, packet, parent)

  -- Short Sell Covered Qty: Binary
  index, short_sell_covered_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.dissect(buffer, index, packet, parent)

  -- Short Sell Long Qty: Binary
  index, short_sell_long_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.dissect(buffer, index, packet, parent)

  -- Cancel Orig On Reject: Alpha
  index, cancel_orig_on_reject = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_orig_on_reject.dissect(buffer, index, packet, parent)

  -- Expire Date: Date
  index, expire_date = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Au Equities V 2
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_order_au_equities_v_2.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.modify_order_au_equities_v_2, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_order_au_equities_v_2.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_order_au_equities_v_2.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_order_au_equities_v_2.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_order_au_equities_v_1 = {}

-- Size: Modify Order Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_order_au_equities_v_1.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_orig_on_reject.size

-- Display: Modify Order Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_order_au_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_order_au_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Participant Id: Binary
  index, trading_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.dissect(buffer, index, packet, parent)

  -- Min Qty: Binary
  index, min_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.dissect(buffer, index, packet, parent)

  -- Short Sell Naked Qty: Binary
  index, short_sell_naked_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.dissect(buffer, index, packet, parent)

  -- Short Sell Covered Qty: Binary
  index, short_sell_covered_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.dissect(buffer, index, packet, parent)

  -- Short Sell Long Qty: Binary
  index, short_sell_long_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.dissect(buffer, index, packet, parent)

  -- Cancel Orig On Reject: Alpha
  index, cancel_orig_on_reject = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_orig_on_reject.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_order_au_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.modify_order_au_equities_v_1, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_order_au_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_order_au_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_order_au_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- New Order Au Equities V 2
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.new_order_au_equities_v_2 = {}

-- Size: New Order Au Equities V 2
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.new_order_au_equities_v_2.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.account.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.ord_type.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.capacity.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.side.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.time_in_force.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_time.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_account.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.undisclosed.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_cross_ref.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_feat.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_key.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.meqse.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.origin_of_trans.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.intermediary_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.directed_wholesale_indicator.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.remove_crossing_from_clearing.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.broker_preferencing.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.routing_inst.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.display_indicator.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_date.size

-- Display: New Order Au Equities V 2
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.new_order_au_equities_v_2.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Au Equities V 2
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.new_order_au_equities_v_2.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Account: Text
  index, account = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.account.dissect(buffer, index, packet, parent)

  -- Trading Participant Id: Binary
  index, trading_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.ord_type.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.dissect(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.capacity.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.side.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.dissect(buffer, index, packet, parent)

  -- Time In Force: Text
  index, time_in_force = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.time_in_force.dissect(buffer, index, packet, parent)

  -- Min Qty: Binary
  index, min_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_time.dissect(buffer, index, packet, parent)

  -- Clearing Participant Id: Binary
  index, clearing_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_participant_id.dissect(buffer, index, packet, parent)

  -- Clearing Account: Alphanumeric
  index, clearing_account = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_account.dissect(buffer, index, packet, parent)

  -- Undisclosed: Text
  index, undisclosed = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.undisclosed.dissect(buffer, index, packet, parent)

  -- Client Cross Ref: Text
  index, client_cross_ref = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_cross_ref.dissect(buffer, index, packet, parent)

  -- Short Sell Naked Qty: Binary
  index, short_sell_naked_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.dissect(buffer, index, packet, parent)

  -- Short Sell Covered Qty: Binary
  index, short_sell_covered_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.dissect(buffer, index, packet, parent)

  -- Short Sell Long Qty: Binary
  index, short_sell_long_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.dissect(buffer, index, packet, parent)

  -- Risk Group Id: Binary
  index, risk_group_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id.dissect(buffer, index, packet, parent)

  -- No Trade Feat: Alpha
  index, no_trade_feat = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_feat.dissect(buffer, index, packet, parent)

  -- No Trade Key: Text
  index, no_trade_key = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_key.dissect(buffer, index, packet, parent)

  -- Meqse: Text
  index, meqse = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.meqse.dissect(buffer, index, packet, parent)

  -- Origin Of Trans: Text
  index, origin_of_trans = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.origin_of_trans.dissect(buffer, index, packet, parent)

  -- Intermediary Id: Text
  index, intermediary_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.intermediary_id.dissect(buffer, index, packet, parent)

  -- Directed Wholesale Indicator: Text
  index, directed_wholesale_indicator = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.directed_wholesale_indicator.dissect(buffer, index, packet, parent)

  -- Remove Crossing From Clearing: Text
  index, remove_crossing_from_clearing = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.remove_crossing_from_clearing.dissect(buffer, index, packet, parent)

  -- Broker Preferencing: Text
  index, broker_preferencing = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.broker_preferencing.dissect(buffer, index, packet, parent)

  -- Routing Inst: Text
  index, routing_inst = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.routing_inst.dissect(buffer, index, packet, parent)

  -- Display Indicator: Text
  index, display_indicator = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.display_indicator.dissect(buffer, index, packet, parent)

  -- Expire Date: Date
  index, expire_date = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Au Equities V 2
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.new_order_au_equities_v_2.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.new_order_au_equities_v_2, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.new_order_au_equities_v_2.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.new_order_au_equities_v_2.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.new_order_au_equities_v_2.fields(buffer, offset, packet, parent)
  end
end

-- New Order Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.new_order_au_equities_v_1 = {}

-- Size: New Order Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.new_order_au_equities_v_1.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.account.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.ord_type.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.capacity.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.side.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.time_in_force.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_time.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_participant_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_account.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.undisclosed.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_cross_ref.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_feat.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_key.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.meqse.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.origin_of_trans.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.intermediary_id.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.directed_wholesale_indicator.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.remove_crossing_from_clearing.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.broker_preferencing.size

-- Display: New Order Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.new_order_au_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.new_order_au_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Account: Text
  index, account = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.account.dissect(buffer, index, packet, parent)

  -- Trading Participant Id: Binary
  index, trading_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.trading_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exec_inst.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.ord_type.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.price.dissect(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.capacity.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.side.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.symbol.dissect(buffer, index, packet, parent)

  -- Time In Force: Text
  index, time_in_force = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.time_in_force.dissect(buffer, index, packet, parent)

  -- Min Qty: Binary
  index, min_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.max_floor.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.expire_time.dissect(buffer, index, packet, parent)

  -- Clearing Participant Id: Binary
  index, clearing_participant_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_participant_id.dissect(buffer, index, packet, parent)

  -- Clearing Account: Alphanumeric
  index, clearing_account = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.clearing_account.dissect(buffer, index, packet, parent)

  -- Undisclosed: Text
  index, undisclosed = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.undisclosed.dissect(buffer, index, packet, parent)

  -- Client Cross Ref: Text
  index, client_cross_ref = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_cross_ref.dissect(buffer, index, packet, parent)

  -- Short Sell Naked Qty: Binary
  index, short_sell_naked_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_naked_qty.dissect(buffer, index, packet, parent)

  -- Short Sell Covered Qty: Binary
  index, short_sell_covered_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_covered_qty.dissect(buffer, index, packet, parent)

  -- Short Sell Long Qty: Binary
  index, short_sell_long_qty = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.short_sell_long_qty.dissect(buffer, index, packet, parent)

  -- Risk Group Id: Binary
  index, risk_group_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.risk_group_id.dissect(buffer, index, packet, parent)

  -- No Trade Feat: Alpha
  index, no_trade_feat = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_feat.dissect(buffer, index, packet, parent)

  -- No Trade Key: Text
  index, no_trade_key = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.no_trade_key.dissect(buffer, index, packet, parent)

  -- Meqse: Text
  index, meqse = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.meqse.dissect(buffer, index, packet, parent)

  -- Origin Of Trans: Text
  index, origin_of_trans = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.origin_of_trans.dissect(buffer, index, packet, parent)

  -- Intermediary Id: Text
  index, intermediary_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.intermediary_id.dissect(buffer, index, packet, parent)

  -- Directed Wholesale Indicator: Text
  index, directed_wholesale_indicator = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.directed_wholesale_indicator.dissect(buffer, index, packet, parent)

  -- Remove Crossing From Clearing: Text
  index, remove_crossing_from_clearing = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.remove_crossing_from_clearing.dissect(buffer, index, packet, parent)

  -- Broker Preferencing: Text
  index, broker_preferencing = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.broker_preferencing.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Au Equities V 1
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.new_order_au_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.new_order_au_equities_v_1, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.new_order_au_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.new_order_au_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.new_order_au_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Client Heartbeat
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_heartbeat = {}

-- Display: Client Heartbeat
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout Request
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_request = {}

-- Display: Logout Request
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Request Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_request_message = {}

-- Calculate size of: Login Request Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_request_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_cxaequities_binaryorderentry_boe3_v1_0_20.session_id.size

  index = index + cboe_cxaequities_binaryorderentry_boe3_v1_0_20.session_sub_id.size

  index = index + cboe_cxaequities_binaryorderentry_boe3_v1_0_20.password.size

  index = index + cboe_cxaequities_binaryorderentry_boe3_v1_0_20.replay_unspecified_unit.size

  index = index + cboe_cxaequities_binaryorderentry_boe3_v1_0_20.number_of_units.size

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  return index
end

-- Display: Login Request Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Ascii String
  index, session_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.session_id.dissect(buffer, index, packet, parent)

  -- Session Sub Id: 4 Byte Ascii String
  index, session_sub_id = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.session_sub_id.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.password.dissect(buffer, index, packet, parent)

  -- Replay Unspecified Unit: 1 Byte Ascii String Enum with 3 values
  index, replay_unspecified_unit = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.replay_unspecified_unit.dissect(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index, number_of_units = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Unit Sequence
  for unit_sequence_index = 1, number_of_units do
    index, unit_sequence = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.unit_sequence.dissect(buffer, index, packet, parent, unit_sequence_index)
  end

  return index
end

-- Dissect: Login Request Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.login_request_message, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Firm Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message = {}

-- Dissect: Firm Message
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message.dissect = function(buffer, offset, packet, parent, firm_message_type)
  -- Dissect Login Request Message
  if firm_message_type == 1 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if firm_message_type == 2 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.logout_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if firm_message_type == 3 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Au Equities V 1
  if firm_message_type == 3001 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.new_order_au_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Au Equities V 2
  if firm_message_type == 3005 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.new_order_au_equities_v_2.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Au Equities V 1
  if firm_message_type == 3002 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_order_au_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Au Equities V 2
  if firm_message_type == 3006 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.modify_order_au_equities_v_2.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Au Equities V 1
  if firm_message_type == 3003 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.cancel_order_au_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Orders Au Equities V 1
  if firm_message_type == 3004 then
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.purge_orders_au_equities_v_1.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Firm Message Header
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message_header = {}

-- Size: Firm Message Header
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message_header.size =
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.start_of_message.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.message_length.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message_type.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.matching_unit.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.reserved_field.size + 
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sequence_number.size

-- Display: Firm Message Header
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Firm Message Header
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: 2 Byte Unsigned Fixed Width Integer
  index, start_of_message = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.message_length.dissect(buffer, index, packet, parent)

  -- Firm Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, firm_message_type = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message_type.dissect(buffer, index, packet, parent)

  -- Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, matching_unit = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.matching_unit.dissect(buffer, index, packet, parent)

  -- Reserved Field: 1 Byte Unsigned Fixed Width Integer
  index, reserved_field = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.reserved_field.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Firm Message Header
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.fields.firm_message_header, buffer(offset, 0))
    local index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Firm Packet
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_packet = {}

-- Verify required size of Tcp packet
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message_header.size
end

-- Dissect Firm Packet
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Firm Message Header: Struct of 6 fields
  index, firm_message_header = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Firm Message Type
  local firm_message_type = buffer(index - 8, 2):le_uint()

  -- Firm Message: Runtime Type with 9 branches
  index = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message.dissect(buffer, index, packet, parent, firm_message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.init()
end

-- Connection roles for Cboe CxaEquities BinaryOrderEntry Boe3 1.0.20: Firm is the initiator, Exchange is the acceptor
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
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.role = function(packet)
  if omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.acceptor_port

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

  if omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.prefs.swap_sides then
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
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Cboe CxaEquities BinaryOrderEntry Boe3 1.0.20
function omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.name

  local role = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.role(packet)
  local dissect = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_packet.dissect
  if role == "initiator" then
    dissect = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_packet.dissect
  end

  local length = buffer:len()
  local index = 0

  -- Dissect each message the segment carries
  while index < length do
    local remaining = length - index

    -- The message length lives in the header: wait for the header before reading it
    if remaining < cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_message_header.size then
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

    local protocol = parent:add(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20, buffer(index, size), omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.description, "("..size.." Bytes)")
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
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_packet.fingerprint = function(buffer)
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

  -- New Order Au Equities V 1
  if firm_message_type == 3001 then
    return true
  end

  -- New Order Au Equities V 2
  if firm_message_type == 3005 then
    return true
  end

  -- Modify Order Au Equities V 1
  if firm_message_type == 3002 then
    return true
  end

  -- Modify Order Au Equities V 2
  if firm_message_type == 3006 then
    return true
  end

  -- Cancel Order Au Equities V 1
  if firm_message_type == 3003 then
    return true
  end

  -- Purge Orders Au Equities V 1
  if firm_message_type == 3004 then
    return true
  end

  return false
end

-- Fingerprint of Exchange Packet: would its message dispatch accept this frame?
cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_packet.fingerprint = function(buffer)
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

  -- Order Acknowledgement Au Equities V 1
  if exchange_message_type == 3501 then
    return true
  end

  -- Order Rejected Au Equities V 1
  if exchange_message_type == 3502 then
    return true
  end

  -- Order Modified Au Equities V 1
  if exchange_message_type == 3503 then
    return true
  end

  -- Modify Rejected Au Equities V 1
  if exchange_message_type == 3504 then
    return true
  end

  -- Order Restated Au Equities V 1
  if exchange_message_type == 3505 then
    return true
  end

  -- Order Execution Au Equities V 1
  if exchange_message_type == 3506 then
    return true
  end

  -- Order Cancelled Au Equities V 1
  if exchange_message_type == 3507 then
    return true
  end

  -- Cancel Rejected Au Equities V 1
  if exchange_message_type == 3508 then
    return true
  end

  -- Execution Restatement Au Equities V 1
  if exchange_message_type == 3509 then
    return true
  end

  -- Purge Acknowledgement Au Equities V 1
  if exchange_message_type == 3510 then
    return true
  end

  -- Purge Rejected Au Equities V 1
  if exchange_message_type == 3511 then
    return true
  end

  -- Trade Cancel Correct Au Equities V 1
  if exchange_message_type == 3512 then
    return true
  end

  -- Order Modified Au Equities V 2
  if exchange_message_type == 3513 then
    return true
  end

  -- Carried Restatement Au Equities V 1
  if exchange_message_type == 3514 then
    return true
  end

  -- Done For Day Au Equities V 1
  if exchange_message_type == 3515 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe CxaEquities BinaryOrderEntry Boe3 1.0.20 (Tcp)
local function omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not cboe_cxaequities_binaryorderentry_boe3_v1_0_20.firm_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20
  omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Cboe CxaEquities BinaryOrderEntry Boe3 1.0.20 (Tcp)
local function omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not cboe_cxaequities_binaryorderentry_boe3_v1_0_20.exchange_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20
  omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Cboe CxaEquities BinaryOrderEntry Boe3 1.0.20 (Tcp): apply the heuristic of the sender's connection role
local function omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20_tcp_heuristic(buffer, packet, parent)
  local role = cboe_cxaequities_binaryorderentry_boe3_v1_0_20.role(packet)
  local initiator = omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20_tcp_initiator_heuristic
  local acceptor = omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  cboe_cxaequities_binaryorderentry_boe3_v1_0_20.swap(packet)

  return false
end

-- Register Heuristics for Cboe CxaEquities BinaryOrderEntry Boe3 1.0.20
omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20:register_heuristic("tcp", omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20_tcp_heuristic)

-- Register Cboe CxaEquities BinaryOrderEntry Boe3 1.0.20 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_cxaequities_binaryorderentry_boe3_v1_0_20)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0.20
--   Since: 1.0.20
--   Date: Friday, May 22, 2026
--   Specification: CXA Equities BOEv3 Specification (2026-05-28).pdf
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
