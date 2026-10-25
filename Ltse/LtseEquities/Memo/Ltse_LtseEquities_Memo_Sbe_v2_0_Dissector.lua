-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Ltse LtseEquities Memo Sbe 2.0 Protocol
local omi_ltse_ltseequities_memo_sbe_v2_0 = Proto("Omi.Ltse.LtseEquities.Memo.Sbe.v2.0", "Ltse LtseEquities Memo Sbe 2.0")

-- Protocol table
local ltse_ltseequities_memo_sbe_v2_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Ltse LtseEquities Memo Sbe 2.0 Fields
omi_ltse_ltseequities_memo_sbe_v2_0.fields.auction_id = ProtoField.new("Auction Id", "ltse.ltseequities.memo.sbe.v2.0.auctionid", ftypes.UINT64, nil, nil, nil, "AuctionId")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.auction_type = ProtoField.new("Auction Type", "ltse.ltseequities.memo.sbe.v2.0.auctiontype", ftypes.STRING, nil, nil, nil, "AuctionType")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.block_length = ProtoField.new("Block Length", "ltse.ltseequities.memo.sbe.v2.0.blocklength", ftypes.UINT16, nil, nil, nil, "Memx Udp Block length")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.block_length_short = ProtoField.new("Block Length Short", "ltse.ltseequities.memo.sbe.v2.0.blocklengthshort", ftypes.UINT8, nil, nil, nil, "blockLength")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.cancel_group_id = ProtoField.new("Cancel Group Id", "ltse.ltseequities.memo.sbe.v2.0.cancelgroupid", ftypes.UINT16, nil, nil, nil, "CancelGroupId")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.cancel_reason = ProtoField.new("Cancel Reason", "ltse.ltseequities.memo.sbe.v2.0.cancelreason", ftypes.UINT8, nil, nil, nil, "CancelReason")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.client_sbe_message = ProtoField.new("Client Sbe Message", "ltse.ltseequities.memo.sbe.v2.0.clientsbemessage", ftypes.STRING, nil, nil, nil, "Sbe message sent by the firm to Ltse")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.clordid = ProtoField.new("ClOrdId", "ltse.ltseequities.memo.sbe.v2.0.clordid", ftypes.STRING)
omi_ltse_ltseequities_memo_sbe_v2_0.fields.count = ProtoField.new("Count", "ltse.ltseequities.memo.sbe.v2.0.count", ftypes.UINT32, nil, nil, nil, "Total number of messages to include in the replay")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.cum_qty = ProtoField.new("Cum Qty", "ltse.ltseequities.memo.sbe.v2.0.cumqty", ftypes.UINT32, nil, nil, nil, "CumQty")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.cust_order_capacity = ProtoField.new("Cust Order Capacity", "ltse.ltseequities.memo.sbe.v2.0.custordercapacity", ftypes.UINT8, nil, nil, nil, "CustOrderCapacity")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.cxl_rej_reason = ProtoField.new("Cxl Rej Reason", "ltse.ltseequities.memo.sbe.v2.0.cxlrejreason", ftypes.UINT8, nil, nil, nil, "CxlRejReason")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.cxl_rej_response_to = ProtoField.new("Cxl Rej Response To", "ltse.ltseequities.memo.sbe.v2.0.cxlrejresponseto", ftypes.STRING, nil, nil, nil, "CxlRejResponseTo")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.display_method = ProtoField.new("Display Method", "ltse.ltseequities.memo.sbe.v2.0.displaymethod", ftypes.STRING, nil, nil, nil, "DisplayMethod")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.display_min_incr = ProtoField.new("Display Min Incr", "ltse.ltseequities.memo.sbe.v2.0.displayminincr", ftypes.UINT32, nil, nil, nil, "DisplayMinIncr")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.display_qty = ProtoField.new("Display Qty", "ltse.ltseequities.memo.sbe.v2.0.displayqty", ftypes.UINT32, nil, nil, nil, "DisplayQty")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.displayed_quantity = ProtoField.new("Displayed Quantity", "ltse.ltseequities.memo.sbe.v2.0.displayedquantity", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010, "DisplayedQuantity")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.exec_id = ProtoField.new("Exec Id", "ltse.ltseequities.memo.sbe.v2.0.execid", ftypes.UINT64, nil, nil, nil, "ExecID")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.exec_inst = ProtoField.new("Exec Inst", "ltse.ltseequities.memo.sbe.v2.0.execinst", ftypes.STRING, nil, nil, nil, "ExecInstType bit set")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "ltse.ltseequities.memo.sbe.v2.0.execrefid", ftypes.UINT64, nil, nil, nil, "ExecRefID")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "ltse.ltseequities.memo.sbe.v2.0.execrestatementreason", ftypes.UINT8, nil, nil, nil, "ExecRestatementReason")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_details = ProtoField.new("Execution Details", "ltse.ltseequities.memo.sbe.v2.0.executiondetails", ftypes.STRING, nil, nil, nil, "ExecutionDetailsType bit set")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.expire_time = ProtoField.new("Expire Time", "ltse.ltseequities.memo.sbe.v2.0.expiretime", ftypes.UINT64, nil, nil, nil, "ExpireTime")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.extended_exec_inst = ProtoField.new("Extended Exec Inst", "ltse.ltseequities.memo.sbe.v2.0.extendedexecinst", ftypes.STRING, nil, nil, nil, "ExtendedExecInstType bit set")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.extended_restatement_reason = ProtoField.new("Extended Restatement Reason", "ltse.ltseequities.memo.sbe.v2.0.extendedrestatementreason", ftypes.UINT8, nil, nil, nil, "ExtendedRestatementReason")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.external_routing_not_allowed = ProtoField.new("External Routing Not Allowed", "ltse.ltseequities.memo.sbe.v2.0.externalroutingnotallowed", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004, "ExternalRoutingNotAllowed")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.hidden_quantity = ProtoField.new("Hidden Quantity", "ltse.ltseequities.memo.sbe.v2.0.hiddenquantity", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008, "HiddenQuantity")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.higher_than_price = ProtoField.new("Higher Than Price", "ltse.ltseequities.memo.sbe.v2.0.higherthanprice", ftypes.DOUBLE, nil, nil, nil, "HigherThanPrice")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.immediate_order = ProtoField.new("Immediate Order", "ltse.ltseequities.memo.sbe.v2.0.immediateorder", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040, "ImmediateOrder")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.intermarket_sweep = ProtoField.new("Intermarket Sweep", "ltse.ltseequities.memo.sbe.v2.0.intermarketsweep", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002, "IntermarketSweep")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.last_liquidity_ind = ProtoField.new("Last Liquidity Ind", "ltse.ltseequities.memo.sbe.v2.0.lastliquidityind", ftypes.UINT8, nil, nil, nil, "LastLiquidityInd")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.last_mkt = ProtoField.new("Last Mkt", "ltse.ltseequities.memo.sbe.v2.0.lastmkt", ftypes.STRING, nil, nil, nil, "LastMkt")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.last_px = ProtoField.new("Last Px", "ltse.ltseequities.memo.sbe.v2.0.lastpx", ftypes.DOUBLE, nil, nil, nil, "LastPx")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.last_px_optional = ProtoField.new("Last Px Optional", "ltse.ltseequities.memo.sbe.v2.0.lastpxoptional", ftypes.DOUBLE, nil, nil, nil, "LastPx")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.last_qty = ProtoField.new("Last Qty", "ltse.ltseequities.memo.sbe.v2.0.lastqty", ftypes.UINT32, nil, nil, nil, "LastQty")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.last_qty_optional = ProtoField.new("Last Qty Optional", "ltse.ltseequities.memo.sbe.v2.0.lastqtyoptional", ftypes.UINT32, nil, nil, nil, "LastQty")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.late_auction = ProtoField.new("Late Auction", "ltse.ltseequities.memo.sbe.v2.0.lateauction", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001, "LateAuction")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.leaves_qty = ProtoField.new("Leaves Qty", "ltse.ltseequities.memo.sbe.v2.0.leavesqty", ftypes.UINT32, nil, nil, nil, "LeavesQty")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.link_id_optional = ProtoField.new("Link Id Optional", "ltse.ltseequities.memo.sbe.v2.0.linkidoptional", ftypes.STRING, nil, nil, nil, "LnkId")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.locate_broker_optional = ProtoField.new("Locate Broker Optional", "ltse.ltseequities.memo.sbe.v2.0.locatebrokeroptional", ftypes.STRING, nil, nil, nil, "LocateBroker")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.locate_reqd = ProtoField.new("Locate Reqd", "ltse.ltseequities.memo.sbe.v2.0.locatereqd", ftypes.STRING, nil, nil, nil, "LocateReqd")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.login_accepted_message = ProtoField.new("Login Accepted Message", "ltse.ltseequities.memo.sbe.v2.0.loginacceptedmessage", ftypes.STRING, nil, nil, nil, "Ltse Tcp Login Accepted Message")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.login_reject_code = ProtoField.new("Login Reject Code", "ltse.ltseequities.memo.sbe.v2.0.loginrejectcode", ftypes.STRING, nil, nil, nil, "The code for the rejection type")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.login_rejected_message = ProtoField.new("Login Rejected Message", "ltse.ltseequities.memo.sbe.v2.0.loginrejectedmessage", ftypes.STRING, nil, nil, nil, "Ltse Tcp Login Rejected Message")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.login_request_message = ProtoField.new("Login Request Message", "ltse.ltseequities.memo.sbe.v2.0.loginrequestmessage", ftypes.STRING, nil, nil, nil, "Ltse Tcp Login message")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.lower_than_price = ProtoField.new("Lower Than Price", "ltse.ltseequities.memo.sbe.v2.0.lowerthanprice", ftypes.DOUBLE, nil, nil, nil, "LowerThanPrice")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.mass_cancel_reject_reason = ProtoField.new("Mass Cancel Reject Reason", "ltse.ltseequities.memo.sbe.v2.0.masscancelrejectreason", ftypes.UINT8, nil, nil, nil, "RejectReason")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.max_sequence_number = ProtoField.new("Max Sequence Number", "ltse.ltseequities.memo.sbe.v2.0.maxsequencenumber", ftypes.UINT64, nil, nil, nil, "The maximum sequence number currently published on this stream")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.message_count = ProtoField.new("Message Count", "ltse.ltseequities.memo.sbe.v2.0.messagecount", ftypes.UINT64, nil, nil, nil, "The number of messages which were sent in the replay")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.message_length = ProtoField.new("Message Length", "ltse.ltseequities.memo.sbe.v2.0.messagelength", ftypes.UINT16, nil, nil, nil, "Total bytes following the header (does not include this header)")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.message_type = ProtoField.new("Message Type", "ltse.ltseequities.memo.sbe.v2.0.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.midpoint_order = ProtoField.new("Midpoint Order", "ltse.ltseequities.memo.sbe.v2.0.midpointorder", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020, "MidpointOrder")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.min_qty = ProtoField.new("Min Qty", "ltse.ltseequities.memo.sbe.v2.0.minqty", ftypes.UINT32, nil, nil, nil, "MinQty")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.nbbo_joiner = ProtoField.new("Nbbo Joiner", "ltse.ltseequities.memo.sbe.v2.0.nbbojoiner", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002, "NBBOJoiner")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.nbbo_setter = ProtoField.new("Nbbo Setter", "ltse.ltseequities.memo.sbe.v2.0.nbbosetter", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004, "NBBOSetter")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "ltse.ltseequities.memo.sbe.v2.0.nextsequencenumber", ftypes.UINT64, nil, nil, nil, "The first requested sequence number")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.non_attested_retail = ProtoField.new("Non Attested Retail", "ltse.ltseequities.memo.sbe.v2.0.nonattestedretail", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002, "NonAttestedRetail")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.num_groups = ProtoField.new("Num Groups", "ltse.ltseequities.memo.sbe.v2.0.numgroups", ftypes.UINT8, nil, nil, nil, "A count of repeating groups at the root level of the message")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.num_in_group = ProtoField.new("Num In Group", "ltse.ltseequities.memo.sbe.v2.0.numingroup", ftypes.UINT8, nil, nil, nil, "numInGroup")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.on_entry = ProtoField.new("On Entry", "ltse.ltseequities.memo.sbe.v2.0.onentry", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001, "OnEntry")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.ord_status = ProtoField.new("Ord Status", "ltse.ltseequities.memo.sbe.v2.0.ordstatus", ftypes.STRING, nil, nil, nil, "OrdStatus")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.ord_type = ProtoField.new("Ord Type", "ltse.ltseequities.memo.sbe.v2.0.ordtype", ftypes.STRING, nil, nil, nil, "OrdType")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.order_capacity = ProtoField.new("Order Capacity", "ltse.ltseequities.memo.sbe.v2.0.ordercapacity", ftypes.STRING, nil, nil, nil, "OrderCapacity")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.order_id = ProtoField.new("Order Id", "ltse.ltseequities.memo.sbe.v2.0.orderid", ftypes.UINT64, nil, nil, nil, "OrderID")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.order_id_optional = ProtoField.new("Order Id Optional", "ltse.ltseequities.memo.sbe.v2.0.orderidoptional", ftypes.UINT64, nil, nil, nil, "OrderID")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.order_qty = ProtoField.new("Order Qty", "ltse.ltseequities.memo.sbe.v2.0.orderqty", ftypes.UINT32, nil, nil, nil, "OrderQty")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "ltse.ltseequities.memo.sbe.v2.0.orderrejectreason", ftypes.UINT8, nil, nil, nil, "RejectReason")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.origclordid = ProtoField.new("OrigClOrdId", "ltse.ltseequities.memo.sbe.v2.0.origclordid", ftypes.STRING)
omi_ltse_ltseequities_memo_sbe_v2_0.fields.origclordid_optional = ProtoField.new("OrigClOrdId Optional", "ltse.ltseequities.memo.sbe.v2.0.origclordidoptional", ftypes.STRING, nil, nil, nil, "OrigClOrdID")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.participate_do_not_initiate = ProtoField.new("Participate Do Not Initiate", "ltse.ltseequities.memo.sbe.v2.0.participatedonotinitiate", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001, "ParticipateDoNotInitiate")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.parties_group = ProtoField.new("Parties Group", "ltse.ltseequities.memo.sbe.v2.0.partiesgroup", ftypes.STRING, nil, nil, nil, "Parties")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.parties_groups = ProtoField.new("Parties Groups", "ltse.ltseequities.memo.sbe.v2.0.partiesgroups", ftypes.STRING, nil, nil, nil, "Parties Block")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.party_id = ProtoField.new("Party Id", "ltse.ltseequities.memo.sbe.v2.0.partyid", ftypes.STRING, nil, nil, nil, "PartyID")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.party_id_source = ProtoField.new("Party Id Source", "ltse.ltseequities.memo.sbe.v2.0.partyidsource", ftypes.STRING, nil, nil, nil, "PartyIDSource")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.party_role = ProtoField.new("Party Role", "ltse.ltseequities.memo.sbe.v2.0.partyrole", ftypes.UINT8, nil, nil, nil, "PartyRole")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.peg_offset_value = ProtoField.new("Peg Offset Value", "ltse.ltseequities.memo.sbe.v2.0.pegoffsetvalue", ftypes.DOUBLE, nil, nil, nil, "PegOffsetValue")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.peg_price_type = ProtoField.new("Peg Price Type", "ltse.ltseequities.memo.sbe.v2.0.pegpricetype", ftypes.UINT8, nil, nil, nil, "PegPriceType")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.pending_message_count = ProtoField.new("Pending Message Count", "ltse.ltseequities.memo.sbe.v2.0.pendingmessagecount", ftypes.UINT32, nil, nil, nil, "The number of messages to be delivered in this replay")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.price = ProtoField.new("Price", "ltse.ltseequities.memo.sbe.v2.0.price", ftypes.DOUBLE)
omi_ltse_ltseequities_memo_sbe_v2_0.fields.price_improvement = ProtoField.new("Price Improvement", "ltse.ltseequities.memo.sbe.v2.0.priceimprovement", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200, "PriceImprovement")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.repeating_group_dimensions = ProtoField.new("Repeating Group Dimensions", "ltse.ltseequities.memo.sbe.v2.0.repeatinggroupdimensions", ftypes.STRING, nil, nil, nil, "RepeatingGroupDimensions")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.replay_all_request_message = ProtoField.new("Replay All Request Message", "ltse.ltseequities.memo.sbe.v2.0.replayallrequestmessage", ftypes.STRING, nil, nil, nil, "Ltse Tcp Replay All Request message")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.replay_begin_message = ProtoField.new("Replay Begin Message", "ltse.ltseequities.memo.sbe.v2.0.replaybeginmessage", ftypes.STRING, nil, nil, nil, "Ltse Tcp Replay Begin Message")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.replay_complete_message = ProtoField.new("Replay Complete Message", "ltse.ltseequities.memo.sbe.v2.0.replaycompletemessage", ftypes.STRING, nil, nil, nil, "Ltse Tcp Replay Complete Message")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.replay_reject_code = ProtoField.new("Replay Reject Code", "ltse.ltseequities.memo.sbe.v2.0.replayrejectcode", ftypes.STRING, nil, nil, nil, "The code for the rejection type")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.replay_rejected_message = ProtoField.new("Replay Rejected Message", "ltse.ltseequities.memo.sbe.v2.0.replayrejectedmessage", ftypes.STRING, nil, nil, nil, "Ltse Tcp Replay Rejected Message")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.replay_request_message = ProtoField.new("Replay Request Message", "ltse.ltseequities.memo.sbe.v2.0.replayrequestmessage", ftypes.STRING, nil, nil, nil, "Ltse Tcp Replay Request message")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.reprice_behavior = ProtoField.new("Reprice Behavior", "ltse.ltseequities.memo.sbe.v2.0.repricebehavior", ftypes.UINT8, nil, nil, nil, "RepriceBehavior")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.reprice_frequency = ProtoField.new("Reprice Frequency", "ltse.ltseequities.memo.sbe.v2.0.repricefrequency", ftypes.UINT8, nil, nil, nil, "RepriceFrequency")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.reserve_replenish_timing = ProtoField.new("Reserve Replenish Timing", "ltse.ltseequities.memo.sbe.v2.0.reservereplenishtiming", ftypes.UINT8, nil, nil, nil, "ReserveReplenishTiming")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.reserved_13 = ProtoField.new("Reserved 13", "ltse.ltseequities.memo.sbe.v2.0.reserved13", ftypes.UINT16, nil, base.DEC, 0xFFF8, "13 reserved bits")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.reserved_14 = ProtoField.new("Reserved 14", "ltse.ltseequities.memo.sbe.v2.0.reserved14", ftypes.UINT16, nil, base.DEC, 0xFFFC, "14 reserved bits")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.reserved_4 = ProtoField.new("Reserved 4", "ltse.ltseequities.memo.sbe.v2.0.reserved4", ftypes.UINT16, nil, base.DEC, 0xF000, "4 reserved bits")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.retail_order = ProtoField.new("Retail Order", "ltse.ltseequities.memo.sbe.v2.0.retailorder", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080, "RetailOrder")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.risk_group_id = ProtoField.new("Risk Group Id", "ltse.ltseequities.memo.sbe.v2.0.riskgroupid", ftypes.UINT16, nil, nil, nil, "RiskGroupId")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.schema_id = ProtoField.new("Schema Id", "ltse.ltseequities.memo.sbe.v2.0.schemaid", ftypes.UINT8, nil, nil, nil, "The identifier of a message schema")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.security_group = ProtoField.new("Security Group", "ltse.ltseequities.memo.sbe.v2.0.securitygroup", ftypes.STRING, nil, nil, nil, "SecurityGroup")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.self_trade_prevention = ProtoField.new("Self Trade Prevention", "ltse.ltseequities.memo.sbe.v2.0.selftradeprevention", ftypes.UINT8, nil, nil, nil, "SelfTradePrevention")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.sending_time = ProtoField.new("Sending Time", "ltse.ltseequities.memo.sbe.v2.0.sendingtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "SendingTime")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.sending_time_utc = ProtoField.new("Sending Time", "ltse.ltseequities.memo.sbe.v2.0.sendingtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "SendingTime")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.sequenced_message = ProtoField.new("Sequenced Message", "ltse.ltseequities.memo.sbe.v2.0.sequencedmessage", ftypes.STRING, nil, nil, nil, "Ltse Tcp sequenced message")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.server_sbe_message = ProtoField.new("Server Sbe Message", "ltse.ltseequities.memo.sbe.v2.0.serversbemessage", ftypes.STRING, nil, nil, nil, "Sbe message sent by Ltse to the firm")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.session_id = ProtoField.new("Session Id", "ltse.ltseequities.memo.sbe.v2.0.sessionid", ftypes.UINT64, nil, nil, nil, "The identifier for the session for which data is desired")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.side = ProtoField.new("Side", "ltse.ltseequities.memo.sbe.v2.0.side", ftypes.STRING)
omi_ltse_ltseequities_memo_sbe_v2_0.fields.side_optional = ProtoField.new("Side Optional", "ltse.ltseequities.memo.sbe.v2.0.sideoptional", ftypes.STRING, nil, nil, nil, "Side")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.start_of_session_message = ProtoField.new("Start Of Session Message", "ltse.ltseequities.memo.sbe.v2.0.startofsessionmessage", ftypes.STRING, nil, nil, nil, "Ltse Tcp Start of Session Message")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.stp_group_id = ProtoField.new("Stp Group Id", "ltse.ltseequities.memo.sbe.v2.0.stpgroupid", ftypes.UINT16, nil, nil, nil, "StpGroupId")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.stream_begin_message = ProtoField.new("Stream Begin Message", "ltse.ltseequities.memo.sbe.v2.0.streambeginmessage", ftypes.STRING, nil, nil, nil, "Ltse Tcp Stream Begin Message")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.stream_complete_message = ProtoField.new("Stream Complete Message", "ltse.ltseequities.memo.sbe.v2.0.streamcompletemessage", ftypes.STRING, nil, nil, nil, "Ltse Tcp Stream Complete Message")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.stream_reject_code = ProtoField.new("Stream Reject Code", "ltse.ltseequities.memo.sbe.v2.0.streamrejectcode", ftypes.STRING, nil, nil, nil, "The code for the rejection type")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.stream_rejected_message = ProtoField.new("Stream Rejected Message", "ltse.ltseequities.memo.sbe.v2.0.streamrejectedmessage", ftypes.STRING, nil, nil, nil, "Ltse Tcp Stream Rejected Message")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.stream_request_message = ProtoField.new("Stream Request Message", "ltse.ltseequities.memo.sbe.v2.0.streamrequestmessage", ftypes.STRING, nil, nil, nil, "Ltse Tcp Stream Request message")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.supported_request_mode = ProtoField.new("Supported Request Mode", "ltse.ltseequities.memo.sbe.v2.0.supportedrequestmode", ftypes.STRING, nil, nil, nil, "The request mode that this connection supports")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.symbol = ProtoField.new("Symbol", "ltse.ltseequities.memo.sbe.v2.0.symbol", ftypes.STRING)
omi_ltse_ltseequities_memo_sbe_v2_0.fields.symbol_sfx = ProtoField.new("Symbol Sfx", "ltse.ltseequities.memo.sbe.v2.0.symbolsfx", ftypes.STRING, nil, nil, nil, "SymbolSfx")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.template_id = ProtoField.new("Template Id", "ltse.ltseequities.memo.sbe.v2.0.templateid", ftypes.UINT8, nil, nil, nil, "T8 Identifier of the message template")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.time_in_force = ProtoField.new("Time In Force", "ltse.ltseequities.memo.sbe.v2.0.timeinforce", ftypes.STRING, nil, nil, nil, "TimeInForce")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.token = ProtoField.new("Token", "ltse.ltseequities.memo.sbe.v2.0.token", ftypes.STRING, nil, nil, nil, "Login Token")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.token_type = ProtoField.new("Token Type", "ltse.ltseequities.memo.sbe.v2.0.tokentype", ftypes.STRING, nil, nil, nil, "Login Token type")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.total_sequence_count = ProtoField.new("Total Sequence Count", "ltse.ltseequities.memo.sbe.v2.0.totalsequencecount", ftypes.UINT64, nil, nil, nil, "The count of messages that were sent on this stream")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.traded_against_hidden = ProtoField.new("Traded Against Hidden", "ltse.ltseequities.memo.sbe.v2.0.tradedagainsthidden", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800, "TradedAgainstHidden")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.traded_against_retail = ProtoField.new("Traded Against Retail", "ltse.ltseequities.memo.sbe.v2.0.tradedagainstretail", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400, "TradedAgainstRetail")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.traded_at_midpoint = ProtoField.new("Traded At Midpoint", "ltse.ltseequities.memo.sbe.v2.0.tradedatmidpoint", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100, "TradedAtMidpoint")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.transact_time = ProtoField.new("Transact Time", "ltse.ltseequities.memo.sbe.v2.0.transacttime", ftypes.UINT64, nil, nil, nil, "TransactTime")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.trd_match_id = ProtoField.new("Trd Match Id", "ltse.ltseequities.memo.sbe.v2.0.trdmatchid", ftypes.UINT64, nil, nil, nil, "TrdMatchID")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.trd_matching_id = ProtoField.new("Trd Matching Id", "ltse.ltseequities.memo.sbe.v2.0.trdmatchingid", ftypes.UINT64, nil, nil, nil, "TrdMatchingID")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "ltse.ltseequities.memo.sbe.v2.0.unsequencedmessage", ftypes.STRING, nil, nil, nil, "Ltse Tcp unsequenced message")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.version = ProtoField.new("Version", "ltse.ltseequities.memo.sbe.v2.0.version", ftypes.UINT16, nil, nil, nil, "The version number of the message schema that was used to encode a message")

-- Ltse LtseEquities Memo Sbe 2.0 Framing
omi_ltse_ltseequities_memo_sbe_v2_0.fields.client_packet = ProtoField.new("Client Packet", "ltse.ltseequities.memo.sbe.v2.0.clientpacket", ftypes.STRING, nil, nil, nil, "Ltse Tcp packet sent by the firm to Ltse")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.common_header = ProtoField.new("Common Header", "ltse.ltseequities.memo.sbe.v2.0.commonheader", ftypes.STRING, nil, nil, nil, "Tcp Common Header")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.sbe_header = ProtoField.new("Sbe Header", "ltse.ltseequities.memo.sbe.v2.0.sbeheader", ftypes.STRING)
omi_ltse_ltseequities_memo_sbe_v2_0.fields.server_packet = ProtoField.new("Server Packet", "ltse.ltseequities.memo.sbe.v2.0.serverpacket", ftypes.STRING, nil, nil, nil, "Ltse Tcp packet sent by Ltse to the firm")

-- Ltse LtseEquities Memo 2.0 Application Messages
omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_report_canceled_message = ProtoField.new("Execution Report Canceled Message", "ltse.ltseequities.memo.sbe.v2.0.executionreportcanceledmessage", ftypes.STRING, nil, nil, nil, "ExecutionReport_CanceledMessage")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_report_new_message = ProtoField.new("Execution Report New Message", "ltse.ltseequities.memo.sbe.v2.0.executionreportnewmessage", ftypes.STRING, nil, nil, nil, "ExecutionReport_NewMessage")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_report_pending_cancel_message = ProtoField.new("Execution Report Pending Cancel Message", "ltse.ltseequities.memo.sbe.v2.0.executionreportpendingcancelmessage", ftypes.STRING, nil, nil, nil, "ExecutionReport_PendingCancelMessage")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_report_pending_replace_message = ProtoField.new("Execution Report Pending Replace Message", "ltse.ltseequities.memo.sbe.v2.0.executionreportpendingreplacemessage", ftypes.STRING, nil, nil, nil, "ExecutionReport_PendingReplaceMessage")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_report_rejected_message = ProtoField.new("Execution Report Rejected Message", "ltse.ltseequities.memo.sbe.v2.0.executionreportrejectedmessage", ftypes.STRING, nil, nil, nil, "ExecutionReport_RejectedMessage")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_report_replaced_message = ProtoField.new("Execution Report Replaced Message", "ltse.ltseequities.memo.sbe.v2.0.executionreportreplacedmessage", ftypes.STRING, nil, nil, nil, "ExecutionReport_ReplacedMessage")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_report_restatement_message = ProtoField.new("Execution Report Restatement Message", "ltse.ltseequities.memo.sbe.v2.0.executionreportrestatementmessage", ftypes.STRING, nil, nil, nil, "ExecutionReport_RestatementMessage")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_report_trade_break_message = ProtoField.new("Execution Report Trade Break Message", "ltse.ltseequities.memo.sbe.v2.0.executionreporttradebreakmessage", ftypes.STRING, nil, nil, nil, "ExecutionReport_TradeBreakMessage")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_report_trade_correction_message = ProtoField.new("Execution Report Trade Correction Message", "ltse.ltseequities.memo.sbe.v2.0.executionreporttradecorrectionmessage", ftypes.STRING, nil, nil, nil, "ExecutionReport_TradeCorrectionMessage")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_report_trade_message = ProtoField.new("Execution Report Trade Message", "ltse.ltseequities.memo.sbe.v2.0.executionreporttrademessage", ftypes.STRING, nil, nil, nil, "ExecutionReport_TradeMessage")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.mass_cancel_done_message = ProtoField.new("Mass Cancel Done Message", "ltse.ltseequities.memo.sbe.v2.0.masscanceldonemessage", ftypes.STRING, nil, nil, nil, "MassCancelDoneMessage")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.mass_cancel_reject_message = ProtoField.new("Mass Cancel Reject Message", "ltse.ltseequities.memo.sbe.v2.0.masscancelrejectmessage", ftypes.STRING, nil, nil, nil, "MassCancelRejectMessage")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.mass_cancel_request_message = ProtoField.new("Mass Cancel Request Message", "ltse.ltseequities.memo.sbe.v2.0.masscancelrequestmessage", ftypes.STRING, nil, nil, nil, "MassCancelRequestMessage")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.new_order_single_message = ProtoField.new("New Order Single Message", "ltse.ltseequities.memo.sbe.v2.0.newordersinglemessage", ftypes.STRING, nil, nil, nil, "NewOrderSingleMessage")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.order_cancel_reject_message = ProtoField.new("Order Cancel Reject Message", "ltse.ltseequities.memo.sbe.v2.0.ordercancelrejectmessage", ftypes.STRING, nil, nil, nil, "OrderCancelRejectMessage")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.order_cancel_replace_request_message = ProtoField.new("Order Cancel Replace Request Message", "ltse.ltseequities.memo.sbe.v2.0.ordercancelreplacerequestmessage", ftypes.STRING, nil, nil, nil, "OrderCancelReplaceRequestMessage")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "ltse.ltseequities.memo.sbe.v2.0.ordercancelrequestmessage", ftypes.STRING, nil, nil, nil, "OrderCancelRequestMessage")
omi_ltse_ltseequities_memo_sbe_v2_0.fields.pending_mass_cancel_message = ProtoField.new("Pending Mass Cancel Message", "ltse.ltseequities.memo.sbe.v2.0.pendingmasscancelmessage", ftypes.STRING, nil, nil, nil, "PendingMassCancelMessage")

-- Ltse LtseEquities Memo Sbe 2.0 Generated Fields
omi_ltse_ltseequities_memo_sbe_v2_0.fields.parties_group_index = ProtoField.new("Parties Group Index", "ltse.ltseequities.memo.sbe.v2.0.partiesgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Ltse LtseEquities Memo Sbe 2.0 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
ltse_ltseequities_memo_sbe_v2_0.absolute_time_base = 0

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

-- Ltse LtseEquities Memo Sbe 2.0 Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true
show.repeating_groups = true
show.indexes = true

-- Register Ltse LtseEquities Memo Sbe 2.0 Show Options
omi_ltse_ltseequities_memo_sbe_v2_0.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_ltse_ltseequities_memo_sbe_v2_0.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_ltse_ltseequities_memo_sbe_v2_0.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_ltse_ltseequities_memo_sbe_v2_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_ltse_ltseequities_memo_sbe_v2_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_ltse_ltseequities_memo_sbe_v2_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_ltse_ltseequities_memo_sbe_v2_0.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_ltse_ltseequities_memo_sbe_v2_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_ltse_ltseequities_memo_sbe_v2_0.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_ltse_ltseequities_memo_sbe_v2_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_ltse_ltseequities_memo_sbe_v2_0.prefs.show_application_messages then
    show.application_messages = omi_ltse_ltseequities_memo_sbe_v2_0.prefs.show_application_messages
  end
  if show.headers ~= omi_ltse_ltseequities_memo_sbe_v2_0.prefs.show_headers then
    show.headers = omi_ltse_ltseequities_memo_sbe_v2_0.prefs.show_headers
  end
  if show.repeating_groups ~= omi_ltse_ltseequities_memo_sbe_v2_0.prefs.show_repeating_groups then
    show.repeating_groups = omi_ltse_ltseequities_memo_sbe_v2_0.prefs.show_repeating_groups
  end
  if show.structs ~= omi_ltse_ltseequities_memo_sbe_v2_0.prefs.show_structs then
    show.structs = omi_ltse_ltseequities_memo_sbe_v2_0.prefs.show_structs
  end
  if show.indexes ~= omi_ltse_ltseequities_memo_sbe_v2_0.prefs.show_indexes then
    show.indexes = omi_ltse_ltseequities_memo_sbe_v2_0.prefs.show_indexes
  end
  if ltse_ltseequities_memo_sbe_v2_0.absolute_time_base ~= omi_ltse_ltseequities_memo_sbe_v2_0.prefs.absolute_time_base then
    ltse_ltseequities_memo_sbe_v2_0.absolute_time_base = omi_ltse_ltseequities_memo_sbe_v2_0.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Ltse LtseEquities Memo Sbe 2.0 Fields
-----------------------------------------------------------------------

-- Auction Id
ltse_ltseequities_memo_sbe_v2_0.auction_id = {}

-- Size: Auction Id
ltse_ltseequities_memo_sbe_v2_0.auction_id.size = 8

-- Display: Auction Id
ltse_ltseequities_memo_sbe_v2_0.auction_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Auction Id: No Value"
  end

  return "Auction Id: "..value
end

-- Dissect: Auction Id
ltse_ltseequities_memo_sbe_v2_0.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.auction_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_ltseequities_memo_sbe_v2_0.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Type
ltse_ltseequities_memo_sbe_v2_0.auction_type = {}

-- Size: Auction Type
ltse_ltseequities_memo_sbe_v2_0.auction_type.size = 1

-- Display: Auction Type
ltse_ltseequities_memo_sbe_v2_0.auction_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Auction Type: No Value"
  end

  if value == "O" then
    return "Auction Type: Open (O)"
  end
  if value == "C" then
    return "Auction Type: Close (C)"
  end
  if value == "I" then
    return "Auction Type: Ipo (I)"
  end
  if value == "H" then
    return "Auction Type: Halt (H)"
  end
  if value == "P" then
    return "Auction Type: Volatility Pause (P)"
  end
  if value == 0 then
    return "Auction Type: No Value"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
ltse_ltseequities_memo_sbe_v2_0.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.auction_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ltse_ltseequities_memo_sbe_v2_0.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Block Length
ltse_ltseequities_memo_sbe_v2_0.block_length = {}

-- Size: Block Length
ltse_ltseequities_memo_sbe_v2_0.block_length.size = 2

-- Display: Block Length
ltse_ltseequities_memo_sbe_v2_0.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
ltse_ltseequities_memo_sbe_v2_0.block_length.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Block Length Short
ltse_ltseequities_memo_sbe_v2_0.block_length_short = {}

-- Size: Block Length Short
ltse_ltseequities_memo_sbe_v2_0.block_length_short.size = 1

-- Display: Block Length Short
ltse_ltseequities_memo_sbe_v2_0.block_length_short.display = function(value)
  return "Block Length Short: "..value
end

-- Dissect: Block Length Short
ltse_ltseequities_memo_sbe_v2_0.block_length_short.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.block_length_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.block_length_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.block_length_short, range, value, display)

  return offset + length, value
end

-- Cancel Group Id
ltse_ltseequities_memo_sbe_v2_0.cancel_group_id = {}

-- Size: Cancel Group Id
ltse_ltseequities_memo_sbe_v2_0.cancel_group_id.size = 2

-- Display: Cancel Group Id
ltse_ltseequities_memo_sbe_v2_0.cancel_group_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Cancel Group Id: No Value"
  end

  return "Cancel Group Id: "..value
end

-- Dissect: Cancel Group Id
ltse_ltseequities_memo_sbe_v2_0.cancel_group_id.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.cancel_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.cancel_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.cancel_group_id, range, value, display)

  return offset + length, value
end

-- Cancel Reason
ltse_ltseequities_memo_sbe_v2_0.cancel_reason = {}

-- Size: Cancel Reason
ltse_ltseequities_memo_sbe_v2_0.cancel_reason.size = 1

-- Display: Cancel Reason
ltse_ltseequities_memo_sbe_v2_0.cancel_reason.display = function(value)
  if value == 0 then
    return "Cancel Reason: Other (0)"
  end
  if value == 1 then
    return "Cancel Reason: User Requested Cancel (1)"
  end
  if value == 4 then
    return "Cancel Reason: End Of Trading (4)"
  end
  if value == 5 then
    return "Cancel Reason: Limit Up Limit Down (5)"
  end
  if value == 6 then
    return "Cancel Reason: Halted (6)"
  end
  if value == 7 then
    return "Cancel Reason: Exchange Supervisory (7)"
  end
  if value == 8 then
    return "Cancel Reason: Order Expired (8)"
  end
  if value == 9 then
    return "Cancel Reason: Lock Or Cross Book (9)"
  end
  if value == 10 then
    return "Cancel Reason: Self Trade Prevention (10)"
  end
  if value == 11 then
    return "Cancel Reason: Insufficient Quotes (11)"
  end
  if value == 12 then
    return "Cancel Reason: Non Compliant Reg Nms Price (12)"
  end
  if value == 13 then
    return "Cancel Reason: Participant Disconnect (13)"
  end
  if value == 14 then
    return "Cancel Reason: Order Not Bookable (14)"
  end
  if value == 15 then
    return "Cancel Reason: Trade Protection Limits (15)"
  end
  if value == 16 then
    return "Cancel Reason: Unable To Route (16)"
  end
  if value == 17 then
    return "Cancel Reason: Firm Disabled (17)"
  end
  if value == 18 then
    return "Cancel Reason: Mpid Disabled (18)"
  end
  if value == 19 then
    return "Cancel Reason: Account Disabled (19)"
  end
  if value == 20 then
    return "Cancel Reason: Notional Exposure Risk Breached (20)"
  end
  if value == 21 then
    return "Cancel Reason: Invalid Cl Ord Id (21)"
  end
  if value == 22 then
    return "Cancel Reason: No Contra Liquidity (22)"
  end
  if value == 23 then
    return "Cancel Reason: Outside Collar Price Range (23)"
  end
  if value == 24 then
    return "Cancel Reason: Non Compliant Reg Sho Price (24)"
  end
  if value == 255 then
    return "Cancel Reason: Null Value (255)"
  end
  if value == 255 then
    return "Cancel Reason: No Value"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
ltse_ltseequities_memo_sbe_v2_0.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- ClOrdId
ltse_ltseequities_memo_sbe_v2_0.clordid = {}

-- Size: ClOrdId
ltse_ltseequities_memo_sbe_v2_0.clordid.size = 16

-- Display: ClOrdId
ltse_ltseequities_memo_sbe_v2_0.clordid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "ClOrdId: No Value"
  end

  return "ClOrdId: "..value
end

-- Dissect: ClOrdId
ltse_ltseequities_memo_sbe_v2_0.clordid.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.clordid.size
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

  local display = ltse_ltseequities_memo_sbe_v2_0.clordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.clordid, range, value, display)

  return offset + length, value
end

-- Count
ltse_ltseequities_memo_sbe_v2_0.count = {}

-- Size: Count
ltse_ltseequities_memo_sbe_v2_0.count.size = 4

-- Display: Count
ltse_ltseequities_memo_sbe_v2_0.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
ltse_ltseequities_memo_sbe_v2_0.count.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.count, range, value, display)

  return offset + length, value
end

-- Cum Qty
ltse_ltseequities_memo_sbe_v2_0.cum_qty = {}

-- Size: Cum Qty
ltse_ltseequities_memo_sbe_v2_0.cum_qty.size = 4

-- Display: Cum Qty
ltse_ltseequities_memo_sbe_v2_0.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
ltse_ltseequities_memo_sbe_v2_0.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.cum_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Cust Order Capacity
ltse_ltseequities_memo_sbe_v2_0.cust_order_capacity = {}

-- Size: Cust Order Capacity
ltse_ltseequities_memo_sbe_v2_0.cust_order_capacity.size = 1

-- Display: Cust Order Capacity
ltse_ltseequities_memo_sbe_v2_0.cust_order_capacity.display = function(value)
  if value == 1 then
    return "Cust Order Capacity: Member Trading On Their Own Account (1)"
  end
  if value == 5 then
    return "Cust Order Capacity: Retail Customer (5)"
  end
  if value == 255 then
    return "Cust Order Capacity: Null Value (255)"
  end
  if value == 255 then
    return "Cust Order Capacity: No Value"
  end

  return "Cust Order Capacity: Unknown("..value..")"
end

-- Dissect: Cust Order Capacity
ltse_ltseequities_memo_sbe_v2_0.cust_order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.cust_order_capacity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.cust_order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.cust_order_capacity, range, value, display)

  return offset + length, value
end

-- Cxl Rej Reason
ltse_ltseequities_memo_sbe_v2_0.cxl_rej_reason = {}

-- Size: Cxl Rej Reason
ltse_ltseequities_memo_sbe_v2_0.cxl_rej_reason.size = 1

-- Display: Cxl Rej Reason
ltse_ltseequities_memo_sbe_v2_0.cxl_rej_reason.display = function(value)
  if value == 0 then
    return "Cxl Rej Reason: Too Late To Cancel (0)"
  end
  if value == 1 then
    return "Cxl Rej Reason: Unknown Orig Order (1)"
  end
  if value == 3 then
    return "Cxl Rej Reason: Order In Pending State (3)"
  end
  if value == 6 then
    return "Cxl Rej Reason: Duplicate Cl Ord Id (6)"
  end
  if value == 18 then
    return "Cxl Rej Reason: Invalid Limit Price Increment (18)"
  end
  if value == 99 then
    return "Cxl Rej Reason: Other (99)"
  end
  if value == 100 then
    return "Cxl Rej Reason: Missing Symbol (100)"
  end
  if value == 101 then
    return "Cxl Rej Reason: Missing Locate (101)"
  end
  if value == 102 then
    return "Cxl Rej Reason: Missing Cl Ord Id (102)"
  end
  if value == 103 then
    return "Cxl Rej Reason: Invalid Order Quantity (103)"
  end
  if value == 104 then
    return "Cxl Rej Reason: Invalid Symbol (104)"
  end
  if value == 105 then
    return "Cxl Rej Reason: Invalid Limit Price (105)"
  end
  if value == 107 then
    return "Cxl Rej Reason: Symbol Halted Or Paused (107)"
  end
  if value == 108 then
    return "Cxl Rej Reason: Order Size Exceeds Limit (108)"
  end
  if value == 109 then
    return "Cxl Rej Reason: Exceeded Max Notional Order Amt (109)"
  end
  if value == 110 then
    return "Cxl Rej Reason: Missing Orig Order Identifiers (110)"
  end
  if value == 111 then
    return "Cxl Rej Reason: Ambiguous Orig Order Identifiers (111)"
  end
  if value == 112 then
    return "Cxl Rej Reason: Orig Order Symbol Not Matching Request Symbol (112)"
  end
  if value == 113 then
    return "Cxl Rej Reason: Unsupported Display Quantity Change (113)"
  end
  if value == 114 then
    return "Cxl Rej Reason: Unsupported Ord Type Change (114)"
  end
  if value == 115 then
    return "Cxl Rej Reason: Unsupported Side Change (115)"
  end
  if value == 116 then
    return "Cxl Rej Reason: Unsupported Quantity Change (116)"
  end
  if value == 117 then
    return "Cxl Rej Reason: Invalid Locate (117)"
  end
  if value == 118 then
    return "Cxl Rej Reason: Exchange Closed (118)"
  end
  if value == 119 then
    return "Cxl Rej Reason: Block Session Risk Rule Violated (119)"
  end
  if value == 120 then
    return "Cxl Rej Reason: Block Sell Short Risk Rule Violated (120)"
  end
  if value == 121 then
    return "Cxl Rej Reason: Max Shares Per Order Risk Rule Breach (121)"
  end
  if value == 122 then
    return "Cxl Rej Reason: No Nbbo Available (122)"
  end
  if value == 123 then
    return "Cxl Rej Reason: Max Notional Value Per Order Risk Rule Breach (123)"
  end
  if value == 124 then
    return "Cxl Rej Reason: Max Adv Percent Per Order Risk Rule Breach (124)"
  end
  if value == 125 then
    return "Cxl Rej Reason: Price Percent Collar Risk Rule Violated (125)"
  end
  if value == 126 then
    return "Cxl Rej Reason: Price Value Collar Risk Rule Violated (126)"
  end
  if value == 127 then
    return "Cxl Rej Reason: Hard To Borrow Security Risk Rule Violated (127)"
  end
  if value == 128 then
    return "Cxl Rej Reason: Invalid Side (128)"
  end
  if value == 129 then
    return "Cxl Rej Reason: Invalid Ord Type (129)"
  end
  if value == 130 then
    return "Cxl Rej Reason: Invalid Cl Ord Id (130)"
  end
  if value == 131 then
    return "Cxl Rej Reason: Invalid Lnk Id (131)"
  end
  if value == 132 then
    return "Cxl Rej Reason: Missing Locate Broker (132)"
  end
  if value == 133 then
    return "Cxl Rej Reason: Invalid Locate Broker (133)"
  end
  if value == 255 then
    return "Cxl Rej Reason: Null Value (255)"
  end

  return "Cxl Rej Reason: Unknown("..value..")"
end

-- Dissect: Cxl Rej Reason
ltse_ltseequities_memo_sbe_v2_0.cxl_rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.cxl_rej_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.cxl_rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.cxl_rej_reason, range, value, display)

  return offset + length, value
end

-- Cxl Rej Response To
ltse_ltseequities_memo_sbe_v2_0.cxl_rej_response_to = {}

-- Size: Cxl Rej Response To
ltse_ltseequities_memo_sbe_v2_0.cxl_rej_response_to.size = 1

-- Display: Cxl Rej Response To
ltse_ltseequities_memo_sbe_v2_0.cxl_rej_response_to.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Cxl Rej Response To: No Value"
  end

  if value == "1" then
    return "Cxl Rej Response To: Order Cancel Request (1)"
  end
  if value == "2" then
    return "Cxl Rej Response To: Order Cancel Replace Request (2)"
  end

  return "Cxl Rej Response To: Unknown("..value..")"
end

-- Dissect: Cxl Rej Response To
ltse_ltseequities_memo_sbe_v2_0.cxl_rej_response_to.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.cxl_rej_response_to.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ltse_ltseequities_memo_sbe_v2_0.cxl_rej_response_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.cxl_rej_response_to, range, value, display)

  return offset + length, value
end

-- Display Method
ltse_ltseequities_memo_sbe_v2_0.display_method = {}

-- Size: Display Method
ltse_ltseequities_memo_sbe_v2_0.display_method.size = 1

-- Display: Display Method
ltse_ltseequities_memo_sbe_v2_0.display_method.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Display Method: No Value"
  end

  if value == "1" then
    return "Display Method: Initial (1)"
  end
  if value == "3" then
    return "Display Method: Random (3)"
  end
  if value == "4" then
    return "Display Method: Undisclosed (4)"
  end
  if value == 0 then
    return "Display Method: No Value"
  end

  return "Display Method: Unknown("..value..")"
end

-- Dissect: Display Method
ltse_ltseequities_memo_sbe_v2_0.display_method.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.display_method.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ltse_ltseequities_memo_sbe_v2_0.display_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.display_method, range, value, display)

  return offset + length, value
end

-- Display Min Incr
ltse_ltseequities_memo_sbe_v2_0.display_min_incr = {}

-- Size: Display Min Incr
ltse_ltseequities_memo_sbe_v2_0.display_min_incr.size = 4

-- Display: Display Min Incr
ltse_ltseequities_memo_sbe_v2_0.display_min_incr.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Display Min Incr: No Value"
  end

  return "Display Min Incr: "..value
end

-- Dissect: Display Min Incr
ltse_ltseequities_memo_sbe_v2_0.display_min_incr.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.display_min_incr.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.display_min_incr.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.display_min_incr, range, value, display)

  return offset + length, value
end

-- Display Qty
ltse_ltseequities_memo_sbe_v2_0.display_qty = {}

-- Size: Display Qty
ltse_ltseequities_memo_sbe_v2_0.display_qty.size = 4

-- Display: Display Qty
ltse_ltseequities_memo_sbe_v2_0.display_qty.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Display Qty: No Value"
  end

  return "Display Qty: "..value
end

-- Dissect: Display Qty
ltse_ltseequities_memo_sbe_v2_0.display_qty.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.display_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Exec Id
ltse_ltseequities_memo_sbe_v2_0.exec_id = {}

-- Size: Exec Id
ltse_ltseequities_memo_sbe_v2_0.exec_id.size = 8

-- Display: Exec Id
ltse_ltseequities_memo_sbe_v2_0.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
ltse_ltseequities_memo_sbe_v2_0.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.exec_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_ltseequities_memo_sbe_v2_0.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
ltse_ltseequities_memo_sbe_v2_0.exec_ref_id = {}

-- Size: Exec Ref Id
ltse_ltseequities_memo_sbe_v2_0.exec_ref_id.size = 8

-- Display: Exec Ref Id
ltse_ltseequities_memo_sbe_v2_0.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
ltse_ltseequities_memo_sbe_v2_0.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_ltseequities_memo_sbe_v2_0.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Exec Restatement Reason
ltse_ltseequities_memo_sbe_v2_0.exec_restatement_reason = {}

-- Size: Exec Restatement Reason
ltse_ltseequities_memo_sbe_v2_0.exec_restatement_reason.size = 1

-- Display: Exec Restatement Reason
ltse_ltseequities_memo_sbe_v2_0.exec_restatement_reason.display = function(value)
  if value == 3 then
    return "Exec Restatement Reason: Order Reprice (3)"
  end
  if value == 5 then
    return "Exec Restatement Reason: Self Trade Prevention (5)"
  end
  if value == 99 then
    return "Exec Restatement Reason: Other (99)"
  end
  if value == 255 then
    return "Exec Restatement Reason: Null Value (255)"
  end

  return "Exec Restatement Reason: Unknown("..value..")"
end

-- Dissect: Exec Restatement Reason
ltse_ltseequities_memo_sbe_v2_0.exec_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.exec_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.exec_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Expire Time
ltse_ltseequities_memo_sbe_v2_0.expire_time = {}

-- Size: Expire Time
ltse_ltseequities_memo_sbe_v2_0.expire_time.size = 8

-- Display: Expire Time
ltse_ltseequities_memo_sbe_v2_0.expire_time.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Expire Time: No Value"
  end

  return "Expire Time: "..value
end

-- Dissect: Expire Time
ltse_ltseequities_memo_sbe_v2_0.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.expire_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_ltseequities_memo_sbe_v2_0.expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Extended Restatement Reason
ltse_ltseequities_memo_sbe_v2_0.extended_restatement_reason = {}

-- Size: Extended Restatement Reason
ltse_ltseequities_memo_sbe_v2_0.extended_restatement_reason.size = 1

-- Display: Extended Restatement Reason
ltse_ltseequities_memo_sbe_v2_0.extended_restatement_reason.display = function(value)
  if value == 0 then
    return "Extended Restatement Reason: None (0)"
  end
  if value == 1 then
    return "Extended Restatement Reason: Set Nbbo (1)"
  end
  if value == 2 then
    return "Extended Restatement Reason: Joined Nbbo (2)"
  end
  if value == 3 then
    return "Extended Restatement Reason: Self Trade Cancel Newest (3)"
  end
  if value == 4 then
    return "Extended Restatement Reason: Self Trade Cancel Oldest (4)"
  end
  if value == 5 then
    return "Extended Restatement Reason: Self Trade Decrement And Cancel (5)"
  end
  if value == 6 then
    return "Extended Restatement Reason: Self Trade Cancel Both (6)"
  end
  if value == 7 then
    return "Extended Restatement Reason: Self Trade Cancel Smallest (7)"
  end
  if value == 255 then
    return "Extended Restatement Reason: Null Value (255)"
  end
  if value == 255 then
    return "Extended Restatement Reason: No Value"
  end

  return "Extended Restatement Reason: Unknown("..value..")"
end

-- Dissect: Extended Restatement Reason
ltse_ltseequities_memo_sbe_v2_0.extended_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.extended_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.extended_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.extended_restatement_reason, range, value, display)

  return offset + length, value
end

-- Higher Than Price
ltse_ltseequities_memo_sbe_v2_0.higher_than_price = {}

-- Size: Higher Than Price
ltse_ltseequities_memo_sbe_v2_0.higher_than_price.size = 8

-- Display: Higher Than Price
ltse_ltseequities_memo_sbe_v2_0.higher_than_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Higher Than Price: No Value"
  end

  return "Higher Than Price: "..value
end

-- Translate: Higher Than Price
ltse_ltseequities_memo_sbe_v2_0.higher_than_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Higher Than Price
ltse_ltseequities_memo_sbe_v2_0.higher_than_price.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.higher_than_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = ltse_ltseequities_memo_sbe_v2_0.higher_than_price.translate(raw)
  local display = ltse_ltseequities_memo_sbe_v2_0.higher_than_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.higher_than_price, range, value, display)

  return offset + length, value
end

-- Last Liquidity Ind
ltse_ltseequities_memo_sbe_v2_0.last_liquidity_ind = {}

-- Size: Last Liquidity Ind
ltse_ltseequities_memo_sbe_v2_0.last_liquidity_ind.size = 1

-- Display: Last Liquidity Ind
ltse_ltseequities_memo_sbe_v2_0.last_liquidity_ind.display = function(value)
  if value == 1 then
    return "Last Liquidity Ind: Add (1)"
  end
  if value == 2 then
    return "Last Liquidity Ind: Removed (2)"
  end
  if value == 3 then
    return "Last Liquidity Ind: Routed (3)"
  end
  if value == 4 then
    return "Last Liquidity Ind: Auction (4)"
  end
  if value == 255 then
    return "Last Liquidity Ind: Null Value (255)"
  end

  return "Last Liquidity Ind: Unknown("..value..")"
end

-- Dissect: Last Liquidity Ind
ltse_ltseequities_memo_sbe_v2_0.last_liquidity_ind.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.last_liquidity_ind.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.last_liquidity_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.last_liquidity_ind, range, value, display)

  return offset + length, value
end

-- Last Mkt
ltse_ltseequities_memo_sbe_v2_0.last_mkt = {}

-- Size: Last Mkt
ltse_ltseequities_memo_sbe_v2_0.last_mkt.size = 4

-- Display: Last Mkt
ltse_ltseequities_memo_sbe_v2_0.last_mkt.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Last Mkt: No Value"
  end

  return "Last Mkt: "..value
end

-- Dissect: Last Mkt
ltse_ltseequities_memo_sbe_v2_0.last_mkt.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.last_mkt.size
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

  local display = ltse_ltseequities_memo_sbe_v2_0.last_mkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.last_mkt, range, value, display)

  return offset + length, value
end

-- Last Px
ltse_ltseequities_memo_sbe_v2_0.last_px = {}

-- Size: Last Px
ltse_ltseequities_memo_sbe_v2_0.last_px.size = 8

-- Display: Last Px
ltse_ltseequities_memo_sbe_v2_0.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
ltse_ltseequities_memo_sbe_v2_0.last_px.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Px
ltse_ltseequities_memo_sbe_v2_0.last_px.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.last_px.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = ltse_ltseequities_memo_sbe_v2_0.last_px.translate(raw)
  local display = ltse_ltseequities_memo_sbe_v2_0.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Px Optional
ltse_ltseequities_memo_sbe_v2_0.last_px_optional = {}

-- Size: Last Px Optional
ltse_ltseequities_memo_sbe_v2_0.last_px_optional.size = 8

-- Display: Last Px Optional
ltse_ltseequities_memo_sbe_v2_0.last_px_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Last Px Optional: No Value"
  end

  return "Last Px Optional: "..value
end

-- Translate: Last Px Optional
ltse_ltseequities_memo_sbe_v2_0.last_px_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Last Px Optional
ltse_ltseequities_memo_sbe_v2_0.last_px_optional.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.last_px_optional.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = ltse_ltseequities_memo_sbe_v2_0.last_px_optional.translate(raw)
  local display = ltse_ltseequities_memo_sbe_v2_0.last_px_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.last_px_optional, range, value, display)

  return offset + length, value
end

-- Last Qty
ltse_ltseequities_memo_sbe_v2_0.last_qty = {}

-- Size: Last Qty
ltse_ltseequities_memo_sbe_v2_0.last_qty.size = 4

-- Display: Last Qty
ltse_ltseequities_memo_sbe_v2_0.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
ltse_ltseequities_memo_sbe_v2_0.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.last_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Last Qty Optional
ltse_ltseequities_memo_sbe_v2_0.last_qty_optional = {}

-- Size: Last Qty Optional
ltse_ltseequities_memo_sbe_v2_0.last_qty_optional.size = 4

-- Display: Last Qty Optional
ltse_ltseequities_memo_sbe_v2_0.last_qty_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Last Qty Optional: No Value"
  end

  return "Last Qty Optional: "..value
end

-- Dissect: Last Qty Optional
ltse_ltseequities_memo_sbe_v2_0.last_qty_optional.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.last_qty_optional.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.last_qty_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.last_qty_optional, range, value, display)

  return offset + length, value
end

-- Leaves Qty
ltse_ltseequities_memo_sbe_v2_0.leaves_qty = {}

-- Size: Leaves Qty
ltse_ltseequities_memo_sbe_v2_0.leaves_qty.size = 4

-- Display: Leaves Qty
ltse_ltseequities_memo_sbe_v2_0.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
ltse_ltseequities_memo_sbe_v2_0.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Link Id Optional
ltse_ltseequities_memo_sbe_v2_0.link_id_optional = {}

-- Size: Link Id Optional
ltse_ltseequities_memo_sbe_v2_0.link_id_optional.size = 4

-- Display: Link Id Optional
ltse_ltseequities_memo_sbe_v2_0.link_id_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Link Id Optional: No Value"
  end

  return "Link Id Optional: "..value
end

-- Dissect: Link Id Optional
ltse_ltseequities_memo_sbe_v2_0.link_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.link_id_optional.size
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

  local display = ltse_ltseequities_memo_sbe_v2_0.link_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.link_id_optional, range, value, display)

  return offset + length, value
end

-- Locate Broker Optional
ltse_ltseequities_memo_sbe_v2_0.locate_broker_optional = {}

-- Size: Locate Broker Optional
ltse_ltseequities_memo_sbe_v2_0.locate_broker_optional.size = 4

-- Display: Locate Broker Optional
ltse_ltseequities_memo_sbe_v2_0.locate_broker_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Locate Broker Optional: No Value"
  end

  return "Locate Broker Optional: "..value
end

-- Dissect: Locate Broker Optional
ltse_ltseequities_memo_sbe_v2_0.locate_broker_optional.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.locate_broker_optional.size
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

  local display = ltse_ltseequities_memo_sbe_v2_0.locate_broker_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.locate_broker_optional, range, value, display)

  return offset + length, value
end

-- Locate Reqd
ltse_ltseequities_memo_sbe_v2_0.locate_reqd = {}

-- Size: Locate Reqd
ltse_ltseequities_memo_sbe_v2_0.locate_reqd.size = 1

-- Display: Locate Reqd
ltse_ltseequities_memo_sbe_v2_0.locate_reqd.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Locate Reqd: No Value"
  end

  return "Locate Reqd: "..value
end

-- Dissect: Locate Reqd
ltse_ltseequities_memo_sbe_v2_0.locate_reqd.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.locate_reqd.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ltse_ltseequities_memo_sbe_v2_0.locate_reqd.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.locate_reqd, range, value, display)

  return offset + length, value
end

-- Login Reject Code
ltse_ltseequities_memo_sbe_v2_0.login_reject_code = {}

-- Size: Login Reject Code
ltse_ltseequities_memo_sbe_v2_0.login_reject_code.size = 1

-- Display: Login Reject Code
ltse_ltseequities_memo_sbe_v2_0.login_reject_code.display = function(value)
  if value == "T" then
    return "Login Reject Code: Malformed Token (T)"
  end
  if value == "U" then
    return "Login Reject Code: Token Type Unsupported (U)"
  end
  if value == "V" then
    return "Login Reject Code: Token Type Invalid (V)"
  end
  if value == "A" then
    return "Login Reject Code: Authorization Failed (A)"
  end

  return "Login Reject Code: Unknown("..value..")"
end

-- Dissect: Login Reject Code
ltse_ltseequities_memo_sbe_v2_0.login_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.login_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = ltse_ltseequities_memo_sbe_v2_0.login_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.login_reject_code, range, value, display)

  return offset + length, value
end

-- Lower Than Price
ltse_ltseequities_memo_sbe_v2_0.lower_than_price = {}

-- Size: Lower Than Price
ltse_ltseequities_memo_sbe_v2_0.lower_than_price.size = 8

-- Display: Lower Than Price
ltse_ltseequities_memo_sbe_v2_0.lower_than_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Lower Than Price: No Value"
  end

  return "Lower Than Price: "..value
end

-- Translate: Lower Than Price
ltse_ltseequities_memo_sbe_v2_0.lower_than_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Lower Than Price
ltse_ltseequities_memo_sbe_v2_0.lower_than_price.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.lower_than_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = ltse_ltseequities_memo_sbe_v2_0.lower_than_price.translate(raw)
  local display = ltse_ltseequities_memo_sbe_v2_0.lower_than_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.lower_than_price, range, value, display)

  return offset + length, value
end

-- Mass Cancel Reject Reason
ltse_ltseequities_memo_sbe_v2_0.mass_cancel_reject_reason = {}

-- Size: Mass Cancel Reject Reason
ltse_ltseequities_memo_sbe_v2_0.mass_cancel_reject_reason.size = 1

-- Display: Mass Cancel Reject Reason
ltse_ltseequities_memo_sbe_v2_0.mass_cancel_reject_reason.display = function(value)
  if value == 0 then
    return "Mass Cancel Reject Reason: Other (0)"
  end
  if value == 1 then
    return "Mass Cancel Reject Reason: Unknown Product (1)"
  end
  if value == 2 then
    return "Mass Cancel Reject Reason: Unknown Side (2)"
  end
  if value == 3 then
    return "Mass Cancel Reject Reason: Unknown Group Id (3)"
  end
  if value == 4 then
    return "Mass Cancel Reject Reason: Higher Price Lower Or Equal To Lower Price (4)"
  end
  if value == 5 then
    return "Mass Cancel Reject Reason: Product Missing For Price Restriction (5)"
  end
  if value == 6 then
    return "Mass Cancel Reject Reason: Duplicate Cl Ord Id (6)"
  end
  if value == 7 then
    return "Mass Cancel Reject Reason: Malformed Request Missing Cl Ord Id Field (7)"
  end
  if value == 8 then
    return "Mass Cancel Reject Reason: Invalid Cancel Group Id (8)"
  end
  if value == 9 then
    return "Mass Cancel Reject Reason: Invalid Cl Ord Id (9)"
  end
  if value == 10 then
    return "Mass Cancel Reject Reason: Invalid Lower Price (10)"
  end
  if value == 11 then
    return "Mass Cancel Reject Reason: Invalid Higher Price (11)"
  end
  if value == 255 then
    return "Mass Cancel Reject Reason: Null Value (255)"
  end

  return "Mass Cancel Reject Reason: Unknown("..value..")"
end

-- Dissect: Mass Cancel Reject Reason
ltse_ltseequities_memo_sbe_v2_0.mass_cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.mass_cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.mass_cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.mass_cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Max Sequence Number
ltse_ltseequities_memo_sbe_v2_0.max_sequence_number = {}

-- Size: Max Sequence Number
ltse_ltseequities_memo_sbe_v2_0.max_sequence_number.size = 8

-- Display: Max Sequence Number
ltse_ltseequities_memo_sbe_v2_0.max_sequence_number.display = function(value)
  return "Max Sequence Number: "..value
end

-- Dissect: Max Sequence Number
ltse_ltseequities_memo_sbe_v2_0.max_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.max_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_ltseequities_memo_sbe_v2_0.max_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.max_sequence_number, range, value, display)

  return offset + length, value
end

-- Message Count
ltse_ltseequities_memo_sbe_v2_0.message_count = {}

-- Size: Message Count
ltse_ltseequities_memo_sbe_v2_0.message_count.size = 8

-- Display: Message Count
ltse_ltseequities_memo_sbe_v2_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
ltse_ltseequities_memo_sbe_v2_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.message_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_ltseequities_memo_sbe_v2_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
ltse_ltseequities_memo_sbe_v2_0.message_length = {}

-- Size: Message Length
ltse_ltseequities_memo_sbe_v2_0.message_length.size = 2

-- Display: Message Length
ltse_ltseequities_memo_sbe_v2_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
ltse_ltseequities_memo_sbe_v2_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
ltse_ltseequities_memo_sbe_v2_0.message_type = {}

-- Size: Message Type
ltse_ltseequities_memo_sbe_v2_0.message_type.size = 1

-- Display: Message Type
ltse_ltseequities_memo_sbe_v2_0.message_type.display = function(value)
  if value == 0 then
    return "Message Type: Heartbeat (0)"
  end
  if value == 100 then
    return "Message Type: Login Request (100)"
  end
  if value == 101 then
    return "Message Type: Replay Request (101)"
  end
  if value == 102 then
    return "Message Type: Replay All Request (102)"
  end
  if value == 103 then
    return "Message Type: Stream Request (103)"
  end
  if value == 104 then
    return "Message Type: Unsequenced Message (104)"
  end
  if value == 1 then
    return "Message Type: Login Accepted (1)"
  end
  if value == 2 then
    return "Message Type: Login Rejected (2)"
  end
  if value == 3 then
    return "Message Type: Start Of Session (3)"
  end
  if value == 4 then
    return "Message Type: End Of Session (4)"
  end
  if value == 5 then
    return "Message Type: Replay Begin (5)"
  end
  if value == 6 then
    return "Message Type: Replay Rejected (6)"
  end
  if value == 7 then
    return "Message Type: Replay Complete (7)"
  end
  if value == 8 then
    return "Message Type: Stream Begin (8)"
  end
  if value == 9 then
    return "Message Type: Stream Rejected (9)"
  end
  if value == 10 then
    return "Message Type: Stream Complete (10)"
  end
  if value == 11 then
    return "Message Type: Sequenced Message (11)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
ltse_ltseequities_memo_sbe_v2_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Min Qty
ltse_ltseequities_memo_sbe_v2_0.min_qty = {}

-- Size: Min Qty
ltse_ltseequities_memo_sbe_v2_0.min_qty.size = 4

-- Display: Min Qty
ltse_ltseequities_memo_sbe_v2_0.min_qty.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Min Qty: No Value"
  end

  return "Min Qty: "..value
end

-- Dissect: Min Qty
ltse_ltseequities_memo_sbe_v2_0.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.min_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Next Sequence Number
ltse_ltseequities_memo_sbe_v2_0.next_sequence_number = {}

-- Size: Next Sequence Number
ltse_ltseequities_memo_sbe_v2_0.next_sequence_number.size = 8

-- Display: Next Sequence Number
ltse_ltseequities_memo_sbe_v2_0.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
ltse_ltseequities_memo_sbe_v2_0.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_ltseequities_memo_sbe_v2_0.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Num Groups
ltse_ltseequities_memo_sbe_v2_0.num_groups = {}

-- Size: Num Groups
ltse_ltseequities_memo_sbe_v2_0.num_groups.size = 1

-- Display: Num Groups
ltse_ltseequities_memo_sbe_v2_0.num_groups.display = function(value)
  return "Num Groups: "..value
end

-- Dissect: Num Groups
ltse_ltseequities_memo_sbe_v2_0.num_groups.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.num_groups.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.num_groups.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.num_groups, range, value, display)

  return offset + length, value
end

-- Num In Group
ltse_ltseequities_memo_sbe_v2_0.num_in_group = {}

-- Size: Num In Group
ltse_ltseequities_memo_sbe_v2_0.num_in_group.size = 1

-- Display: Num In Group
ltse_ltseequities_memo_sbe_v2_0.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
ltse_ltseequities_memo_sbe_v2_0.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.num_in_group.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Ord Status
ltse_ltseequities_memo_sbe_v2_0.ord_status = {}

-- Size: Ord Status
ltse_ltseequities_memo_sbe_v2_0.ord_status.size = 1

-- Display: Ord Status
ltse_ltseequities_memo_sbe_v2_0.ord_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ord Status: No Value"
  end

  if value == "0" then
    return "Ord Status: New (0)"
  end
  if value == "1" then
    return "Ord Status: Partial Filled (1)"
  end
  if value == "2" then
    return "Ord Status: Filled (2)"
  end
  if value == "4" then
    return "Ord Status: Canceled (4)"
  end
  if value == "6" then
    return "Ord Status: Pending Cancel (6)"
  end
  if value == "8" then
    return "Ord Status: Rejected (8)"
  end
  if value == "E" then
    return "Ord Status: Pending Replace (E)"
  end
  if value == "C" then
    return "Ord Status: Expired (C)"
  end

  return "Ord Status: Unknown("..value..")"
end

-- Dissect: Ord Status
ltse_ltseequities_memo_sbe_v2_0.ord_status.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.ord_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ltse_ltseequities_memo_sbe_v2_0.ord_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Ord Type
ltse_ltseequities_memo_sbe_v2_0.ord_type = {}

-- Size: Ord Type
ltse_ltseequities_memo_sbe_v2_0.ord_type.size = 1

-- Display: Ord Type
ltse_ltseequities_memo_sbe_v2_0.ord_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ord Type: No Value"
  end

  if value == "1" then
    return "Ord Type: Market (1)"
  end
  if value == "2" then
    return "Ord Type: Limit (2)"
  end
  if value == "P" then
    return "Ord Type: Pegged (P)"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
ltse_ltseequities_memo_sbe_v2_0.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.ord_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ltse_ltseequities_memo_sbe_v2_0.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Capacity
ltse_ltseequities_memo_sbe_v2_0.order_capacity = {}

-- Size: Order Capacity
ltse_ltseequities_memo_sbe_v2_0.order_capacity.size = 1

-- Display: Order Capacity
ltse_ltseequities_memo_sbe_v2_0.order_capacity.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Order Capacity: No Value"
  end

  if value == "A" then
    return "Order Capacity: Agency (A)"
  end
  if value == "P" then
    return "Order Capacity: Principal (P)"
  end
  if value == "R" then
    return "Order Capacity: Riskless Principal (R)"
  end

  return "Order Capacity: Unknown("..value..")"
end

-- Dissect: Order Capacity
ltse_ltseequities_memo_sbe_v2_0.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.order_capacity.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ltse_ltseequities_memo_sbe_v2_0.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Order Id
ltse_ltseequities_memo_sbe_v2_0.order_id = {}

-- Size: Order Id
ltse_ltseequities_memo_sbe_v2_0.order_id.size = 8

-- Display: Order Id
ltse_ltseequities_memo_sbe_v2_0.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
ltse_ltseequities_memo_sbe_v2_0.order_id.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_ltseequities_memo_sbe_v2_0.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Id Optional
ltse_ltseequities_memo_sbe_v2_0.order_id_optional = {}

-- Size: Order Id Optional
ltse_ltseequities_memo_sbe_v2_0.order_id_optional.size = 8

-- Display: Order Id Optional
ltse_ltseequities_memo_sbe_v2_0.order_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id Optional: No Value"
  end

  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
ltse_ltseequities_memo_sbe_v2_0.order_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.order_id_optional.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_ltseequities_memo_sbe_v2_0.order_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- Order Qty
ltse_ltseequities_memo_sbe_v2_0.order_qty = {}

-- Size: Order Qty
ltse_ltseequities_memo_sbe_v2_0.order_qty.size = 4

-- Display: Order Qty
ltse_ltseequities_memo_sbe_v2_0.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
ltse_ltseequities_memo_sbe_v2_0.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.order_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Reject Reason
ltse_ltseequities_memo_sbe_v2_0.order_reject_reason = {}

-- Size: Order Reject Reason
ltse_ltseequities_memo_sbe_v2_0.order_reject_reason.size = 1

-- Display: Order Reject Reason
ltse_ltseequities_memo_sbe_v2_0.order_reject_reason.display = function(value)
  if value == 1 then
    return "Order Reject Reason: Invalid Symbol (1)"
  end
  if value == 2 then
    return "Order Reject Reason: Exchange Closed (2)"
  end
  if value == 3 then
    return "Order Reject Reason: Order Size Exceeds Limit (3)"
  end
  if value == 6 then
    return "Order Reject Reason: Duplicate Cl Ord Id (6)"
  end
  if value == 18 then
    return "Order Reject Reason: Invalid Limit Price Increment (18)"
  end
  if value == 19 then
    return "Order Reject Reason: No Nbbo Available (19)"
  end
  if value == 20 then
    return "Order Reject Reason: Order Notional Exceeds Limit (20)"
  end
  if value == 22 then
    return "Order Reject Reason: Block Sell Short Risk Rule Violated (22)"
  end
  if value == 23 then
    return "Order Reject Reason: Hard To Borrow Security Risk Rule Violated (23)"
  end
  if value == 27 then
    return "Order Reject Reason: Max Notional Value Per Order Risk Rule Breach (27)"
  end
  if value == 99 then
    return "Order Reject Reason: Other (99)"
  end
  if value == 100 then
    return "Order Reject Reason: Missing Symbol (100)"
  end
  if value == 101 then
    return "Order Reject Reason: Missing Locate Reqd (101)"
  end
  if value == 102 then
    return "Order Reject Reason: Invalid Locate Reqd (102)"
  end
  if value == 103 then
    return "Order Reject Reason: Missing Cl Ord Id (103)"
  end
  if value == 104 then
    return "Order Reject Reason: Invalid Cl Ord Id (104)"
  end
  if value == 105 then
    return "Order Reject Reason: Missing Side (105)"
  end
  if value == 106 then
    return "Order Reject Reason: Invalid Side (106)"
  end
  if value == 107 then
    return "Order Reject Reason: Missing Order Quantity (107)"
  end
  if value == 108 then
    return "Order Reject Reason: Invalid Order Quantity (108)"
  end
  if value == 109 then
    return "Order Reject Reason: Missing Order Type (109)"
  end
  if value == 110 then
    return "Order Reject Reason: Invalid Order Type (110)"
  end
  if value == 111 then
    return "Order Reject Reason: Missing Time In Force (111)"
  end
  if value == 112 then
    return "Order Reject Reason: Invalid Time In Force (112)"
  end
  if value == 113 then
    return "Order Reject Reason: Missing Order Capacity (113)"
  end
  if value == 114 then
    return "Order Reject Reason: Invalid Order Capacity (114)"
  end
  if value == 115 then
    return "Order Reject Reason: Missing Exec Inst (115)"
  end
  if value == 116 then
    return "Order Reject Reason: Missing Limit Price (116)"
  end
  if value == 117 then
    return "Order Reject Reason: Invalid Limit Price (117)"
  end
  if value == 118 then
    return "Order Reject Reason: Missing Max Floor (118)"
  end
  if value == 119 then
    return "Order Reject Reason: Invalid Max Floor (119)"
  end
  if value == 120 then
    return "Order Reject Reason: Missing Reserve Replenish Amount Type (120)"
  end
  if value == 121 then
    return "Order Reject Reason: Invalid Reserve Replenish Amount Type (121)"
  end
  if value == 122 then
    return "Order Reject Reason: Missing Reserve Replenish Time Type (122)"
  end
  if value == 123 then
    return "Order Reject Reason: Invalid Reserve Replenish Time Type (123)"
  end
  if value == 124 then
    return "Order Reject Reason: Missing Random Replenish Value (124)"
  end
  if value == 125 then
    return "Order Reject Reason: Invalid Random Replenish Value (125)"
  end
  if value == 126 then
    return "Order Reject Reason: Invalid Random Replenish Value For Reserve Type (126)"
  end
  if value == 127 then
    return "Order Reject Reason: Missing Reprice Frequency Type (127)"
  end
  if value == 128 then
    return "Order Reject Reason: Invalid Reprice Frequency Type (128)"
  end
  if value == 129 then
    return "Order Reject Reason: Missing Reprice Behavior Type (129)"
  end
  if value == 130 then
    return "Order Reject Reason: Invalid Reprice Behavior Type (130)"
  end
  if value == 131 then
    return "Order Reject Reason: Invalid Reprice Behavior For Reprice Frequency (131)"
  end
  if value == 132 then
    return "Order Reject Reason: Missing Customer Capacity Type (132)"
  end
  if value == 133 then
    return "Order Reject Reason: Invalid Customer Capacity Type (133)"
  end
  if value == 134 then
    return "Order Reject Reason: Missing Expire Time (134)"
  end
  if value == 135 then
    return "Order Reject Reason: Invalid Expire Time (135)"
  end
  if value == 136 then
    return "Order Reject Reason: Missing Peg Type (136)"
  end
  if value == 137 then
    return "Order Reject Reason: Invalid Peg Type (137)"
  end
  if value == 138 then
    return "Order Reject Reason: Invalid Modifier For Order Type (138)"
  end
  if value == 139 then
    return "Order Reject Reason: Invalid Modifiers Combination (139)"
  end
  if value == 140 then
    return "Order Reject Reason: Invalid Trading Session For Order Type (140)"
  end
  if value == 141 then
    return "Order Reject Reason: Invalid Time In Force For Order Type (141)"
  end
  if value == 142 then
    return "Order Reject Reason: Invalid Modifier For Peg Type (142)"
  end
  if value == 143 then
    return "Order Reject Reason: Invalid Min Quantity (143)"
  end
  if value == 144 then
    return "Order Reject Reason: Invalid Exec Inst (144)"
  end
  if value == 145 then
    return "Order Reject Reason: Invalid Mpid (145)"
  end
  if value == 146 then
    return "Order Reject Reason: Symbol Halted Or Paused (146)"
  end
  if value == 147 then
    return "Order Reject Reason: Block Iso Risk Rule Violated (147)"
  end
  if value == 148 then
    return "Order Reject Reason: Block Session Risk Rule Violated (148)"
  end
  if value == 149 then
    return "Order Reject Reason: Block Non Test Symbols Risk Rule Violated (149)"
  end
  if value == 150 then
    return "Order Reject Reason: Max Shares Per Order Risk Rule Breach (150)"
  end
  if value == 151 then
    return "Order Reject Reason: Price Percent Collar Risk Rule Violated (151)"
  end
  if value == 152 then
    return "Order Reject Reason: Price Value Collar Risk Rule Violated (152)"
  end
  if value == 153 then
    return "Order Reject Reason: Max Adv Percent Per Order Risk Rule Breach (153)"
  end
  if value == 154 then
    return "Order Reject Reason: Daily Gross Notional Exposure Risk Rule Breach (154)"
  end
  if value == 155 then
    return "Order Reject Reason: Daily Net Notional Exposure Risk Rule Breach (155)"
  end
  if value == 156 then
    return "Order Reject Reason: Max Num Duplicate Orders Risk Rule Breach (156)"
  end
  if value == 157 then
    return "Order Reject Reason: Max Order Rate Risk Rule Breach (157)"
  end
  if value == 158 then
    return "Order Reject Reason: Restricted Security Risk Rule Violated (158)"
  end
  if value == 159 then
    return "Order Reject Reason: Invalid Self Trade Prevention Configuration (159)"
  end
  if value == 160 then
    return "Order Reject Reason: Invalid Self Trade Prevention Type (160)"
  end
  if value == 161 then
    return "Order Reject Reason: Invalid Risk Group Id (161)"
  end
  if value == 162 then
    return "Order Reject Reason: Firm Disabled (162)"
  end
  if value == 163 then
    return "Order Reject Reason: Mpid Disabled (163)"
  end
  if value == 164 then
    return "Order Reject Reason: Account Disabled (164)"
  end
  if value == 165 then
    return "Order Reject Reason: Cannot Trade Non Test Symbol (165)"
  end
  if value == 166 then
    return "Order Reject Reason: Missing Firm (166)"
  end
  if value == 167 then
    return "Order Reject Reason: Missing Account (167)"
  end
  if value == 168 then
    return "Order Reject Reason: Missing Mpid (168)"
  end
  if value == 169 then
    return "Order Reject Reason: Missing Risk Group (169)"
  end
  if value == 170 then
    return "Order Reject Reason: Daily Market Order Gross Notional Exposure Risk Rule Breach (170)"
  end
  if value == 171 then
    return "Order Reject Reason: Daily Market Order Net Notional Exposure Risk Rule Breach (171)"
  end
  if value == 172 then
    return "Order Reject Reason: Missing Disp Method Type (172)"
  end
  if value == 173 then
    return "Order Reject Reason: Missing Firm Risk Setting (173)"
  end
  if value == 174 then
    return "Order Reject Reason: Invalid Account Mpid To Firm (174)"
  end
  if value == 175 then
    return "Order Reject Reason: Invalid Peg Offset Value (175)"
  end
  if value == 176 then
    return "Order Reject Reason: Invalid Disp Method Type (176)"
  end
  if value == 177 then
    return "Order Reject Reason: Missing Cancel Group Id (177)"
  end
  if value == 178 then
    return "Order Reject Reason: Invalid Cancel Group Id (178)"
  end
  if value == 179 then
    return "Order Reject Reason: Missing Stp Group Id (179)"
  end
  if value == 180 then
    return "Order Reject Reason: Invalid Stp Group Id (180)"
  end
  if value == 181 then
    return "Order Reject Reason: Invalid Lnk Id (181)"
  end
  if value == 182 then
    return "Order Reject Reason: Missing Locate Broker (182)"
  end
  if value == 183 then
    return "Order Reject Reason: Invalid Locate Broker (183)"
  end
  if value == 184 then
    return "Order Reject Reason: Invalid Extended Exec Inst (184)"
  end
  if value == 255 then
    return "Order Reject Reason: Null Value (255)"
  end

  return "Order Reject Reason: Unknown("..value..")"
end

-- Dissect: Order Reject Reason
ltse_ltseequities_memo_sbe_v2_0.order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.order_reject_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- OrigClOrdId
ltse_ltseequities_memo_sbe_v2_0.origclordid = {}

-- Size: OrigClOrdId
ltse_ltseequities_memo_sbe_v2_0.origclordid.size = 16

-- Display: OrigClOrdId
ltse_ltseequities_memo_sbe_v2_0.origclordid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "OrigClOrdId: No Value"
  end

  return "OrigClOrdId: "..value
end

-- Dissect: OrigClOrdId
ltse_ltseequities_memo_sbe_v2_0.origclordid.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.origclordid.size
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

  local display = ltse_ltseequities_memo_sbe_v2_0.origclordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.origclordid, range, value, display)

  return offset + length, value
end

-- OrigClOrdId Optional
ltse_ltseequities_memo_sbe_v2_0.origclordid_optional = {}

-- Size: OrigClOrdId Optional
ltse_ltseequities_memo_sbe_v2_0.origclordid_optional.size = 16

-- Display: OrigClOrdId Optional
ltse_ltseequities_memo_sbe_v2_0.origclordid_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "OrigClOrdId Optional: No Value"
  end

  return "OrigClOrdId Optional: "..value
end

-- Dissect: OrigClOrdId Optional
ltse_ltseequities_memo_sbe_v2_0.origclordid_optional.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.origclordid_optional.size
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

  local display = ltse_ltseequities_memo_sbe_v2_0.origclordid_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.origclordid_optional, range, value, display)

  return offset + length, value
end

-- Party Id
ltse_ltseequities_memo_sbe_v2_0.party_id = {}

-- Size: Party Id
ltse_ltseequities_memo_sbe_v2_0.party_id.size = 16

-- Display: Party Id
ltse_ltseequities_memo_sbe_v2_0.party_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Id: No Value"
  end

  return "Party Id: "..value
end

-- Dissect: Party Id
ltse_ltseequities_memo_sbe_v2_0.party_id.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.party_id.size
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

  local display = ltse_ltseequities_memo_sbe_v2_0.party_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.party_id, range, value, display)

  return offset + length, value
end

-- Party Id Source
ltse_ltseequities_memo_sbe_v2_0.party_id_source = {}

-- Size: Party Id Source
ltse_ltseequities_memo_sbe_v2_0.party_id_source.size = 1

-- Display: Party Id Source
ltse_ltseequities_memo_sbe_v2_0.party_id_source.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Party Id Source: No Value"
  end

  return "Party Id Source: "..value
end

-- Dissect: Party Id Source
ltse_ltseequities_memo_sbe_v2_0.party_id_source.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.party_id_source.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ltse_ltseequities_memo_sbe_v2_0.party_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.party_id_source, range, value, display)

  return offset + length, value
end

-- Party Role
ltse_ltseequities_memo_sbe_v2_0.party_role = {}

-- Size: Party Role
ltse_ltseequities_memo_sbe_v2_0.party_role.size = 1

-- Display: Party Role
ltse_ltseequities_memo_sbe_v2_0.party_role.display = function(value)
  if value == 1 then
    return "Party Role: Executing Firm (1)"
  end
  if value == 255 then
    return "Party Role: Null Value (255)"
  end

  return "Party Role: Unknown("..value..")"
end

-- Dissect: Party Role
ltse_ltseequities_memo_sbe_v2_0.party_role.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.party_role.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.party_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.party_role, range, value, display)

  return offset + length, value
end

-- Peg Offset Value
ltse_ltseequities_memo_sbe_v2_0.peg_offset_value = {}

-- Size: Peg Offset Value
ltse_ltseequities_memo_sbe_v2_0.peg_offset_value.size = 8

-- Display: Peg Offset Value
ltse_ltseequities_memo_sbe_v2_0.peg_offset_value.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Peg Offset Value: No Value"
  end

  return "Peg Offset Value: "..value
end

-- Translate: Peg Offset Value
ltse_ltseequities_memo_sbe_v2_0.peg_offset_value.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Peg Offset Value
ltse_ltseequities_memo_sbe_v2_0.peg_offset_value.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.peg_offset_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = ltse_ltseequities_memo_sbe_v2_0.peg_offset_value.translate(raw)
  local display = ltse_ltseequities_memo_sbe_v2_0.peg_offset_value.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.peg_offset_value, range, value, display)

  return offset + length, value
end

-- Peg Price Type
ltse_ltseequities_memo_sbe_v2_0.peg_price_type = {}

-- Size: Peg Price Type
ltse_ltseequities_memo_sbe_v2_0.peg_price_type.size = 1

-- Display: Peg Price Type
ltse_ltseequities_memo_sbe_v2_0.peg_price_type.display = function(value)
  if value == 2 then
    return "Peg Price Type: Mid Price Peg (2)"
  end
  if value == 5 then
    return "Peg Price Type: Primary Peg (5)"
  end
  if value == 255 then
    return "Peg Price Type: Null Value (255)"
  end
  if value == 255 then
    return "Peg Price Type: No Value"
  end

  return "Peg Price Type: Unknown("..value..")"
end

-- Dissect: Peg Price Type
ltse_ltseequities_memo_sbe_v2_0.peg_price_type.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.peg_price_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.peg_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.peg_price_type, range, value, display)

  return offset + length, value
end

-- Pending Message Count
ltse_ltseequities_memo_sbe_v2_0.pending_message_count = {}

-- Size: Pending Message Count
ltse_ltseequities_memo_sbe_v2_0.pending_message_count.size = 4

-- Display: Pending Message Count
ltse_ltseequities_memo_sbe_v2_0.pending_message_count.display = function(value)
  return "Pending Message Count: "..value
end

-- Dissect: Pending Message Count
ltse_ltseequities_memo_sbe_v2_0.pending_message_count.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.pending_message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.pending_message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.pending_message_count, range, value, display)

  return offset + length, value
end

-- Price
ltse_ltseequities_memo_sbe_v2_0.price = {}

-- Size: Price
ltse_ltseequities_memo_sbe_v2_0.price.size = 8

-- Display: Price
ltse_ltseequities_memo_sbe_v2_0.price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Translate: Price
ltse_ltseequities_memo_sbe_v2_0.price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Price
ltse_ltseequities_memo_sbe_v2_0.price.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = ltse_ltseequities_memo_sbe_v2_0.price.translate(raw)
  local display = ltse_ltseequities_memo_sbe_v2_0.price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.price, range, value, display)

  return offset + length, value
end

-- Replay Reject Code
ltse_ltseequities_memo_sbe_v2_0.replay_reject_code = {}

-- Size: Replay Reject Code
ltse_ltseequities_memo_sbe_v2_0.replay_reject_code.size = 1

-- Display: Replay Reject Code
ltse_ltseequities_memo_sbe_v2_0.replay_reject_code.display = function(value)
  if value == "R" then
    return "Replay Reject Code: Replay Requests Are Not Allowed (R)"
  end
  if value == "A" then
    return "Replay Reject Code: Replay All Requests Are Not Allowed (A)"
  end
  if value == "P" then
    return "Replay Reject Code: Not The Active Session (P)"
  end
  if value == "S" then
    return "Replay Reject Code: Sequence Number Out Of Range (S)"
  end

  return "Replay Reject Code: Unknown("..value..")"
end

-- Dissect: Replay Reject Code
ltse_ltseequities_memo_sbe_v2_0.replay_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.replay_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = ltse_ltseequities_memo_sbe_v2_0.replay_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.replay_reject_code, range, value, display)

  return offset + length, value
end

-- Reprice Behavior
ltse_ltseequities_memo_sbe_v2_0.reprice_behavior = {}

-- Size: Reprice Behavior
ltse_ltseequities_memo_sbe_v2_0.reprice_behavior.size = 1

-- Display: Reprice Behavior
ltse_ltseequities_memo_sbe_v2_0.reprice_behavior.display = function(value)
  if value == 1 then
    return "Reprice Behavior: Reprice Lock Cancel Cross (1)"
  end
  if value == 2 then
    return "Reprice Behavior: Reprice Lock Reprice Cross (2)"
  end
  if value == 255 then
    return "Reprice Behavior: Null Value (255)"
  end
  if value == 255 then
    return "Reprice Behavior: No Value"
  end

  return "Reprice Behavior: Unknown("..value..")"
end

-- Dissect: Reprice Behavior
ltse_ltseequities_memo_sbe_v2_0.reprice_behavior.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.reprice_behavior.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.reprice_behavior.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.reprice_behavior, range, value, display)

  return offset + length, value
end

-- Reprice Frequency
ltse_ltseequities_memo_sbe_v2_0.reprice_frequency = {}

-- Size: Reprice Frequency
ltse_ltseequities_memo_sbe_v2_0.reprice_frequency.size = 1

-- Display: Reprice Frequency
ltse_ltseequities_memo_sbe_v2_0.reprice_frequency.display = function(value)
  if value == 0 then
    return "Reprice Frequency: Single Reprice (0)"
  end
  if value == 1 then
    return "Reprice Frequency: Continuous Reprice (1)"
  end
  if value == 2 then
    return "Reprice Frequency: None (2)"
  end
  if value == 255 then
    return "Reprice Frequency: Null Value (255)"
  end
  if value == 255 then
    return "Reprice Frequency: No Value"
  end

  return "Reprice Frequency: Unknown("..value..")"
end

-- Dissect: Reprice Frequency
ltse_ltseequities_memo_sbe_v2_0.reprice_frequency.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.reprice_frequency.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.reprice_frequency.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.reprice_frequency, range, value, display)

  return offset + length, value
end

-- Reserve Replenish Timing
ltse_ltseequities_memo_sbe_v2_0.reserve_replenish_timing = {}

-- Size: Reserve Replenish Timing
ltse_ltseequities_memo_sbe_v2_0.reserve_replenish_timing.size = 1

-- Display: Reserve Replenish Timing
ltse_ltseequities_memo_sbe_v2_0.reserve_replenish_timing.display = function(value)
  if value == 1 then
    return "Reserve Replenish Timing: Immediate (1)"
  end
  if value == 2 then
    return "Reserve Replenish Timing: Random (2)"
  end
  if value == 255 then
    return "Reserve Replenish Timing: Null Value (255)"
  end
  if value == 255 then
    return "Reserve Replenish Timing: No Value"
  end

  return "Reserve Replenish Timing: Unknown("..value..")"
end

-- Dissect: Reserve Replenish Timing
ltse_ltseequities_memo_sbe_v2_0.reserve_replenish_timing.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.reserve_replenish_timing.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.reserve_replenish_timing.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.reserve_replenish_timing, range, value, display)

  return offset + length, value
end

-- Risk Group Id
ltse_ltseequities_memo_sbe_v2_0.risk_group_id = {}

-- Size: Risk Group Id
ltse_ltseequities_memo_sbe_v2_0.risk_group_id.size = 2

-- Display: Risk Group Id
ltse_ltseequities_memo_sbe_v2_0.risk_group_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Risk Group Id: No Value"
  end

  return "Risk Group Id: "..value
end

-- Dissect: Risk Group Id
ltse_ltseequities_memo_sbe_v2_0.risk_group_id.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.risk_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.risk_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.risk_group_id, range, value, display)

  return offset + length, value
end

-- Schema Id
ltse_ltseequities_memo_sbe_v2_0.schema_id = {}

-- Size: Schema Id
ltse_ltseequities_memo_sbe_v2_0.schema_id.size = 1

-- Display: Schema Id
ltse_ltseequities_memo_sbe_v2_0.schema_id.display = function(value)
  if value == 1 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
ltse_ltseequities_memo_sbe_v2_0.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.schema_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Security Group
ltse_ltseequities_memo_sbe_v2_0.security_group = {}

-- Size: Security Group
ltse_ltseequities_memo_sbe_v2_0.security_group.size = 1

-- Display: Security Group
ltse_ltseequities_memo_sbe_v2_0.security_group.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Security Group: No Value"
  end

  return "Security Group: "..value
end

-- Dissect: Security Group
ltse_ltseequities_memo_sbe_v2_0.security_group.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.security_group.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ltse_ltseequities_memo_sbe_v2_0.security_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.security_group, range, value, display)

  return offset + length, value
end

-- Self Trade Prevention
ltse_ltseequities_memo_sbe_v2_0.self_trade_prevention = {}

-- Size: Self Trade Prevention
ltse_ltseequities_memo_sbe_v2_0.self_trade_prevention.size = 1

-- Display: Self Trade Prevention
ltse_ltseequities_memo_sbe_v2_0.self_trade_prevention.display = function(value)
  if value == 0 then
    return "Self Trade Prevention: Cancel Newest (0)"
  end
  if value == 1 then
    return "Self Trade Prevention: Cancel Oldest (1)"
  end
  if value == 2 then
    return "Self Trade Prevention: Decrement And Cancel (2)"
  end
  if value == 3 then
    return "Self Trade Prevention: Cancel Both (3)"
  end
  if value == 4 then
    return "Self Trade Prevention: Cancel Smallest (4)"
  end
  if value == 255 then
    return "Self Trade Prevention: Null Value (255)"
  end
  if value == 255 then
    return "Self Trade Prevention: No Value"
  end

  return "Self Trade Prevention: Unknown("..value..")"
end

-- Dissect: Self Trade Prevention
ltse_ltseequities_memo_sbe_v2_0.self_trade_prevention.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.self_trade_prevention.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.self_trade_prevention.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.self_trade_prevention, range, value, display)

  return offset + length, value
end

-- Sending Time
ltse_ltseequities_memo_sbe_v2_0.sending_time = {}

-- Size: Sending Time
ltse_ltseequities_memo_sbe_v2_0.sending_time.size = 8

-- Dissect: Sending Time
ltse_ltseequities_memo_sbe_v2_0.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.sending_time.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_ltse_ltseequities_memo_sbe_v2_0.fields.sending_time
  if ltse_ltseequities_memo_sbe_v2_0.absolute_time_base == 1 then field = omi_ltse_ltseequities_memo_sbe_v2_0.fields.sending_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Session Id
ltse_ltseequities_memo_sbe_v2_0.session_id = {}

-- Size: Session Id
ltse_ltseequities_memo_sbe_v2_0.session_id.size = 8

-- Display: Session Id
ltse_ltseequities_memo_sbe_v2_0.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
ltse_ltseequities_memo_sbe_v2_0.session_id.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_ltseequities_memo_sbe_v2_0.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.session_id, range, value, display)

  return offset + length, value
end

-- Side
ltse_ltseequities_memo_sbe_v2_0.side = {}

-- Size: Side
ltse_ltseequities_memo_sbe_v2_0.side.size = 1

-- Display: Side
ltse_ltseequities_memo_sbe_v2_0.side.display = function(value)
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
ltse_ltseequities_memo_sbe_v2_0.side.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ltse_ltseequities_memo_sbe_v2_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.side, range, value, display)

  return offset + length, value
end

-- Side Optional
ltse_ltseequities_memo_sbe_v2_0.side_optional = {}

-- Size: Side Optional
ltse_ltseequities_memo_sbe_v2_0.side_optional.size = 1

-- Display: Side Optional
ltse_ltseequities_memo_sbe_v2_0.side_optional.display = function(value)
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
  if value == "5" then
    return "Side Optional: Sell Short (5)"
  end
  if value == "6" then
    return "Side Optional: Sell Short Exempt (6)"
  end
  if value == 0 then
    return "Side Optional: No Value"
  end

  return "Side Optional: Unknown("..value..")"
end

-- Dissect: Side Optional
ltse_ltseequities_memo_sbe_v2_0.side_optional.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.side_optional.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ltse_ltseequities_memo_sbe_v2_0.side_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.side_optional, range, value, display)

  return offset + length, value
end

-- Stp Group Id
ltse_ltseequities_memo_sbe_v2_0.stp_group_id = {}

-- Size: Stp Group Id
ltse_ltseequities_memo_sbe_v2_0.stp_group_id.size = 2

-- Display: Stp Group Id
ltse_ltseequities_memo_sbe_v2_0.stp_group_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Stp Group Id: No Value"
  end

  return "Stp Group Id: "..value
end

-- Dissect: Stp Group Id
ltse_ltseequities_memo_sbe_v2_0.stp_group_id.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.stp_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.stp_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.stp_group_id, range, value, display)

  return offset + length, value
end

-- Stream Reject Code
ltse_ltseequities_memo_sbe_v2_0.stream_reject_code = {}

-- Size: Stream Reject Code
ltse_ltseequities_memo_sbe_v2_0.stream_reject_code.size = 1

-- Display: Stream Reject Code
ltse_ltseequities_memo_sbe_v2_0.stream_reject_code.display = function(value)
  if value == "R" then
    return "Stream Reject Code: Stream Requests Are Not Allowed (R)"
  end
  if value == "P" then
    return "Stream Reject Code: Not The Active Session (P)"
  end
  if value == "S" then
    return "Stream Reject Code: Sequence Number Out Of Range (S)"
  end

  return "Stream Reject Code: Unknown("..value..")"
end

-- Dissect: Stream Reject Code
ltse_ltseequities_memo_sbe_v2_0.stream_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.stream_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = ltse_ltseequities_memo_sbe_v2_0.stream_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.stream_reject_code, range, value, display)

  return offset + length, value
end

-- Supported Request Mode
ltse_ltseequities_memo_sbe_v2_0.supported_request_mode = {}

-- Size: Supported Request Mode
ltse_ltseequities_memo_sbe_v2_0.supported_request_mode.size = 1

-- Display: Supported Request Mode
ltse_ltseequities_memo_sbe_v2_0.supported_request_mode.display = function(value)
  if value == "S" then
    return "Supported Request Mode: Stream (S)"
  end
  if value == "R" then
    return "Supported Request Mode: Replay (R)"
  end
  if value == "T" then
    return "Supported Request Mode: Snapshot Mode (T)"
  end

  return "Supported Request Mode: Unknown("..value..")"
end

-- Dissect: Supported Request Mode
ltse_ltseequities_memo_sbe_v2_0.supported_request_mode.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.supported_request_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = ltse_ltseequities_memo_sbe_v2_0.supported_request_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.supported_request_mode, range, value, display)

  return offset + length, value
end

-- Symbol
ltse_ltseequities_memo_sbe_v2_0.symbol = {}

-- Size: Symbol
ltse_ltseequities_memo_sbe_v2_0.symbol.size = 6

-- Display: Symbol
ltse_ltseequities_memo_sbe_v2_0.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
ltse_ltseequities_memo_sbe_v2_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.symbol.size
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

  local display = ltse_ltseequities_memo_sbe_v2_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Sfx
ltse_ltseequities_memo_sbe_v2_0.symbol_sfx = {}

-- Size: Symbol Sfx
ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.size = 6

-- Display: Symbol Sfx
ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Sfx: No Value"
  end

  return "Symbol Sfx: "..value
end

-- Dissect: Symbol Sfx
ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.size
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

  local display = ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.symbol_sfx, range, value, display)

  return offset + length, value
end

-- Template Id
ltse_ltseequities_memo_sbe_v2_0.template_id = {}

-- Size: Template Id
ltse_ltseequities_memo_sbe_v2_0.template_id.size = 1

-- Display: Template Id
ltse_ltseequities_memo_sbe_v2_0.template_id.display = function(value)
  if value == 1 then
    return "Template Id: New Order Single Message (1)"
  end
  if value == 2 then
    return "Template Id: Order Cancel Replace Request Message (2)"
  end
  if value == 3 then
    return "Template Id: Order Cancel Request Message (3)"
  end
  if value == 4 then
    return "Template Id: Mass Cancel Request Message (4)"
  end
  if value == 6 then
    return "Template Id: Execution Report New Message (6)"
  end
  if value == 7 then
    return "Template Id: Execution Report Rejected Message (7)"
  end
  if value == 8 then
    return "Template Id: Execution Report Trade Message (8)"
  end
  if value == 9 then
    return "Template Id: Execution Report Pending Cancel Message (9)"
  end
  if value == 10 then
    return "Template Id: Pending Mass Cancel Message (10)"
  end
  if value == 11 then
    return "Template Id: Execution Report Canceled Message (11)"
  end
  if value == 12 then
    return "Template Id: Mass Cancel Done Message (12)"
  end
  if value == 13 then
    return "Template Id: Execution Report Pending Replace Message (13)"
  end
  if value == 14 then
    return "Template Id: Execution Report Replaced Message (14)"
  end
  if value == 15 then
    return "Template Id: Execution Report Trade Correction Message (15)"
  end
  if value == 16 then
    return "Template Id: Execution Report Trade Break Message (16)"
  end
  if value == 17 then
    return "Template Id: Execution Report Restatement Message (17)"
  end
  if value == 18 then
    return "Template Id: Order Cancel Reject Message (18)"
  end
  if value == 20 then
    return "Template Id: Mass Cancel Reject Message (20)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
ltse_ltseequities_memo_sbe_v2_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Time In Force
ltse_ltseequities_memo_sbe_v2_0.time_in_force = {}

-- Size: Time In Force
ltse_ltseequities_memo_sbe_v2_0.time_in_force.size = 1

-- Display: Time In Force
ltse_ltseequities_memo_sbe_v2_0.time_in_force.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Time In Force: No Value"
  end

  if value == "0" then
    return "Time In Force: Day (0)"
  end
  if value == "2" then
    return "Time In Force: At The Open (2)"
  end
  if value == "3" then
    return "Time In Force: Immediate Or Cancel (3)"
  end
  if value == "4" then
    return "Time In Force: Fill Or Kill (4)"
  end
  if value == "7" then
    return "Time In Force: At The Close (7)"
  end
  if value == "A" then
    return "Time In Force: Good For Time (A)"
  end
  if value == "F" then
    return "Time In Force: Regular Hours Only (F)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
ltse_ltseequities_memo_sbe_v2_0.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.time_in_force.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ltse_ltseequities_memo_sbe_v2_0.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Token
ltse_ltseequities_memo_sbe_v2_0.token = {}

-- Size: Token
ltse_ltseequities_memo_sbe_v2_0.token.size = 1

-- Display: Token
ltse_ltseequities_memo_sbe_v2_0.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
ltse_ltseequities_memo_sbe_v2_0.token.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.token.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = ltse_ltseequities_memo_sbe_v2_0.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.token, range, value, display)

  return offset + length, value
end

-- Token Type
ltse_ltseequities_memo_sbe_v2_0.token_type = {}

-- Size: Token Type
ltse_ltseequities_memo_sbe_v2_0.token_type.size = 1

-- Display: Token Type
ltse_ltseequities_memo_sbe_v2_0.token_type.display = function(value)
  return "Token Type: "..value
end

-- Dissect: Token Type
ltse_ltseequities_memo_sbe_v2_0.token_type.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.token_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = ltse_ltseequities_memo_sbe_v2_0.token_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.token_type, range, value, display)

  return offset + length, value
end

-- Total Sequence Count
ltse_ltseequities_memo_sbe_v2_0.total_sequence_count = {}

-- Size: Total Sequence Count
ltse_ltseequities_memo_sbe_v2_0.total_sequence_count.size = 8

-- Display: Total Sequence Count
ltse_ltseequities_memo_sbe_v2_0.total_sequence_count.display = function(value)
  return "Total Sequence Count: "..value
end

-- Dissect: Total Sequence Count
ltse_ltseequities_memo_sbe_v2_0.total_sequence_count.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.total_sequence_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_ltseequities_memo_sbe_v2_0.total_sequence_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.total_sequence_count, range, value, display)

  return offset + length, value
end

-- Transact Time
ltse_ltseequities_memo_sbe_v2_0.transact_time = {}

-- Size: Transact Time
ltse_ltseequities_memo_sbe_v2_0.transact_time.size = 8

-- Display: Transact Time
ltse_ltseequities_memo_sbe_v2_0.transact_time.display = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
ltse_ltseequities_memo_sbe_v2_0.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.transact_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_ltseequities_memo_sbe_v2_0.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Trd Match Id
ltse_ltseequities_memo_sbe_v2_0.trd_match_id = {}

-- Size: Trd Match Id
ltse_ltseequities_memo_sbe_v2_0.trd_match_id.size = 8

-- Display: Trd Match Id
ltse_ltseequities_memo_sbe_v2_0.trd_match_id.display = function(value)
  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
ltse_ltseequities_memo_sbe_v2_0.trd_match_id.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.trd_match_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_ltseequities_memo_sbe_v2_0.trd_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Trd Matching Id
ltse_ltseequities_memo_sbe_v2_0.trd_matching_id = {}

-- Size: Trd Matching Id
ltse_ltseequities_memo_sbe_v2_0.trd_matching_id.size = 8

-- Display: Trd Matching Id
ltse_ltseequities_memo_sbe_v2_0.trd_matching_id.display = function(value)
  return "Trd Matching Id: "..value
end

-- Dissect: Trd Matching Id
ltse_ltseequities_memo_sbe_v2_0.trd_matching_id.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.trd_matching_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_ltseequities_memo_sbe_v2_0.trd_matching_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.trd_matching_id, range, value, display)

  return offset + length, value
end

-- Version
ltse_ltseequities_memo_sbe_v2_0.version = {}

-- Size: Version
ltse_ltseequities_memo_sbe_v2_0.version.size = 2

-- Display: Version
ltse_ltseequities_memo_sbe_v2_0.version.display = function(value)
  if value == 512 then
    return "Version: Version 2.0"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
ltse_ltseequities_memo_sbe_v2_0.version.dissect = function(buffer, offset, packet, parent)
  local length = ltse_ltseequities_memo_sbe_v2_0.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Ltse LtseEquities Memo Sbe 2.0
-----------------------------------------------------------------------

-- Mass Cancel Reject Message
ltse_ltseequities_memo_sbe_v2_0.mass_cancel_reject_message = {}

-- Size: Mass Cancel Reject Message
ltse_ltseequities_memo_sbe_v2_0.mass_cancel_reject_message.size =
  ltse_ltseequities_memo_sbe_v2_0.sending_time.size + 
  ltse_ltseequities_memo_sbe_v2_0.clordid.size + 
  ltse_ltseequities_memo_sbe_v2_0.symbol.size + 
  ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.size + 
  ltse_ltseequities_memo_sbe_v2_0.side_optional.size + 
  ltse_ltseequities_memo_sbe_v2_0.lower_than_price.size + 
  ltse_ltseequities_memo_sbe_v2_0.higher_than_price.size + 
  ltse_ltseequities_memo_sbe_v2_0.cancel_group_id.size + 
  ltse_ltseequities_memo_sbe_v2_0.mass_cancel_reject_reason.size

-- Display: Mass Cancel Reject Message
ltse_ltseequities_memo_sbe_v2_0.mass_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Reject Message
ltse_ltseequities_memo_sbe_v2_0.mass_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = ltse_ltseequities_memo_sbe_v2_0.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = ltse_ltseequities_memo_sbe_v2_0.clordid.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = ltse_ltseequities_memo_sbe_v2_0.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side Optional: SideType
  index, side_optional = ltse_ltseequities_memo_sbe_v2_0.side_optional.dissect(buffer, index, packet, parent)

  -- Lower Than Price: PriceType
  index, lower_than_price = ltse_ltseequities_memo_sbe_v2_0.lower_than_price.dissect(buffer, index, packet, parent)

  -- Higher Than Price: PriceType
  index, higher_than_price = ltse_ltseequities_memo_sbe_v2_0.higher_than_price.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: uint16
  index, cancel_group_id = ltse_ltseequities_memo_sbe_v2_0.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Reject Reason: MassCancelRejectReasonCode
  index, mass_cancel_reject_reason = ltse_ltseequities_memo_sbe_v2_0.mass_cancel_reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Reject Message
ltse_ltseequities_memo_sbe_v2_0.mass_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.mass_cancel_reject_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.mass_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.mass_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.mass_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Reject Message
ltse_ltseequities_memo_sbe_v2_0.order_cancel_reject_message = {}

-- Size: Order Cancel Reject Message
ltse_ltseequities_memo_sbe_v2_0.order_cancel_reject_message.size =
  ltse_ltseequities_memo_sbe_v2_0.sending_time.size + 
  ltse_ltseequities_memo_sbe_v2_0.clordid.size + 
  ltse_ltseequities_memo_sbe_v2_0.cxl_rej_response_to.size + 
  ltse_ltseequities_memo_sbe_v2_0.cxl_rej_reason.size + 
  ltse_ltseequities_memo_sbe_v2_0.link_id_optional.size

-- Display: Order Cancel Reject Message
ltse_ltseequities_memo_sbe_v2_0.order_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Reject Message
ltse_ltseequities_memo_sbe_v2_0.order_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = ltse_ltseequities_memo_sbe_v2_0.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = ltse_ltseequities_memo_sbe_v2_0.clordid.dissect(buffer, index, packet, parent)

  -- Cxl Rej Response To: CxlRejResponseToType
  index, cxl_rej_response_to = ltse_ltseequities_memo_sbe_v2_0.cxl_rej_response_to.dissect(buffer, index, packet, parent)

  -- Cxl Rej Reason: CancelRejectReasonCode
  index, cxl_rej_reason = ltse_ltseequities_memo_sbe_v2_0.cxl_rej_reason.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = ltse_ltseequities_memo_sbe_v2_0.link_id_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject Message
ltse_ltseequities_memo_sbe_v2_0.order_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.order_cancel_reject_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.order_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.order_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.order_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Parties Group
ltse_ltseequities_memo_sbe_v2_0.parties_group = {}

-- Size: Parties Group
ltse_ltseequities_memo_sbe_v2_0.parties_group.size =
  ltse_ltseequities_memo_sbe_v2_0.party_id.size + 
  ltse_ltseequities_memo_sbe_v2_0.party_id_source.size + 
  ltse_ltseequities_memo_sbe_v2_0.party_role.size

-- Display: Parties Group
ltse_ltseequities_memo_sbe_v2_0.parties_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Parties Group
ltse_ltseequities_memo_sbe_v2_0.parties_group.fields = function(buffer, offset, packet, parent, parties_group_index)
  local index = offset

  -- Implicit Parties Group Index
  if parties_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.parties_group_index, parties_group_index)
    iteration:set_generated()
  end

  -- Party Id: NewOrderSinglePartyID
  index, party_id = ltse_ltseequities_memo_sbe_v2_0.party_id.dissect(buffer, index, packet, parent)

  -- Party Id Source: char
  index, party_id_source = ltse_ltseequities_memo_sbe_v2_0.party_id_source.dissect(buffer, index, packet, parent)

  -- Party Role: PartyRoleType
  index, party_role = ltse_ltseequities_memo_sbe_v2_0.party_role.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Parties Group
ltse_ltseequities_memo_sbe_v2_0.parties_group.dissect = function(buffer, offset, packet, parent, parties_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.parties_group, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.parties_group.fields(buffer, offset, packet, parent, parties_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.parties_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.parties_group.fields(buffer, offset, packet, parent, parties_group_index)
  end
end

-- Repeating Group Dimensions
ltse_ltseequities_memo_sbe_v2_0.repeating_group_dimensions = {}

-- Size: Repeating Group Dimensions
ltse_ltseequities_memo_sbe_v2_0.repeating_group_dimensions.size =
  ltse_ltseequities_memo_sbe_v2_0.block_length_short.size + 
  ltse_ltseequities_memo_sbe_v2_0.num_in_group.size

-- Display: Repeating Group Dimensions
ltse_ltseequities_memo_sbe_v2_0.repeating_group_dimensions.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Repeating Group Dimensions
ltse_ltseequities_memo_sbe_v2_0.repeating_group_dimensions.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length Short: uint8
  index, block_length_short = ltse_ltseequities_memo_sbe_v2_0.block_length_short.dissect(buffer, index, packet, parent)

  -- Num In Group: uint8
  index, num_in_group = ltse_ltseequities_memo_sbe_v2_0.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Repeating Group Dimensions
ltse_ltseequities_memo_sbe_v2_0.repeating_group_dimensions.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.repeating_group_dimensions, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.repeating_group_dimensions.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.repeating_group_dimensions.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.repeating_group_dimensions.fields(buffer, offset, packet, parent)
  end
end

-- Parties Groups
ltse_ltseequities_memo_sbe_v2_0.parties_groups = {}

-- Calculate size of: Parties Groups
ltse_ltseequities_memo_sbe_v2_0.parties_groups.size = function(buffer, offset)
  local index = 0

  index = index + ltse_ltseequities_memo_sbe_v2_0.repeating_group_dimensions.size

  -- Calculate field size from count
  local parties_group_count = buffer(offset + index - 1, 1):uint()
  index = index + parties_group_count * 18

  return index
end

-- Display: Parties Groups
ltse_ltseequities_memo_sbe_v2_0.parties_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Parties Groups
ltse_ltseequities_memo_sbe_v2_0.parties_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Repeating Group Dimensions: Struct of 2 fields
  index, repeating_group_dimensions = ltse_ltseequities_memo_sbe_v2_0.repeating_group_dimensions.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Parties Group
  for parties_group_index = 1, num_in_group do
    index, parties_group = ltse_ltseequities_memo_sbe_v2_0.parties_group.dissect(buffer, index, packet, parent, parties_group_index)
  end

  return index
end

-- Dissect: Parties Groups
ltse_ltseequities_memo_sbe_v2_0.parties_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.parties_groups, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.parties_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.parties_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.parties_groups.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Restatement Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_restatement_message = {}

-- Calculate size of: Execution Report Restatement Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_restatement_message.size = function(buffer, offset)
  local index = 0

  index = index + ltse_ltseequities_memo_sbe_v2_0.sending_time.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.order_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.clordid.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.exec_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.ord_status.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.last_px_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.leaves_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.cum_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.last_qty_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.exec_restatement_reason.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.transact_time.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.extended_restatement_reason.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.link_id_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Restatement Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_restatement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Restatement Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_restatement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = ltse_ltseequities_memo_sbe_v2_0.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = ltse_ltseequities_memo_sbe_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = ltse_ltseequities_memo_sbe_v2_0.clordid.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = ltse_ltseequities_memo_sbe_v2_0.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = ltse_ltseequities_memo_sbe_v2_0.ord_status.dissect(buffer, index, packet, parent)

  -- Last Px Optional: PriceType
  index, last_px_optional = ltse_ltseequities_memo_sbe_v2_0.last_px_optional.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = ltse_ltseequities_memo_sbe_v2_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = ltse_ltseequities_memo_sbe_v2_0.cum_qty.dissect(buffer, index, packet, parent)

  -- Last Qty Optional: uint32
  index, last_qty_optional = ltse_ltseequities_memo_sbe_v2_0.last_qty_optional.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: ExecRestatementType
  index, exec_restatement_reason = ltse_ltseequities_memo_sbe_v2_0.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = ltse_ltseequities_memo_sbe_v2_0.transact_time.dissect(buffer, index, packet, parent)

  -- Extended Restatement Reason: ExtendedRestatementReasonType
  index, extended_restatement_reason = ltse_ltseequities_memo_sbe_v2_0.extended_restatement_reason.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = ltse_ltseequities_memo_sbe_v2_0.link_id_optional.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = ltse_ltseequities_memo_sbe_v2_0.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Restatement Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_restatement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_report_restatement_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.execution_report_restatement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.execution_report_restatement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.execution_report_restatement_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Details
ltse_ltseequities_memo_sbe_v2_0.execution_details = {}

-- Size: Execution Details
ltse_ltseequities_memo_sbe_v2_0.execution_details.size = 2

-- Display: Execution Details
ltse_ltseequities_memo_sbe_v2_0.execution_details.display = function(range, value, packet, parent)
  local flags = {}

  -- Is On Entry flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "On Entry"
  end
  -- Is Nbbo Joiner flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Nbbo Joiner"
  end
  -- Is Nbbo Setter flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Nbbo Setter"
  end
  -- Is Hidden Quantity flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Hidden Quantity"
  end
  -- Is Displayed Quantity flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Displayed Quantity"
  end
  -- Is Midpoint Order flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Midpoint Order"
  end
  -- Is Immediate Order flag set?
  if bit.band(value, 0x0040) ~= 0 then
    flags[#flags + 1] = "Immediate Order"
  end
  -- Is Retail Order flag set?
  if bit.band(value, 0x0080) ~= 0 then
    flags[#flags + 1] = "Retail Order"
  end
  -- Is Traded At Midpoint flag set?
  if bit.band(value, 0x0100) ~= 0 then
    flags[#flags + 1] = "Traded At Midpoint"
  end
  -- Is Price Improvement flag set?
  if bit.band(value, 0x0200) ~= 0 then
    flags[#flags + 1] = "Price Improvement"
  end
  -- Is Traded Against Retail flag set?
  if bit.band(value, 0x0400) ~= 0 then
    flags[#flags + 1] = "Traded Against Retail"
  end
  -- Is Traded Against Hidden flag set?
  if bit.band(value, 0x0800) ~= 0 then
    flags[#flags + 1] = "Traded Against Hidden"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Execution Details
ltse_ltseequities_memo_sbe_v2_0.execution_details.bits = function(range, value, packet, parent)

  -- On Entry: 1 Bit
  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.on_entry, range, value)

  -- Nbbo Joiner: 1 Bit
  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.nbbo_joiner, range, value)

  -- Nbbo Setter: 1 Bit
  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.nbbo_setter, range, value)

  -- Hidden Quantity: 1 Bit
  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.hidden_quantity, range, value)

  -- Displayed Quantity: 1 Bit
  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.displayed_quantity, range, value)

  -- Midpoint Order: 1 Bit
  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.midpoint_order, range, value)

  -- Immediate Order: 1 Bit
  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.immediate_order, range, value)

  -- Retail Order: 1 Bit
  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.retail_order, range, value)

  -- Traded At Midpoint: 1 Bit
  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.traded_at_midpoint, range, value)

  -- Price Improvement: 1 Bit
  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.price_improvement, range, value)

  -- Traded Against Retail: 1 Bit
  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.traded_against_retail, range, value)

  -- Traded Against Hidden: 1 Bit
  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.traded_against_hidden, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.reserved_4, range, value)
end

-- Dissect: Execution Details
ltse_ltseequities_memo_sbe_v2_0.execution_details.dissect = function(buffer, offset, packet, parent)
  local size = ltse_ltseequities_memo_sbe_v2_0.execution_details.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.execution_details.display(range, value, packet, parent)
  local element = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_details, range, display)

  if show.structs then
    ltse_ltseequities_memo_sbe_v2_0.execution_details.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Execution Report Trade Break Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_break_message = {}

-- Calculate size of: Execution Report Trade Break Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_break_message.size = function(buffer, offset)
  local index = 0

  index = index + ltse_ltseequities_memo_sbe_v2_0.sending_time.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.order_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.clordid.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.exec_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.exec_ref_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.trd_match_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.ord_status.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.leaves_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.cum_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.link_id_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.security_group.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.execution_details.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.auction_type.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.auction_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Break Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Break Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = ltse_ltseequities_memo_sbe_v2_0.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = ltse_ltseequities_memo_sbe_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = ltse_ltseequities_memo_sbe_v2_0.clordid.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = ltse_ltseequities_memo_sbe_v2_0.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: uint64
  index, exec_ref_id = ltse_ltseequities_memo_sbe_v2_0.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: uint64
  index, trd_match_id = ltse_ltseequities_memo_sbe_v2_0.trd_match_id.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = ltse_ltseequities_memo_sbe_v2_0.ord_status.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = ltse_ltseequities_memo_sbe_v2_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = ltse_ltseequities_memo_sbe_v2_0.cum_qty.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = ltse_ltseequities_memo_sbe_v2_0.link_id_optional.dissect(buffer, index, packet, parent)

  -- Security Group: char
  index, security_group = ltse_ltseequities_memo_sbe_v2_0.security_group.dissect(buffer, index, packet, parent)

  -- Execution Details: Struct of 13 fields
  index, execution_details = ltse_ltseequities_memo_sbe_v2_0.execution_details.dissect(buffer, index, packet, parent)

  -- Auction Type: AuctionType
  index, auction_type = ltse_ltseequities_memo_sbe_v2_0.auction_type.dissect(buffer, index, packet, parent)

  -- Auction Id: uint64
  index, auction_id = ltse_ltseequities_memo_sbe_v2_0.auction_id.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = ltse_ltseequities_memo_sbe_v2_0.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Break Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_report_trade_break_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Trade Correction Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_correction_message = {}

-- Calculate size of: Execution Report Trade Correction Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_correction_message.size = function(buffer, offset)
  local index = 0

  index = index + ltse_ltseequities_memo_sbe_v2_0.sending_time.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.order_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.clordid.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.exec_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.exec_ref_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.trd_match_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.ord_status.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.last_px.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.last_qty_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.leaves_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.cum_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.link_id_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.security_group.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.execution_details.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.auction_type.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.auction_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Correction Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Correction Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = ltse_ltseequities_memo_sbe_v2_0.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = ltse_ltseequities_memo_sbe_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = ltse_ltseequities_memo_sbe_v2_0.clordid.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = ltse_ltseequities_memo_sbe_v2_0.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: uint64
  index, exec_ref_id = ltse_ltseequities_memo_sbe_v2_0.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: uint64
  index, trd_match_id = ltse_ltseequities_memo_sbe_v2_0.trd_match_id.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = ltse_ltseequities_memo_sbe_v2_0.ord_status.dissect(buffer, index, packet, parent)

  -- Last Px: PriceType
  index, last_px = ltse_ltseequities_memo_sbe_v2_0.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty Optional: uint32
  index, last_qty_optional = ltse_ltseequities_memo_sbe_v2_0.last_qty_optional.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = ltse_ltseequities_memo_sbe_v2_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = ltse_ltseequities_memo_sbe_v2_0.cum_qty.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = ltse_ltseequities_memo_sbe_v2_0.link_id_optional.dissect(buffer, index, packet, parent)

  -- Security Group: char
  index, security_group = ltse_ltseequities_memo_sbe_v2_0.security_group.dissect(buffer, index, packet, parent)

  -- Execution Details: Struct of 13 fields
  index, execution_details = ltse_ltseequities_memo_sbe_v2_0.execution_details.dissect(buffer, index, packet, parent)

  -- Auction Type: AuctionType
  index, auction_type = ltse_ltseequities_memo_sbe_v2_0.auction_type.dissect(buffer, index, packet, parent)

  -- Auction Id: uint64
  index, auction_id = ltse_ltseequities_memo_sbe_v2_0.auction_id.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = ltse_ltseequities_memo_sbe_v2_0.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Correction Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_report_trade_correction_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Replaced Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_replaced_message = {}

-- Calculate size of: Execution Report Replaced Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_replaced_message.size = function(buffer, offset)
  local index = 0

  index = index + ltse_ltseequities_memo_sbe_v2_0.sending_time.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.order_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.clordid.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.origclordid_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.exec_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.symbol.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.side.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.order_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.ord_type.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.price.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.display_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.locate_reqd.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.ord_status.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.leaves_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.cum_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.transact_time.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.link_id_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.locate_broker_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Replaced Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Replaced Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = ltse_ltseequities_memo_sbe_v2_0.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = ltse_ltseequities_memo_sbe_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = ltse_ltseequities_memo_sbe_v2_0.clordid.dissect(buffer, index, packet, parent)

  -- OrigClOrdId Optional: ExecutionReport_CanceledOrigClOrdID
  index, origclordid_optional = ltse_ltseequities_memo_sbe_v2_0.origclordid_optional.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = ltse_ltseequities_memo_sbe_v2_0.exec_id.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = ltse_ltseequities_memo_sbe_v2_0.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side: SideType
  index, side = ltse_ltseequities_memo_sbe_v2_0.side.dissect(buffer, index, packet, parent)

  -- Order Qty: uint32
  index, order_qty = ltse_ltseequities_memo_sbe_v2_0.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: OrdType
  index, ord_type = ltse_ltseequities_memo_sbe_v2_0.ord_type.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = ltse_ltseequities_memo_sbe_v2_0.price.dissect(buffer, index, packet, parent)

  -- Display Qty: uint32
  index, display_qty = ltse_ltseequities_memo_sbe_v2_0.display_qty.dissect(buffer, index, packet, parent)

  -- Locate Reqd: char
  index, locate_reqd = ltse_ltseequities_memo_sbe_v2_0.locate_reqd.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = ltse_ltseequities_memo_sbe_v2_0.ord_status.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = ltse_ltseequities_memo_sbe_v2_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = ltse_ltseequities_memo_sbe_v2_0.cum_qty.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = ltse_ltseequities_memo_sbe_v2_0.transact_time.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = ltse_ltseequities_memo_sbe_v2_0.link_id_optional.dissect(buffer, index, packet, parent)

  -- Locate Broker Optional: ExecutionReport_NewLocateBroker
  index, locate_broker_optional = ltse_ltseequities_memo_sbe_v2_0.locate_broker_optional.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = ltse_ltseequities_memo_sbe_v2_0.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Replaced Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_report_replaced_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.execution_report_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.execution_report_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.execution_report_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Pending Replace Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_pending_replace_message = {}

-- Calculate size of: Execution Report Pending Replace Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_pending_replace_message.size = function(buffer, offset)
  local index = 0

  index = index + ltse_ltseequities_memo_sbe_v2_0.sending_time.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.order_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.clordid.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.origclordid_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.exec_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.symbol.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.side.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.order_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.ord_type.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.price.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.display_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.locate_reqd.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.ord_status.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.leaves_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.cum_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.link_id_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.locate_broker_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Pending Replace Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_pending_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Pending Replace Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_pending_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = ltse_ltseequities_memo_sbe_v2_0.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = ltse_ltseequities_memo_sbe_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = ltse_ltseequities_memo_sbe_v2_0.clordid.dissect(buffer, index, packet, parent)

  -- OrigClOrdId Optional: ExecutionReport_CanceledOrigClOrdID
  index, origclordid_optional = ltse_ltseequities_memo_sbe_v2_0.origclordid_optional.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = ltse_ltseequities_memo_sbe_v2_0.exec_id.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = ltse_ltseequities_memo_sbe_v2_0.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side: SideType
  index, side = ltse_ltseequities_memo_sbe_v2_0.side.dissect(buffer, index, packet, parent)

  -- Order Qty: uint32
  index, order_qty = ltse_ltseequities_memo_sbe_v2_0.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: OrdType
  index, ord_type = ltse_ltseequities_memo_sbe_v2_0.ord_type.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = ltse_ltseequities_memo_sbe_v2_0.price.dissect(buffer, index, packet, parent)

  -- Display Qty: uint32
  index, display_qty = ltse_ltseequities_memo_sbe_v2_0.display_qty.dissect(buffer, index, packet, parent)

  -- Locate Reqd: char
  index, locate_reqd = ltse_ltseequities_memo_sbe_v2_0.locate_reqd.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = ltse_ltseequities_memo_sbe_v2_0.ord_status.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = ltse_ltseequities_memo_sbe_v2_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = ltse_ltseequities_memo_sbe_v2_0.cum_qty.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = ltse_ltseequities_memo_sbe_v2_0.link_id_optional.dissect(buffer, index, packet, parent)

  -- Locate Broker Optional: ExecutionReport_NewLocateBroker
  index, locate_broker_optional = ltse_ltseequities_memo_sbe_v2_0.locate_broker_optional.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = ltse_ltseequities_memo_sbe_v2_0.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending Replace Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_pending_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_report_pending_replace_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.execution_report_pending_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.execution_report_pending_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.execution_report_pending_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Done Message
ltse_ltseequities_memo_sbe_v2_0.mass_cancel_done_message = {}

-- Size: Mass Cancel Done Message
ltse_ltseequities_memo_sbe_v2_0.mass_cancel_done_message.size =
  ltse_ltseequities_memo_sbe_v2_0.sending_time.size + 
  ltse_ltseequities_memo_sbe_v2_0.clordid.size

-- Display: Mass Cancel Done Message
ltse_ltseequities_memo_sbe_v2_0.mass_cancel_done_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Done Message
ltse_ltseequities_memo_sbe_v2_0.mass_cancel_done_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = ltse_ltseequities_memo_sbe_v2_0.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = ltse_ltseequities_memo_sbe_v2_0.clordid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Done Message
ltse_ltseequities_memo_sbe_v2_0.mass_cancel_done_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.mass_cancel_done_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.mass_cancel_done_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.mass_cancel_done_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.mass_cancel_done_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Canceled Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_canceled_message = {}

-- Calculate size of: Execution Report Canceled Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_canceled_message.size = function(buffer, offset)
  local index = 0

  index = index + ltse_ltseequities_memo_sbe_v2_0.sending_time.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.clordid.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.origclordid_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.order_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.exec_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.ord_status.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.leaves_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.cum_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.cancel_reason.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.transact_time.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.link_id_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Canceled Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Canceled Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = ltse_ltseequities_memo_sbe_v2_0.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = ltse_ltseequities_memo_sbe_v2_0.clordid.dissect(buffer, index, packet, parent)

  -- OrigClOrdId Optional: ExecutionReport_CanceledOrigClOrdID
  index, origclordid_optional = ltse_ltseequities_memo_sbe_v2_0.origclordid_optional.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = ltse_ltseequities_memo_sbe_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = ltse_ltseequities_memo_sbe_v2_0.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = ltse_ltseequities_memo_sbe_v2_0.ord_status.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = ltse_ltseequities_memo_sbe_v2_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = ltse_ltseequities_memo_sbe_v2_0.cum_qty.dissect(buffer, index, packet, parent)

  -- Cancel Reason: CancelReasonCode
  index, cancel_reason = ltse_ltseequities_memo_sbe_v2_0.cancel_reason.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = ltse_ltseequities_memo_sbe_v2_0.transact_time.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = ltse_ltseequities_memo_sbe_v2_0.link_id_optional.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = ltse_ltseequities_memo_sbe_v2_0.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Canceled Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_report_canceled_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.execution_report_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.execution_report_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.execution_report_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Pending Mass Cancel Message
ltse_ltseequities_memo_sbe_v2_0.pending_mass_cancel_message = {}

-- Size: Pending Mass Cancel Message
ltse_ltseequities_memo_sbe_v2_0.pending_mass_cancel_message.size =
  ltse_ltseequities_memo_sbe_v2_0.sending_time.size + 
  ltse_ltseequities_memo_sbe_v2_0.clordid.size + 
  ltse_ltseequities_memo_sbe_v2_0.symbol.size + 
  ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.size + 
  ltse_ltseequities_memo_sbe_v2_0.side_optional.size + 
  ltse_ltseequities_memo_sbe_v2_0.lower_than_price.size + 
  ltse_ltseequities_memo_sbe_v2_0.higher_than_price.size + 
  ltse_ltseequities_memo_sbe_v2_0.cancel_group_id.size

-- Display: Pending Mass Cancel Message
ltse_ltseequities_memo_sbe_v2_0.pending_mass_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Pending Mass Cancel Message
ltse_ltseequities_memo_sbe_v2_0.pending_mass_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = ltse_ltseequities_memo_sbe_v2_0.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = ltse_ltseequities_memo_sbe_v2_0.clordid.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = ltse_ltseequities_memo_sbe_v2_0.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side Optional: SideType
  index, side_optional = ltse_ltseequities_memo_sbe_v2_0.side_optional.dissect(buffer, index, packet, parent)

  -- Lower Than Price: PriceType
  index, lower_than_price = ltse_ltseequities_memo_sbe_v2_0.lower_than_price.dissect(buffer, index, packet, parent)

  -- Higher Than Price: PriceType
  index, higher_than_price = ltse_ltseequities_memo_sbe_v2_0.higher_than_price.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: uint16
  index, cancel_group_id = ltse_ltseequities_memo_sbe_v2_0.cancel_group_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Pending Mass Cancel Message
ltse_ltseequities_memo_sbe_v2_0.pending_mass_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.pending_mass_cancel_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.pending_mass_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.pending_mass_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.pending_mass_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Pending Cancel Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_pending_cancel_message = {}

-- Calculate size of: Execution Report Pending Cancel Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_pending_cancel_message.size = function(buffer, offset)
  local index = 0

  index = index + ltse_ltseequities_memo_sbe_v2_0.sending_time.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.order_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.clordid.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.origclordid_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.exec_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.symbol.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.ord_status.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.leaves_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.cum_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.link_id_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Pending Cancel Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_pending_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Pending Cancel Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_pending_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = ltse_ltseequities_memo_sbe_v2_0.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = ltse_ltseequities_memo_sbe_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = ltse_ltseequities_memo_sbe_v2_0.clordid.dissect(buffer, index, packet, parent)

  -- OrigClOrdId Optional: ExecutionReport_CanceledOrigClOrdID
  index, origclordid_optional = ltse_ltseequities_memo_sbe_v2_0.origclordid_optional.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = ltse_ltseequities_memo_sbe_v2_0.exec_id.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = ltse_ltseequities_memo_sbe_v2_0.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = ltse_ltseequities_memo_sbe_v2_0.ord_status.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = ltse_ltseequities_memo_sbe_v2_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = ltse_ltseequities_memo_sbe_v2_0.cum_qty.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = ltse_ltseequities_memo_sbe_v2_0.link_id_optional.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = ltse_ltseequities_memo_sbe_v2_0.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending Cancel Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_pending_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_report_pending_cancel_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.execution_report_pending_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.execution_report_pending_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.execution_report_pending_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Trade Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_message = {}

-- Calculate size of: Execution Report Trade Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + ltse_ltseequities_memo_sbe_v2_0.sending_time.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.order_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.clordid.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.exec_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.ord_status.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.last_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.last_px.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.leaves_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.cum_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.transact_time.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.last_liquidity_ind.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.last_mkt.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.trd_matching_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.link_id_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.security_group.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.execution_details.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.auction_type.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.auction_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = ltse_ltseequities_memo_sbe_v2_0.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = ltse_ltseequities_memo_sbe_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = ltse_ltseequities_memo_sbe_v2_0.clordid.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = ltse_ltseequities_memo_sbe_v2_0.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = ltse_ltseequities_memo_sbe_v2_0.ord_status.dissect(buffer, index, packet, parent)

  -- Last Qty: uint32
  index, last_qty = ltse_ltseequities_memo_sbe_v2_0.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: PriceType
  index, last_px = ltse_ltseequities_memo_sbe_v2_0.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = ltse_ltseequities_memo_sbe_v2_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = ltse_ltseequities_memo_sbe_v2_0.cum_qty.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = ltse_ltseequities_memo_sbe_v2_0.transact_time.dissect(buffer, index, packet, parent)

  -- Last Liquidity Ind: LastLiquidityIndType
  index, last_liquidity_ind = ltse_ltseequities_memo_sbe_v2_0.last_liquidity_ind.dissect(buffer, index, packet, parent)

  -- Last Mkt: ExecutionReport_TradeLastMkt
  index, last_mkt = ltse_ltseequities_memo_sbe_v2_0.last_mkt.dissect(buffer, index, packet, parent)

  -- Trd Matching Id: uint64
  index, trd_matching_id = ltse_ltseequities_memo_sbe_v2_0.trd_matching_id.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = ltse_ltseequities_memo_sbe_v2_0.link_id_optional.dissect(buffer, index, packet, parent)

  -- Security Group: char
  index, security_group = ltse_ltseequities_memo_sbe_v2_0.security_group.dissect(buffer, index, packet, parent)

  -- Execution Details: Struct of 13 fields
  index, execution_details = ltse_ltseequities_memo_sbe_v2_0.execution_details.dissect(buffer, index, packet, parent)

  -- Auction Type: AuctionType
  index, auction_type = ltse_ltseequities_memo_sbe_v2_0.auction_type.dissect(buffer, index, packet, parent)

  -- Auction Id: uint64
  index, auction_id = ltse_ltseequities_memo_sbe_v2_0.auction_id.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = ltse_ltseequities_memo_sbe_v2_0.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_report_trade_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Rejected Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_rejected_message = {}

-- Calculate size of: Execution Report Rejected Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_rejected_message.size = function(buffer, offset)
  local index = 0

  index = index + ltse_ltseequities_memo_sbe_v2_0.sending_time.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.clordid.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.exec_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.ord_status.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.symbol.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.leaves_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.cum_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.order_reject_reason.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.link_id_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Rejected Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Rejected Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = ltse_ltseequities_memo_sbe_v2_0.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = ltse_ltseequities_memo_sbe_v2_0.clordid.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = ltse_ltseequities_memo_sbe_v2_0.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = ltse_ltseequities_memo_sbe_v2_0.ord_status.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = ltse_ltseequities_memo_sbe_v2_0.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = ltse_ltseequities_memo_sbe_v2_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = ltse_ltseequities_memo_sbe_v2_0.cum_qty.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: OrderRejectReasonCode
  index, order_reject_reason = ltse_ltseequities_memo_sbe_v2_0.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = ltse_ltseequities_memo_sbe_v2_0.link_id_optional.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = ltse_ltseequities_memo_sbe_v2_0.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Rejected Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_report_rejected_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.execution_report_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.execution_report_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.execution_report_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Exec Inst
ltse_ltseequities_memo_sbe_v2_0.extended_exec_inst = {}

-- Size: Extended Exec Inst
ltse_ltseequities_memo_sbe_v2_0.extended_exec_inst.size = 2

-- Display: Extended Exec Inst
ltse_ltseequities_memo_sbe_v2_0.extended_exec_inst.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Late Auction flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Late Auction"
  end
  -- Is Non Attested Retail flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Non Attested Retail"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Extended Exec Inst
ltse_ltseequities_memo_sbe_v2_0.extended_exec_inst.bits = function(range, value, packet, parent)

  -- Late Auction: 1 Bit
  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.late_auction, range, value)

  -- Non Attested Retail: 1 Bit
  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.non_attested_retail, range, value)

  -- Reserved 14: 14 Bit
  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.reserved_14, range, value)
end

-- Dissect: Extended Exec Inst
ltse_ltseequities_memo_sbe_v2_0.extended_exec_inst.dissect = function(buffer, offset, packet, parent)
  local size = ltse_ltseequities_memo_sbe_v2_0.extended_exec_inst.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.extended_exec_inst.display(range, value, packet, parent)
  local element = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.extended_exec_inst, range, display)

  if show.structs then
    ltse_ltseequities_memo_sbe_v2_0.extended_exec_inst.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Exec Inst
ltse_ltseequities_memo_sbe_v2_0.exec_inst = {}

-- Size: Exec Inst
ltse_ltseequities_memo_sbe_v2_0.exec_inst.size = 2

-- Display: Exec Inst
ltse_ltseequities_memo_sbe_v2_0.exec_inst.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Participate Do Not Initiate flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Participate Do Not Initiate"
  end
  -- Is Intermarket Sweep flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Intermarket Sweep"
  end
  -- Is External Routing Not Allowed flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "External Routing Not Allowed"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Exec Inst
ltse_ltseequities_memo_sbe_v2_0.exec_inst.bits = function(range, value, packet, parent)

  -- Participate Do Not Initiate: 1 Bit
  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.participate_do_not_initiate, range, value)

  -- Intermarket Sweep: 1 Bit
  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.intermarket_sweep, range, value)

  -- External Routing Not Allowed: 1 Bit
  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.external_routing_not_allowed, range, value)

  -- Reserved 13: 13 Bit
  parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.reserved_13, range, value)
end

-- Dissect: Exec Inst
ltse_ltseequities_memo_sbe_v2_0.exec_inst.dissect = function(buffer, offset, packet, parent)
  local size = ltse_ltseequities_memo_sbe_v2_0.exec_inst.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = ltse_ltseequities_memo_sbe_v2_0.exec_inst.display(range, value, packet, parent)
  local element = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.exec_inst, range, display)

  if show.structs then
    ltse_ltseequities_memo_sbe_v2_0.exec_inst.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Execution Report New Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_new_message = {}

-- Calculate size of: Execution Report New Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_new_message.size = function(buffer, offset)
  local index = 0

  index = index + ltse_ltseequities_memo_sbe_v2_0.sending_time.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.order_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.clordid.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.exec_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.ord_status.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.symbol.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.side.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.ord_type.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.order_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.price.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.time_in_force.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.order_capacity.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.cust_order_capacity.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.exec_inst.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.extended_exec_inst.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.peg_offset_value.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.peg_price_type.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.expire_time.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.min_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.display_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.display_method.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.reserve_replenish_timing.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.display_min_incr.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.locate_reqd.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.reprice_frequency.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.reprice_behavior.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.cancel_group_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.stp_group_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.self_trade_prevention.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.risk_group_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.leaves_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.cum_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.transact_time.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.link_id_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.locate_broker_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report New Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_new_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report New Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_new_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = ltse_ltseequities_memo_sbe_v2_0.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = ltse_ltseequities_memo_sbe_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = ltse_ltseequities_memo_sbe_v2_0.clordid.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = ltse_ltseequities_memo_sbe_v2_0.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = ltse_ltseequities_memo_sbe_v2_0.ord_status.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = ltse_ltseequities_memo_sbe_v2_0.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side: SideType
  index, side = ltse_ltseequities_memo_sbe_v2_0.side.dissect(buffer, index, packet, parent)

  -- Ord Type: OrdType
  index, ord_type = ltse_ltseequities_memo_sbe_v2_0.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: uint32
  index, order_qty = ltse_ltseequities_memo_sbe_v2_0.order_qty.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = ltse_ltseequities_memo_sbe_v2_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForceType
  index, time_in_force = ltse_ltseequities_memo_sbe_v2_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Capacity: OrderCapacityType
  index, order_capacity = ltse_ltseequities_memo_sbe_v2_0.order_capacity.dissect(buffer, index, packet, parent)

  -- Cust Order Capacity: CustOrderCapacityType
  index, cust_order_capacity = ltse_ltseequities_memo_sbe_v2_0.cust_order_capacity.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = ltse_ltseequities_memo_sbe_v2_0.exec_inst.dissect(buffer, index, packet, parent)

  -- Extended Exec Inst: Struct of 3 fields
  index, extended_exec_inst = ltse_ltseequities_memo_sbe_v2_0.extended_exec_inst.dissect(buffer, index, packet, parent)

  -- Peg Offset Value: PriceType
  index, peg_offset_value = ltse_ltseequities_memo_sbe_v2_0.peg_offset_value.dissect(buffer, index, packet, parent)

  -- Peg Price Type: PegType
  index, peg_price_type = ltse_ltseequities_memo_sbe_v2_0.peg_price_type.dissect(buffer, index, packet, parent)

  -- Expire Time: UTCTimestampNanos
  index, expire_time = ltse_ltseequities_memo_sbe_v2_0.expire_time.dissect(buffer, index, packet, parent)

  -- Min Qty: uint32
  index, min_qty = ltse_ltseequities_memo_sbe_v2_0.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: uint32
  index, display_qty = ltse_ltseequities_memo_sbe_v2_0.display_qty.dissect(buffer, index, packet, parent)

  -- Display Method: DispMethodType
  index, display_method = ltse_ltseequities_memo_sbe_v2_0.display_method.dissect(buffer, index, packet, parent)

  -- Reserve Replenish Timing: ReserveReplenishTimingType
  index, reserve_replenish_timing = ltse_ltseequities_memo_sbe_v2_0.reserve_replenish_timing.dissect(buffer, index, packet, parent)

  -- Display Min Incr: uint32
  index, display_min_incr = ltse_ltseequities_memo_sbe_v2_0.display_min_incr.dissect(buffer, index, packet, parent)

  -- Locate Reqd: char
  index, locate_reqd = ltse_ltseequities_memo_sbe_v2_0.locate_reqd.dissect(buffer, index, packet, parent)

  -- Reprice Frequency: RepriceFrequencyType
  index, reprice_frequency = ltse_ltseequities_memo_sbe_v2_0.reprice_frequency.dissect(buffer, index, packet, parent)

  -- Reprice Behavior: RepriceBehaviorType
  index, reprice_behavior = ltse_ltseequities_memo_sbe_v2_0.reprice_behavior.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: uint16
  index, cancel_group_id = ltse_ltseequities_memo_sbe_v2_0.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Stp Group Id: uint16
  index, stp_group_id = ltse_ltseequities_memo_sbe_v2_0.stp_group_id.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention: SelfTradePreventionType
  index, self_trade_prevention = ltse_ltseequities_memo_sbe_v2_0.self_trade_prevention.dissect(buffer, index, packet, parent)

  -- Risk Group Id: uint16
  index, risk_group_id = ltse_ltseequities_memo_sbe_v2_0.risk_group_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = ltse_ltseequities_memo_sbe_v2_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = ltse_ltseequities_memo_sbe_v2_0.cum_qty.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = ltse_ltseequities_memo_sbe_v2_0.transact_time.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = ltse_ltseequities_memo_sbe_v2_0.link_id_optional.dissect(buffer, index, packet, parent)

  -- Locate Broker Optional: ExecutionReport_NewLocateBroker
  index, locate_broker_optional = ltse_ltseequities_memo_sbe_v2_0.locate_broker_optional.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = ltse_ltseequities_memo_sbe_v2_0.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report New Message
ltse_ltseequities_memo_sbe_v2_0.execution_report_new_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.execution_report_new_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.execution_report_new_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.execution_report_new_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.execution_report_new_message.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
ltse_ltseequities_memo_sbe_v2_0.server_payload = {}

-- Dissect: Server Payload
ltse_ltseequities_memo_sbe_v2_0.server_payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Execution Report New Message
  if template_id == 6 then
    return ltse_ltseequities_memo_sbe_v2_0.execution_report_new_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Rejected Message
  if template_id == 7 then
    return ltse_ltseequities_memo_sbe_v2_0.execution_report_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Message
  if template_id == 8 then
    return ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending Cancel Message
  if template_id == 9 then
    return ltse_ltseequities_memo_sbe_v2_0.execution_report_pending_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Pending Mass Cancel Message
  if template_id == 10 then
    return ltse_ltseequities_memo_sbe_v2_0.pending_mass_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Canceled Message
  if template_id == 11 then
    return ltse_ltseequities_memo_sbe_v2_0.execution_report_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Done Message
  if template_id == 12 then
    return ltse_ltseequities_memo_sbe_v2_0.mass_cancel_done_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending Replace Message
  if template_id == 13 then
    return ltse_ltseequities_memo_sbe_v2_0.execution_report_pending_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Replaced Message
  if template_id == 14 then
    return ltse_ltseequities_memo_sbe_v2_0.execution_report_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Correction Message
  if template_id == 15 then
    return ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Break Message
  if template_id == 16 then
    return ltse_ltseequities_memo_sbe_v2_0.execution_report_trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Restatement Message
  if template_id == 17 then
    return ltse_ltseequities_memo_sbe_v2_0.execution_report_restatement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Reject Message
  if template_id == 18 then
    return ltse_ltseequities_memo_sbe_v2_0.order_cancel_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Reject Message
  if template_id == 20 then
    return ltse_ltseequities_memo_sbe_v2_0.mass_cancel_reject_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sbe Header
ltse_ltseequities_memo_sbe_v2_0.sbe_header = {}

-- Size: Sbe Header
ltse_ltseequities_memo_sbe_v2_0.sbe_header.size =
  ltse_ltseequities_memo_sbe_v2_0.block_length.size + 
  ltse_ltseequities_memo_sbe_v2_0.template_id.size + 
  ltse_ltseequities_memo_sbe_v2_0.schema_id.size + 
  ltse_ltseequities_memo_sbe_v2_0.version.size + 
  ltse_ltseequities_memo_sbe_v2_0.num_groups.size

-- Display: Sbe Header
ltse_ltseequities_memo_sbe_v2_0.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
ltse_ltseequities_memo_sbe_v2_0.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = ltse_ltseequities_memo_sbe_v2_0.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, template_id = ltse_ltseequities_memo_sbe_v2_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer Static
  index, schema_id = ltse_ltseequities_memo_sbe_v2_0.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = ltse_ltseequities_memo_sbe_v2_0.version.dissect(buffer, index, packet, parent)

  -- Num Groups: 1 Byte Unsigned Fixed Width Integer
  index, num_groups = ltse_ltseequities_memo_sbe_v2_0.num_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
ltse_ltseequities_memo_sbe_v2_0.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.sbe_header, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Sbe Message
ltse_ltseequities_memo_sbe_v2_0.server_sbe_message = {}

-- Calculate size of: Server Sbe Message
ltse_ltseequities_memo_sbe_v2_0.server_sbe_message.size = function(buffer, offset)
  local index = 0

  index = index + ltse_ltseequities_memo_sbe_v2_0.sbe_header.size

  -- Calculate runtime size of Server Payload field
  local server_payload_offset = offset + index
  local server_payload_type = buffer(server_payload_offset - 5, 1):uint()
  index = index + ltse_ltseequities_memo_sbe_v2_0.server_payload.size(buffer, server_payload_offset, server_payload_type)

  return index
end

-- Display: Server Sbe Message
ltse_ltseequities_memo_sbe_v2_0.server_sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Sbe Message
ltse_ltseequities_memo_sbe_v2_0.server_sbe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 5 fields
  index, sbe_header = ltse_ltseequities_memo_sbe_v2_0.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 5, 1):uint()

  -- Server Payload: Runtime Type with 14 branches
  index = ltse_ltseequities_memo_sbe_v2_0.server_payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Server Sbe Message
ltse_ltseequities_memo_sbe_v2_0.server_sbe_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.server_sbe_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.server_sbe_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.server_sbe_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.server_sbe_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
ltse_ltseequities_memo_sbe_v2_0.sequenced_message = {}

-- Calculate size of: Sequenced Message
ltse_ltseequities_memo_sbe_v2_0.sequenced_message.size = function(buffer, offset)
  local index = 0

  index = index + ltse_ltseequities_memo_sbe_v2_0.server_sbe_message.size(buffer, offset + index)

  return index
end

-- Display: Sequenced Message
ltse_ltseequities_memo_sbe_v2_0.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
ltse_ltseequities_memo_sbe_v2_0.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Server Sbe Message: Struct of 2 fields
  index, server_sbe_message = ltse_ltseequities_memo_sbe_v2_0.server_sbe_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message
ltse_ltseequities_memo_sbe_v2_0.sequenced_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.sequenced_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.sequenced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.sequenced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.sequenced_message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Complete Message
ltse_ltseequities_memo_sbe_v2_0.stream_complete_message = {}

-- Size: Stream Complete Message
ltse_ltseequities_memo_sbe_v2_0.stream_complete_message.size =
  ltse_ltseequities_memo_sbe_v2_0.total_sequence_count.size

-- Display: Stream Complete Message
ltse_ltseequities_memo_sbe_v2_0.stream_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Complete Message
ltse_ltseequities_memo_sbe_v2_0.stream_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Total Sequence Count: 8 Byte Unsigned Fixed Width Integer
  index, total_sequence_count = ltse_ltseequities_memo_sbe_v2_0.total_sequence_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Complete Message
ltse_ltseequities_memo_sbe_v2_0.stream_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.stream_complete_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.stream_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.stream_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.stream_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Rejected Message
ltse_ltseequities_memo_sbe_v2_0.stream_rejected_message = {}

-- Size: Stream Rejected Message
ltse_ltseequities_memo_sbe_v2_0.stream_rejected_message.size =
  ltse_ltseequities_memo_sbe_v2_0.stream_reject_code.size

-- Display: Stream Rejected Message
ltse_ltseequities_memo_sbe_v2_0.stream_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Rejected Message
ltse_ltseequities_memo_sbe_v2_0.stream_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Reject Code: 1 Byte Ascii String Enum with 3 values
  index, stream_reject_code = ltse_ltseequities_memo_sbe_v2_0.stream_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Rejected Message
ltse_ltseequities_memo_sbe_v2_0.stream_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.stream_rejected_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.stream_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.stream_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.stream_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Begin Message
ltse_ltseequities_memo_sbe_v2_0.stream_begin_message = {}

-- Size: Stream Begin Message
ltse_ltseequities_memo_sbe_v2_0.stream_begin_message.size =
  ltse_ltseequities_memo_sbe_v2_0.next_sequence_number.size + 
  ltse_ltseequities_memo_sbe_v2_0.max_sequence_number.size

-- Display: Stream Begin Message
ltse_ltseequities_memo_sbe_v2_0.stream_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Begin Message
ltse_ltseequities_memo_sbe_v2_0.stream_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = ltse_ltseequities_memo_sbe_v2_0.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Max Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, max_sequence_number = ltse_ltseequities_memo_sbe_v2_0.max_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Begin Message
ltse_ltseequities_memo_sbe_v2_0.stream_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.stream_begin_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.stream_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.stream_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.stream_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Complete Message
ltse_ltseequities_memo_sbe_v2_0.replay_complete_message = {}

-- Size: Replay Complete Message
ltse_ltseequities_memo_sbe_v2_0.replay_complete_message.size =
  ltse_ltseequities_memo_sbe_v2_0.message_count.size

-- Display: Replay Complete Message
ltse_ltseequities_memo_sbe_v2_0.replay_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Complete Message
ltse_ltseequities_memo_sbe_v2_0.replay_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 8 Byte Unsigned Fixed Width Integer
  index, message_count = ltse_ltseequities_memo_sbe_v2_0.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Complete Message
ltse_ltseequities_memo_sbe_v2_0.replay_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.replay_complete_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.replay_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.replay_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.replay_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Rejected Message
ltse_ltseequities_memo_sbe_v2_0.replay_rejected_message = {}

-- Size: Replay Rejected Message
ltse_ltseequities_memo_sbe_v2_0.replay_rejected_message.size =
  ltse_ltseequities_memo_sbe_v2_0.replay_reject_code.size

-- Display: Replay Rejected Message
ltse_ltseequities_memo_sbe_v2_0.replay_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Rejected Message
ltse_ltseequities_memo_sbe_v2_0.replay_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Replay Reject Code: 1 Byte Ascii String Enum with 4 values
  index, replay_reject_code = ltse_ltseequities_memo_sbe_v2_0.replay_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Rejected Message
ltse_ltseequities_memo_sbe_v2_0.replay_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.replay_rejected_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.replay_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.replay_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.replay_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Begin Message
ltse_ltseequities_memo_sbe_v2_0.replay_begin_message = {}

-- Size: Replay Begin Message
ltse_ltseequities_memo_sbe_v2_0.replay_begin_message.size =
  ltse_ltseequities_memo_sbe_v2_0.next_sequence_number.size + 
  ltse_ltseequities_memo_sbe_v2_0.pending_message_count.size

-- Display: Replay Begin Message
ltse_ltseequities_memo_sbe_v2_0.replay_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Begin Message
ltse_ltseequities_memo_sbe_v2_0.replay_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = ltse_ltseequities_memo_sbe_v2_0.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Pending Message Count: 4 Byte Unsigned Fixed Width Integer
  index, pending_message_count = ltse_ltseequities_memo_sbe_v2_0.pending_message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Begin Message
ltse_ltseequities_memo_sbe_v2_0.replay_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.replay_begin_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.replay_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.replay_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.replay_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Session Message
ltse_ltseequities_memo_sbe_v2_0.start_of_session_message = {}

-- Size: Start Of Session Message
ltse_ltseequities_memo_sbe_v2_0.start_of_session_message.size =
  ltse_ltseequities_memo_sbe_v2_0.session_id.size

-- Display: Start Of Session Message
ltse_ltseequities_memo_sbe_v2_0.start_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Session Message
ltse_ltseequities_memo_sbe_v2_0.start_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = ltse_ltseequities_memo_sbe_v2_0.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Session Message
ltse_ltseequities_memo_sbe_v2_0.start_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.start_of_session_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.start_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.start_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.start_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Rejected Message
ltse_ltseequities_memo_sbe_v2_0.login_rejected_message = {}

-- Size: Login Rejected Message
ltse_ltseequities_memo_sbe_v2_0.login_rejected_message.size =
  ltse_ltseequities_memo_sbe_v2_0.login_reject_code.size

-- Display: Login Rejected Message
ltse_ltseequities_memo_sbe_v2_0.login_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Message
ltse_ltseequities_memo_sbe_v2_0.login_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Reject Code: 1 Byte Ascii String Enum with 4 values
  index, login_reject_code = ltse_ltseequities_memo_sbe_v2_0.login_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Message
ltse_ltseequities_memo_sbe_v2_0.login_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.login_rejected_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.login_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.login_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.login_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Message
ltse_ltseequities_memo_sbe_v2_0.login_accepted_message = {}

-- Size: Login Accepted Message
ltse_ltseequities_memo_sbe_v2_0.login_accepted_message.size =
  ltse_ltseequities_memo_sbe_v2_0.supported_request_mode.size

-- Display: Login Accepted Message
ltse_ltseequities_memo_sbe_v2_0.login_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Message
ltse_ltseequities_memo_sbe_v2_0.login_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Supported Request Mode: 1 Byte Ascii String Enum with 3 values
  index, supported_request_mode = ltse_ltseequities_memo_sbe_v2_0.supported_request_mode.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Message
ltse_ltseequities_memo_sbe_v2_0.login_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.login_accepted_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.login_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.login_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.login_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Server Data
ltse_ltseequities_memo_sbe_v2_0.server_data = {}

-- Dissect: Server Data
ltse_ltseequities_memo_sbe_v2_0.server_data.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Accepted Message
  if message_type == 1 then
    return ltse_ltseequities_memo_sbe_v2_0.login_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Message
  if message_type == 2 then
    return ltse_ltseequities_memo_sbe_v2_0.login_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Session Message
  if message_type == 3 then
    return ltse_ltseequities_memo_sbe_v2_0.start_of_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Begin Message
  if message_type == 5 then
    return ltse_ltseequities_memo_sbe_v2_0.replay_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Rejected Message
  if message_type == 6 then
    return ltse_ltseequities_memo_sbe_v2_0.replay_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete Message
  if message_type == 7 then
    return ltse_ltseequities_memo_sbe_v2_0.replay_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Begin Message
  if message_type == 8 then
    return ltse_ltseequities_memo_sbe_v2_0.stream_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Rejected Message
  if message_type == 9 then
    return ltse_ltseequities_memo_sbe_v2_0.stream_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Complete Message
  if message_type == 10 then
    return ltse_ltseequities_memo_sbe_v2_0.stream_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Message
  if message_type == 11 then
    return ltse_ltseequities_memo_sbe_v2_0.sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Common Header
ltse_ltseequities_memo_sbe_v2_0.common_header = {}

-- Size: Common Header
ltse_ltseequities_memo_sbe_v2_0.common_header.size =
  ltse_ltseequities_memo_sbe_v2_0.message_type.size + 
  ltse_ltseequities_memo_sbe_v2_0.message_length.size

-- Display: Common Header
ltse_ltseequities_memo_sbe_v2_0.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
ltse_ltseequities_memo_sbe_v2_0.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, message_type = ltse_ltseequities_memo_sbe_v2_0.message_type.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = ltse_ltseequities_memo_sbe_v2_0.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
ltse_ltseequities_memo_sbe_v2_0.common_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.common_header, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Packet
ltse_ltseequities_memo_sbe_v2_0.server_packet = {}

-- Verify required size of Tcp packet
ltse_ltseequities_memo_sbe_v2_0.server_packet.requiredsize = function(buffer)
  return buffer:len() >= ltse_ltseequities_memo_sbe_v2_0.common_header.size
end

-- Dissect Server Packet
ltse_ltseequities_memo_sbe_v2_0.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 2 fields
  index, common_header = ltse_ltseequities_memo_sbe_v2_0.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 3, 1):uint()

  -- Server Data: Runtime Type with 10 branches
  index = ltse_ltseequities_memo_sbe_v2_0.server_data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Mass Cancel Request Message
ltse_ltseequities_memo_sbe_v2_0.mass_cancel_request_message = {}

-- Size: Mass Cancel Request Message
ltse_ltseequities_memo_sbe_v2_0.mass_cancel_request_message.size =
  ltse_ltseequities_memo_sbe_v2_0.clordid.size + 
  ltse_ltseequities_memo_sbe_v2_0.symbol.size + 
  ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.size + 
  ltse_ltseequities_memo_sbe_v2_0.side_optional.size + 
  ltse_ltseequities_memo_sbe_v2_0.lower_than_price.size + 
  ltse_ltseequities_memo_sbe_v2_0.higher_than_price.size + 
  ltse_ltseequities_memo_sbe_v2_0.cancel_group_id.size

-- Display: Mass Cancel Request Message
ltse_ltseequities_memo_sbe_v2_0.mass_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Request Message
ltse_ltseequities_memo_sbe_v2_0.mass_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = ltse_ltseequities_memo_sbe_v2_0.clordid.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = ltse_ltseequities_memo_sbe_v2_0.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side Optional: SideType
  index, side_optional = ltse_ltseequities_memo_sbe_v2_0.side_optional.dissect(buffer, index, packet, parent)

  -- Lower Than Price: PriceType
  index, lower_than_price = ltse_ltseequities_memo_sbe_v2_0.lower_than_price.dissect(buffer, index, packet, parent)

  -- Higher Than Price: PriceType
  index, higher_than_price = ltse_ltseequities_memo_sbe_v2_0.higher_than_price.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: uint16
  index, cancel_group_id = ltse_ltseequities_memo_sbe_v2_0.cancel_group_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Request Message
ltse_ltseequities_memo_sbe_v2_0.mass_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.mass_cancel_request_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.mass_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.mass_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.mass_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Request Message
ltse_ltseequities_memo_sbe_v2_0.order_cancel_request_message = {}

-- Size: Order Cancel Request Message
ltse_ltseequities_memo_sbe_v2_0.order_cancel_request_message.size =
  ltse_ltseequities_memo_sbe_v2_0.origclordid_optional.size + 
  ltse_ltseequities_memo_sbe_v2_0.order_id_optional.size + 
  ltse_ltseequities_memo_sbe_v2_0.clordid.size + 
  ltse_ltseequities_memo_sbe_v2_0.symbol.size + 
  ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.size

-- Display: Order Cancel Request Message
ltse_ltseequities_memo_sbe_v2_0.order_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
ltse_ltseequities_memo_sbe_v2_0.order_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- OrigClOrdId Optional: ExecutionReport_CanceledOrigClOrdID
  index, origclordid_optional = ltse_ltseequities_memo_sbe_v2_0.origclordid_optional.dissect(buffer, index, packet, parent)

  -- Order Id Optional: uint64
  index, order_id_optional = ltse_ltseequities_memo_sbe_v2_0.order_id_optional.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = ltse_ltseequities_memo_sbe_v2_0.clordid.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = ltse_ltseequities_memo_sbe_v2_0.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
ltse_ltseequities_memo_sbe_v2_0.order_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.order_cancel_request_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.order_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.order_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.order_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Replace Request Message
ltse_ltseequities_memo_sbe_v2_0.order_cancel_replace_request_message = {}

-- Size: Order Cancel Replace Request Message
ltse_ltseequities_memo_sbe_v2_0.order_cancel_replace_request_message.size =
  ltse_ltseequities_memo_sbe_v2_0.origclordid.size + 
  ltse_ltseequities_memo_sbe_v2_0.clordid.size + 
  ltse_ltseequities_memo_sbe_v2_0.symbol.size + 
  ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.size + 
  ltse_ltseequities_memo_sbe_v2_0.side.size + 
  ltse_ltseequities_memo_sbe_v2_0.order_qty.size + 
  ltse_ltseequities_memo_sbe_v2_0.ord_type.size + 
  ltse_ltseequities_memo_sbe_v2_0.price.size + 
  ltse_ltseequities_memo_sbe_v2_0.display_qty.size + 
  ltse_ltseequities_memo_sbe_v2_0.locate_reqd.size + 
  ltse_ltseequities_memo_sbe_v2_0.link_id_optional.size + 
  ltse_ltseequities_memo_sbe_v2_0.locate_broker_optional.size

-- Display: Order Cancel Replace Request Message
ltse_ltseequities_memo_sbe_v2_0.order_cancel_replace_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Replace Request Message
ltse_ltseequities_memo_sbe_v2_0.order_cancel_replace_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- OrigClOrdId: OrderCancelReplaceRequestOrigClOrdID
  index, origclordid = ltse_ltseequities_memo_sbe_v2_0.origclordid.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = ltse_ltseequities_memo_sbe_v2_0.clordid.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = ltse_ltseequities_memo_sbe_v2_0.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side: SideType
  index, side = ltse_ltseequities_memo_sbe_v2_0.side.dissect(buffer, index, packet, parent)

  -- Order Qty: uint32
  index, order_qty = ltse_ltseequities_memo_sbe_v2_0.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: OrdType
  index, ord_type = ltse_ltseequities_memo_sbe_v2_0.ord_type.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = ltse_ltseequities_memo_sbe_v2_0.price.dissect(buffer, index, packet, parent)

  -- Display Qty: uint32
  index, display_qty = ltse_ltseequities_memo_sbe_v2_0.display_qty.dissect(buffer, index, packet, parent)

  -- Locate Reqd: char
  index, locate_reqd = ltse_ltseequities_memo_sbe_v2_0.locate_reqd.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = ltse_ltseequities_memo_sbe_v2_0.link_id_optional.dissect(buffer, index, packet, parent)

  -- Locate Broker Optional: ExecutionReport_NewLocateBroker
  index, locate_broker_optional = ltse_ltseequities_memo_sbe_v2_0.locate_broker_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Request Message
ltse_ltseequities_memo_sbe_v2_0.order_cancel_replace_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.order_cancel_replace_request_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.order_cancel_replace_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Single Message
ltse_ltseequities_memo_sbe_v2_0.new_order_single_message = {}

-- Calculate size of: New Order Single Message
ltse_ltseequities_memo_sbe_v2_0.new_order_single_message.size = function(buffer, offset)
  local index = 0

  index = index + ltse_ltseequities_memo_sbe_v2_0.clordid.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.symbol.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.side.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.order_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.ord_type.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.price.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.time_in_force.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.order_capacity.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.cust_order_capacity.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.exec_inst.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.extended_exec_inst.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.peg_offset_value.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.peg_price_type.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.expire_time.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.min_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.display_qty.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.display_method.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.reserve_replenish_timing.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.display_min_incr.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.locate_reqd.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.reprice_frequency.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.reprice_behavior.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.cancel_group_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.stp_group_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.self_trade_prevention.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.risk_group_id.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.link_id_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.locate_broker_optional.size

  index = index + ltse_ltseequities_memo_sbe_v2_0.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: New Order Single Message
ltse_ltseequities_memo_sbe_v2_0.new_order_single_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Single Message
ltse_ltseequities_memo_sbe_v2_0.new_order_single_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = ltse_ltseequities_memo_sbe_v2_0.clordid.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = ltse_ltseequities_memo_sbe_v2_0.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = ltse_ltseequities_memo_sbe_v2_0.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side: SideType
  index, side = ltse_ltseequities_memo_sbe_v2_0.side.dissect(buffer, index, packet, parent)

  -- Order Qty: uint32
  index, order_qty = ltse_ltseequities_memo_sbe_v2_0.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: OrdType
  index, ord_type = ltse_ltseequities_memo_sbe_v2_0.ord_type.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = ltse_ltseequities_memo_sbe_v2_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForceType
  index, time_in_force = ltse_ltseequities_memo_sbe_v2_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Capacity: OrderCapacityType
  index, order_capacity = ltse_ltseequities_memo_sbe_v2_0.order_capacity.dissect(buffer, index, packet, parent)

  -- Cust Order Capacity: CustOrderCapacityType
  index, cust_order_capacity = ltse_ltseequities_memo_sbe_v2_0.cust_order_capacity.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = ltse_ltseequities_memo_sbe_v2_0.exec_inst.dissect(buffer, index, packet, parent)

  -- Extended Exec Inst: Struct of 3 fields
  index, extended_exec_inst = ltse_ltseequities_memo_sbe_v2_0.extended_exec_inst.dissect(buffer, index, packet, parent)

  -- Peg Offset Value: PriceType
  index, peg_offset_value = ltse_ltseequities_memo_sbe_v2_0.peg_offset_value.dissect(buffer, index, packet, parent)

  -- Peg Price Type: PegType
  index, peg_price_type = ltse_ltseequities_memo_sbe_v2_0.peg_price_type.dissect(buffer, index, packet, parent)

  -- Expire Time: UTCTimestampNanos
  index, expire_time = ltse_ltseequities_memo_sbe_v2_0.expire_time.dissect(buffer, index, packet, parent)

  -- Min Qty: uint32
  index, min_qty = ltse_ltseequities_memo_sbe_v2_0.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: uint32
  index, display_qty = ltse_ltseequities_memo_sbe_v2_0.display_qty.dissect(buffer, index, packet, parent)

  -- Display Method: DispMethodType
  index, display_method = ltse_ltseequities_memo_sbe_v2_0.display_method.dissect(buffer, index, packet, parent)

  -- Reserve Replenish Timing: ReserveReplenishTimingType
  index, reserve_replenish_timing = ltse_ltseequities_memo_sbe_v2_0.reserve_replenish_timing.dissect(buffer, index, packet, parent)

  -- Display Min Incr: uint32
  index, display_min_incr = ltse_ltseequities_memo_sbe_v2_0.display_min_incr.dissect(buffer, index, packet, parent)

  -- Locate Reqd: char
  index, locate_reqd = ltse_ltseequities_memo_sbe_v2_0.locate_reqd.dissect(buffer, index, packet, parent)

  -- Reprice Frequency: RepriceFrequencyType
  index, reprice_frequency = ltse_ltseequities_memo_sbe_v2_0.reprice_frequency.dissect(buffer, index, packet, parent)

  -- Reprice Behavior: RepriceBehaviorType
  index, reprice_behavior = ltse_ltseequities_memo_sbe_v2_0.reprice_behavior.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: uint16
  index, cancel_group_id = ltse_ltseequities_memo_sbe_v2_0.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Stp Group Id: uint16
  index, stp_group_id = ltse_ltseequities_memo_sbe_v2_0.stp_group_id.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention: SelfTradePreventionType
  index, self_trade_prevention = ltse_ltseequities_memo_sbe_v2_0.self_trade_prevention.dissect(buffer, index, packet, parent)

  -- Risk Group Id: uint16
  index, risk_group_id = ltse_ltseequities_memo_sbe_v2_0.risk_group_id.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = ltse_ltseequities_memo_sbe_v2_0.link_id_optional.dissect(buffer, index, packet, parent)

  -- Locate Broker Optional: ExecutionReport_NewLocateBroker
  index, locate_broker_optional = ltse_ltseequities_memo_sbe_v2_0.locate_broker_optional.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = ltse_ltseequities_memo_sbe_v2_0.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Message
ltse_ltseequities_memo_sbe_v2_0.new_order_single_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.new_order_single_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.new_order_single_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.new_order_single_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.new_order_single_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
ltse_ltseequities_memo_sbe_v2_0.client_payload = {}

-- Dissect: Client Payload
ltse_ltseequities_memo_sbe_v2_0.client_payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect New Order Single Message
  if template_id == 1 then
    return ltse_ltseequities_memo_sbe_v2_0.new_order_single_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Replace Request Message
  if template_id == 2 then
    return ltse_ltseequities_memo_sbe_v2_0.order_cancel_replace_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request Message
  if template_id == 3 then
    return ltse_ltseequities_memo_sbe_v2_0.order_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Request Message
  if template_id == 4 then
    return ltse_ltseequities_memo_sbe_v2_0.mass_cancel_request_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Sbe Message
ltse_ltseequities_memo_sbe_v2_0.client_sbe_message = {}

-- Calculate size of: Client Sbe Message
ltse_ltseequities_memo_sbe_v2_0.client_sbe_message.size = function(buffer, offset)
  local index = 0

  index = index + ltse_ltseequities_memo_sbe_v2_0.sbe_header.size

  -- Calculate runtime size of Client Payload field
  local client_payload_offset = offset + index
  local client_payload_type = buffer(client_payload_offset - 5, 1):uint()
  index = index + ltse_ltseequities_memo_sbe_v2_0.client_payload.size(buffer, client_payload_offset, client_payload_type)

  return index
end

-- Display: Client Sbe Message
ltse_ltseequities_memo_sbe_v2_0.client_sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Sbe Message
ltse_ltseequities_memo_sbe_v2_0.client_sbe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 5 fields
  index, sbe_header = ltse_ltseequities_memo_sbe_v2_0.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 5, 1):uint()

  -- Client Payload: Runtime Type with 4 branches
  index = ltse_ltseequities_memo_sbe_v2_0.client_payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Client Sbe Message
ltse_ltseequities_memo_sbe_v2_0.client_sbe_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.client_sbe_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.client_sbe_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.client_sbe_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.client_sbe_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
ltse_ltseequities_memo_sbe_v2_0.unsequenced_message = {}

-- Calculate size of: Unsequenced Message
ltse_ltseequities_memo_sbe_v2_0.unsequenced_message.size = function(buffer, offset)
  local index = 0

  index = index + ltse_ltseequities_memo_sbe_v2_0.client_sbe_message.size(buffer, offset + index)

  return index
end

-- Display: Unsequenced Message
ltse_ltseequities_memo_sbe_v2_0.unsequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Message
ltse_ltseequities_memo_sbe_v2_0.unsequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Sbe Message: Struct of 2 fields
  index, client_sbe_message = ltse_ltseequities_memo_sbe_v2_0.client_sbe_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Message
ltse_ltseequities_memo_sbe_v2_0.unsequenced_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.unsequenced_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.unsequenced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.unsequenced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.unsequenced_message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Request Message
ltse_ltseequities_memo_sbe_v2_0.stream_request_message = {}

-- Size: Stream Request Message
ltse_ltseequities_memo_sbe_v2_0.stream_request_message.size =
  ltse_ltseequities_memo_sbe_v2_0.session_id.size + 
  ltse_ltseequities_memo_sbe_v2_0.next_sequence_number.size

-- Display: Stream Request Message
ltse_ltseequities_memo_sbe_v2_0.stream_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Request Message
ltse_ltseequities_memo_sbe_v2_0.stream_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = ltse_ltseequities_memo_sbe_v2_0.session_id.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = ltse_ltseequities_memo_sbe_v2_0.next_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Request Message
ltse_ltseequities_memo_sbe_v2_0.stream_request_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.stream_request_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.stream_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.stream_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.stream_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay All Request Message
ltse_ltseequities_memo_sbe_v2_0.replay_all_request_message = {}

-- Size: Replay All Request Message
ltse_ltseequities_memo_sbe_v2_0.replay_all_request_message.size =
  ltse_ltseequities_memo_sbe_v2_0.session_id.size

-- Display: Replay All Request Message
ltse_ltseequities_memo_sbe_v2_0.replay_all_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay All Request Message
ltse_ltseequities_memo_sbe_v2_0.replay_all_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = ltse_ltseequities_memo_sbe_v2_0.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay All Request Message
ltse_ltseequities_memo_sbe_v2_0.replay_all_request_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.replay_all_request_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.replay_all_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.replay_all_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.replay_all_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Request Message
ltse_ltseequities_memo_sbe_v2_0.replay_request_message = {}

-- Size: Replay Request Message
ltse_ltseequities_memo_sbe_v2_0.replay_request_message.size =
  ltse_ltseequities_memo_sbe_v2_0.session_id.size + 
  ltse_ltseequities_memo_sbe_v2_0.next_sequence_number.size + 
  ltse_ltseequities_memo_sbe_v2_0.count.size

-- Display: Replay Request Message
ltse_ltseequities_memo_sbe_v2_0.replay_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Message
ltse_ltseequities_memo_sbe_v2_0.replay_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = ltse_ltseequities_memo_sbe_v2_0.session_id.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = ltse_ltseequities_memo_sbe_v2_0.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = ltse_ltseequities_memo_sbe_v2_0.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Message
ltse_ltseequities_memo_sbe_v2_0.replay_request_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.replay_request_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.replay_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.replay_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.replay_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Message
ltse_ltseequities_memo_sbe_v2_0.login_request_message = {}

-- Size: Login Request Message
ltse_ltseequities_memo_sbe_v2_0.login_request_message.size =
  ltse_ltseequities_memo_sbe_v2_0.token_type.size + 
  ltse_ltseequities_memo_sbe_v2_0.token.size

-- Display: Login Request Message
ltse_ltseequities_memo_sbe_v2_0.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
ltse_ltseequities_memo_sbe_v2_0.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token Type: 1 Byte Ascii String
  index, token_type = ltse_ltseequities_memo_sbe_v2_0.token_type.dissect(buffer, index, packet, parent)

  -- Token: 1 Byte Ascii String
  index, token = ltse_ltseequities_memo_sbe_v2_0.token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
ltse_ltseequities_memo_sbe_v2_0.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0.fields.login_request_message, buffer(offset, 0))
    local index = ltse_ltseequities_memo_sbe_v2_0.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_ltseequities_memo_sbe_v2_0.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_ltseequities_memo_sbe_v2_0.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Data
ltse_ltseequities_memo_sbe_v2_0.client_data = {}

-- Dissect: Client Data
ltse_ltseequities_memo_sbe_v2_0.client_data.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 100 then
    return ltse_ltseequities_memo_sbe_v2_0.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Request Message
  if message_type == 101 then
    return ltse_ltseequities_memo_sbe_v2_0.replay_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay All Request Message
  if message_type == 102 then
    return ltse_ltseequities_memo_sbe_v2_0.replay_all_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Request Message
  if message_type == 103 then
    return ltse_ltseequities_memo_sbe_v2_0.stream_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Message
  if message_type == 104 then
    return ltse_ltseequities_memo_sbe_v2_0.unsequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet
ltse_ltseequities_memo_sbe_v2_0.client_packet = {}

-- Verify required size of Tcp packet
ltse_ltseequities_memo_sbe_v2_0.client_packet.requiredsize = function(buffer)
  return buffer:len() >= ltse_ltseequities_memo_sbe_v2_0.common_header.size
end

-- Dissect Client Packet
ltse_ltseequities_memo_sbe_v2_0.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 2 fields
  index, common_header = ltse_ltseequities_memo_sbe_v2_0.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 3, 1):uint()

  -- Client Data: Runtime Type with 5 branches
  index = ltse_ltseequities_memo_sbe_v2_0.client_data.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_ltse_ltseequities_memo_sbe_v2_0.init()
end

-- Connection roles for Ltse LtseEquities Memo Sbe 2.0: Client is the initiator, Server is the acceptor
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
ltse_ltseequities_memo_sbe_v2_0.role = function(packet)
  if omi_ltse_ltseequities_memo_sbe_v2_0.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_ltse_ltseequities_memo_sbe_v2_0.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_ltse_ltseequities_memo_sbe_v2_0.prefs.acceptor_port

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

  if omi_ltse_ltseequities_memo_sbe_v2_0.prefs.swap_sides then
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
ltse_ltseequities_memo_sbe_v2_0.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Ltse LtseEquities Memo Sbe 2.0
function omi_ltse_ltseequities_memo_sbe_v2_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_ltse_ltseequities_memo_sbe_v2_0.name

  local role = ltse_ltseequities_memo_sbe_v2_0.role(packet)
  local dissect = ltse_ltseequities_memo_sbe_v2_0.server_packet.dissect
  if role == "initiator" then
    dissect = ltse_ltseequities_memo_sbe_v2_0.client_packet.dissect
  end

  local length = buffer:len()
  local index = 0

  -- Dissect each message the segment carries
  while index < length do
    local remaining = length - index

    -- The message length lives in the header: wait for the header before reading it
    if remaining < ltse_ltseequities_memo_sbe_v2_0.common_header.size then
      packet.desegment_offset = index
      packet.desegment_len = DESEGMENT_ONE_MORE_SEGMENT
      return length
    end

    local size = buffer(index + 1, 2):uint() + 3
    -- A message split across segments: ask TCP for exactly the bytes still missing
    if remaining < size then
      packet.desegment_offset = index
      packet.desegment_len = size - remaining
      return length
    end

    local protocol = parent:add(omi_ltse_ltseequities_memo_sbe_v2_0, buffer(index, size), omi_ltse_ltseequities_memo_sbe_v2_0.description, "("..size.." Bytes)")
    dissect(buffer(index, size):tvb(), packet, protocol)
    protocol:set_len(size)
    index = index + size
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
ltse_ltseequities_memo_sbe_v2_0.client_packet.fingerprint = function(buffer)
  if buffer:len() < 1 then
    return false
  end

  local message_type = buffer(0, 1):uint()

  -- Login Request Message
  if message_type == 100 then
    return true
  end

  -- Replay Request Message
  if message_type == 101 then
    return true
  end

  -- Replay All Request Message
  if message_type == 102 then
    return true
  end

  -- Stream Request Message
  if message_type == 103 then
    return true
  end

  -- Unsequenced Message: carries the application messages, which tell this protocol from others sharing the session framing
  if message_type == 104 then
    if buffer:len() < 6 then
      return false
    end

    local template_id = buffer(5, 1):uint()

    -- New Order Single Message
    if template_id == 1 then
      return true
    end

    -- Order Cancel Replace Request Message
    if template_id == 2 then
      return true
    end

    -- Order Cancel Request Message
    if template_id == 3 then
      return true
    end

    -- Mass Cancel Request Message
    if template_id == 4 then
      return true
    end

    return false
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
ltse_ltseequities_memo_sbe_v2_0.server_packet.fingerprint = function(buffer)
  if buffer:len() < 1 then
    return false
  end

  local message_type = buffer(0, 1):uint()

  -- Login Accepted Message
  if message_type == 1 then
    return true
  end

  -- Login Rejected Message
  if message_type == 2 then
    return true
  end

  -- Start Of Session Message
  if message_type == 3 then
    return true
  end

  -- Replay Begin Message
  if message_type == 5 then
    return true
  end

  -- Replay Rejected Message
  if message_type == 6 then
    return true
  end

  -- Replay Complete Message
  if message_type == 7 then
    return true
  end

  -- Stream Begin Message
  if message_type == 8 then
    return true
  end

  -- Stream Rejected Message
  if message_type == 9 then
    return true
  end

  -- Stream Complete Message
  if message_type == 10 then
    return true
  end

  -- Sequenced Message: carries the application messages, which tell this protocol from others sharing the session framing
  if message_type == 11 then
    if buffer:len() < 6 then
      return false
    end

    local template_id = buffer(5, 1):uint()

    -- Execution Report New Message
    if template_id == 6 then
      return true
    end

    -- Execution Report Rejected Message
    if template_id == 7 then
      return true
    end

    -- Execution Report Trade Message
    if template_id == 8 then
      return true
    end

    -- Execution Report Pending Cancel Message
    if template_id == 9 then
      return true
    end

    -- Pending Mass Cancel Message
    if template_id == 10 then
      return true
    end

    -- Execution Report Canceled Message
    if template_id == 11 then
      return true
    end

    -- Mass Cancel Done Message
    if template_id == 12 then
      return true
    end

    -- Execution Report Pending Replace Message
    if template_id == 13 then
      return true
    end

    -- Execution Report Replaced Message
    if template_id == 14 then
      return true
    end

    -- Execution Report Trade Correction Message
    if template_id == 15 then
      return true
    end

    -- Execution Report Trade Break Message
    if template_id == 16 then
      return true
    end

    -- Execution Report Restatement Message
    if template_id == 17 then
      return true
    end

    -- Order Cancel Reject Message
    if template_id == 18 then
      return true
    end

    -- Mass Cancel Reject Message
    if template_id == 20 then
      return true
    end

    return false
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Ltse LtseEquities Memo Sbe 2.0 (Tcp)
local function omi_ltse_ltseequities_memo_sbe_v2_0_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not ltse_ltseequities_memo_sbe_v2_0.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not ltse_ltseequities_memo_sbe_v2_0.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_ltse_ltseequities_memo_sbe_v2_0
  omi_ltse_ltseequities_memo_sbe_v2_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Ltse LtseEquities Memo Sbe 2.0 (Tcp)
local function omi_ltse_ltseequities_memo_sbe_v2_0_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not ltse_ltseequities_memo_sbe_v2_0.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not ltse_ltseequities_memo_sbe_v2_0.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_ltse_ltseequities_memo_sbe_v2_0
  omi_ltse_ltseequities_memo_sbe_v2_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Ltse LtseEquities Memo Sbe 2.0 (Tcp): apply the heuristic of the sender's connection role
local function omi_ltse_ltseequities_memo_sbe_v2_0_tcp_heuristic(buffer, packet, parent)
  local role = ltse_ltseequities_memo_sbe_v2_0.role(packet)
  local initiator = omi_ltse_ltseequities_memo_sbe_v2_0_tcp_initiator_heuristic
  local acceptor = omi_ltse_ltseequities_memo_sbe_v2_0_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  ltse_ltseequities_memo_sbe_v2_0.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  ltse_ltseequities_memo_sbe_v2_0.swap(packet)

  return false
end

-- Register Heuristics for Ltse LtseEquities Memo Sbe 2.0
omi_ltse_ltseequities_memo_sbe_v2_0:register_heuristic("tcp", omi_ltse_ltseequities_memo_sbe_v2_0_tcp_heuristic)

-- Register Ltse LtseEquities Memo Sbe 2.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_ltse_ltseequities_memo_sbe_v2_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Long-Term Stock Exchange
--   Version: 2.0
--   Date: Thursday, July 30, 2026
--   Specification: MEMO SBE for LTSE-v2.0.pdf
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
