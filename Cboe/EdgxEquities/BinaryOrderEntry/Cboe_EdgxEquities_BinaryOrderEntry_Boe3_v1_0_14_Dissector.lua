-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe EdgxEquities BinaryOrderEntry Boe3 1.0.14 Protocol
local omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14 = Proto("Omi.Cboe.EdgxEquities.BinaryOrderEntry.Boe3.v1.0.14", "Cboe EdgxEquities BinaryOrderEntry Boe3 1.0.14")

-- Protocol table
local cboe_edgxequities_binaryorderentry_boe3_v1_0_14 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe EdgxEquities BinaryOrderEntry Boe3 1.0.14 Fields
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.access_fee = ProtoField.new("Access Fee", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.accessfee", ftypes.DOUBLE, nil, nil, nil, "Transaction fee or rebate, inclusive of earned tiers, for the trade")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.account = ProtoField.new("Account", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.account", ftypes.STRING, nil, nil, nil, "Reflected back on execution reports associated with this order")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.attributed_quote = ProtoField.new("Attributed Quote", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.attributedquote", ftypes.STRING, nil, nil, nil, "Allows for an order to be attributed to a firm's MPID or optionally RTAL (for retail firms) in Cboe market data feeds")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.base_liquidity_indicator = ProtoField.new("Base Liquidity Indicator", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.baseliquidityindicator", ftypes.STRING, nil, nil, nil, "Indicates whether the trade added or removed liquidity")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.cancel_orig_on_reject = ProtoField.new("Cancel Orig On Reject", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.cancelorigonreject", ftypes.STRING, nil, nil, nil, "Indicates handling of original order on failure to modify")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.cancel_reason = ProtoField.new("Cancel Reason", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.cancelreason", ftypes.STRING, nil, nil, nil, "Single character code for the cancellation reason")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.cancel_reject_reason = ProtoField.new("Cancel Reject Reason", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.cancelrejectreason", ftypes.STRING, nil, nil, nil, "Single character code for the cancellation Rejection reason")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.cancelled_order_count = ProtoField.new("Cancelled Order Count", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.cancelledordercount", ftypes.UINT32, nil, nil, nil, "Number of orders cancelled")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.capacity = ProtoField.new("Capacity", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.capacity", ftypes.STRING, nil, nil, nil, "Order capacity")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.clordid", ftypes.STRING, nil, nil, nil, "ID chosen by the client")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.clearing_account = ProtoField.new("Clearing Account", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.clearingaccount", ftypes.STRING, nil, nil, nil, "Supplemental identifier")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.clearing_firm = ProtoField.new("Clearing Firm", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.clearingfirm", ftypes.STRING, nil, nil, nil, "MPID that will clear the trade")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.client_sequence = ProtoField.new("Client Sequence", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.clientsequence", ftypes.UINT32, nil, nil, nil, "Last inbound (TPH to CFE) message sequence number processed by CFE on this port.")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.cmc_match_qty = ProtoField.new("Cmc Match Qty", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.cmcmatchqty", ftypes.UINT32, nil, nil, nil, "Matched size for CMC matching session")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.cmc_sessions = ProtoField.new("Cmc Sessions", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.cmcsessions", ftypes.STRING, nil, nil, nil, "Specifies the range of CMC sessions the order is eligible to participate in")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.contra_broker = ProtoField.new("Contra Broker", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.contrabroker", ftypes.STRING, nil, nil, nil, "All externally matched (routed) executions will identify the away exchange")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.corrected_price = ProtoField.new("Corrected Price", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.correctedprice", ftypes.DOUBLE, nil, nil, nil, "For trade corrections, this is the new trade price")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.cross_trade_flag = ProtoField.new("Cross Trade Flag", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.crosstradeflag", ftypes.STRING, nil, nil, nil, "Used to set eligibility for Periodic Auctions")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.discretion_amount = ProtoField.new("Discretion Amount", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.discretionamount", ftypes.DOUBLE, nil, nil, nil, "Two implied decimal places (e.g., 10 = $0.10)")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.display_indicator = ProtoField.new("Display Indicator", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.displayindicator", ftypes.STRING, nil, nil, nil, "Re-pricing and display options")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.display_price = ProtoField.new("Display Price", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.displayprice", ftypes.DOUBLE, nil, nil, nil, "Only present when order is fully or partially booked")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.display_range = ProtoField.new("Display Range", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.displayrange", ftypes.UINT32, nil, nil, nil, "Used for random replenishment of reserve orders")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.ex_destination = ProtoField.new("Ex Destination", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.exdestination", ftypes.STRING, nil, nil, nil, "Used to specify the designated away venue for RoutStrategy = DIRC and for RoutingInst = A (Post to Away)")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.exchange_message_type = ProtoField.new("Message Type", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.exchangemessagetype", ftypes.UINT16, nil, nil, nil, "type of message")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.exec_id = ProtoField.new("Exec Id", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.execid", ftypes.UINT64, nil, nil, nil, "Execution ID. Unique across all matching units on a given day")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.exec_inst = ProtoField.new("Exec Inst", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.execinst", ftypes.STRING, nil, nil, nil, "Execution instruction")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.execrefid", ftypes.UINT64, nil, nil, nil, "Refers to the ExecID of the fill being cancelled or corrected")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.expire_time = ProtoField.new("Expire Time", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.expiretime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Required for TimeInForce = 6 orders, specifies the date-time (in UTC) that the order expires")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.expire_time_utc = ProtoField.new("Expire Time", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.expiretime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Required for TimeInForce = 6 orders, specifies the date-time (in UTC) that the order expires")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.ext_exec_inst = ProtoField.new("Ext Exec Inst", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.extexecinst", ftypes.STRING, nil, nil, nil, "Extended execution instruction")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.fee_code = ProtoField.new("Fee Code", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.feecode", ftypes.STRING, nil, nil, nil, "Indicates fee associated with an execution")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.firm_message_type = ProtoField.new("Message Type", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.firmmessagetype", ftypes.UINT16, nil, nil, nil, "type of message")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.in_flight = ProtoField.new("In Flight", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.inflight", ftypes.UINT16, nil, nil, nil, "Total number of messages received by the order handler which have not yet been acknowledged by the matching engine")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.last_px = ProtoField.new("Last Px", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.lastpx", ftypes.DOUBLE, nil, nil, nil, "Price of this fill")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.last_shares = ProtoField.new("Last Shares", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.lastshares", ftypes.UINT32, nil, nil, nil, "Executed share quantity")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.leaves_qty = ProtoField.new("Leaves Qty", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.leavesqty", ftypes.UINT32, nil, nil, nil, "Quantity still open for further execution")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.locate_broker = ProtoField.new("Locate Broker", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.locatebroker", ftypes.STRING, nil, nil, nil, "Used for short sale orders to identify the broker that the short seller has identified as the source from which they will borrow the securities they are selling short")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.locate_reqd = ProtoField.new("Locate Reqd", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.locatereqd", ftypes.STRING, nil, nil, nil, "Optional, only processed for Sell Short and Sell Short Exempt orders")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.loginresponsestatus", ftypes.STRING, nil, nil, nil, "Accepted, or the reason for the rejection.")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.login_response_text = ProtoField.new("Login Response Text", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.loginresponsetext", ftypes.STRING, nil, nil, nil, "Human-readable text with additional information about the reason for rejection. ASCII NUL (0x00) filled on the right, if necessary.")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.logout_reason = ProtoField.new("Logout Reason", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.logoutreason", ftypes.STRING, nil, nil, nil, "reason for the logout")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.logout_reason_text = ProtoField.new("Logout Reason Text", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.logoutreasontext", ftypes.STRING, nil, nil, nil, "Human-readable text with additional information about the reason for logout")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.mass_cancel_id = ProtoField.new("Mass Cancel Id", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.masscancelid", ftypes.STRING, nil, nil, nil, "Copied from the MassCancelID passed on the original Purge Orders message")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.mass_cancel_inst = ProtoField.new("Mass Cancel Inst", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.masscancelinst", ftypes.STRING, nil, nil, nil, "Used for specification of Purge Orders message functionality")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.matching_unit = ProtoField.new("Matching Unit", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.matchingunit", ftypes.UINT8, nil, nil, nil, "The matching unit which created this message. Matching units in BOE correspond to matching units on Multicast PITCH")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.max_floor = ProtoField.new("Max Floor", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.maxfloor", ftypes.UINT32, nil, nil, nil, "Portion of OrderQty to display")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.message_length = ProtoField.new("Message Length", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.messagelength", ftypes.UINT16, nil, nil, nil, "Number of bytes for the message, including this field but not including the two bytes of the StartOfMessage field")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.min_qty = ProtoField.new("Min Qty", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.minqty", ftypes.UINT32, nil, nil, nil, "Minimum fill quantity for non-routable hidden or non-routable IOC orders which only interact with liquidity on the target Cboe Exchange")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.modify_reject_reason = ProtoField.new("Modify Reject Reason", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.modifyrejectreason", ftypes.STRING, nil, nil, nil, "Single character code for the Modify Rejection reason")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.number_of_units = ProtoField.new("Number Of Units", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.numberofunits", ftypes.UINT8, nil, nil, nil, "The number (possibly 0) of unit/sequence pairs to follow, one per unit from which the TPH has received messages over this port. The value must be 0 or 1 since all BOEv3 ports are associated to a single unit.")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.ord_type = ProtoField.new("Ord Type", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.ordtype", ftypes.STRING, nil, nil, nil, "Order type")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.order_id = ProtoField.new("Order Id", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.orderid", ftypes.UINT64, nil, nil, nil, "Order identifier supplied by Cboe")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.order_qty = ProtoField.new("Order Qty", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.orderqty", ftypes.UINT32, nil, nil, nil, "Order quantity")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.orderrejectreason", ftypes.STRING, nil, nil, nil, "Single character code for an order rejection reason")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.order_restatement_reason = ProtoField.new("Order Restatement Reason", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.orderrestatementreason", ftypes.STRING, nil, nil, nil, "The reason for this Order Restated message")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.origclordid", ftypes.STRING, nil, nil, nil, "Corresponds to OrigClOrdID (41) in Cboe FIX")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.orig_time = ProtoField.new("Orig Time", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.origtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The date and time of the original trade, in GMT")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.orig_time_utc = ProtoField.new("Orig Time", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.origtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The date and time of the original trade, in GMT")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.password = ProtoField.new("Password", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.password", ftypes.STRING, nil, nil, nil, "The password associated with the SessionId and SessionSubId.")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.peg_difference = ProtoField.new("Peg Difference", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.pegdifference", ftypes.DOUBLE, nil, nil, nil, "Optional signed value added to the result of peg calculation")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.prevent_match = ProtoField.new("Prevent Match", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.preventmatch", ftypes.STRING, nil, nil, nil, "Three characters: MTP Modifier, Unique ID Level and Trading Group ID")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.price = ProtoField.new("Price", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.price", ftypes.DOUBLE, nil, nil, nil, "Limit price")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.purge_reject_reason = ProtoField.new("Purge Reject Reason", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.purgerejectreason", ftypes.STRING, nil, nil, nil, "Single character code for a purge rejection reason")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.replay_instruction = ProtoField.new("Replay Instruction", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.replayinstruction", ftypes.STRING, nil, nil, nil, "Controls replay behavior for unknown units.")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.reserved_field = ProtoField.new("Reserved Field", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.reservedfield", ftypes.UINT8, nil, nil, nil, "Reserved header field")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.risk_group_id = ProtoField.new("Risk Group Id", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.riskgroupid", ftypes.UINT16, nil, nil, nil, "Used to group orders for use in Purge Orders messages where multiple orders can be cancelled by specifying a list of RiskGroupIDs")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.risk_group_id_cnt = ProtoField.new("Risk Group Id Cnt", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.riskgroupidcnt", ftypes.UINT8, nil, nil, nil, "Number of repeating RiskGroupID values included in this message")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.risk_reset = ProtoField.new("Risk Reset", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.riskreset", ftypes.STRING, nil, nil, nil, "For use by customers to release MPID, symbol or RiskGroupID level lockout conditions resulting from self-imposed lockouts issued via Purge Orders messages")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.risk_reset_result = ProtoField.new("Risk Reset Result", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.riskresetresult", ftypes.STRING, nil, nil, nil, "Result of a Reset Risk message")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.risk_status_id = ProtoField.new("Risk Status Id", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.riskstatusid", ftypes.STRING, nil, nil, nil, "User defined identifier of a Reset Risk message")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.rout_strategy = ProtoField.new("Rout Strategy", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.routstrategy", ftypes.STRING, nil, nil, nil, "Routing strategy")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.route_delivery_method = ProtoField.new("Route Delivery Method", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.routedeliverymethod", ftypes.STRING)
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.routing_inst = ProtoField.new("Routing Inst", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.routinginst", ftypes.STRING, nil, nil, nil, "Routing instruction")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.secondaryorderid", ftypes.UINT64, nil, nil, nil, "Denotes an alternative OrderID which is present on Cboe market data feeds")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.sequencenumber", ftypes.UINT32, nil, nil, nil, "Last Received Sequence number for the unit.")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.session_id = ProtoField.new("Session Id", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.sessionid", ftypes.STRING, nil, nil, nil, "Session Id as supplied by CFE")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.sessionsubid", ftypes.STRING, nil, nil, nil, "Session Sub Id as supplied by CFE")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.short_account = ProtoField.new("Short Account", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.shortaccount", ftypes.STRING, nil, nil, nil, "See Account")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.short_routing_inst = ProtoField.new("Short Routing Inst", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.shortroutinginst", ftypes.STRING, nil, nil, nil, "See RoutingInst, first character only")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.side = ProtoField.new("Side", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.side", ftypes.STRING, nil, nil, nil, "Side of the order")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.start_of_message = ProtoField.new("Start Of Message", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.startofmessage", ftypes.UINT16, nil, nil, nil, "B0 E3 (58288)")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.step_up_amount = ProtoField.new("Step Up Amount", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.stepupamount", ftypes.DOUBLE, nil, nil, nil, "StepUpAmount is implicitly added to bid prices and subtracted from offer prices for Enhanced RPI (Retail Price Improvement) orders")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.stop_px = ProtoField.new("Stop Px", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.stoppx", ftypes.DOUBLE, nil, nil, nil, "Stop price")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.sub_liquidity_indicator = ProtoField.new("Sub Liquidity Indicator", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.subliquidityindicator", ftypes.STRING, nil, nil, nil, "Additional information about an execution")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.symbol = ProtoField.new("Symbol", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.symbol", ftypes.STRING, nil, nil, nil, "Entire Cboe format")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.target_matching_unit = ProtoField.new("Target Matching Unit", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.targetmatchingunit", ftypes.UINT8, nil, nil, nil, "Matching unit number the Purge Orders message will be sent toward")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.text = ProtoField.new("Text", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.text", ftypes.STRING, nil, nil, nil, "Human readable text with more information about the reject reason")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.time_in_force = ProtoField.new("Time In Force", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.timeinforce", ftypes.STRING)
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.transactiontime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL)
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.transaction_time_utc = ProtoField.new("Transaction Time", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.transactiontime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.unit_number = ProtoField.new("Unit Number", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.unitnumber", ftypes.UINT8, nil, nil, nil, "A unit number.")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.unit_sequence = ProtoField.new("Unit Sequence", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.unitsequence", ftypes.STRING)
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.working_price = ProtoField.new("Working Price", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.workingprice", ftypes.DOUBLE, nil, nil, nil, "If price had to be adjusted to a less aggressive value for some reason, then the adjusted price will be reported here, otherwise equals Price")

-- Cboe EdgxEquities BinaryOrderEntry Boe3 1.0.14 Framing
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.exchange_message_header = ProtoField.new("Message Header", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.exchangemessageheader", ftypes.STRING, nil, nil, nil, "Message header of a packet sent by the exchange")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.exchange_packet = ProtoField.new("Packet", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.exchangepacket", ftypes.STRING, nil, nil, nil, "Binary Order Entry Tcp Packet sent by the exchange")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.firm_message_header = ProtoField.new("Message Header", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.firmmessageheader", ftypes.STRING, nil, nil, nil, "Message header of a packet sent by the firm")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.firm_packet = ProtoField.new("Packet", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.firmpacket", ftypes.STRING, nil, nil, nil, "Binary Order Entry Tcp Packet sent by the firm")

-- Cboe EdgxEquities BinaryOrderEntry 1.0.14 Application Messages
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.cancel_order_us_equities_v_1 = ProtoField.new("Cancel Order Us Equities V 1", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.cancelorderusequitiesv1", ftypes.STRING, nil, nil, nil, "Request to cancel a single order")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.cancel_rejected_us_equities_v_1 = ProtoField.new("Cancel Rejected Us Equities V 1", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.cancelrejectedusequitiesv1", ftypes.STRING, nil, nil, nil, "A Cancel Rejected message is sent in response to a Cancel Order message to indicate that the cancellation cannot occur")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.modify_order_us_equities_v_1 = ProtoField.new("Modify Order Us Equities V 1", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.modifyorderusequitiesv1", ftypes.STRING, nil, nil, nil, "Request to modify an order")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.modify_rejected_us_equities_v_1 = ProtoField.new("Modify Rejected Us Equities V 1", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.modifyrejectedusequitiesv1", ftypes.STRING, nil, nil, nil, "User Modify Rejected messages are sent in response to a Modify Order message for an order which cannot be modified")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.new_order_short_us_equities_v_1 = ProtoField.new("New Order Short Us Equities V 1", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.newordershortusequitiesv1", ftypes.STRING, nil, nil, nil, "Submission of a new order to Cboe")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.new_order_us_equities_v_1 = ProtoField.new("New Order Us Equities V 1", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.neworderusequitiesv1", ftypes.STRING, nil, nil, nil, "Submission of a new order to Cboe")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.order_acknowledgement_us_equities_v_1 = ProtoField.new("Order Acknowledgement Us Equities V 1", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.orderacknowledgementusequitiesv1", ftypes.STRING, nil, nil, nil, "Order Acknowledgment messages are sent in response to New Order messages")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.order_cancelled_us_equities_v_1 = ProtoField.new("Order Cancelled Us Equities V 1", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.ordercancelledusequitiesv1", ftypes.STRING, nil, nil, nil, "This message indicates an order has been cancelled")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.order_execution_us_equities_v_1 = ProtoField.new("Order Execution Us Equities V 1", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.orderexecutionusequitiesv1", ftypes.STRING, nil, nil, nil, "An Order Execution message is sent for each fill on an order")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.order_modified_us_equities_v_1 = ProtoField.new("Order Modified Us Equities V 1", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.ordermodifiedusequitiesv1", ftypes.STRING, nil, nil, nil, "Order Modified messages are sent in response to a Modify Request message to indicate that the order has been successfully modified")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.order_rejected_us_equities_v_1 = ProtoField.new("Order Rejected Us Equities V 1", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.orderrejectedusequitiesv1", ftypes.STRING, nil, nil, nil, "Order Rejected messages are sent in response to a New Order message which must be rejected")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.order_restated_us_equities_v_1 = ProtoField.new("Order Restated Us Equities V 1", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.orderrestatedusequitiesv1", ftypes.STRING, nil, nil, nil, "Order Restated messages are sent to inform the Member that an order has been asynchronously modified for some reason without an explicit Modify Order message request having been sent")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.purge_acknowledgement_us_equities_v_1 = ProtoField.new("Purge Acknowledgement Us Equities V 1", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.purgeacknowledgementusequitiesv1", ftypes.STRING, nil, nil, nil, "A Purge Acknowledgment message is an unsequenced message sent when a Purge Orders message requesting an order purge has completed canceling all individual orders")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.purge_orders_us_equities_v_1 = ProtoField.new("Purge Orders Us Equities V 1", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.purgeordersusequitiesv1", ftypes.STRING, nil, nil, nil, "Request to cancel a group of orders across all of the firm's sessions")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.purge_rejected_us_equities_v_1 = ProtoField.new("Purge Rejected Us Equities V 1", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.purgerejectedusequitiesv1", ftypes.STRING, nil, nil, nil, "A Purge Rejected message is sent in response to a Purge Orders message to indicate that the mass cancellation cannot occur")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.reset_risk_acknowledgement_us_equities_v_1 = ProtoField.new("Reset Risk Acknowledgement Us Equities V 1", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.resetriskacknowledgementusequitiesv1", ftypes.STRING, nil, nil, nil, "Response to a Reset Risk message request")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.reset_risk_us_equities_v_1 = ProtoField.new("Reset Risk Us Equities V 1", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.resetriskusequitiesv1", ftypes.STRING, nil, nil, nil, "Reset or release Firm, Symbol, or Risk Group ID level lockout conditions resulting from risk profile trips or self-imposed lockouts issued via Purge Orders messages")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.trade_cancel_correct_us_equities_v_1 = ProtoField.new("Trade Cancel Correct Us Equities V 1", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.tradecancelcorrectusequitiesv1", ftypes.STRING, nil, nil, nil, "Used to relay a trade which has been cancelled (busted) or corrected (price change only)")

-- Cboe EdgxEquities BinaryOrderEntry 1.0.14 Session Messages
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.clientheartbeat", ftypes.BYTES, nil, nil, nil, "Boe3 client sends a heartbeat to indicate the connection is alive; carries no payload")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.login_request_message = ProtoField.new("Login Request Message", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.loginrequestmessage", ftypes.STRING, nil, nil, nil, "A Login Request message must be sent as the first message upon connection")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.loginresponsemessage", ftypes.STRING, nil, nil, nil, "A Login Response message is sent in response to a Login Request message")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.logout_request = ProtoField.new("Logout Request", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.logoutrequest", ftypes.BYTES, nil, nil, nil, "Boe3 client requests session logout; server completes any in-flight messages then closes. Carries no payload")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.logout_response_message = ProtoField.new("Logout Response Message", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.logoutresponsemessage", ftypes.STRING, nil, nil, nil, "A Logout Response is usually sent in response to a Logout Request")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.replay_complete = ProtoField.new("Replay Complete", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.replaycomplete", ftypes.BYTES, nil, nil, nil, "Boe3 server signals that the replay of missed messages is complete; carries no payload")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.serverheartbeat", ftypes.BYTES, nil, nil, nil, "Boe3 server sends a heartbeat to indicate the connection is alive; carries no payload")

-- Cboe EdgxEquities BinaryOrderEntry Boe3 1.0.14 Generated Fields
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.risk_group_id_index = ProtoField.new("Risk Group Id Index", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.riskgroupidindex", ftypes.UINT16)
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.unit_sequence_index = ProtoField.new("Unit Sequence Index", "cboe.edgxequities.binaryorderentry.boe3.v1.0.14.unitsequenceindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Cboe EdgxEquities BinaryOrderEntry Boe3 1.0.14 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.absolute_time_base = 0

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

-- Cboe EdgxEquities BinaryOrderEntry Boe3 1.0.14 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true
show.session_messages = true
show.indexes = true

-- Register Cboe EdgxEquities BinaryOrderEntry Boe3 1.0.14 Show Options
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.show_application_messages then
    show.application_messages = omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.show_headers then
    show.headers = omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.show_headers
  end
  if show.session_messages ~= omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.show_session_messages then
    show.session_messages = omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.show_session_messages
  end
  if show.structs ~= omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.show_structs then
    show.structs = omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.show_indexes then
    show.indexes = omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.show_indexes
  end
  if cboe_edgxequities_binaryorderentry_boe3_v1_0_14.absolute_time_base ~= omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.absolute_time_base then
    cboe_edgxequities_binaryorderentry_boe3_v1_0_14.absolute_time_base = omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Cboe EdgxEquities BinaryOrderEntry Boe3 1.0.14 Fields
-----------------------------------------------------------------------

-- Access Fee
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.access_fee = {}

-- Size: Access Fee
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.access_fee.size = 8

-- Display: Access Fee
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.access_fee.display = function(value)
  return "Access Fee: "..value
end

-- Translate: Access Fee
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.access_fee.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Access Fee
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.access_fee.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.access_fee.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.access_fee.translate(raw)
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.access_fee.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.access_fee, range, value, display)

  return offset + length, value
end

-- Account
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.account = {}

-- Size: Account
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.account.size = 16

-- Display: Account
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.account.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.account, range, value, display)

  return offset + length, value
end

-- Attributed Quote
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.attributed_quote = {}

-- Size: Attributed Quote
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.attributed_quote.size = 1

-- Display: Attributed Quote
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.attributed_quote.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Attributed Quote: No Value"
  end

  if value == "N" then
    return "Attributed Quote: Do Not Attribute Firm Mpid To This Order (N)"
  end
  if value == "Y" then
    return "Attributed Quote: Attribute Firm Mpid To This Order (Y)"
  end
  if value == "R" then
    return "Attributed Quote: Attribute Rtal To This Order (R)"
  end

  return "Attributed Quote: Unknown("..value..")"
end

-- Dissect: Attributed Quote
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.attributed_quote.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.attributed_quote.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.attributed_quote.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.attributed_quote, range, value, display)

  return offset + length, value
end

-- Base Liquidity Indicator
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.base_liquidity_indicator = {}

-- Size: Base Liquidity Indicator
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.base_liquidity_indicator.size = 1

-- Display: Base Liquidity Indicator
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.base_liquidity_indicator.display = function(value)
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
  if value == "X" then
    return "Base Liquidity Indicator: Routed To Another Market (X)"
  end
  if value == "C" then
    return "Base Liquidity Indicator: Auction Uncrossing (C)"
  end
  if value == "W" then
    return "Base Liquidity Indicator: Waiting For Execution At Pre Market Time (W)"
  end

  return "Base Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Base Liquidity Indicator
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.base_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.base_liquidity_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.base_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.base_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Cancel Orig On Reject
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_orig_on_reject = {}

-- Size: Cancel Orig On Reject
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_orig_on_reject.size = 1

-- Display: Cancel Orig On Reject
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_orig_on_reject.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Cancel Orig On Reject: No Value"
  end

  if value == "N" then
    return "Cancel Orig On Reject: Leave Original Order Alone (N)"
  end
  if value == "Y" then
    return "Cancel Orig On Reject: Cancel Original Order If Modification Fails (Y)"
  end

  return "Cancel Orig On Reject: Unknown("..value..")"
end

-- Dissect: Cancel Orig On Reject
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_orig_on_reject.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_orig_on_reject.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_orig_on_reject.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.cancel_orig_on_reject, range, value, display)

  return offset + length, value
end

-- Cancel Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_reason = {}

-- Size: Cancel Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_reason.size = 1

-- Display: Cancel Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Cancel Reason: No Value"
  end

  if value == "A" then
    return "Cancel Reason: Admin (A)"
  end
  if value == "C" then
    return "Cancel Reason: Capacity Undefined (C)"
  end
  if value == "D" then
    return "Cancel Reason: Duplicate Identifier Eg Cl Ord Id (D)"
  end
  if value == "E" then
    return "Cancel Reason: Size Reduction Due To Swp Restatement (E)"
  end
  if value == "F" then
    return "Cancel Reason: Failed To Quote (F)"
  end
  if value == "H" then
    return "Cancel Reason: Halted (H)"
  end
  if value == "I" then
    return "Cancel Reason: Incorrect Data Center (I)"
  end
  if value == "J" then
    return "Cancel Reason: Too Late To Cancel (J)"
  end
  if value == "K" then
    return "Cancel Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "L" then
    return "Cancel Reason: Order Would Lock Or Cross Nbbo (L)"
  end
  if value == "M" then
    return "Cancel Reason: Order Size Exceeded (M)"
  end
  if value == "N" then
    return "Cancel Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Cancel Reason: Cl Ord Id Doesnt Match A Known Order (O)"
  end
  if value == "P" then
    return "Cancel Reason: Cant Modify An Order That Is Pending Fill (P)"
  end
  if value == "Q" then
    return "Cancel Reason: Waiting For First Trade (Q)"
  end
  if value == "R" then
    return "Cancel Reason: Routing Unavailable (R)"
  end
  if value == "S" then
    return "Cancel Reason: Short Sale Price Violation (S)"
  end
  if value == "T" then
    return "Cancel Reason: Fill Would Trade Through The Nbbo (T)"
  end
  if value == "U" then
    return "Cancel Reason: User Requested (U)"
  end
  if value == "V" then
    return "Cancel Reason: Would Wash (V)"
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
  if value == "f" then
    return "Cancel Reason: Risk Management Mpid Or Risk Group Id Level (f)"
  end
  if value == "m" then
    return "Cancel Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "o" then
    return "Cancel Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "r" then
    return "Cancel Reason: Reserve Reload (r)"
  end
  if value == "s" then
    return "Cancel Reason: Risk Management Symbol Level (s)"
  end
  if value == "u" then
    return "Cancel Reason: Limit Up Limit Down Luld (u)"
  end
  if value == "w" then
    return "Cancel Reason: Would Remove On Unslide (w)"
  end
  if value == "x" then
    return "Cancel Reason: Crossed Market (x)"
  end
  if value == "y" then
    return "Cancel Reason: Order Received By Cboe During Replay (y)"
  end
  if value == "z" then
    return "Cancel Reason: Session End (z)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cancel Reject Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_reject_reason = {}

-- Size: Cancel Reject Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_reject_reason.size = 1

-- Display: Cancel Reject Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_reject_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Cancel Reject Reason: No Value"
  end

  if value == "A" then
    return "Cancel Reject Reason: Admin (A)"
  end
  if value == "C" then
    return "Cancel Reject Reason: Capacity Undefined (C)"
  end
  if value == "D" then
    return "Cancel Reject Reason: Duplicate Identifier Eg Cl Ord Id (D)"
  end
  if value == "E" then
    return "Cancel Reject Reason: Size Reduction Due To Swp Restatement (E)"
  end
  if value == "F" then
    return "Cancel Reject Reason: Failed To Quote (F)"
  end
  if value == "H" then
    return "Cancel Reject Reason: Halted (H)"
  end
  if value == "I" then
    return "Cancel Reject Reason: Incorrect Data Center (I)"
  end
  if value == "J" then
    return "Cancel Reject Reason: Too Late To Cancel (J)"
  end
  if value == "K" then
    return "Cancel Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "L" then
    return "Cancel Reject Reason: Order Would Lock Or Cross Nbbo (L)"
  end
  if value == "M" then
    return "Cancel Reject Reason: Order Size Exceeded (M)"
  end
  if value == "N" then
    return "Cancel Reject Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Cancel Reject Reason: Cl Ord Id Doesnt Match A Known Order (O)"
  end
  if value == "P" then
    return "Cancel Reject Reason: Cant Modify An Order That Is Pending Fill (P)"
  end
  if value == "Q" then
    return "Cancel Reject Reason: Waiting For First Trade (Q)"
  end
  if value == "R" then
    return "Cancel Reject Reason: Routing Unavailable (R)"
  end
  if value == "S" then
    return "Cancel Reject Reason: Short Sale Price Violation (S)"
  end
  if value == "T" then
    return "Cancel Reject Reason: Fill Would Trade Through The Nbbo (T)"
  end
  if value == "U" then
    return "Cancel Reject Reason: User Requested (U)"
  end
  if value == "V" then
    return "Cancel Reject Reason: Would Wash (V)"
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
  if value == "f" then
    return "Cancel Reject Reason: Risk Management Mpid Or Risk Group Id Level (f)"
  end
  if value == "m" then
    return "Cancel Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "o" then
    return "Cancel Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "r" then
    return "Cancel Reject Reason: Reserve Reload (r)"
  end
  if value == "s" then
    return "Cancel Reject Reason: Risk Management Symbol Level (s)"
  end
  if value == "u" then
    return "Cancel Reject Reason: Limit Up Limit Down Luld (u)"
  end
  if value == "w" then
    return "Cancel Reject Reason: Would Remove On Unslide (w)"
  end
  if value == "x" then
    return "Cancel Reject Reason: Crossed Market (x)"
  end
  if value == "y" then
    return "Cancel Reject Reason: Order Received By Cboe During Replay (y)"
  end
  if value == "z" then
    return "Cancel Reject Reason: Session End (z)"
  end

  return "Cancel Reject Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reject Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_reject_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Cancelled Order Count
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancelled_order_count = {}

-- Size: Cancelled Order Count
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancelled_order_count.size = 4

-- Display: Cancelled Order Count
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancelled_order_count.display = function(value)
  return "Cancelled Order Count: "..value
end

-- Dissect: Cancelled Order Count
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancelled_order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancelled_order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancelled_order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.cancelled_order_count, range, value, display)

  return offset + length, value
end

-- Capacity
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.capacity = {}

-- Size: Capacity
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.capacity.size = 1

-- Display: Capacity
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.capacity.display = function(value)
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
  if value == "R" then
    return "Capacity: Riskless Principal (R)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.capacity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.capacity.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.capacity, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id = {}

-- Size: Cl Ord Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.size = 20

-- Display: Cl Ord Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord Id: No Value"
  end

  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Clearing Account
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_account = {}

-- Size: Clearing Account
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_account.size = 4

-- Display: Clearing Account
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account: No Value"
  end

  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_account.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Clearing Firm
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm = {}

-- Size: Clearing Firm
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.size = 4

-- Display: Clearing Firm
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm: No Value"
  end

  return "Clearing Firm: "..value
end

-- Dissect: Clearing Firm
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.clearing_firm, range, value, display)

  return offset + length, value
end

-- Client Sequence
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.client_sequence = {}

-- Size: Client Sequence
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.client_sequence.size = 4

-- Display: Client Sequence
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.client_sequence.display = function(value)
  return "Client Sequence: "..value
end

-- Dissect: Client Sequence
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.client_sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.client_sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.client_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.client_sequence, range, value, display)

  return offset + length, value
end

-- Cmc Match Qty
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cmc_match_qty = {}

-- Size: Cmc Match Qty
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cmc_match_qty.size = 4

-- Display: Cmc Match Qty
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cmc_match_qty.display = function(value)
  return "Cmc Match Qty: "..value
end

-- Dissect: Cmc Match Qty
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cmc_match_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cmc_match_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cmc_match_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.cmc_match_qty, range, value, display)

  return offset + length, value
end

-- Cmc Sessions
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cmc_sessions = {}

-- Size: Cmc Sessions
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cmc_sessions.size = 2

-- Display: Cmc Sessions
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cmc_sessions.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cmc Sessions: No Value"
  end

  return "Cmc Sessions: "..value
end

-- Dissect: Cmc Sessions
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cmc_sessions.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cmc_sessions.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cmc_sessions.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.cmc_sessions, range, value, display)

  return offset + length, value
end

-- Contra Broker
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.contra_broker = {}

-- Size: Contra Broker
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.contra_broker.size = 4

-- Display: Contra Broker
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.contra_broker.labels = {
  ["AMEX"] = "Contra Broker: Routed To Nyse American (AMEX)",
  ["ARCA"] = "Contra Broker: Routed To Nyse Arca (ARCA)",
  ["BEX"] = "Contra Broker: Routed To Nasdaq Texas (BEX)",
  ["CHX"] = "Contra Broker: Routed To Nyse Texas (CHX)",
  ["ICRS"] = "Contra Broker: Routed To Intelligent Cross Pending Approval (ICRS)",
  ["IEX"] = "Contra Broker: Routed To Investors Exchange (IEX)",
  ["INET"] = "Contra Broker: Routed To Nasdaq (INET)",
  ["LTSE"] = "Contra Broker: Routed To Long Term Stock Exchange (LTSE)",
  ["MEMX"] = "Contra Broker: Routed To Members Exchange (MEMX)",
  ["NYSE"] = "Contra Broker: Routed To Nyse (NYSE)",
  ["PERL"] = "Contra Broker: Routed To Miax Pearl Exchange (PERL)",
  ["PSX"] = "Contra Broker: Routed To Nasdaq Psx (PSX)",
  ["NSX"] = "Contra Broker: Routed To Nyse National (NSX)",
  ["DRT"] = "Contra Broker: Routed To Drt Pool (DRT)",
  ["TFXE"] = "Contra Broker: Routed To 24 X (TFXE)",
  ["TXSE"] = "Contra Broker: Routed To Texas Stock Exchange (TXSE)",
  ["BATS"] = "Contra Broker: Routed To Cboe Bzx Exchange (BATS)",
  ["BYXX"] = "Contra Broker: Routed To Cboe Byx Exchange (BYXX)",
  ["EDGA"] = "Contra Broker: Routed To Cboe Edga Exchange (EDGA)",
  ["EDGX"] = "Contra Broker: Routed To Cboe Edgx Exchange (EDGX)",
}

cboe_edgxequities_binaryorderentry_boe3_v1_0_14.contra_broker.display = function(value)
  return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.contra_broker.labels[value] or "Contra Broker: Unknown("..value..")"
end

-- Dissect: Contra Broker
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.contra_broker.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.contra_broker.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.contra_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.contra_broker, range, value, display)

  return offset + length, value
end

-- Corrected Price
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.corrected_price = {}

-- Size: Corrected Price
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.corrected_price.size = 8

-- Display: Corrected Price
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.corrected_price.display = function(value)
  return "Corrected Price: "..value
end

-- Translate: Corrected Price
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.corrected_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Corrected Price
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.corrected_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.corrected_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.corrected_price.translate(raw)
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.corrected_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.corrected_price, range, value, display)

  return offset + length, value
end

-- Cross Trade Flag
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cross_trade_flag = {}

-- Size: Cross Trade Flag
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cross_trade_flag.size = 1

-- Display: Cross Trade Flag
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cross_trade_flag.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Cross Trade Flag: No Value"
  end

  if value == "0" then
    return "Cross Trade Flag: None To Override Port Setting As Necessary (0)"
  end
  if value == "1" then
    return "Cross Trade Flag: Periodic Auction Only (1)"
  end
  if value == "2" then
    return "Cross Trade Flag: Periodic Auction Eligible (2)"
  end

  return "Cross Trade Flag: Unknown("..value..")"
end

-- Dissect: Cross Trade Flag
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cross_trade_flag.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cross_trade_flag.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cross_trade_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.cross_trade_flag, range, value, display)

  return offset + length, value
end

-- Discretion Amount
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.discretion_amount = {}

-- Size: Discretion Amount
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.discretion_amount.size = 2

-- Display: Discretion Amount
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.discretion_amount.display = function(value)
  return "Discretion Amount: "..value
end

-- Translate: Discretion Amount
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.discretion_amount.translate = function(raw)
  return raw/100
end

-- Dissect: Discretion Amount
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.discretion_amount.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.discretion_amount.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.discretion_amount.translate(raw)
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.discretion_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.discretion_amount, range, value, display)

  return offset + length, value
end

-- Display Indicator
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_indicator = {}

-- Size: Display Indicator
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_indicator.size = 1

-- Display: Display Indicator
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Display Indicator: No Value"
  end

  if value == "V" then
    return "Display Indicator: Default (V)"
  end
  if value == "P" then
    return "Display Indicator: Price Adjust (P)"
  end
  if value == "m" then
    return "Display Indicator: Multiple Price Adjust (m)"
  end
  if value == "R" then
    return "Display Indicator: Cancel Back The Order If It Cannot Be Booked And Displayed Without Adjustment (R)"
  end
  if value == "r" then
    return "Display Indicator: Hidden Cancel Back The Order If It Cannot Be Booked Without Adjustment (r)"
  end
  if value == "S" then
    return "Display Indicator: Display Price Sliding (S)"
  end
  if value == "L" then
    return "Display Indicator: Display Price Sliding But Cancel Back If Order Crosses The Nbbo On Entry (L)"
  end
  if value == "M" then
    return "Display Indicator: Multiple Display Price Sliding (M)"
  end
  if value == "h" then
    return "Display Indicator: Hidden Multiple Price Slide (h)"
  end
  if value == "v" then
    return "Display Indicator: Visible (v)"
  end
  if value == "I" then
    return "Display Indicator: Invisible (I)"
  end
  if value == "N" then
    return "Display Indicator: No Rescrape At Limit (N)"
  end

  return "Display Indicator: Unknown("..value..")"
end

-- Dissect: Display Indicator
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.display_indicator, range, value, display)

  return offset + length, value
end

-- Display Price
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_price = {}

-- Size: Display Price
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_price.size = 8

-- Display: Display Price
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_price.display = function(value)
  return "Display Price: "..value
end

-- Translate: Display Price
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Display Price
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_price.translate(raw)
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.display_price, range, value, display)

  return offset + length, value
end

-- Display Range
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_range = {}

-- Size: Display Range
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_range.size = 4

-- Display: Display Range
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_range.display = function(value)
  return "Display Range: "..value
end

-- Dissect: Display Range
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_range.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_range.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.display_range, range, value, display)

  return offset + length, value
end

-- Ex Destination
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ex_destination = {}

-- Size: Ex Destination
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ex_destination.size = 1

-- Display: Ex Destination
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ex_destination.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ex Destination: No Value"
  end

  if value == "A" then
    return "Ex Destination: Nyse American (A)"
  end
  if value == "B" then
    return "Ex Destination: Nasdaq Texas (B)"
  end
  if value == "C" then
    return "Ex Destination: Nyse National (C)"
  end
  if value == "F" then
    return "Ex Destination: Texas Stock Exchange (F)"
  end
  if value == "G" then
    return "Ex Destination: 24X (G)"
  end
  if value == "H" then
    return "Ex Destination: Miax Pearl (H)"
  end
  if value == "I" then
    return "Ex Destination: Investors Exchange (I)"
  end
  if value == "J" then
    return "Ex Destination: Edga (J)"
  end
  if value == "K" then
    return "Ex Destination: Edgx (K)"
  end
  if value == "L" then
    return "Ex Destination: Long Term Stock Exchange (L)"
  end
  if value == "M" then
    return "Ex Destination: Nyse Texas (M)"
  end
  if value == "N" then
    return "Ex Destination: Nyse (N)"
  end
  if value == "P" then
    return "Ex Destination: Nyse Arca (P)"
  end
  if value == "Q" then
    return "Ex Destination: Nasdaq (Q)"
  end
  if value == "T" then
    return "Ex Destination: Intelligent Cross Pending Approval (T)"
  end
  if value == "U" then
    return "Ex Destination: Memx (U)"
  end
  if value == "X" then
    return "Ex Destination: Nasdaq Psx (X)"
  end
  if value == "Y" then
    return "Ex Destination: Byx (Y)"
  end
  if value == "Z" then
    return "Ex Destination: Bzx (Z)"
  end

  return "Ex Destination: Unknown("..value..")"
end

-- Dissect: Ex Destination
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ex_destination.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ex_destination.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ex_destination.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.ex_destination, range, value, display)

  return offset + length, value
end

-- Exchange Message Type
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message_type = {}

-- Size: Exchange Message Type
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message_type.size = 2

-- Display: Exchange Message Type
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message_type.display = function(value)
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
  if value == 0x1195 then
    return "Message Type: Order Acknowledgement Us Equities V 1 (0x1195)"
  end
  if value == 0x1196 then
    return "Message Type: Order Rejected Us Equities V 1 (0x1196)"
  end
  if value == 0x1197 then
    return "Message Type: Order Modified Us Equities V 1 (0x1197)"
  end
  if value == 0x1199 then
    return "Message Type: Order Restated Us Equities V 1 (0x1199)"
  end
  if value == 0x1198 then
    return "Message Type: Modify Rejected Us Equities V 1 (0x1198)"
  end
  if value == 0x119A then
    return "Message Type: Order Cancelled Us Equities V 1 (0x119A)"
  end
  if value == 0x119B then
    return "Message Type: Cancel Rejected Us Equities V 1 (0x119B)"
  end
  if value == 0x119C then
    return "Message Type: Order Execution Us Equities V 1 (0x119C)"
  end
  if value == 0x119D then
    return "Message Type: Trade Cancel Correct Us Equities V 1 (0x119D)"
  end
  if value == 0x11A0 then
    return "Message Type: Purge Rejected Us Equities V 1 (0x11A0)"
  end
  if value == 0x119E then
    return "Message Type: Reset Risk Acknowledgement Us Equities V 1 (0x119E)"
  end
  if value == 0x119F then
    return "Message Type: Purge Acknowledgement Us Equities V 1 (0x119F)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Exchange Message Type
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.exchange_message_type, range, value, display)

  return offset + length, value
end

-- Exec Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_id = {}

-- Size: Exec Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_id.size = 8

-- Display: Exec Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Exec Inst
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_inst = {}

-- Size: Exec Inst
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_inst.size = 1

-- Display: Exec Inst
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Exec Inst: No Value"
  end

  if value == "f" then
    return "Exec Inst: Intermarket Sweep Directed Or Book Post Only (f)"
  end
  if value == "P" then
    return "Exec Inst: Market Peg Peg Buy Sell To Nbbo Offer Bid (P)"
  end
  if value == "Q" then
    return "Exec Inst: Market Maker Peg (Q)"
  end
  if value == "R" then
    return "Exec Inst: Primary Peg Peg Buy Sell To Nbb Bid Offer (R)"
  end
  if value == "U" then
    return "Exec Inst: Supplemental Peg Order (U)"
  end
  if value == "M" then
    return "Exec Inst: Midpoint Peg To Nbbo Midpoint (M)"
  end
  if value == "m" then
    return "Exec Inst: Midpoint Peg To Nbbo Midpoint But Do Not Match When Nbbo Is Locked (m)"
  end
  if value == "L" then
    return "Exec Inst: Alternate Midpoint Less Aggressive Of Midpoint And 1 Tick Inside Nbbo (L)"
  end
  if value == "d" then
    return "Exec Inst: Midpoint Discretionary Order (d)"
  end
  if value == "e" then
    return "Exec Inst: Midpoint Discretionary Order With Quote Depletion Protection (e)"
  end
  if value == "r" then
    return "Exec Inst: Late For Use With Auction Only Orders (r)"
  end
  if value == "o" then
    return "Exec Inst: Listing Market Opening For Rooc Rout Strategy Only (o)"
  end
  if value == "c" then
    return "Exec Inst: Listing Market Close For Rooc Rout Strategy Only (c)"
  end
  if value == "a" then
    return "Exec Inst: Both Listing Market Open And Close (a)"
  end

  return "Exec Inst: Unknown("..value..")"
end

-- Dissect: Exec Inst
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_inst.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.exec_inst, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_ref_id = {}

-- Size: Exec Ref Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_ref_id.size = 8

-- Display: Exec Ref Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Expire Time
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.expire_time = {}

-- Size: Expire Time
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.expire_time.size = 8

-- Dissect: Expire Time
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.expire_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.expire_time
  if cboe_edgxequities_binaryorderentry_boe3_v1_0_14.absolute_time_base == 1 then field = omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.expire_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Ext Exec Inst
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ext_exec_inst = {}

-- Size: Ext Exec Inst
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ext_exec_inst.size = 1

-- Display: Ext Exec Inst
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ext_exec_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ext Exec Inst: No Value"
  end

  if value == "N" then
    return "Ext Exec Inst: None (N)"
  end
  if value == "R" then
    return "Ext Exec Inst: Retail Order Eligible For Retail Rebate (R)"
  end
  if value == "P" then
    return "Ext Exec Inst: Retail Order Price Improvement Only (P)"
  end
  if value == "T" then
    return "Ext Exec Inst: Retail Price Improving Order (T)"
  end
  if value == "X" then
    return "Ext Exec Inst: Retail Priority Order Eligible For Retail Priority And Retail Rebate Rate (X)"
  end

  return "Ext Exec Inst: Unknown("..value..")"
end

-- Dissect: Ext Exec Inst
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ext_exec_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ext_exec_inst.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ext_exec_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.ext_exec_inst, range, value, display)

  return offset + length, value
end

-- Fee Code
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fee_code = {}

-- Size: Fee Code
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fee_code.size = 2

-- Display: Fee Code
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fee_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fee Code: No Value"
  end

  return "Fee Code: "..value
end

-- Dissect: Fee Code
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fee_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fee_code.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fee_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.fee_code, range, value, display)

  return offset + length, value
end

-- Firm Message Type
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message_type = {}

-- Size: Firm Message Type
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message_type.size = 2

-- Display: Firm Message Type
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message_type.display = function(value)
  if value == 1 then
    return "Message Type: Login Request Message (1)"
  end
  if value == 2 then
    return "Message Type: Logout Request Message (2)"
  end
  if value == 3 then
    return "Message Type: Client Heartbeat Message (3)"
  end
  if value == 0x0FA1 then
    return "Message Type: New Order Us Equities V 1 (0x0FA1)"
  end
  if value == 0x0FA6 then
    return "Message Type: New Order Short Us Equities V 1 (0x0FA6)"
  end
  if value == 0x0FA3 then
    return "Message Type: Cancel Order Us Equities V 1 (0x0FA3)"
  end
  if value == 0x0FA2 then
    return "Message Type: Modify Order Us Equities V 1 (0x0FA2)"
  end
  if value == 0x0FA5 then
    return "Message Type: Purge Orders Us Equities V 1 (0x0FA5)"
  end
  if value == 0x0FA4 then
    return "Message Type: Reset Risk Us Equities V 1 (0x0FA4)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Firm Message Type
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.firm_message_type, range, value, display)

  return offset + length, value
end

-- In Flight
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight = {}

-- Size: In Flight
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.size = 2

-- Display: In Flight
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.display = function(value)
  return "In Flight: "..value
end

-- Dissect: In Flight
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.in_flight, range, value, display)

  return offset + length, value
end

-- Last Px
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_px = {}

-- Size: Last Px
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_px.size = 8

-- Display: Last Px
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_px.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Px
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_px.translate(raw)
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Shares
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_shares = {}

-- Size: Last Shares
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_shares.size = 4

-- Display: Last Shares
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_shares.display = function(value)
  return "Last Shares: "..value
end

-- Dissect: Last Shares
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Leaves Qty
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.leaves_qty = {}

-- Size: Leaves Qty
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.leaves_qty.size = 4

-- Display: Leaves Qty
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Locate Broker
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.locate_broker = {}

-- Size: Locate Broker
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.locate_broker.size = 4

-- Display: Locate Broker
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.locate_broker.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Locate Broker: No Value"
  end

  return "Locate Broker: "..value
end

-- Dissect: Locate Broker
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.locate_broker.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.locate_broker.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.locate_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.locate_broker, range, value, display)

  return offset + length, value
end

-- Locate Reqd
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.locate_reqd = {}

-- Size: Locate Reqd
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.locate_reqd.size = 1

-- Display: Locate Reqd
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.locate_reqd.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Locate Reqd: No Value"
  end

  if value == "N" then
    return "Locate Reqd: Client Affirms Ability To Borrow Default (N)"
  end
  if value == "Y" then
    return "Locate Reqd: Client Does Not Affirm Ability To Borrow Results In Reject (Y)"
  end

  return "Locate Reqd: Unknown("..value..")"
end

-- Dissect: Locate Reqd
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.locate_reqd.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.locate_reqd.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.locate_reqd.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.locate_reqd, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_status = {}

-- Size: Login Response Status
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_status.size = 1

-- Display: Login Response Status
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_status.labels = {
  ["A"] = "Login Response Status: Accepted (A)",
  ["B"] = "Login Response Status: Session In Use (B)",
  ["D"] = "Login Response Status: Disabled (D)",
  ["I"] = "Login Response Status: Invalid Unit (I)",
  ["M"] = "Login Response Status: Invalid Message (M)",
  ["N"] = "Login Response Status: Not Authorized (N)",
  ["Q"] = "Login Response Status: Sequence Ahead (Q)",
  ["S"] = "Login Response Status: Invalid Session (S)",
  ["X"] = "Login Response Status: Invalid Replay Instruction (X)",
}

cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_status.display = function(value)
  return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_status.labels[value] or "Login Response Status: Unknown("..value..")"
end

-- Dissect: Login Response Status
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Login Response Text
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_text = {}

-- Size: Login Response Text
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_text.size = 60

-- Display: Login Response Text
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Login Response Text: No Value"
  end

  return "Login Response Text: "..value
end

-- Dissect: Login Response Text
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_text.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.login_response_text, range, value, display)

  return offset + length, value
end

-- Logout Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_reason = {}

-- Size: Logout Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_reason.size = 1

-- Display: Logout Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_reason.labels = {
  ["U"] = "Logout Reason: User Requested (U)",
  ["A"] = "Logout Reason: Administrative (A)",
  ["!"] = "Logout Reason: Protocol Violation (!)",
}

cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_reason.display = function(value)
  return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_reason.labels[value] or "Logout Reason: Unknown("..value..")"
end

-- Dissect: Logout Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Reason Text
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_reason_text = {}

-- Size: Logout Reason Text
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_reason_text.size = 60

-- Display: Logout Reason Text
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_reason_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Logout Reason Text: No Value"
  end

  return "Logout Reason Text: "..value
end

-- Dissect: Logout Reason Text
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_reason_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_reason_text.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_reason_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.logout_reason_text, range, value, display)

  return offset + length, value
end

-- Mass Cancel Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.mass_cancel_id = {}

-- Size: Mass Cancel Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.mass_cancel_id.size = 20

-- Display: Mass Cancel Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.mass_cancel_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mass Cancel Id: No Value"
  end

  return "Mass Cancel Id: "..value
end

-- Dissect: Mass Cancel Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.mass_cancel_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.mass_cancel_id.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.mass_cancel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.mass_cancel_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Inst
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.mass_cancel_inst = {}

-- Size: Mass Cancel Inst
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.mass_cancel_inst.size = 8

-- Display: Mass Cancel Inst
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.mass_cancel_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mass Cancel Inst: No Value"
  end

  return "Mass Cancel Inst: "..value
end

-- Dissect: Mass Cancel Inst
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.mass_cancel_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.mass_cancel_inst.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.mass_cancel_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.mass_cancel_inst, range, value, display)

  return offset + length, value
end

-- Matching Unit
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.matching_unit = {}

-- Size: Matching Unit
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.matching_unit.size = 1

-- Display: Matching Unit
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.matching_unit.display = function(value)
  return "Matching Unit: "..value
end

-- Dissect: Matching Unit
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.matching_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.matching_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.matching_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.matching_unit, range, value, display)

  return offset + length, value
end

-- Max Floor
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.max_floor = {}

-- Size: Max Floor
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.max_floor.size = 4

-- Display: Max Floor
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.max_floor.display = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.max_floor.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.max_floor.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.max_floor.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.message_length = {}

-- Size: Message Length
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.message_length.size = 2

-- Display: Message Length
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.message_length, range, value, display)

  return offset + length, value
end

-- Min Qty
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.min_qty = {}

-- Size: Min Qty
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.min_qty.size = 4

-- Display: Min Qty
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Modify Reject Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_reject_reason = {}

-- Size: Modify Reject Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_reject_reason.size = 1

-- Display: Modify Reject Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_reject_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Modify Reject Reason: No Value"
  end

  if value == "A" then
    return "Modify Reject Reason: Admin (A)"
  end
  if value == "C" then
    return "Modify Reject Reason: Capacity Undefined (C)"
  end
  if value == "D" then
    return "Modify Reject Reason: Duplicate Identifier Eg Cl Ord Id (D)"
  end
  if value == "E" then
    return "Modify Reject Reason: Size Reduction Due To Swp Restatement (E)"
  end
  if value == "F" then
    return "Modify Reject Reason: Failed To Quote (F)"
  end
  if value == "H" then
    return "Modify Reject Reason: Halted (H)"
  end
  if value == "I" then
    return "Modify Reject Reason: Incorrect Data Center (I)"
  end
  if value == "J" then
    return "Modify Reject Reason: Too Late To Cancel (J)"
  end
  if value == "K" then
    return "Modify Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "L" then
    return "Modify Reject Reason: Order Would Lock Or Cross Nbbo (L)"
  end
  if value == "M" then
    return "Modify Reject Reason: Order Size Exceeded (M)"
  end
  if value == "N" then
    return "Modify Reject Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Modify Reject Reason: Cl Ord Id Doesnt Match A Known Order (O)"
  end
  if value == "P" then
    return "Modify Reject Reason: Cant Modify An Order That Is Pending Fill (P)"
  end
  if value == "Q" then
    return "Modify Reject Reason: Waiting For First Trade (Q)"
  end
  if value == "R" then
    return "Modify Reject Reason: Routing Unavailable (R)"
  end
  if value == "S" then
    return "Modify Reject Reason: Short Sale Price Violation (S)"
  end
  if value == "T" then
    return "Modify Reject Reason: Fill Would Trade Through The Nbbo (T)"
  end
  if value == "U" then
    return "Modify Reject Reason: User Requested (U)"
  end
  if value == "V" then
    return "Modify Reject Reason: Would Wash (V)"
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
  if value == "f" then
    return "Modify Reject Reason: Risk Management Mpid Or Risk Group Id Level (f)"
  end
  if value == "m" then
    return "Modify Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "o" then
    return "Modify Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "r" then
    return "Modify Reject Reason: Reserve Reload (r)"
  end
  if value == "s" then
    return "Modify Reject Reason: Risk Management Symbol Level (s)"
  end
  if value == "u" then
    return "Modify Reject Reason: Limit Up Limit Down Luld (u)"
  end
  if value == "w" then
    return "Modify Reject Reason: Would Remove On Unslide (w)"
  end
  if value == "x" then
    return "Modify Reject Reason: Crossed Market (x)"
  end
  if value == "y" then
    return "Modify Reject Reason: Order Received By Cboe During Replay (y)"
  end
  if value == "z" then
    return "Modify Reject Reason: Session End (z)"
  end

  return "Modify Reject Reason: Unknown("..value..")"
end

-- Dissect: Modify Reject Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_reject_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.modify_reject_reason, range, value, display)

  return offset + length, value
end

-- Number Of Units
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.number_of_units = {}

-- Size: Number Of Units
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.number_of_units.size = 1

-- Display: Number Of Units
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.number_of_units.display = function(value)
  return "Number Of Units: "..value
end

-- Dissect: Number Of Units
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.number_of_units.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.number_of_units.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.number_of_units.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.number_of_units, range, value, display)

  return offset + length, value
end

-- Ord Type
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ord_type = {}

-- Size: Ord Type
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ord_type.size = 1

-- Display: Ord Type
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ord_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ord Type: No Value"
  end

  if value == "1" then
    return "Ord Type: Market (1)"
  end
  if value == "2" then
    return "Ord Type: Limit Default (2)"
  end
  if value == "3" then
    return "Ord Type: Stop (3)"
  end
  if value == "4" then
    return "Ord Type: Stop Limit (4)"
  end
  if value == "P" then
    return "Ord Type: Pegged (P)"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ord_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_id = {}

-- Size: Order Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_id.size = 8

-- Display: Order Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Qty
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_qty = {}

-- Size: Order Qty
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_qty.size = 4

-- Display: Order Qty
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Reject Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_reject_reason = {}

-- Size: Order Reject Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_reject_reason.size = 1

-- Display: Order Reject Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_reject_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Order Reject Reason: No Value"
  end

  if value == "A" then
    return "Order Reject Reason: Admin (A)"
  end
  if value == "C" then
    return "Order Reject Reason: Capacity Undefined (C)"
  end
  if value == "D" then
    return "Order Reject Reason: Duplicate Identifier Eg Cl Ord Id (D)"
  end
  if value == "E" then
    return "Order Reject Reason: Size Reduction Due To Swp Restatement (E)"
  end
  if value == "F" then
    return "Order Reject Reason: Failed To Quote (F)"
  end
  if value == "H" then
    return "Order Reject Reason: Halted (H)"
  end
  if value == "I" then
    return "Order Reject Reason: Incorrect Data Center (I)"
  end
  if value == "J" then
    return "Order Reject Reason: Too Late To Cancel (J)"
  end
  if value == "K" then
    return "Order Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "L" then
    return "Order Reject Reason: Order Would Lock Or Cross Nbbo (L)"
  end
  if value == "M" then
    return "Order Reject Reason: Order Size Exceeded (M)"
  end
  if value == "N" then
    return "Order Reject Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Order Reject Reason: Cl Ord Id Doesnt Match A Known Order (O)"
  end
  if value == "P" then
    return "Order Reject Reason: Cant Modify An Order That Is Pending Fill (P)"
  end
  if value == "Q" then
    return "Order Reject Reason: Waiting For First Trade (Q)"
  end
  if value == "R" then
    return "Order Reject Reason: Routing Unavailable (R)"
  end
  if value == "S" then
    return "Order Reject Reason: Short Sale Price Violation (S)"
  end
  if value == "T" then
    return "Order Reject Reason: Fill Would Trade Through The Nbbo (T)"
  end
  if value == "U" then
    return "Order Reject Reason: User Requested (U)"
  end
  if value == "V" then
    return "Order Reject Reason: Would Wash (V)"
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
  if value == "f" then
    return "Order Reject Reason: Risk Management Mpid Or Risk Group Id Level (f)"
  end
  if value == "m" then
    return "Order Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "o" then
    return "Order Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "r" then
    return "Order Reject Reason: Reserve Reload (r)"
  end
  if value == "s" then
    return "Order Reject Reason: Risk Management Symbol Level (s)"
  end
  if value == "u" then
    return "Order Reject Reason: Limit Up Limit Down Luld (u)"
  end
  if value == "w" then
    return "Order Reject Reason: Would Remove On Unslide (w)"
  end
  if value == "x" then
    return "Order Reject Reason: Crossed Market (x)"
  end
  if value == "y" then
    return "Order Reject Reason: Order Received By Cboe During Replay (y)"
  end
  if value == "z" then
    return "Order Reject Reason: Session End (z)"
  end

  return "Order Reject Reason: Unknown("..value..")"
end

-- Dissect: Order Reject Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_reject_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Order Restatement Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_restatement_reason = {}

-- Size: Order Restatement Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_restatement_reason.size = 1

-- Display: Order Restatement Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_restatement_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Order Restatement Reason: No Value"
  end

  if value == "C" then
    return "Order Restatement Reason: Cboe Market Close Cmc (C)"
  end
  if value == "L" then
    return "Order Restatement Reason: Reload (L)"
  end
  if value == "P" then
    return "Order Restatement Reason: Peg Or Price Sliding Reprice (P)"
  end
  if value == "Q" then
    return "Order Restatement Reason: Liquidity Updated (Q)"
  end
  if value == "R" then
    return "Order Restatement Reason: Reroute (R)"
  end
  if value == "S" then
    return "Order Restatement Reason: Reduction Of Order Qty Due To Swp (S)"
  end
  if value == "W" then
    return "Order Restatement Reason: Wash Or Mtp Decrement (W)"
  end

  return "Order Restatement Reason: Unknown("..value..")"
end

-- Dissect: Order Restatement Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_restatement_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.order_restatement_reason, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.orig_cl_ord_id.size = 20

-- Display: Orig Cl Ord Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.orig_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Orig Cl Ord Id: No Value"
  end

  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.orig_cl_ord_id.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Orig Time
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.orig_time = {}

-- Size: Orig Time
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.orig_time.size = 8

-- Dissect: Orig Time
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.orig_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.orig_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.orig_time
  if cboe_edgxequities_binaryorderentry_boe3_v1_0_14.absolute_time_base == 1 then field = omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.orig_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Password
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.password = {}

-- Size: Password
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.password.size = 10

-- Display: Password
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.password.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.password, range, value, display)

  return offset + length, value
end

-- Peg Difference
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.peg_difference = {}

-- Size: Peg Difference
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.peg_difference.size = 8

-- Display: Peg Difference
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.peg_difference.display = function(value)
  return "Peg Difference: "..value
end

-- Translate: Peg Difference
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.peg_difference.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Peg Difference
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.peg_difference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.peg_difference.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.peg_difference.translate(raw)
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.peg_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.peg_difference, range, value, display)

  return offset + length, value
end

-- Prevent Match
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prevent_match = {}

-- Size: Prevent Match
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prevent_match.size = 3

-- Display: Prevent Match
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prevent_match.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Prevent Match: No Value"
  end

  return "Prevent Match: "..value
end

-- Dissect: Prevent Match
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prevent_match.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prevent_match.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prevent_match.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.prevent_match, range, value, display)

  return offset + length, value
end

-- Price
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.price = {}

-- Size: Price
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.price.size = 8

-- Display: Price
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.price.translate(raw)
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.price, range, value, display)

  return offset + length, value
end

-- Purge Reject Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_reject_reason = {}

-- Size: Purge Reject Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_reject_reason.size = 1

-- Display: Purge Reject Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_reject_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Purge Reject Reason: No Value"
  end

  if value == "A" then
    return "Purge Reject Reason: Admin (A)"
  end
  if value == "C" then
    return "Purge Reject Reason: Capacity Undefined (C)"
  end
  if value == "D" then
    return "Purge Reject Reason: Duplicate Identifier Eg Cl Ord Id (D)"
  end
  if value == "E" then
    return "Purge Reject Reason: Size Reduction Due To Swp Restatement (E)"
  end
  if value == "F" then
    return "Purge Reject Reason: Failed To Quote (F)"
  end
  if value == "H" then
    return "Purge Reject Reason: Halted (H)"
  end
  if value == "I" then
    return "Purge Reject Reason: Incorrect Data Center (I)"
  end
  if value == "J" then
    return "Purge Reject Reason: Too Late To Cancel (J)"
  end
  if value == "K" then
    return "Purge Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "L" then
    return "Purge Reject Reason: Order Would Lock Or Cross Nbbo (L)"
  end
  if value == "M" then
    return "Purge Reject Reason: Order Size Exceeded (M)"
  end
  if value == "N" then
    return "Purge Reject Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Purge Reject Reason: Cl Ord Id Doesnt Match A Known Order (O)"
  end
  if value == "P" then
    return "Purge Reject Reason: Cant Modify An Order That Is Pending Fill (P)"
  end
  if value == "Q" then
    return "Purge Reject Reason: Waiting For First Trade (Q)"
  end
  if value == "R" then
    return "Purge Reject Reason: Routing Unavailable (R)"
  end
  if value == "S" then
    return "Purge Reject Reason: Short Sale Price Violation (S)"
  end
  if value == "T" then
    return "Purge Reject Reason: Fill Would Trade Through The Nbbo (T)"
  end
  if value == "U" then
    return "Purge Reject Reason: User Requested (U)"
  end
  if value == "V" then
    return "Purge Reject Reason: Would Wash (V)"
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
  if value == "f" then
    return "Purge Reject Reason: Risk Management Mpid Or Risk Group Id Level (f)"
  end
  if value == "m" then
    return "Purge Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "o" then
    return "Purge Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "r" then
    return "Purge Reject Reason: Reserve Reload (r)"
  end
  if value == "s" then
    return "Purge Reject Reason: Risk Management Symbol Level (s)"
  end
  if value == "u" then
    return "Purge Reject Reason: Limit Up Limit Down Luld (u)"
  end
  if value == "w" then
    return "Purge Reject Reason: Would Remove On Unslide (w)"
  end
  if value == "x" then
    return "Purge Reject Reason: Crossed Market (x)"
  end
  if value == "y" then
    return "Purge Reject Reason: Order Received By Cboe During Replay (y)"
  end
  if value == "z" then
    return "Purge Reject Reason: Session End (z)"
  end

  return "Purge Reject Reason: Unknown("..value..")"
end

-- Dissect: Purge Reject Reason
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_reject_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.purge_reject_reason, range, value, display)

  return offset + length, value
end

-- Replay Instruction
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.replay_instruction = {}

-- Size: Replay Instruction
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.replay_instruction.size = 1

-- Display: Replay Instruction
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.replay_instruction.labels = {
  ["F"] = "Replay Instruction: Fail If Unit Not Specified (F)",
  ["R"] = "Replay Instruction: Replay Any Unspecified Unit From Zero (R)",
  ["S"] = "Replay Instruction: Skip Replay Of Unspecified Units (S)",
}

cboe_edgxequities_binaryorderentry_boe3_v1_0_14.replay_instruction.display = function(value)
  return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.replay_instruction.labels[value] or "Replay Instruction: Unknown("..value..")"
end

-- Dissect: Replay Instruction
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.replay_instruction.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.replay_instruction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.replay_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.replay_instruction, range, value, display)

  return offset + length, value
end

-- Reserved Field
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reserved_field = {}

-- Size: Reserved Field
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reserved_field.size = 1

-- Display: Reserved Field
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reserved_field.display = function(value)
  return "Reserved Field: "..value
end

-- Dissect: Reserved Field
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reserved_field.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reserved_field.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reserved_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.reserved_field, range, value, display)

  return offset + length, value
end

-- Risk Group Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id = {}

-- Size: Risk Group Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id.size = 2

-- Display: Risk Group Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id.display = function(value)
  return "Risk Group Id: "..value
end

-- Dissect: Risk Group Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.risk_group_id, range, value, display)

  return offset + length, value
end

-- Risk Group Id Cnt
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id_cnt = {}

-- Size: Risk Group Id Cnt
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id_cnt.size = 1

-- Display: Risk Group Id Cnt
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id_cnt.display = function(value)
  return "Risk Group Id Cnt: "..value
end

-- Dissect: Risk Group Id Cnt
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id_cnt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id_cnt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id_cnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.risk_group_id_cnt, range, value, display)

  return offset + length, value
end

-- Risk Reset
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_reset = {}

-- Size: Risk Reset
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_reset.size = 8

-- Display: Risk Reset
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_reset.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Risk Reset: No Value"
  end

  return "Risk Reset: "..value
end

-- Dissect: Risk Reset
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_reset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_reset.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_reset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.risk_reset, range, value, display)

  return offset + length, value
end

-- Risk Reset Result
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_reset_result = {}

-- Size: Risk Reset Result
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_reset_result.size = 1

-- Display: Risk Reset Result
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_reset_result.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Risk Reset Result: No Value"
  end

  if value == " " then
    return "Risk Reset Result: Ignored Exceeds 1 Reset Per 100 Milliseconds (<whitespace>)"
  end
  if value == "C" then
    return "Risk Reset Result: Rejected Exceeds Risk Group Id Limit (C)"
  end
  if value == "D" then
    return "Risk Reset Result: Rejected Automatic Risk Resets Are Disabled (D)"
  end
  if value == "E" then
    return "Risk Reset Result: Rejected Empty Reset Risk Field (E)"
  end
  if value == "F" then
    return "Risk Reset Result: Rejected Exceeds Firm Reset Limit (F)"
  end
  if value == "I" then
    return "Risk Reset Result: Rejected Incorrect Data Center (I)"
  end
  if value == "M" then
    return "Risk Reset Result: Rejected Invalid Matching Unit (M)"
  end
  if value == "S" then
    return "Risk Reset Result: Rejected Exceeds Symbol Reset Limit (S)"
  end
  if value == "U" then
    return "Risk Reset Result: Rejected Invalid Symbol (U)"
  end
  if value == "Y" then
    return "Risk Reset Result: Success (Y)"
  end
  if value == "c" then
    return "Risk Reset Result: Rejected Invalid Clearing Firm (c)"
  end
  if value == "y" then
    return "Risk Reset Result: Rejected In Replay (y)"
  end

  return "Risk Reset Result: Unknown("..value..")"
end

-- Dissect: Risk Reset Result
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_reset_result.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_reset_result.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_reset_result.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.risk_reset_result, range, value, display)

  return offset + length, value
end

-- Risk Status Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_status_id = {}

-- Size: Risk Status Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_status_id.size = 16

-- Display: Risk Status Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_status_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Risk Status Id: No Value"
  end

  return "Risk Status Id: "..value
end

-- Dissect: Risk Status Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_status_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_status_id.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_status_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.risk_status_id, range, value, display)

  return offset + length, value
end

-- Rout Strategy
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.rout_strategy = {}

-- Size: Rout Strategy
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.rout_strategy.size = 6

-- Display: Rout Strategy
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.rout_strategy.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Rout Strategy: No Value"
  end

  return "Rout Strategy: "..value
end

-- Dissect: Rout Strategy
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.rout_strategy.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.rout_strategy.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.rout_strategy.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.rout_strategy, range, value, display)

  return offset + length, value
end

-- Route Delivery Method
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.route_delivery_method = {}

-- Size: Route Delivery Method
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.route_delivery_method.size = 3

-- Display: Route Delivery Method
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.route_delivery_method.labels = {
  ["RTI"] = "Route Delivery Method: Route To Improve Default If Not Specified (RTI)",
  ["RTF"] = "Route Delivery Method: Route To Fill (RTF)",
}

cboe_edgxequities_binaryorderentry_boe3_v1_0_14.route_delivery_method.display = function(value)
  return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.route_delivery_method.labels[value] or "Route Delivery Method: Unknown("..value..")"
end

-- Dissect: Route Delivery Method
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.route_delivery_method.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.route_delivery_method.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.route_delivery_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.route_delivery_method, range, value, display)

  return offset + length, value
end

-- Routing Inst
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.routing_inst = {}

-- Size: Routing Inst
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.routing_inst.size = 4

-- Display: Routing Inst
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.routing_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Routing Inst: No Value"
  end

  return "Routing Inst: "..value
end

-- Dissect: Routing Inst
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.routing_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.routing_inst.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.routing_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.routing_inst, range, value, display)

  return offset + length, value
end

-- Secondary Order Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.secondary_order_id = {}

-- Size: Secondary Order Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.secondary_order_id.size = 8

-- Display: Secondary Order Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sequence_number = {}

-- Size: Sequence Number
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sequence_number.size = 4

-- Display: Sequence Number
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.session_id = {}

-- Size: Session Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.session_id.size = 4

-- Display: Session Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.session_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session Id: No Value"
  end

  return "Session Id: "..value
end

-- Dissect: Session Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.session_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.session_id.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.session_sub_id = {}

-- Size: Session Sub Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.session_sub_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session Sub Id: No Value"
  end

  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.session_sub_id.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Short Account
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.short_account = {}

-- Size: Short Account
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.short_account.size = 10

-- Display: Short Account
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.short_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Short Account: No Value"
  end

  return "Short Account: "..value
end

-- Dissect: Short Account
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.short_account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.short_account.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.short_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.short_account, range, value, display)

  return offset + length, value
end

-- Short Routing Inst
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.short_routing_inst = {}

-- Size: Short Routing Inst
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.short_routing_inst.size = 1

-- Display: Short Routing Inst
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.short_routing_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Short Routing Inst: No Value"
  end

  return "Short Routing Inst: "..value
end

-- Dissect: Short Routing Inst
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.short_routing_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.short_routing_inst.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.short_routing_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.short_routing_inst, range, value, display)

  return offset + length, value
end

-- Side
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.side = {}

-- Size: Side
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.side.size = 1

-- Display: Side
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.side.display = function(value)
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
    return "Side: Sell Short Client Affirms Ability To Borrow (5)"
  end
  if value == "6" then
    return "Side: Sell Short Exempt (6)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.side, range, value, display)

  return offset + length, value
end

-- Start Of Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.start_of_message = {}

-- Size: Start Of Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.start_of_message.size = 2

-- Display: Start Of Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.start_of_message.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Step Up Amount
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.step_up_amount = {}

-- Size: Step Up Amount
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.step_up_amount.size = 4

-- Display: Step Up Amount
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.step_up_amount.display = function(value)
  return "Step Up Amount: "..value
end

-- Translate: Step Up Amount
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.step_up_amount.translate = function(raw)
  return raw/1000000
end

-- Dissect: Step Up Amount
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.step_up_amount.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.step_up_amount.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.step_up_amount.translate(raw)
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.step_up_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.step_up_amount, range, value, display)

  return offset + length, value
end

-- Stop Px
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.stop_px = {}

-- Size: Stop Px
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.stop_px.size = 8

-- Display: Stop Px
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.stop_px.display = function(value)
  return "Stop Px: "..value
end

-- Translate: Stop Px
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.stop_px.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Stop Px
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.stop_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.stop_px.translate(raw)
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.stop_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Sub Liquidity Indicator
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sub_liquidity_indicator = {}

-- Size: Sub Liquidity Indicator
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sub_liquidity_indicator.size = 1

-- Display: Sub Liquidity Indicator
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sub_liquidity_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Sub Liquidity Indicator: No Value"
  end

  if value == "E" then
    return "Sub Liquidity Indicator: Trade Added Rpi Liquidity Byx And Edgx Only (E)"
  end
  if value == "H" then
    return "Sub Liquidity Indicator: Trade Added Hidden Liquidity (H)"
  end
  if value == "I" then
    return "Sub Liquidity Indicator: Trade Added Hidden Liquidity That Was Price Improved (I)"
  end
  if value == "J" then
    return "Sub Liquidity Indicator: Execution From First Order To Join The Nbbo (J)"
  end
  if value == "P" then
    return "Sub Liquidity Indicator: Periodic Auction Byx Only (P)"
  end
  if value == "S" then
    return "Sub Liquidity Indicator: Nbbo Setter Fee Eligible (S)"
  end
  if value == "V" then
    return "Sub Liquidity Indicator: Visible Liquidity Add Trade That Was Price Improved (V)"
  end
  if value == "m" then
    return "Sub Liquidity Indicator: Midpoint Peg Order (m)"
  end
  if value == "s" then
    return "Sub Liquidity Indicator: Order Set The Nbbo But Is Not Fee Eligible (s)"
  end
  if value == 0 then
    return "Sub Liquidity Indicator: No Additional Information"
  end

  return "Sub Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Sub Liquidity Indicator
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sub_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sub_liquidity_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sub_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.sub_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol = {}

-- Size: Symbol
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.size = 8

-- Display: Symbol
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.symbol, range, value, display)

  return offset + length, value
end

-- Target Matching Unit
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.target_matching_unit = {}

-- Size: Target Matching Unit
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.target_matching_unit.size = 1

-- Display: Target Matching Unit
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.target_matching_unit.display = function(value)
  return "Target Matching Unit: "..value
end

-- Dissect: Target Matching Unit
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.target_matching_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.target_matching_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.target_matching_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.target_matching_unit, range, value, display)

  return offset + length, value
end

-- Text
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.text = {}

-- Size: Text
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.text.size = 60

-- Display: Text
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.text.size
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

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.text, range, value, display)

  return offset + length, value
end

-- Time In Force
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.time_in_force = {}

-- Size: Time In Force
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.time_in_force.size = 1

-- Display: Time In Force
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.time_in_force.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Time In Force: No Value"
  end

  if value == "0" then
    return "Time In Force: Day Default (0)"
  end
  if value == "1" then
    return "Time In Force: Gtc Allowed But Treated As Day (1)"
  end
  if value == "2" then
    return "Time In Force: At The Open Bzx Only And Cboe Listed Securities Only (2)"
  end
  if value == "3" then
    return "Time In Force: Ioc Portion Not Filled Immediately Is Cancelled (3)"
  end
  if value == "4" then
    return "Time In Force: Fok (4)"
  end
  if value == "5" then
    return "Time In Force: Gtx (5)"
  end
  if value == "6" then
    return "Time In Force: Gtd (6)"
  end
  if value == "7" then
    return "Time In Force: At The Close (7)"
  end
  if value == "E" then
    return "Time In Force: Pre Pre Market Trading Session Until End Of Regular Session (E)"
  end
  if value == "P" then
    return "Time In Force: Rtp Regular Hours And Post Market Session (P)"
  end
  if value == "R" then
    return "Time In Force: Rho Regular Hours Session Only (R)"
  end
  if value == "T" then
    return "Time In Force: Ptd (T)"
  end
  if value == "X" then
    return "Time In Force: Ptx Pre Market Trading Session Until End Of Post Market Session (X)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.time_in_force.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Transaction Time
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time = {}

-- Size: Transaction Time
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.size = 8

-- Dissect: Transaction Time
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.transaction_time
  if cboe_edgxequities_binaryorderentry_boe3_v1_0_14.absolute_time_base == 1 then field = omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.transaction_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Unit Number
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.unit_number = {}

-- Size: Unit Number
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.unit_number.size = 1

-- Display: Unit Number
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.unit_number.display = function(value)
  return "Unit Number: "..value
end

-- Dissect: Unit Number
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.unit_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.unit_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.unit_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.unit_number, range, value, display)

  return offset + length, value
end

-- Working Price
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.working_price = {}

-- Size: Working Price
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.working_price.size = 8

-- Display: Working Price
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.working_price.display = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.working_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Working Price
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.working_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.working_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.working_price.translate(raw)
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.working_price, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe EdgxEquities BinaryOrderEntry Boe3 1.0.14
-----------------------------------------------------------------------

-- Purge Acknowledgement Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_acknowledgement_us_equities_v_1 = {}

-- Size: Purge Acknowledgement Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_acknowledgement_us_equities_v_1.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.mass_cancel_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancelled_order_count.size

-- Display: Purge Acknowledgement Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_acknowledgement_us_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Acknowledgement Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_acknowledgement_us_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Cancelled Order Count: Binary
  index, cancelled_order_count = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancelled_order_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Acknowledgement Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_acknowledgement_us_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.purge_acknowledgement_us_equities_v_1, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_acknowledgement_us_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_acknowledgement_us_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_acknowledgement_us_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Reset Risk Acknowledgement Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reset_risk_acknowledgement_us_equities_v_1 = {}

-- Size: Reset Risk Acknowledgement Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reset_risk_acknowledgement_us_equities_v_1.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_status_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_reset_result.size

-- Display: Reset Risk Acknowledgement Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reset_risk_acknowledgement_us_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reset Risk Acknowledgement Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reset_risk_acknowledgement_us_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.dissect(buffer, index, packet, parent)

  -- Risk Status Id: Text
  index, risk_status_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_status_id.dissect(buffer, index, packet, parent)

  -- Risk Reset Result: Text
  index, risk_reset_result = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_reset_result.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Risk Acknowledgement Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reset_risk_acknowledgement_us_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.reset_risk_acknowledgement_us_equities_v_1, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reset_risk_acknowledgement_us_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reset_risk_acknowledgement_us_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reset_risk_acknowledgement_us_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Purge Rejected Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_rejected_us_equities_v_1 = {}

-- Size: Purge Rejected Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_rejected_us_equities_v_1.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.mass_cancel_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_reject_reason.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.text.size

-- Display: Purge Rejected Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_rejected_us_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Rejected Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_rejected_us_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Purge Reject Reason: Text
  index, purge_reject_reason = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Rejected Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_rejected_us_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.purge_rejected_us_equities_v_1, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_rejected_us_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_rejected_us_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_rejected_us_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Correct Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.trade_cancel_correct_us_equities_v_1 = {}

-- Size: Trade Cancel Correct Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.trade_cancel_correct_us_equities_v_1.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_ref_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.side.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.base_liquidity_indicator.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sub_liquidity_indicator.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_account.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_shares.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_px.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.corrected_price.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.orig_time.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.capacity.size

-- Display: Trade Cancel Correct Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.trade_cancel_correct_us_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Correct Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.trade_cancel_correct_us_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: Binary
  index, exec_ref_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.side.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Alphanumeric
  index, sub_liquidity_indicator = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_account.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_px.dissect(buffer, index, packet, parent)

  -- Corrected Price: BinaryPrice
  index, corrected_price = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.corrected_price.dissect(buffer, index, packet, parent)

  -- Orig Time: DateTime
  index, orig_time = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.orig_time.dissect(buffer, index, packet, parent)

  -- Symbol: Text
  index, symbol = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.capacity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Correct Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.trade_cancel_correct_us_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.trade_cancel_correct_us_equities_v_1, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.trade_cancel_correct_us_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.trade_cancel_correct_us_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.trade_cancel_correct_us_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_execution_us_equities_v_1 = {}

-- Size: Order Execution Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_execution_us_equities_v_1.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_shares.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_px.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.leaves_qty.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.base_liquidity_indicator.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sub_liquidity_indicator.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.contra_broker.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.side.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fee_code.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.access_fee.size

-- Display: Order Execution Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_execution_us_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_execution_us_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_id.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.leaves_qty.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Alphanumeric
  index, sub_liquidity_indicator = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Contra Broker: Alphanumeric
  index, contra_broker = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.contra_broker.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.side.dissect(buffer, index, packet, parent)

  -- Symbol: Text
  index, symbol = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Fee Code: Alphanumeric
  index, fee_code = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fee_code.dissect(buffer, index, packet, parent)

  -- Access Fee: AccessFee
  index, access_fee = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.access_fee.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_execution_us_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.order_execution_us_equities_v_1, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_execution_us_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_execution_us_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_execution_us_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Rejected Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_rejected_us_equities_v_1 = {}

-- Size: Cancel Rejected Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_rejected_us_equities_v_1.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_reject_reason.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.text.size

-- Display: Cancel Rejected Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_rejected_us_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Rejected Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_rejected_us_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cancel Reject Reason: Text
  index, cancel_reject_reason = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Rejected Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_rejected_us_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.cancel_rejected_us_equities_v_1, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_rejected_us_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_rejected_us_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_rejected_us_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancelled Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_cancelled_us_equities_v_1 = {}

-- Size: Order Cancelled Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_cancelled_us_equities_v_1.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_reason.size

-- Display: Order Cancelled Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_cancelled_us_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancelled Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_cancelled_us_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Text
  index, cancel_reason = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancelled Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_cancelled_us_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.order_cancelled_us_equities_v_1, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_cancelled_us_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_cancelled_us_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_cancelled_us_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Modify Rejected Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_rejected_us_equities_v_1 = {}

-- Size: Modify Rejected Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_rejected_us_equities_v_1.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.orig_cl_ord_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_reject_reason.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.text.size

-- Display: Modify Rejected Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_rejected_us_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Rejected Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_rejected_us_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Modify Reject Reason: Text
  index, modify_reject_reason = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Rejected Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_rejected_us_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.modify_rejected_us_equities_v_1, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_rejected_us_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_rejected_us_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_rejected_us_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Restated Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_restated_us_equities_v_1 = {}

-- Size: Order Restated Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_restated_us_equities_v_1.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_restatement_reason.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_qty.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.price.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.leaves_qty.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_price.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.working_price.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.base_liquidity_indicator.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.secondary_order_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_shares.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_px.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cmc_match_qty.size

-- Display: Order Restated Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_restated_us_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Restated Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_restated_us_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.dissect(buffer, index, packet, parent)

  -- Symbol: Text
  index, symbol = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Order Restatement Reason: Text
  index, order_restatement_reason = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_restatement_reason.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_qty.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.price.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.leaves_qty.dissect(buffer, index, packet, parent)

  -- Display Price: BinaryPrice
  index, display_price = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_price.dissect(buffer, index, packet, parent)

  -- Working Price: BinaryPrice
  index, working_price = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.working_price.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: Binary
  index, secondary_order_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.last_px.dissect(buffer, index, packet, parent)

  -- Cmc Match Qty: Binary
  index, cmc_match_qty = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cmc_match_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Restated Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_restated_us_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.order_restated_us_equities_v_1, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_restated_us_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_restated_us_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_restated_us_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Modified Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_modified_us_equities_v_1 = {}

-- Size: Order Modified Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_modified_us_equities_v_1.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.orig_cl_ord_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.side.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.price.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ord_type.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.max_floor.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_qty.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.stop_px.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.leaves_qty.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_price.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.working_price.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.base_liquidity_indicator.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.secondary_order_id.size

-- Display: Order Modified Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_modified_us_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_modified_us_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.dissect(buffer, index, packet, parent)

  -- Symbol: Text
  index, symbol = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.side.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.price.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ord_type.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.max_floor.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_qty.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.stop_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.leaves_qty.dissect(buffer, index, packet, parent)

  -- Display Price: BinaryPrice
  index, display_price = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_price.dissect(buffer, index, packet, parent)

  -- Working Price: BinaryPrice
  index, working_price = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.working_price.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: Binary
  index, secondary_order_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.secondary_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modified Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_modified_us_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.order_modified_us_equities_v_1, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_modified_us_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_modified_us_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_modified_us_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Rejected Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_rejected_us_equities_v_1 = {}

-- Size: Order Rejected Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_rejected_us_equities_v_1.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_reject_reason.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.text.size

-- Display: Order Rejected Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_rejected_us_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Rejected Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_rejected_us_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: Text
  index, order_reject_reason = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Rejected Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_rejected_us_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.order_rejected_us_equities_v_1, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_rejected_us_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_rejected_us_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_rejected_us_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Order Acknowledgement Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_acknowledgement_us_equities_v_1 = {}

-- Size: Order Acknowledgement Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_acknowledgement_us_equities_v_1.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.side.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.price.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ord_type.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.leaves_qty.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_price.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.working_price.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.base_liquidity_indicator.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sub_liquidity_indicator.size

-- Display: Order Acknowledgement Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_acknowledgement_us_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Acknowledgement Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_acknowledgement_us_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.side.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.price.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ord_type.dissect(buffer, index, packet, parent)

  -- Symbol: Text
  index, symbol = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.leaves_qty.dissect(buffer, index, packet, parent)

  -- Display Price: BinaryPrice
  index, display_price = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_price.dissect(buffer, index, packet, parent)

  -- Working Price: BinaryPrice
  index, working_price = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.working_price.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Alphanumeric
  index, sub_liquidity_indicator = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Acknowledgement Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_acknowledgement_us_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.order_acknowledgement_us_equities_v_1, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_acknowledgement_us_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_acknowledgement_us_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_acknowledgement_us_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Server Heartbeat
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.server_heartbeat = {}

-- Display: Server Heartbeat
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout Response Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_response_message = {}

-- Size: Logout Response Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_response_message.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_reason.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_reason_text.size

-- Display: Logout Response Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Response Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 3 values
  index, logout_reason = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_reason.dissect(buffer, index, packet, parent)

  -- Logout Reason Text: 60 Byte Ascii String
  index, logout_reason_text = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_reason_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_response_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.logout_response_message, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Complete
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.replay_complete = {}

-- Display: Replay Complete
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.replay_complete.display = function(packet, parent, length)
  return "Replay Complete"
end


-- Dissect: Replay Complete
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.replay_complete.dissect = function(buffer, offset, packet, parent)
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.replay_complete.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unit Sequence
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.unit_sequence = {}

-- Size: Unit Sequence
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.unit_sequence.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.unit_number.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sequence_number.size

-- Display: Unit Sequence
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.unit_sequence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Sequence
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.unit_sequence.fields = function(buffer, offset, packet, parent, unit_sequence_index)
  local index = offset

  -- Implicit Unit Sequence Index
  if unit_sequence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.unit_sequence_index, unit_sequence_index)
    iteration:set_generated()
  end

  -- Unit Number: 1 Byte Unsigned Fixed Width Integer
  index, unit_number = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.unit_number.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Sequence
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.unit_sequence.dissect = function(buffer, offset, packet, parent, unit_sequence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.unit_sequence, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.unit_sequence.fields(buffer, offset, packet, parent, unit_sequence_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.unit_sequence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.unit_sequence.fields(buffer, offset, packet, parent, unit_sequence_index)
  end
end

-- Login Response Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_message = {}

-- Calculate size of: Login Response Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_status.size

  index = index + cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_text.size

  index = index + cboe_edgxequities_binaryorderentry_boe3_v1_0_14.client_sequence.size

  index = index + cboe_edgxequities_binaryorderentry_boe3_v1_0_14.number_of_units.size

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  return index
end

-- Display: Login Response Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: 1 Byte Ascii String Enum with 9 values
  index, login_response_status = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_status.dissect(buffer, index, packet, parent)

  -- Login Response Text: 60 Byte Ascii String
  index, login_response_text = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_text.dissect(buffer, index, packet, parent)

  -- Client Sequence: 4 Byte Unsigned Fixed Width Integer
  index, client_sequence = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.client_sequence.dissect(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index, number_of_units = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Unit Sequence
  for unit_sequence_index = 1, number_of_units do
    index, unit_sequence = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.unit_sequence.dissect(buffer, index, packet, parent, unit_sequence_index)
  end

  return index
end

-- Dissect: Login Response Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.login_response_message, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message = {}

-- Dissect: Exchange Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message.dissect = function(buffer, offset, packet, parent, exchange_message_type)
  -- Dissect Login Response Message
  if exchange_message_type == 501 then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete
  if exchange_message_type == 502 then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.replay_complete.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Response Message
  if exchange_message_type == 503 then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if exchange_message_type == 504 then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Acknowledgement Us Equities V 1
  if exchange_message_type == 0x1195 then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_acknowledgement_us_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Rejected Us Equities V 1
  if exchange_message_type == 0x1196 then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_rejected_us_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified Us Equities V 1
  if exchange_message_type == 0x1197 then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_modified_us_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Restated Us Equities V 1
  if exchange_message_type == 0x1199 then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_restated_us_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Rejected Us Equities V 1
  if exchange_message_type == 0x1198 then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_rejected_us_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancelled Us Equities V 1
  if exchange_message_type == 0x119A then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_cancelled_us_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Rejected Us Equities V 1
  if exchange_message_type == 0x119B then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_rejected_us_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Us Equities V 1
  if exchange_message_type == 0x119C then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_execution_us_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Correct Us Equities V 1
  if exchange_message_type == 0x119D then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.trade_cancel_correct_us_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Rejected Us Equities V 1
  if exchange_message_type == 0x11A0 then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_rejected_us_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reset Risk Acknowledgement Us Equities V 1
  if exchange_message_type == 0x119E then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reset_risk_acknowledgement_us_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Acknowledgement Us Equities V 1
  if exchange_message_type == 0x119F then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_acknowledgement_us_equities_v_1.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Exchange Message Header
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message_header = {}

-- Size: Exchange Message Header
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message_header.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.start_of_message.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.message_length.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message_type.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.matching_unit.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reserved_field.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sequence_number.size

-- Display: Exchange Message Header
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Exchange Message Header
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: 2 Byte Unsigned Fixed Width Integer
  index, start_of_message = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.message_length.dissect(buffer, index, packet, parent)

  -- Exchange Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, exchange_message_type = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message_type.dissect(buffer, index, packet, parent)

  -- Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, matching_unit = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.matching_unit.dissect(buffer, index, packet, parent)

  -- Reserved Field: 1 Byte Unsigned Fixed Width Integer
  index, reserved_field = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reserved_field.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Exchange Message Header
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.exchange_message_header, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Packet
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_packet = {}

-- Verify required size of Tcp packet
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message_header.size
end

-- Dissect Exchange Packet
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Exchange Message Header: Struct of 6 fields
  index, exchange_message_header = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Exchange Message Type
  local exchange_message_type = buffer(index - 8, 2):le_uint()

  -- Exchange Message: Runtime Type with 16 branches
  index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_message.dissect(buffer, index, packet, parent, exchange_message_type)

  return index
end

-- Reset Risk Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reset_risk_us_equities_v_1 = {}

-- Size: Reset Risk Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reset_risk_us_equities_v_1.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_status_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_reset.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.target_matching_unit.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id.size

-- Display: Reset Risk Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reset_risk_us_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reset Risk Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reset_risk_us_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Risk Status Id: Text
  index, risk_status_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_status_id.dissect(buffer, index, packet, parent)

  -- Risk Reset: Text
  index, risk_reset = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_reset.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.dissect(buffer, index, packet, parent)

  -- Symbol: Text
  index, symbol = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Target Matching Unit: Binary
  index, target_matching_unit = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.target_matching_unit.dissect(buffer, index, packet, parent)

  -- Risk Group Id: Binary
  index, risk_group_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Risk Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reset_risk_us_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.reset_risk_us_equities_v_1, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reset_risk_us_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reset_risk_us_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reset_risk_us_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Purge Orders Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_orders_us_equities_v_1 = {}

-- Calculate size of: Purge Orders Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_orders_us_equities_v_1.size = function(buffer, offset)
  local index = 0

  index = index + cboe_edgxequities_binaryorderentry_boe3_v1_0_14.mass_cancel_id.size

  index = index + cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.size

  index = index + cboe_edgxequities_binaryorderentry_boe3_v1_0_14.mass_cancel_inst.size

  index = index + cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.size

  index = index + cboe_edgxequities_binaryorderentry_boe3_v1_0_14.target_matching_unit.size

  index = index + cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id_cnt.size

  -- Calculate field size from count
  local risk_group_id_count = buffer(offset + index - 1, 1):le_uint()
  index = index + risk_group_id_count * 2

  return index
end

-- Display: Purge Orders Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_orders_us_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Orders Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_orders_us_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.dissect(buffer, index, packet, parent)

  -- Mass Cancel Inst: Text
  index, mass_cancel_inst = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.mass_cancel_inst.dissect(buffer, index, packet, parent)

  -- Symbol: Text
  index, symbol = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Target Matching Unit: Binary
  index, target_matching_unit = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.target_matching_unit.dissect(buffer, index, packet, parent)

  -- Risk Group Id Cnt: Binary
  index, risk_group_id_cnt = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Risk Group Id
  for risk_group_id_index = 1, risk_group_id_cnt do
    index, risk_group_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id.dissect(buffer, index, packet, parent, risk_group_id_index)
  end

  return index
end

-- Dissect: Purge Orders Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_orders_us_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.purge_orders_us_equities_v_1, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_orders_us_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_orders_us_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_orders_us_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_order_us_equities_v_1 = {}

-- Size: Modify Order Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_order_us_equities_v_1.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.orig_cl_ord_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_qty.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.price.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ord_type.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.side.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.max_floor.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.stop_px.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_orig_on_reject.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.locate_broker.size

-- Display: Modify Order Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_order_us_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_order_us_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.dissect(buffer, index, packet, parent)

  -- Symbol: Text
  index, symbol = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_qty.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.price.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ord_type.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.side.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.max_floor.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.stop_px.dissect(buffer, index, packet, parent)

  -- Cancel Orig On Reject: Alpha
  index, cancel_orig_on_reject = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_orig_on_reject.dissect(buffer, index, packet, parent)

  -- Locate Broker: Alpha
  index, locate_broker = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.locate_broker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_order_us_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.modify_order_us_equities_v_1, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_order_us_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_order_us_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_order_us_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_order_us_equities_v_1 = {}

-- Size: Cancel Order Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_order_us_equities_v_1.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.orig_cl_ord_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.size

-- Display: Cancel Order Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_order_us_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_order_us_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_order_us_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.cancel_order_us_equities_v_1, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_order_us_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_order_us_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_order_us_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- New Order Short Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.new_order_short_us_equities_v_1 = {}

-- Size: New Order Short Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.new_order_short_us_equities_v_1.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.side.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_qty.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_account.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.price.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_inst.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ord_type.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.time_in_force.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.capacity.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.short_routing_inst.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.short_account.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_indicator.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.locate_broker.size

-- Display: New Order Short Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.new_order_short_us_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Short Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.new_order_short_us_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.side.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_qty.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_account.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.price.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_inst.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.time_in_force.dissect(buffer, index, packet, parent)

  -- Symbol: Text
  index, symbol = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.capacity.dissect(buffer, index, packet, parent)

  -- Short Routing Inst: Text
  index, short_routing_inst = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.short_routing_inst.dissect(buffer, index, packet, parent)

  -- Short Account: Text
  index, short_account = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.short_account.dissect(buffer, index, packet, parent)

  -- Display Indicator: Alphanumeric
  index, display_indicator = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_indicator.dissect(buffer, index, packet, parent)

  -- Risk Group Id: Binary
  index, risk_group_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id.dissect(buffer, index, packet, parent)

  -- Locate Broker: Alpha
  index, locate_broker = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.locate_broker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Short Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.new_order_short_us_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.new_order_short_us_equities_v_1, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.new_order_short_us_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.new_order_short_us_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.new_order_short_us_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- New Order Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.new_order_us_equities_v_1 = {}

-- Size: New Order Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.new_order_us_equities_v_1.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.side.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_qty.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_account.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.price.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_inst.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ord_type.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.time_in_force.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.min_qty.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.max_floor.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.capacity.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.routing_inst.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.account.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_indicator.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.discretion_amount.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.peg_difference.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prevent_match.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.locate_reqd.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.expire_time.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.attributed_quote.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ext_exec_inst.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_range.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.stop_px.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.rout_strategy.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.route_delivery_method.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ex_destination.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cross_trade_flag.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.locate_broker.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.step_up_amount.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cmc_sessions.size

-- Display: New Order Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.new_order_us_equities_v_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.new_order_us_equities_v_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.side.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.order_qty.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.clearing_account.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.price.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exec_inst.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.time_in_force.dissect(buffer, index, packet, parent)

  -- Min Qty: Binary
  index, min_qty = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.max_floor.dissect(buffer, index, packet, parent)

  -- Symbol: Text
  index, symbol = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.symbol.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.capacity.dissect(buffer, index, packet, parent)

  -- Routing Inst: Text
  index, routing_inst = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.routing_inst.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.account.dissect(buffer, index, packet, parent)

  -- Display Indicator: Alphanumeric
  index, display_indicator = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_indicator.dissect(buffer, index, packet, parent)

  -- Discretion Amount: Binary
  index, discretion_amount = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.discretion_amount.dissect(buffer, index, packet, parent)

  -- Peg Difference: BinaryPrice
  index, peg_difference = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.peg_difference.dissect(buffer, index, packet, parent)

  -- Prevent Match: Alpha
  index, prevent_match = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prevent_match.dissect(buffer, index, packet, parent)

  -- Locate Reqd: Alpha
  index, locate_reqd = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.locate_reqd.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.expire_time.dissect(buffer, index, packet, parent)

  -- Attributed Quote: Alphanumeric
  index, attributed_quote = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.attributed_quote.dissect(buffer, index, packet, parent)

  -- Ext Exec Inst: Text
  index, ext_exec_inst = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ext_exec_inst.dissect(buffer, index, packet, parent)

  -- Display Range: Binary
  index, display_range = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.display_range.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.stop_px.dissect(buffer, index, packet, parent)

  -- Rout Strategy: Text
  index, rout_strategy = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.rout_strategy.dissect(buffer, index, packet, parent)

  -- Route Delivery Method: Text
  index, route_delivery_method = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.route_delivery_method.dissect(buffer, index, packet, parent)

  -- Ex Destination: Text
  index, ex_destination = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.ex_destination.dissect(buffer, index, packet, parent)

  -- Risk Group Id: Binary
  index, risk_group_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.risk_group_id.dissect(buffer, index, packet, parent)

  -- Cross Trade Flag: Alphanumeric
  index, cross_trade_flag = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cross_trade_flag.dissect(buffer, index, packet, parent)

  -- Locate Broker: Alpha
  index, locate_broker = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.locate_broker.dissect(buffer, index, packet, parent)

  -- Step Up Amount: ShortBinaryPrice
  index, step_up_amount = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.step_up_amount.dissect(buffer, index, packet, parent)

  -- Cmc Sessions: Text
  index, cmc_sessions = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cmc_sessions.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Us Equities V 1
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.new_order_us_equities_v_1.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.new_order_us_equities_v_1, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.new_order_us_equities_v_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.new_order_us_equities_v_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.new_order_us_equities_v_1.fields(buffer, offset, packet, parent)
  end
end

-- Client Heartbeat
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.client_heartbeat = {}

-- Display: Client Heartbeat
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout Request
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_request = {}

-- Display: Logout Request
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Request Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_request_message = {}

-- Calculate size of: Login Request Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_request_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_edgxequities_binaryorderentry_boe3_v1_0_14.session_id.size

  index = index + cboe_edgxequities_binaryorderentry_boe3_v1_0_14.session_sub_id.size

  index = index + cboe_edgxequities_binaryorderentry_boe3_v1_0_14.password.size

  index = index + cboe_edgxequities_binaryorderentry_boe3_v1_0_14.replay_instruction.size

  index = index + cboe_edgxequities_binaryorderentry_boe3_v1_0_14.number_of_units.size

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  return index
end

-- Display: Login Request Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Ascii String
  index, session_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.session_id.dissect(buffer, index, packet, parent)

  -- Session Sub Id: 4 Byte Ascii String
  index, session_sub_id = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.session_sub_id.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.password.dissect(buffer, index, packet, parent)

  -- Replay Instruction: 1 Byte Ascii String Enum with 3 values
  index, replay_instruction = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.replay_instruction.dissect(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index, number_of_units = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Unit Sequence
  for unit_sequence_index = 1, number_of_units do
    index, unit_sequence = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.unit_sequence.dissect(buffer, index, packet, parent, unit_sequence_index)
  end

  return index
end

-- Dissect: Login Request Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.login_request_message, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Firm Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message = {}

-- Dissect: Firm Message
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message.dissect = function(buffer, offset, packet, parent, firm_message_type)
  -- Dissect Login Request Message
  if firm_message_type == 1 then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if firm_message_type == 2 then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.logout_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if firm_message_type == 3 then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Us Equities V 1
  if firm_message_type == 0x0FA1 then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.new_order_us_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Short Us Equities V 1
  if firm_message_type == 0x0FA6 then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.new_order_short_us_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Us Equities V 1
  if firm_message_type == 0x0FA3 then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.cancel_order_us_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Us Equities V 1
  if firm_message_type == 0x0FA2 then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.modify_order_us_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Orders Us Equities V 1
  if firm_message_type == 0x0FA5 then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.purge_orders_us_equities_v_1.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reset Risk Us Equities V 1
  if firm_message_type == 0x0FA4 then
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reset_risk_us_equities_v_1.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Firm Message Header
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message_header = {}

-- Size: Firm Message Header
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message_header.size =
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.start_of_message.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.message_length.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message_type.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.matching_unit.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reserved_field.size + 
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sequence_number.size

-- Display: Firm Message Header
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Firm Message Header
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: 2 Byte Unsigned Fixed Width Integer
  index, start_of_message = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.message_length.dissect(buffer, index, packet, parent)

  -- Firm Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, firm_message_type = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message_type.dissect(buffer, index, packet, parent)

  -- Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, matching_unit = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.matching_unit.dissect(buffer, index, packet, parent)

  -- Reserved Field: 1 Byte Unsigned Fixed Width Integer
  index, reserved_field = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.reserved_field.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Firm Message Header
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.fields.firm_message_header, buffer(offset, 0))
    local index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Firm Packet
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_packet = {}

-- Verify required size of Tcp packet
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message_header.size
end

-- Dissect Firm Packet
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Firm Message Header: Struct of 6 fields
  index, firm_message_header = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Firm Message Type
  local firm_message_type = buffer(index - 8, 2):le_uint()

  -- Firm Message: Runtime Type with 9 branches
  index = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message.dissect(buffer, index, packet, parent, firm_message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.init()
end

-- Connection roles for Cboe EdgxEquities BinaryOrderEntry Boe3 1.0.14: Firm is the initiator, Exchange is the acceptor
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
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.role = function(packet)
  if omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.acceptor_port

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

  if omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.prefs.swap_sides then
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
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Cboe EdgxEquities BinaryOrderEntry Boe3 1.0.14
function omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.name

  local role = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.role(packet)
  local dissect = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_packet.dissect
  if role == "initiator" then
    dissect = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_packet.dissect
  end

  local length = buffer:len()
  local index = 0

  -- Dissect each message the segment carries
  while index < length do
    local remaining = length - index

    -- The message length lives in the header: wait for the header before reading it
    if remaining < cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_message_header.size then
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

    local protocol = parent:add(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14, buffer(index, size), omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.description, "("..size.." Bytes)")
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
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_packet.fingerprint = function(buffer)
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

  -- New Order Us Equities V 1
  if firm_message_type == 0x0FA1 then
    return true
  end

  -- New Order Short Us Equities V 1
  if firm_message_type == 0x0FA6 then
    return true
  end

  -- Cancel Order Us Equities V 1
  if firm_message_type == 0x0FA3 then
    return true
  end

  -- Modify Order Us Equities V 1
  if firm_message_type == 0x0FA2 then
    return true
  end

  -- Purge Orders Us Equities V 1
  if firm_message_type == 0x0FA5 then
    return true
  end

  -- Reset Risk Us Equities V 1
  if firm_message_type == 0x0FA4 then
    return true
  end

  return false
end

-- Fingerprint of Exchange Packet: would its message dispatch accept this frame?
cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_packet.fingerprint = function(buffer)
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

  -- Order Acknowledgement Us Equities V 1
  if exchange_message_type == 0x1195 then
    return true
  end

  -- Order Rejected Us Equities V 1
  if exchange_message_type == 0x1196 then
    return true
  end

  -- Order Modified Us Equities V 1
  if exchange_message_type == 0x1197 then
    return true
  end

  -- Order Restated Us Equities V 1
  if exchange_message_type == 0x1199 then
    return true
  end

  -- Modify Rejected Us Equities V 1
  if exchange_message_type == 0x1198 then
    return true
  end

  -- Order Cancelled Us Equities V 1
  if exchange_message_type == 0x119A then
    return true
  end

  -- Cancel Rejected Us Equities V 1
  if exchange_message_type == 0x119B then
    return true
  end

  -- Order Execution Us Equities V 1
  if exchange_message_type == 0x119C then
    return true
  end

  -- Trade Cancel Correct Us Equities V 1
  if exchange_message_type == 0x119D then
    return true
  end

  -- Purge Rejected Us Equities V 1
  if exchange_message_type == 0x11A0 then
    return true
  end

  -- Reset Risk Acknowledgement Us Equities V 1
  if exchange_message_type == 0x119E then
    return true
  end

  -- Purge Acknowledgement Us Equities V 1
  if exchange_message_type == 0x119F then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe EdgxEquities BinaryOrderEntry Boe3 1.0.14 (Tcp)
local function omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp firm packet message dispatch
  if not cboe_edgxequities_binaryorderentry_boe3_v1_0_14.firm_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14
  omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Cboe EdgxEquities BinaryOrderEntry Boe3 1.0.14 (Tcp)
local function omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp exchange packet message dispatch
  if not cboe_edgxequities_binaryorderentry_boe3_v1_0_14.exchange_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14
  omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Cboe EdgxEquities BinaryOrderEntry Boe3 1.0.14 (Tcp): apply the heuristic of the sender's connection role
local function omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14_tcp_heuristic(buffer, packet, parent)
  local role = cboe_edgxequities_binaryorderentry_boe3_v1_0_14.role(packet)
  local initiator = omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14_tcp_initiator_heuristic
  local acceptor = omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  cboe_edgxequities_binaryorderentry_boe3_v1_0_14.swap(packet)

  return false
end

-- Register Heuristics for Cboe EdgxEquities BinaryOrderEntry Boe3 1.0.14
omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14:register_heuristic("tcp", omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14_tcp_heuristic)

-- Register Cboe EdgxEquities BinaryOrderEntry Boe3 1.0.14 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_edgxequities_binaryorderentry_boe3_v1_0_14)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0.14
--   Since: 1.0.13
--   Date: Wednesday, September 23, 2026
--   Specification: technical-specifications-cboe-titanium-u-s-equities-boev3-specification.pdf
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
