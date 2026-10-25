-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse ArcaOptions BinaryGateway PillarStream 3.27 Protocol
local omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27 = Proto("Omi.Nyse.ArcaOptions.BinaryGateway.PillarStream.v3.27", "Nyse ArcaOptions BinaryGateway PillarStream 3.27")

-- Protocol table
local nyse_arcaoptions_binarygateway_pillarstream_v3_27 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse ArcaOptions BinaryGateway PillarStream 3.27 Fields
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.access = ProtoField.new("Access", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.access", ftypes.UINT8, nil, nil, nil, "Available access on the stream")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.ack_status = ProtoField.new("Ack Status", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.ackstatus", ftypes.UINT8, nil, nil, nil, "Status of the session configuration acknowledgement")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.ack_type = ProtoField.new("Ack Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.acktype", ftypes.UINT8, nil, nil, nil, "Acknowledgement event type")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.allocation_pct = ProtoField.new("Allocation Pct", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.allocationpct", ftypes.UINT8, nil, nil, nil, "Percentage allocation the covered order is willing to surrender")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.appointment_status = ProtoField.new("Appointment Status", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.appointmentstatus", ftypes.UINT8, nil, nil, nil, "Indicates whether the market maker is appointed for the underlying symbol")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.attributed_quote = ProtoField.new("Attributed Quote", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.attributedquote", ftypes.UINT8, nil, nil, nil, "Attribution and BOLD behavior")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.auction_id = ProtoField.new("Auction Id", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.auctionid", ftypes.UINT64, nil, nil, nil, "CUBE auction identifier for GTX responses; zero if not used")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.bitfield_flow_indicator = ProtoField.new("Bitfield Flow Indicator", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.bitfieldflowindicator", ftypes.STRING, nil, nil, nil, "Indicates whether the inbound message was throttled")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.bitfield_order_instructions = ProtoField.new("Bitfield Order Instructions", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.bitfieldorderinstructions", ftypes.STRING, nil, nil, nil, "Order instructions, attributes, and modifiers for complex options")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.bitfield_quote_inst = ProtoField.new("Bitfield Quote Inst", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.bitfieldquoteinst", ftypes.STRING, nil, nil, nil, "Quote instructions, attributes, and modifiers for market maker quotes")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.blocked_by_breach_indicator = ProtoField.new("Blocked By Breach Indicator", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.blockedbybreachindicator", ftypes.UINT8, nil, nil, nil, "Indicates breach-based blocking status.")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.blocked_by_kill_switch_indicator = ProtoField.new("Blocked By Kill Switch Indicator", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.blockedbykillswitchindicator", ftypes.UINT8, nil, nil, nil, "Indicates kill-switch blocking status.")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.bold_designation = ProtoField.new("Bold Designation", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.bolddesignation", ftypes.UINT8, nil, nil, nil, "Session-level default BOLD designation")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.breach_action_request = ProtoField.new("Breach Action Request", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.breachactionrequest", ftypes.UINT8, nil, nil, nil, "Action to take when a risk limit breach occurs")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.breach_action_response = ProtoField.new("Breach Action Response", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.breachactionresponse", ftypes.UINT8, nil, nil, nil, "Breach handling action applied.")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.bulk_action = ProtoField.new("Bulk Action", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.bulkaction", ftypes.UINT8, nil, nil, nil, "Specifies cancel, block and cancel, or unblock action")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.bust_correct_indicator = ProtoField.new("Bust Correct Indicator", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.bustcorrectindicator", ftypes.UINT8, nil, nil, nil, "BustCorrectIndicator enum")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.cancel_instead_of_reprice = ProtoField.new("Cancel Instead Of Reprice", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.cancelinsteadofreprice", ftypes.UINT8, nil, nil, nil, "Cancel versus reprice behavior")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.cancel_on_disconnect = ProtoField.new("Cancel On Disconnect", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.cancelondisconnect", ftypes.UINT8, nil, nil, nil, "Cancel on disconnect behavior for the session")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.cancel_scope = ProtoField.new("Cancel Scope", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.cancelscope", ftypes.UINT8, nil, nil, nil, "Specifies whether orders, quotes, or both are affected")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.channel_id = ProtoField.new("Channel Id", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.channelid", ftypes.UINT8, nil, nil, nil, "Transaction channel identifier of the underlying")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.clordid", ftypes.UINT64, nil, nil, nil, "Client order identifier unique per Username and MPID")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.clearing_account = ProtoField.new("Clearing Account", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.clearingaccount", ftypes.STRING, nil, nil, nil, "OCC clearing account number if non-default is required")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.clearing_account_covered = ProtoField.new("Clearing Account Covered", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.clearingaccountcovered", ftypes.STRING, nil, nil, nil, "Clearing account of the covered side if non-default")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.clearing_account_exposed = ProtoField.new("Clearing Account Exposed", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.clearingaccountexposed", ftypes.STRING, nil, nil, nil, "Clearing account of the exposed side if non-default")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.clearing_firm = ProtoField.new("Clearing Firm", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.clearingfirm", ftypes.STRING, nil, nil, nil, "Clearing number of CMTA")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.clearing_firm_covered = ProtoField.new("Clearing Firm Covered", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.clearingfirmcovered", ftypes.STRING, nil, nil, nil, "Clearing firm of the covered side of the cross")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.clearing_firm_exposed = ProtoField.new("Clearing Firm Exposed", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.clearingfirmexposed", ftypes.STRING, nil, nil, nil, "Clearing firm of the exposed side of the cross")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.clearing_number = ProtoField.new("Clearing Number", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.clearingnumber", ftypes.STRING, nil, nil, nil, "Risk entity clearing number associated with the MPID")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.closing_only_indicator = ProtoField.new("Closing Only Indicator", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.closingonlyindicator", ftypes.UINT8, nil, nil, nil, "Indicates whether the series is closing-only")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.complex_series_leg_group = ProtoField.new("Complex Series Leg Group", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.complexseriesleggroup", ftypes.STRING, nil, nil, nil, "Repeating group defining each leg of the complex series")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.contra_clearing_account = ProtoField.new("Contra Clearing Account", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.contraclearingaccount", ftypes.STRING, nil, nil, nil, "Contra party clearing account")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.contra_clearing_firm = ProtoField.new("Contra Clearing Firm", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.contraclearingfirm", ftypes.STRING, nil, nil, nil, "Contra party clearing firm number")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.contra_covered_or_uncovered = ProtoField.new("Contra Covered Or Uncovered", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.contracoveredoruncovered", ftypes.UINT8, nil, nil, nil, "Identifies exposed or covered side for contra")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.contra_cross_type = ProtoField.new("Contra Cross Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.contracrosstype", ftypes.UINT16, nil, nil, nil, "Cross type of the contra side")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.contra_customer_or_firm = ProtoField.new("Contra Customer Or Firm", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.contracustomerorfirm", ftypes.UINT8, nil, nil, nil, "Contra side capacity")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.contra_market_maker = ProtoField.new("Contra Market Maker", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.contramarketmaker", ftypes.STRING, nil, nil, nil, "Contra party Market Maker identifier")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.contra_mpid = ProtoField.new("Contra Mpid", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.contrampid", ftypes.STRING, nil, nil, nil, "Contra party MPID")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.contra_open_close = ProtoField.new("Contra Open Close", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.contraopenclose", ftypes.UINT8, nil, nil, nil, "Contra side open/close indicator")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.contractmultiplier", ftypes.UINT32, nil, nil, nil, "Number of underlying shares per option contract")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.count_calculation = ProtoField.new("Count Calculation", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.countcalculation", ftypes.UINT32, nil, nil, nil, "Current calculated count value.")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.count_limit = ProtoField.new("Count Limit", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.countlimit", ftypes.INT32, nil, nil, nil, "Count-based limit for applicable risk control types")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.covered = ProtoField.new("Covered", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.covered", ftypes.STRING)
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.covered_or_uncovered = ProtoField.new("Covered Or Uncovered", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.coveredoruncovered", ftypes.UINT8, nil, nil, nil, "Identifies exposed or covered side of this order")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.cross_id = ProtoField.new("Cross Id", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.crossid", ftypes.UINT64, nil, nil, nil, "Client-assigned identifier for the cross order")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.cum_qty = ProtoField.new("Cum Qty", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.cumqty", ftypes.UINT32, nil, nil, nil, "Total executed quantity for the order")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.customer_or_firm = ProtoField.new("Customer Or Firm", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.customerorfirm", ftypes.UINT8, nil, nil, nil, "Sender capacity")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.deal_id = ProtoField.new("Deal Id", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.dealid", ftypes.UINT64, nil, nil, nil, "Exchange-assigned transaction identifier for both sides of a trade")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.deliver_to_comp_id = ProtoField.new("Deliver To Comp Id", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.delivertocompid", ftypes.STRING, nil, nil, nil, "Market maker MPID for directed or PFOF orders, or override default routing")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.end_seq = ProtoField.new("End Seq", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.endseq", ftypes.UINT64, nil, nil, nil, "End sequence (ignored for write request)")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.exec_inst = ProtoField.new("Exec Inst", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.execinst", ftypes.UINT8, nil, nil, nil, "Execution instructions")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.exposed = ProtoField.new("Exposed", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.exposed", ftypes.STRING)
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.extended_exec_inst = ProtoField.new("Extended Exec Inst", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.extendedexecinst", ftypes.UINT8, nil, nil, nil, "Extended execution instructions")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.group_id = ProtoField.new("Group Id", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.groupid", ftypes.UINT32, nil, nil, nil, "User-defined takedown group applied to all quotes in the message")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.interest_type = ProtoField.new("Interest Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.interesttype", ftypes.UINT8, nil, nil, nil, "Market maker or special interest type")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.ioc_attribution = ProtoField.new("Ioc Attribution", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.iocattribution", ftypes.UINT8, nil, nil, nil, "Controls inclusion or exclusion of IOC and GTX orders in activity-based calculations and cancellations")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.last_px = ProtoField.new("Last Px", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.lastpx", ftypes.DOUBLE, nil, nil, nil, "Price of the current fill or partial fill")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.last_qty = ProtoField.new("Last Qty", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.lastqty", ftypes.UINT32, nil, nil, nil, "Quantity executed in this execution event")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.leaves_qty = ProtoField.new("Leaves Qty", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.leavesqty", ftypes.UINT32, nil, nil, nil, "Remaining quantity open on the order")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.leg_group = ProtoField.new("Leg Group", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.leggroup", ftypes.STRING, nil, nil, nil, "Complex Series Request Acknowledgement repeating groups")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.leg_open_close = ProtoField.new("Leg Open Close", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.legopenclose", ftypes.UINT64, nil, nil, nil, "Per-leg open or close indicators for complex orders only")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.legratioqty", ftypes.UINT16, nil, nil, nil, "Quantity ratio for the leg used to derive leg order quantity")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.leg_side = ProtoField.new("Leg Side", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.legside", ftypes.UINT8, nil, nil, nil, "Side of the leg")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.leg_symbol_id = ProtoField.new("Leg Symbol Id", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.legsymbolid", ftypes.UINT32, nil, nil, nil, "Identifier of the leg security")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.legal_width_multiplier = ProtoField.new("Legal Width Multiplier", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.legalwidthmultiplier", ftypes.UINT8, nil, nil, nil, "Multiplier applied to standard legal width auctions and quoting obligations")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.liquidityindicator", ftypes.STRING, nil, nil, nil, "Liquidity indicator for the execution")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.listed_mic = ProtoField.new("Listed Mic", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.listedmic", ftypes.STRING, nil, nil, nil, "Market Identifier Code of the primary market")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.locate_reqd = ProtoField.new("Locate Reqd", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.locatereqd", ftypes.UINT8, nil, nil, nil, "Locate requirement indicator")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.locate_reqd_bits = ProtoField.new("Locate Reqd Bits", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.locatereqdbits", ftypes.UINT8, nil, nil, nil, "Locate requirement indicator")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.luldmpv = ProtoField.new("Luldmpv", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.luldmpv", ftypes.DOUBLE, nil, nil, nil, "Numeric value of the Minimum Price Variation for LULD bands for securities belonging to the MPVClass.")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.market_maker = ProtoField.new("Market Maker", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.marketmaker", ftypes.STRING, nil, nil, nil, "Market maker identifier required for market maker capacity")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.maturity_date = ProtoField.new("Maturity Date", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.maturitydate", ftypes.STRING, nil, nil, nil, "Maturity date of the option in YYYYMMDD format")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.max_floor = ProtoField.new("Max Floor", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.maxfloor", ftypes.UINT32, nil, nil, nil, "Maximum floor quantity; must be zero for complex orders")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.max_order_price = ProtoField.new("Max Order Price", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.maxorderprice", ftypes.DOUBLE, nil, nil, nil, "Maximum allowable order entry price")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.max_order_quantity = ProtoField.new("Max Order Quantity", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.maxorderquantity", ftypes.UINT32, nil, nil, nil, "Maximum allowable order quantity for the session")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mic = ProtoField.new("Mic", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.mic", ftypes.STRING, nil, nil, nil, "Market Identifier Code of the connected market")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.min_qty = ProtoField.new("Min Qty", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.minqty", ftypes.UINT32, nil, nil, nil, "Minimum execution quantity; must be zero for complex orders")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mm_quote_type = ProtoField.new("Mm Quote Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.mmquotetype", ftypes.UINT8, {[0]="Standard", [1]="Repricing", [2]="Add Liquidity Only Non Taking", [4]="Repricing Add Liquidity Only Non Taking"}, base.DEC, 0x1C, "Market maker quote type")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mm_sent_time = ProtoField.new("Mm Sent Time", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.mmsenttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Customer-provided sending time in nanoseconds since epoch")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mm_sent_time_utc = ProtoField.new("Mm Sent Time", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.mmsenttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Customer-provided sending time in nanoseconds since epoch")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mm_type = ProtoField.new("Mm Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.mmtype", ftypes.UINT8, nil, nil, nil, "Market maker role/type for the appointed symbol")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mode = ProtoField.new("Mode", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.mode", ftypes.UINT8, nil, nil, nil, "Mode requested")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mp_sub_id = ProtoField.new("Mp Sub Id", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.mpsubid", ftypes.STRING, nil, nil, nil, "Customer-defined trading desk or entity identifier")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mpid = ProtoField.new("Mpid", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.mpid", ftypes.STRING, nil, nil, nil, "Firm identifier; must match original order on cancel/replace")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mpid_status = ProtoField.new("Mpid Status", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.mpidstatus", ftypes.UINT8, nil, nil, nil, "Status of the MPID")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mpv_class_id = ProtoField.new("Mpv Class Id", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.mpvclassid", ftypes.UINT16, nil, nil, nil, "Identification number of the MPV class")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mpv_class_name = ProtoField.new("Mpv Class Name", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.mpvclassname", ftypes.STRING, nil, nil, nil, "Name of the minimum price variant class")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mpv_level_definition = ProtoField.new("Mpv Level Definition", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.mpvleveldefinition", ftypes.STRING, nil, nil, nil, "Defines a single minimum price variant level within an MPV class")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mpv_level_name = ProtoField.new("Mpv Level Name", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.mpvlevelname", ftypes.STRING, nil, nil, nil, "Name of the minimum price variant level")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.msg_length = ProtoField.new("Msg Length", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.msglength", ftypes.UINT16, nil, nil, nil, "Total message length, including this header")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.msg_type = ProtoField.new("Msg Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.msgtype", ftypes.UINT16, nil, nil, nil, "Pillar stream message type")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.multileg_reporting_type = ProtoField.new("Multileg Reporting Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.multilegreportingtype", ftypes.UINT8, nil, nil, nil, "Indicates single-leg, multi-leg, or individual leg execution")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.next_seq = ProtoField.new("Next Seq", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.nextseq", ftypes.UINT64, nil, nil, nil, "Next sequence number")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.nyse_symbol = ProtoField.new("Nyse Symbol", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.nysesymbol", ftypes.STRING, nil, nil, nil, "Pillar market data symbology")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.occ_symbol_root = ProtoField.new("Occ Symbol Root", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.occsymbolroot", ftypes.STRING, nil, nil, nil, "OCC root symbol for the option series")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.open_close = ProtoField.new("Open Close", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.openclose", ftypes.UINT8, nil, nil, nil, "Sender’s open/close position")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.open_close_bits = ProtoField.new("Open Close Bits", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.openclosebits", ftypes.UINT8, nil, nil, nil, "Open or close position")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.optional_data = ProtoField.new("Optional Data", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.optionaldata", ftypes.STRING, nil, nil, nil, "Customer-defined clearing optional data with restricted ASCII characters")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.optional_data_covered = ProtoField.new("Optional Data Covered", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.optionaldatacovered", ftypes.STRING, nil, nil, nil, "Customer-defined clearing optional data for the covered side")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.optional_data_exposed = ProtoField.new("Optional Data Exposed", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.optionaldataexposed", ftypes.STRING, nil, nil, nil, "Customer-defined clearing optional data for the exposed side")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.optional_order_add_on = ProtoField.new("Optional Order Add On", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.optionalorderaddon", ftypes.STRING, nil, nil, nil, "OptionalOrderAddOn")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.ord_type = ProtoField.new("Ord Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.ordtype", ftypes.UINT8, nil, nil, nil, "Order type")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.order_capacity = ProtoField.new("Order Capacity", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.ordercapacity", ftypes.UINT8)
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.order_entry_limit_price = ProtoField.new("Order Entry Limit Price", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.orderentrylimitprice", ftypes.DOUBLE, nil, nil, nil, "Order entry limit price range for this MPV level")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.order_id = ProtoField.new("Order Id", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.orderid", ftypes.UINT64, nil, nil, nil, "Exchange-assigned identifier of the most recent order")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.order_priority_update_ack_subscription = ProtoField.new("Order Priority Update Ack Subscription", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.orderpriorityupdateacksubscription", ftypes.UINT8, nil, nil, nil, "Subscription for unsolicited order priority update and repricing acknowledgements")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.order_qty = ProtoField.new("Order Qty", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.orderqty", ftypes.UINT32, nil, nil, nil, "Total order quantity")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.origclordid", ftypes.UINT64, nil, nil, nil, "Original client order ID for cancel/replace; zero for new orders")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.participant_type = ProtoField.new("Participant Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.participanttype", ftypes.UINT8, nil, nil, nil, "Participant classification")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.password = ProtoField.new("Password", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.password", ftypes.STRING, nil, nil, nil, "User password in plain text")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.percentage_limit = ProtoField.new("Percentage Limit", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.percentagelimit", ftypes.INT32, nil, nil, nil, "Percentage-based limit for applicable risk control types")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.pre_liquidity_indicator = ProtoField.new("Pre Liquidity Indicator", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.preliquidityindicator", ftypes.STRING, nil, nil, nil, "Pre-liquidity status indicator")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.price = ProtoField.new("Price", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.price", ftypes.DOUBLE, nil, nil, nil, "Order price; net limit price for complex orders")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.price_scale = ProtoField.new("Price Scale", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.pricescale", ftypes.UINT8, nil, nil, nil, "Decimal scale applied to USD-based limits")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.proactive_if_locked = ProtoField.new("Proactive If Locked", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.proactiveiflocked", ftypes.UINT8, nil, nil, nil, "Proactive behavior when locked")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.put_or_call = ProtoField.new("Put Or Call", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.putorcall", ftypes.UINT8, nil, nil, nil, "Indicates whether the option is a put or a call")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.quantity = ProtoField.new("Quantity", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.quantity", ftypes.UINT32, nil, nil, nil, "Quote quantity")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.quote_ack_group = ProtoField.new("Quote Ack Group", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.quoteackgroup", ftypes.STRING, nil, nil, nil, "Quote acknowledgment structure for Bulk Quote acknowledgments")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.quote_ack_with_id_group = ProtoField.new("Quote Ack With Id Group", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.quoteackwithidgroup", ftypes.STRING, nil, nil, nil, "Quote acknowledgment structure including OrderID for Bulk Quote acknowledgments")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.quote_request_group = ProtoField.new("Quote Request Group", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.quoterequestgroup", ftypes.STRING, nil, nil, nil, "Repeating group containing one to twenty single-sided market maker quotes")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.quote_side = ProtoField.new("Quote Side", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.quoteside", ftypes.UINT8, {[1]="Buy", [2]="Sell"}, base.DEC, 0x03)
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.quoting_mpv = ProtoField.new("Quoting Mpv", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.quotingmpv", ftypes.DOUBLE, nil, nil, nil, "Quoting minimum price variation for this MPV level")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reason_code = ProtoField.new("Reason Code", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.reasoncode", ftypes.UINT16, nil, nil, nil, "Matching engine reason code qualifying the event")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.ref_cl_ord_id = ProtoField.new("Ref Cl Ord Id", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.refclordid", ftypes.UINT64, nil, nil, nil, "Client-assigned identifier referencing the incoming modify, cancel, or bulk cancel request")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.ref_seq_msg_id = ProtoField.new("Ref Seq Msg Id", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.refseqmsgid", ftypes.STRING, nil, nil, nil, "Pillar reference sequenced message identifier")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reinstatement_required_by_other = ProtoField.new("Reinstatement Required By Other", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.reinstatementrequiredbyother", ftypes.UINT8, nil, nil, nil, "Indicates whether other Risk User approval is required.")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reinstatement_required_by_self = ProtoField.new("Reinstatement Required By Self", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.reinstatementrequiredbyself", ftypes.UINT8, nil, nil, nil, "Indicates whether self reinstatement approval is required.")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reject_type = ProtoField.new("Reject Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.rejecttype", ftypes.UINT8, nil, nil, nil, "Identifies the type of request message that was rejected.")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.repeating_groups = ProtoField.new("Repeating Groups", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.repeatinggroups", ftypes.UINT8, nil, nil, nil, "Number of repeating quote acknowledgement groups included")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reserved_16 = ProtoField.new("Reserved 16", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.reserved16", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reserved_190 = ProtoField.new("Reserved 190", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.reserved190", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reserved_199 = ProtoField.new("Reserved 199", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.reserved199", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.reserved2", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reserved_20 = ProtoField.new("Reserved 20", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.reserved20", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reserved_200 = ProtoField.new("Reserved 200", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.reserved200", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.reserved4", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reserved_49 = ProtoField.new("Reserved 49", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.reserved49", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reserved_50 = ProtoField.new("Reserved 50", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.reserved50", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.retail_indicator = ProtoField.new("Retail Indicator", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.retailindicator", ftypes.UINT8, nil, nil, nil, "Retail order indicator")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_ack_type = ProtoField.new("Risk Ack Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.riskacktype", ftypes.UINT8, nil, nil, nil, "RiskAckType enum")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_action_type = ProtoField.new("Risk Action Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.riskactiontype", ftypes.UINT8, nil, nil, nil, "Specifies the risk action to perform")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_control_activation = ProtoField.new("Risk Control Activation", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.riskcontrolactivation", ftypes.UINT8, nil, nil, nil, "Indicates whether the risk control is enabled or disabled")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_control_type = ProtoField.new("Risk Control Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.riskcontroltype", ftypes.UINT8, nil, nil, nil, "Specifies the type of risk control being configured")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_minimum_value = ProtoField.new("Risk Minimum Value", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.riskminimumvalue", ftypes.INT64, nil, nil, nil, "Minimum value threshold for applying the risk control")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_range_id = ProtoField.new("Risk Range Id", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.riskrangeid", ftypes.UINT8, nil, nil, nil, "Quantity or price range identifier for the risk limit")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_user_crd = ProtoField.new("Risk User Crd", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.riskusercrd", ftypes.UINT32, nil, nil, nil, "CRD of the firm that owns the risk control")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_user_type = ProtoField.new("Risk User Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.riskusertype", ftypes.STRING, nil, nil, nil, "Type of firm that owns the risk control")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.routing_inst = ProtoField.new("Routing Inst", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.routinginst", ftypes.UINT8, nil, nil, nil, "Routing instructions for complex orders")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.rpimpv = ProtoField.new("Rpimpv", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.rpimpv", ftypes.DOUBLE, nil, nil, nil, "Numeric value of the Minimum Price Variation for Retail Price Improvement (RPI) orders for securities belonging to the MPVClass.")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.security_type = ProtoField.new("Security Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.securitytype", ftypes.UINT8, nil, nil, nil, "Security type, complex options only")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.self_trade_prevention = ProtoField.new("Self Trade Prevention", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.selftradeprevention", ftypes.UINT8, nil, nil, nil, "Session-level default self-trade prevention setting")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.self_trade_type = ProtoField.new("Self Trade Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.selftradetype", ftypes.UINT8, nil, nil, nil, "Self-trade prevention setting applied to all quotes in the message")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.self_trade_type_bits = ProtoField.new("Self Trade Type Bits", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.selftradetypebits", ftypes.UINT8, nil, nil, nil, "Self-trade prevention behavior")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.seq = ProtoField.new("Seq", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.seq", ftypes.UINT64, nil, nil, nil, "Sequence number, starting from 1")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.seq_msg_id = ProtoField.new("Seq Msg Id", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.seqmsgid", ftypes.STRING, nil, nil, nil, "Pillar Stream Sequenced Message Identifier")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.seq_msg_length = ProtoField.new("Seq Msg Length", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.seqmsglength", ftypes.UINT16, nil, nil, nil, "Length of sequenced data message including this field")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.seq_msg_type = ProtoField.new("Seq Msg Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.seqmsgtype", ftypes.UINT16, nil, nil, nil, "Code identifying this message type")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.series_index = ProtoField.new("Series Index", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.seriesindex", ftypes.UINT32, nil, nil, nil, "Options series index used for order entry")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.series_type = ProtoField.new("Series Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.seriestype", ftypes.UINT8, nil, nil, nil, "Indicates whether the series is standard or another type")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.sess = ProtoField.new("Sess", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.sess", ftypes.UINT32, nil, nil, nil, "32 bit session id (env_id[31:24], sess_num[23:0])")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.side = ProtoField.new("Side", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.side", ftypes.UINT8, nil, nil, nil, "Optional side change; zero indicates no change")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.side_bits = ProtoField.new("Side Bits", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.sidebits", ftypes.UINT8, nil, nil, nil, "Order side")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.special_ord_type = ProtoField.new("Special Ord Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.specialordtype", ftypes.UINT8, nil, nil, nil, "Special order or auction type")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.start_seq = ProtoField.new("Start Seq", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.startseq", ftypes.UINT64, nil, nil, nil, "Start sequence number")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.status = ProtoField.new("Status", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.status", ftypes.UINT8, nil, nil, nil, "Pillar Status Code")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.stop_px = ProtoField.new("Stop Px", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.stoppx", ftypes.DOUBLE, nil, nil, nil, "Trigger price for stop and stop limit orders; must be zero for complex orders")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.stream_id = ProtoField.new("Stream Id", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.streamid", ftypes.STRING, nil, nil, nil, "Pillar Stream Protocol Stream Identifier")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.strike_price = ProtoField.new("Strike Price", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Strike price of the option series")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.sub_id = ProtoField.new("Sub Id", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.subid", ftypes.STRING, nil, nil, nil, "Customer-defined sub-identifier applied to all repeating group entries for STP")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.sub_id_indicator = ProtoField.new("Sub Id Indicator", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.subidindicator", ftypes.UINT8, nil, nil, nil, "MPSubID usage for risk and self-trade prevention")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.sub_msg_length = ProtoField.new("Sub Msg Length", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.submsglength", ftypes.UINT16, nil, nil, nil, "Length of sub message including this field")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.sub_msg_type = ProtoField.new("Sub Msg Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.submsgtype", ftypes.UINT16, nil, nil, nil, "Code identifying sub message type")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.symbol_eligibility = ProtoField.new("Symbol Eligibility", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.symboleligibility", ftypes.UINT8, nil, nil, nil, "Session-level permission controlling eligible symbol types")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.symbol_id = ProtoField.new("Symbol Id", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.symbolid", ftypes.UINT32, nil, nil, nil, "Identifier of the security; both sides of a cross must match")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.target_cancel_mpid = ProtoField.new("Target Cancel Mpid", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.targetcancelmpid", ftypes.STRING, nil, nil, nil, "Optional MPID to scope cancellations to a specific firm")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.target_cancel_username = ProtoField.new("Target Cancel Username", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.targetcancelusername", ftypes.STRING, nil, nil, nil, "Optional username to scope cancellations to a specific session")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.test_symbol_indicator = ProtoField.new("Test Symbol Indicator", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.testsymbolindicator", ftypes.UINT8, nil, nil, nil, "Indicates whether the symbol is a production or test symbol")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.threshold_breach_level = ProtoField.new("Threshold Breach Level", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.thresholdbreachlevel", ftypes.UINT8, nil, nil, nil, "Threshold level that was breached.")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.throttle_preference = ProtoField.new("Throttle Preference", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.throttlepreference", ftypes.UINT8, nil, nil, nil, "Queue or reject orders when throttled")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.throttle_threshold = ProtoField.new("Throttle Threshold", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.throttlethreshold", ftypes.UINT16, nil, nil, nil, "Maximum number of inbound messages allowed in the throttle window")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.throttle_window = ProtoField.new("Throttle Window", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.throttlewindow", ftypes.UINT16, nil, nil, nil, "Time window in milliseconds over which throttling is enforced")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.throttled = ProtoField.new("Throttled", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.throttled", ftypes.UINT8, {[0]="Not Throttled", [1]="Throttled"}, base.DEC, 0x01, "Indicates if inbound message was throttled")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.time_in_force = ProtoField.new("Time In Force", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.timeinforce", ftypes.UINT8, nil, nil, nil, "Order duration")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.time_limit = ProtoField.new("Time Limit", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.timelimit", ftypes.INT32, nil, nil, nil, "Rolling time window in microseconds for activity-based risk controls")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.timestamp = ProtoField.new("Timestamp", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Message timestamp")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.timestamp_utc = ProtoField.new("Timestamp", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Message timestamp")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.trading_mpv = ProtoField.new("Trading Mpv", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.tradingmpv", ftypes.DOUBLE, nil, nil, nil, "Trading minimum price variation for this MPV level")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.trading_session_id = ProtoField.new("Trading Session Id", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.tradingsessionid", ftypes.UINT8, nil, nil, nil, "Eligible trading sessions")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.transact_time = ProtoField.new("Transact Time", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.transacttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Exchange application time")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.transact_time_utc = ProtoField.new("Transact Time", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.transacttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Exchange application time")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.underlying_type = ProtoField.new("Underlying Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.underlyingtype", ftypes.STRING, nil, nil, nil, "Type of the underlying security")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.unused_3 = ProtoField.new("Unused 3", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.unused3", ftypes.UINT8, nil, base.DEC, 0xE0, "Reserved for future use")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.unused_34 = ProtoField.new("Unused 34", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.unused34", ftypes.UINT64, nil, nil, nil, "Reserved for future use")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.unused_7 = ProtoField.new("Unused 7", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.unused7", ftypes.UINT8, nil, base.DEC, 0xFE, "Reserved for future use")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.usd_calculation_1 = ProtoField.new("Usd Calculation 1", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.usdcalculation1", ftypes.INT64, nil, nil, nil, "USD calculation – Open ALL orders.")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.usd_calculation_2 = ProtoField.new("Usd Calculation 2", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.usdcalculation2", ftypes.INT64, nil, nil, nil, "USD calculation – Open auction orders.")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.usd_calculation_3 = ProtoField.new("Usd Calculation 3", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.usdcalculation3", ftypes.INT64, nil, nil, nil, "USD calculation – Executed ALL orders.")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.usd_calculation_4 = ProtoField.new("Usd Calculation 4", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.usdcalculation4", ftypes.INT64, nil, nil, nil, "USD calculation – Executed auction orders.")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.usd_limit = ProtoField.new("Usd Limit", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.usdlimit", ftypes.INT64, nil, nil, nil, "Dollar-based limit value for applicable risk control types")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.user_data = ProtoField.new("User Data", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.userdata", ftypes.STRING, nil, nil, nil, "Customer-defined free text with restricted ASCII characters")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.user_session_status = ProtoField.new("User Session Status", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.usersessionstatus", ftypes.UINT8, nil, nil, nil, "Status of the gateway session")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.user_session_type = ProtoField.new("User Session Type", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.usersessiontype", ftypes.UINT8, nil, nil, nil, "Permission type assigned to the gateway session")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.username = ProtoField.new("Username", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.username", ftypes.STRING, nil, nil, nil, "Gateway session identifier (SenderCompID)")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.value = ProtoField.new("Value", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.value", ftypes.UINT32, nil, nil, nil, "Stream identifier value (stream_type[31:24], user_id[23:8], sub_id[7:0])")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.version = ProtoField.new("Version", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.version", ftypes.STRING, nil, nil, nil, "Protocol version, should be 1.1")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.working_away_from_display = ProtoField.new("Working Away From Display", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.workingawayfromdisplay", ftypes.UINT8, nil, nil, nil, "Indicates whether working price differs from display price")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.working_price = ProtoField.new("Working Price", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.workingprice", ftypes.DOUBLE, nil, nil, nil, "Current working price, which may differ from display price")

-- Nyse ArcaOptions BinaryGateway PillarStream 3.27 Framing
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.client_pillar_message = ProtoField.new("Client Pillar Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.clientpillarmessage", ftypes.STRING, nil, nil, nil, "Pillar Stream message sent by the member firm")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.msg_header = ProtoField.new("Msg Header", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.msgheader", ftypes.STRING, nil, nil, nil, "Pillar Stream Message Header")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.seq_msg_header = ProtoField.new("Seq Msg Header", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.seqmsgheader", ftypes.STRING, nil, nil, nil, "Pillar Stream Sequenced Message Header")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.server_pillar_message = ProtoField.new("Server Pillar Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.serverpillarmessage", ftypes.STRING, nil, nil, nil, "Pillar Stream message sent by Pillar")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.sub_msg_header = ProtoField.new("Sub Msg Header", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.submsgheader", ftypes.STRING, nil, nil, nil, "Pillar Stream Sub Message Item Header")

-- Nyse ArcaOptions BinaryGateway 3.27 Application Messages
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.application_layer_reject_message = ProtoField.new("Application Layer Reject Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.applicationlayerrejectmessage", ftypes.STRING)
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.bulk_cancel_request_message = ProtoField.new("Bulk Cancel Request Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.bulkcancelrequestmessage", ftypes.STRING, nil, nil, nil, "Request to cancel orders and/or market maker quotes in bulk based on specified criteria")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.bulk_cancel_request_with_mp_sub_id_message = ProtoField.new("Bulk Cancel Request With Mp Sub Id Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.bulkcancelrequestwithmpsubidmessage", ftypes.STRING, nil, nil, nil, "Request to cancel orders in bulk based on symbol, side, and user or firm criteria")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.bulk_quote_acknowledgment_message = ProtoField.new("Bulk Quote Acknowledgment Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.bulkquoteacknowledgmentmessage", ftypes.STRING)
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.bulk_quote_acknowledgment_with_details_message = ProtoField.new("Bulk Quote Acknowledgment With Details Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.bulkquoteacknowledgmentwithdetailsmessage", ftypes.STRING, nil, nil, nil, "Bulk Quote Acknowledgment Message")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.complex_series_request_acknowledgement_message = ProtoField.new("Complex Series Request Acknowledgement Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.complexseriesrequestacknowledgementmessage", ftypes.STRING)
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.execution_report_message = ProtoField.new("Execution Report Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.executionreportmessage", ftypes.STRING)
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.minimum_price_variant_class_reference_data_message = ProtoField.new("Minimum Price Variant Class Reference Data Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.minimumpricevariantclassreferencedatamessage", ftypes.STRING, nil, nil, nil, "Defines a minimum price variant class and its identifying attributes")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.minimum_price_variant_level_reference_data_message = ProtoField.new("Minimum Price Variant Level Reference Data Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.minimumpricevariantlevelreferencedatamessage", ftypes.STRING, nil, nil, nil, "Defines one or more minimum price variant levels within a single MPV class")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mpid_configuration_message = ProtoField.new("Mpid Configuration Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.mpidconfigurationmessage", ftypes.STRING, nil, nil, nil, "Publishes the current configuration and status of each MPID configured on a gateway session")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.new_bulk_quote_message = ProtoField.new("New Bulk Quote Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.newbulkquotemessage", ftypes.STRING, nil, nil, nil, "Allows a market maker to submit up to 20 single-sided quotes for the same underlying in a single message")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.new_bulk_quote_with_order_id_message = ProtoField.new("New Bulk Quote With Order Id Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.newbulkquotewithorderidmessage", ftypes.STRING, nil, nil, nil, "Allows a market maker to submit up to 20 single-sided quotes for the same underlying in a single message")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.new_complex_series_request_message = ProtoField.new("New Complex Series Request Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.newcomplexseriesrequestmessage", ftypes.STRING, nil, nil, nil, "Request to create a new complex options series with up to twelve legs")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.new_order_cross_message = ProtoField.new("New Order Cross Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.newordercrossmessage", ftypes.STRING, nil, nil, nil, "Used to submit cross orders for single-leg or complex options")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.new_order_message = ProtoField.new("New Order Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.newordermessage", ftypes.STRING, nil, nil, nil, "Used to submit new single-leg or complex option orders and cancel/replace requests")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.options_market_maker_symbol_appointment_reference_data_message = ProtoField.new("Options Market Maker Symbol Appointment Reference Data Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.optionsmarketmakersymbolappointmentreferencedatamessage", ftypes.STRING, nil, nil, nil, "Publishes appointment information for market makers for each appointed underlying symbol")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.order_and_cancel_replace_acknowledgement_message = ProtoField.new("Order And Cancel Replace Acknowledgement Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.orderandcancelreplaceacknowledgementmessage", ftypes.STRING, nil, nil, nil, "Order and Cancel/Replace Acknowledgement Message")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.ordercancelrequestmessage", ftypes.STRING, nil, nil, nil, "Request to cancel a single targeted single-leg or complex order")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.order_modify_request_message = ProtoField.new("Order Modify Request Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.ordermodifyrequestmessage", ftypes.STRING, nil, nil, nil, "Request to reduce order quantity while preserving order ranking and original OrderID")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.order_priority_update_acknowledgment_message = ProtoField.new("Order Priority Update Acknowledgment Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.orderpriorityupdateacknowledgmentmessage", ftypes.STRING)
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message = ProtoField.new("Order Single Complex Modify Cancel Request Acknowledgment And Urout Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.ordersinglecomplexmodifycancelrequestacknowledgmentanduroutmessage", ftypes.STRING, nil, nil, nil, "Order Single/Complex Modify/Cancel Request Acknowledgment and UROUT Message")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_action_request_message = ProtoField.new("Risk Action Request Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.riskactionrequestmessage", ftypes.STRING, nil, nil, nil, "Request to query risk entities, invoke kill switch actions, or approve reinstatement for Pillar risk controls")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_control_acknowledgement_message = ProtoField.new("Risk Control Acknowledgement Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.riskcontrolacknowledgementmessage", ftypes.STRING)
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_control_alert_message = ProtoField.new("Risk Control Alert Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.riskcontrolalertmessage", ftypes.STRING)
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_limit_update_request_message = ProtoField.new("Risk Limit Update Request Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.risklimitupdaterequestmessage", ftypes.STRING, nil, nil, nil, "Request to create, update, activate, or deactivate Pillar risk control limits for entitled risk entities")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.sequenced_filler_message = ProtoField.new("Sequenced Filler Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.sequencedfillermessage", ftypes.BYTES, nil, nil, nil, "This message type is used to increase the next expected sequence number of a TG stream by 1 on a given gateway session.")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.series_reference_data_message = ProtoField.new("Series Reference Data Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.seriesreferencedatamessage", ftypes.STRING, nil, nil, nil, "Publishes reference data for each options series, including series index and symbology required for order entry")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.session_configuration_acknowledgement_message = ProtoField.new("Session Configuration Acknowledgement Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.sessionconfigurationacknowledgementmessage", ftypes.STRING, nil, nil, nil, "Provides the current configured session settings and acknowledgement status for a session configuration request")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.session_configuration_request_message = ProtoField.new("Session Configuration Request Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.sessionconfigurationrequestmessage", ftypes.STRING, nil, nil, nil, "Request to update gateway session configuration settings")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.trade_bust_correct_message = ProtoField.new("Trade Bust Correct Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.tradebustcorrectmessage", ftypes.STRING, nil, nil, nil, "Trade Bust/Correct Message")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.underlying_symbol_reference_data_message = ProtoField.new("Underlying Symbol Reference Data Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.underlyingsymbolreferencedatamessage", ftypes.STRING, nil, nil, nil, "Publishes reference data for each underlying symbol configured for trading")

-- Nyse ArcaOptions BinaryGateway 3.27 Session Messages
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.client_seq_msg = ProtoField.new("Client Seq Msg", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.clientseqmsg", ftypes.STRING, nil, nil, nil, "Used to transmit a stream message")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.close = ProtoField.new("Close", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.close", ftypes.STRING, nil, nil, nil, "Request close stream")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.close_response = ProtoField.new("Close Response", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.closeresponse", ftypes.STRING, nil, nil, nil, "Response to Close Message")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.heartbeat = ProtoField.new("Heartbeat", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.heartbeat", ftypes.STRING, nil, nil, nil, "Heartbeat must be sent once a second")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.login_message = ProtoField.new("Login Message", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.loginmessage", ftypes.STRING, nil, nil, nil, "Client must send Login before any other message")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.login_response = ProtoField.new("Login Response", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.loginresponse", ftypes.STRING, nil, nil, nil, "Pillar Stream Login Response Message Branch")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.open = ProtoField.new("Open", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.open", ftypes.STRING, nil, nil, nil, "Request open a stream for reading or writing")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.open_response = ProtoField.new("Open Response", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.openresponse", ftypes.STRING, nil, nil, nil, "Response to Open")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.server_seq_msg = ProtoField.new("Server Seq Msg", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.serverseqmsg", ftypes.STRING, nil, nil, nil, "Used to transmit a stream message")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.stream_avail = ProtoField.new("Stream Avail", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.streamavail", ftypes.STRING, nil, nil, nil, "The message contains stream ID and sequence of next message on stream")

-- Nyse ArcaOptions BinaryGateway PillarStream 3.27 Generated Fields
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.leg_group_index = ProtoField.new("Leg Group Index", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.leggroupindex", ftypes.UINT16)
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.quote_ack_group_index = ProtoField.new("Quote Ack Group Index", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.quoteackgroupindex", ftypes.UINT16)
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.quote_ack_with_id_group_index = ProtoField.new("Quote Ack With Id Group Index", "nyse.arcaoptions.binarygateway.pillarstream.v3.27.quoteackwithidgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Nyse ArcaOptions BinaryGateway PillarStream 3.27 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
nyse_arcaoptions_binarygateway_pillarstream_v3_27.absolute_time_base = 0

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

-- Nyse ArcaOptions BinaryGateway PillarStream 3.27 Element Dissection Options
show.application_messages = true
show.structs = true
show.session_messages = true
show.repeating_groups = true
show.headers = true
show.indexes = true

-- Register Nyse ArcaOptions BinaryGateway PillarStream 3.27 Show Options
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.show_application_messages then
    show.application_messages = omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.show_application_messages
  end
  if show.headers ~= omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.show_headers then
    show.headers = omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.show_headers
  end
  if show.repeating_groups ~= omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.show_repeating_groups then
    show.repeating_groups = omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.show_repeating_groups
  end
  if show.session_messages ~= omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.show_session_messages then
    show.session_messages = omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.show_session_messages
  end
  if show.structs ~= omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.show_structs then
    show.structs = omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.show_structs
  end
  if show.indexes ~= omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.show_indexes then
    show.indexes = omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.show_indexes
  end
  if nyse_arcaoptions_binarygateway_pillarstream_v3_27.absolute_time_base ~= omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.absolute_time_base then
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.absolute_time_base = omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.absolute_time_base
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
-- Nyse ArcaOptions BinaryGateway PillarStream 3.27 Fields
-----------------------------------------------------------------------

-- Access
nyse_arcaoptions_binarygateway_pillarstream_v3_27.access = {}

-- Size: Access
nyse_arcaoptions_binarygateway_pillarstream_v3_27.access.size = 1

-- Display: Access
nyse_arcaoptions_binarygateway_pillarstream_v3_27.access.display = function(value)
  return "Access: "..value
end

-- Dissect: Access
nyse_arcaoptions_binarygateway_pillarstream_v3_27.access.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.access.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.access.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.access, range, value, display)

  return offset + length, value
end

-- Ack Status
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_status = {}

-- Size: Ack Status
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_status.size = 1

-- Display: Ack Status
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_status.labels = {
  [0] = "Ack Status: Unsolicited (0)",
  [1] = "Ack Status: User Request Valid (1)",
  [2] = "Ack Status: User Request Invalid (2)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_status.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_status.labels[value] or "Ack Status: Unknown("..value..")"
end

-- Dissect: Ack Status
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.ack_status, range, value, display)

  return offset + length, value
end

-- Ack Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_type = {}

-- Size: Ack Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_type.size = 1

-- Display: Ack Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_type.labels = {
  [1] = "Ack Type: New Interest (1)",
  [2] = "Ack Type: Order Priority Update New Order Id (2)",
  [3] = "Ack Type: Order Priority Update Same Order Id (3)",
  [4] = "Ack Type: Bulk Cancel Ack (4)",
  [5] = "Ack Type: Pending Cancel (5)",
  [6] = "Ack Type: Pending Replace (6)",
  [7] = "Ack Type: Pending Modify (7)",
  [8] = "Ack Type: Replaced (8)",
  [9] = "Ack Type: Modified (9)",
  [11] = "Ack Type: Canceled (11)",
  [12] = "Ack Type: Done For Day (12)",
  [17] = "Ack Type: Gtc Renewal Or Restatement (17)",
  [18] = "Ack Type: Individual Market Maker Quote Reject (18)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_type.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_type.labels[value] or "Ack Type: Unknown("..value..")"
end

-- Dissect: Ack Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.ack_type, range, value, display)

  return offset + length, value
end

-- Allocation Pct
nyse_arcaoptions_binarygateway_pillarstream_v3_27.allocation_pct = {}

-- Size: Allocation Pct
nyse_arcaoptions_binarygateway_pillarstream_v3_27.allocation_pct.size = 1

-- Display: Allocation Pct
nyse_arcaoptions_binarygateway_pillarstream_v3_27.allocation_pct.display = function(value)
  return "Allocation Pct: "..value
end

-- Dissect: Allocation Pct
nyse_arcaoptions_binarygateway_pillarstream_v3_27.allocation_pct.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.allocation_pct.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.allocation_pct.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.allocation_pct, range, value, display)

  return offset + length, value
end

-- Appointment Status
nyse_arcaoptions_binarygateway_pillarstream_v3_27.appointment_status = {}

-- Size: Appointment Status
nyse_arcaoptions_binarygateway_pillarstream_v3_27.appointment_status.size = 1

-- Display: Appointment Status
nyse_arcaoptions_binarygateway_pillarstream_v3_27.appointment_status.labels = {
  [0] = "Appointment Status: Not Appointed (0)",
  [1] = "Appointment Status: Appointed (1)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.appointment_status.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.appointment_status.labels[value] or "Appointment Status: Unknown("..value..")"
end

-- Dissect: Appointment Status
nyse_arcaoptions_binarygateway_pillarstream_v3_27.appointment_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.appointment_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.appointment_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.appointment_status, range, value, display)

  return offset + length, value
end

-- Auction Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.auction_id = {}

-- Size: Auction Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.auction_id.size = 8

-- Display: Auction Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Blocked By Breach Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.blocked_by_breach_indicator = {}

-- Size: Blocked By Breach Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.blocked_by_breach_indicator.size = 1

-- Display: Blocked By Breach Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.blocked_by_breach_indicator.labels = {
  [0] = "Blocked By Breach Indicator: Not Blocked By Breach (0)",
  [1] = "Blocked By Breach Indicator: Blocked By Breach (1)",
  [2] = "Blocked By Breach Indicator: Blocked By Arbitrage Check (2)",
  [3] = "Blocked By Breach Indicator: Blocked By Intrinsic Value Check (3)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.blocked_by_breach_indicator.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.blocked_by_breach_indicator.labels[value] or "Blocked By Breach Indicator: Unknown("..value..")"
end

-- Dissect: Blocked By Breach Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.blocked_by_breach_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.blocked_by_breach_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.blocked_by_breach_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.blocked_by_breach_indicator, range, value, display)

  return offset + length, value
end

-- Blocked By Kill Switch Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.blocked_by_kill_switch_indicator = {}

-- Size: Blocked By Kill Switch Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.blocked_by_kill_switch_indicator.size = 1

-- Display: Blocked By Kill Switch Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.blocked_by_kill_switch_indicator.labels = {
  [0] = "Blocked By Kill Switch Indicator: Not Blocked By Kill Switch (0)",
  [1] = "Blocked By Kill Switch Indicator: Blocked By Kill Switch (1)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.blocked_by_kill_switch_indicator.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.blocked_by_kill_switch_indicator.labels[value] or "Blocked By Kill Switch Indicator: Unknown("..value..")"
end

-- Dissect: Blocked By Kill Switch Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.blocked_by_kill_switch_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.blocked_by_kill_switch_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.blocked_by_kill_switch_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.blocked_by_kill_switch_indicator, range, value, display)

  return offset + length, value
end

-- Bold Designation
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bold_designation = {}

-- Size: Bold Designation
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bold_designation.size = 1

-- Display: Bold Designation
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bold_designation.labels = {
  [0] = "Bold Designation: Not Applicable (0)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.bold_designation.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.bold_designation.labels[value] or "Bold Designation: Unknown("..value..")"
end

-- Dissect: Bold Designation
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bold_designation.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bold_designation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bold_designation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.bold_designation, range, value, display)

  return offset + length, value
end

-- Breach Action Request
nyse_arcaoptions_binarygateway_pillarstream_v3_27.breach_action_request = {}

-- Size: Breach Action Request
nyse_arcaoptions_binarygateway_pillarstream_v3_27.breach_action_request.size = 1

-- Display: Breach Action Request
nyse_arcaoptions_binarygateway_pillarstream_v3_27.breach_action_request.labels = {
  [0] = "Breach Action Request: Not Applicable (0)",
  [1] = "Breach Action Request: Notifications Only (1)",
  [2] = "Breach Action Request: Cancel And Block (2)",
  [3] = "Breach Action Request: Block Only (3)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.breach_action_request.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.breach_action_request.labels[value] or "Breach Action Request: Unknown("..value..")"
end

-- Dissect: Breach Action Request
nyse_arcaoptions_binarygateway_pillarstream_v3_27.breach_action_request.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.breach_action_request.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.breach_action_request.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.breach_action_request, range, value, display)

  return offset + length, value
end

-- Breach Action Response
nyse_arcaoptions_binarygateway_pillarstream_v3_27.breach_action_response = {}

-- Size: Breach Action Response
nyse_arcaoptions_binarygateway_pillarstream_v3_27.breach_action_response.size = 1

-- Display: Breach Action Response
nyse_arcaoptions_binarygateway_pillarstream_v3_27.breach_action_response.labels = {
  [0] = "Breach Action Response: Not Applicable (0)",
  [1] = "Breach Action Response: Notifications Only (1)",
  [2] = "Breach Action Response: Cancel Non Auction Orders And Block (2)",
  [3] = "Breach Action Response: Block (3)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.breach_action_response.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.breach_action_response.labels[value] or "Breach Action Response: Unknown("..value..")"
end

-- Dissect: Breach Action Response
nyse_arcaoptions_binarygateway_pillarstream_v3_27.breach_action_response.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.breach_action_response.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.breach_action_response.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.breach_action_response, range, value, display)

  return offset + length, value
end

-- Bulk Action
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_action = {}

-- Size: Bulk Action
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_action.size = 1

-- Display: Bulk Action
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_action.labels = {
  [0] = "Bulk Action: Not Applicable (0)",
  [1] = "Bulk Action: Cancel Single Leg Only (1)",
  [2] = "Bulk Action: Cancel Complex Only (2)",
  [3] = "Bulk Action: Cancel Single And Complex (3)",
  [4] = "Bulk Action: Block And Cancel (4)",
  [5] = "Bulk Action: Unblock (5)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_action.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_action.labels[value] or "Bulk Action: Unknown("..value..")"
end

-- Dissect: Bulk Action
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_action.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.bulk_action, range, value, display)

  return offset + length, value
end

-- Bust Correct Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bust_correct_indicator = {}

-- Size: Bust Correct Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bust_correct_indicator.size = 1

-- Display: Bust Correct Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bust_correct_indicator.labels = {
  [0] = "Bust Correct Indicator: Trade Bust (0)",
  [1] = "Bust Correct Indicator: Trade Correction (1)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.bust_correct_indicator.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.bust_correct_indicator.labels[value] or "Bust Correct Indicator: Unknown("..value..")"
end

-- Dissect: Bust Correct Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bust_correct_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bust_correct_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bust_correct_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.bust_correct_indicator, range, value, display)

  return offset + length, value
end

-- Cancel On Disconnect
nyse_arcaoptions_binarygateway_pillarstream_v3_27.cancel_on_disconnect = {}

-- Size: Cancel On Disconnect
nyse_arcaoptions_binarygateway_pillarstream_v3_27.cancel_on_disconnect.size = 1

-- Display: Cancel On Disconnect
nyse_arcaoptions_binarygateway_pillarstream_v3_27.cancel_on_disconnect.labels = {
  [1] = "Cancel On Disconnect: Cancel Day Orders (1)",
  [2] = "Cancel On Disconnect: Cancel All Orders (2)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.cancel_on_disconnect.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.cancel_on_disconnect.labels[value] or "Cancel On Disconnect: Unknown("..value..")"
end

-- Dissect: Cancel On Disconnect
nyse_arcaoptions_binarygateway_pillarstream_v3_27.cancel_on_disconnect.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cancel_on_disconnect.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cancel_on_disconnect.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.cancel_on_disconnect, range, value, display)

  return offset + length, value
end

-- Cancel Scope
nyse_arcaoptions_binarygateway_pillarstream_v3_27.cancel_scope = {}

-- Size: Cancel Scope
nyse_arcaoptions_binarygateway_pillarstream_v3_27.cancel_scope.size = 1

-- Display: Cancel Scope
nyse_arcaoptions_binarygateway_pillarstream_v3_27.cancel_scope.labels = {
  [0] = "Cancel Scope: Orders Only (0)",
  [1] = "Cancel Scope: Quotes Only (1)",
  [2] = "Cancel Scope: Orders And Quotes (2)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.cancel_scope.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.cancel_scope.labels[value] or "Cancel Scope: Unknown("..value..")"
end

-- Dissect: Cancel Scope
nyse_arcaoptions_binarygateway_pillarstream_v3_27.cancel_scope.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cancel_scope.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cancel_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.cancel_scope, range, value, display)

  return offset + length, value
end

-- Channel Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.channel_id = {}

-- Size: Channel Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.channel_id.size = 1

-- Display: Channel Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id = {}

-- Size: Cl Ord Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.size = 8

-- Display: Cl Ord Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.display = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Clearing Account
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account = {}

-- Size: Clearing Account
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account.size = 5

-- Display: Clearing Account
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account: No Value"
  end

  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Clearing Account Covered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account_covered = {}

-- Size: Clearing Account Covered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account_covered.size = 5

-- Display: Clearing Account Covered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account_covered.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account Covered: No Value"
  end

  return "Clearing Account Covered: "..value
end

-- Dissect: Clearing Account Covered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account_covered.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account_covered.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account_covered.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.clearing_account_covered, range, value, display)

  return offset + length, value
end

-- Clearing Account Exposed
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account_exposed = {}

-- Size: Clearing Account Exposed
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account_exposed.size = 5

-- Display: Clearing Account Exposed
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account_exposed.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account Exposed: No Value"
  end

  return "Clearing Account Exposed: "..value
end

-- Dissect: Clearing Account Exposed
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account_exposed.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account_exposed.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account_exposed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.clearing_account_exposed, range, value, display)

  return offset + length, value
end

-- Clearing Firm
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm = {}

-- Size: Clearing Firm
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm.size = 5

-- Display: Clearing Firm
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm: No Value"
  end

  return "Clearing Firm: "..value
end

-- Dissect: Clearing Firm
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.clearing_firm, range, value, display)

  return offset + length, value
end

-- Clearing Firm Covered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm_covered = {}

-- Size: Clearing Firm Covered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm_covered.size = 5

-- Display: Clearing Firm Covered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm_covered.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm Covered: No Value"
  end

  return "Clearing Firm Covered: "..value
end

-- Dissect: Clearing Firm Covered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm_covered.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm_covered.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm_covered.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.clearing_firm_covered, range, value, display)

  return offset + length, value
end

-- Clearing Firm Exposed
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm_exposed = {}

-- Size: Clearing Firm Exposed
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm_exposed.size = 5

-- Display: Clearing Firm Exposed
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm_exposed.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm Exposed: No Value"
  end

  return "Clearing Firm Exposed: "..value
end

-- Dissect: Clearing Firm Exposed
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm_exposed.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm_exposed.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm_exposed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.clearing_firm_exposed, range, value, display)

  return offset + length, value
end

-- Clearing Number
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_number = {}

-- Size: Clearing Number
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_number.size = 5

-- Display: Clearing Number
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_number.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Number: No Value"
  end

  return "Clearing Number: "..value
end

-- Dissect: Clearing Number
nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_number.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.clearing_number, range, value, display)

  return offset + length, value
end

-- Closing Only Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.closing_only_indicator = {}

-- Size: Closing Only Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.closing_only_indicator.size = 1

-- Display: Closing Only Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.closing_only_indicator.labels = {
  [0] = "Closing Only Indicator: Standard Series (0)",
  [1] = "Closing Only Indicator: Closing Only Series (1)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.closing_only_indicator.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.closing_only_indicator.labels[value] or "Closing Only Indicator: Unknown("..value..")"
end

-- Dissect: Closing Only Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.closing_only_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.closing_only_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.closing_only_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.closing_only_indicator, range, value, display)

  return offset + length, value
end

-- Contra Clearing Account
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_clearing_account = {}

-- Size: Contra Clearing Account
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_clearing_account.size = 5

-- Display: Contra Clearing Account
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_clearing_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contra Clearing Account: No Value"
  end

  return "Contra Clearing Account: "..value
end

-- Dissect: Contra Clearing Account
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_clearing_account.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.contra_clearing_account, range, value, display)

  return offset + length, value
end

-- Contra Clearing Firm
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_clearing_firm = {}

-- Size: Contra Clearing Firm
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_clearing_firm.size = 5

-- Display: Contra Clearing Firm
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_clearing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contra Clearing Firm: No Value"
  end

  return "Contra Clearing Firm: "..value
end

-- Dissect: Contra Clearing Firm
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_clearing_firm.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.contra_clearing_firm, range, value, display)

  return offset + length, value
end

-- Contra Covered Or Uncovered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_covered_or_uncovered = {}

-- Size: Contra Covered Or Uncovered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_covered_or_uncovered.size = 1

-- Display: Contra Covered Or Uncovered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_covered_or_uncovered.labels = {
  [0] = "Contra Covered Or Uncovered: Not Applicable (0)",
  [1] = "Contra Covered Or Uncovered: Exposed (1)",
  [2] = "Contra Covered Or Uncovered: Covered (2)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_covered_or_uncovered.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_covered_or_uncovered.labels[value] or "Contra Covered Or Uncovered: Unknown("..value..")"
end

-- Dissect: Contra Covered Or Uncovered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_covered_or_uncovered.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_covered_or_uncovered.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_covered_or_uncovered.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.contra_covered_or_uncovered, range, value, display)

  return offset + length, value
end

-- Contra Cross Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_cross_type = {}

-- Size: Contra Cross Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_cross_type.size = 2

-- Display: Contra Cross Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_cross_type.labels = {
  [0] = "Contra Cross Type: Not Applicable (0)",
  [10] = "Contra Cross Type: Qcc (10)",
  [11] = "Contra Cross Type: Customer To Customer Cross (11)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_cross_type.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_cross_type.labels[value] or "Contra Cross Type: Unknown("..value..")"
end

-- Dissect: Contra Cross Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_cross_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.contra_cross_type, range, value, display)

  return offset + length, value
end

-- Contra Customer Or Firm
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_customer_or_firm = {}

-- Size: Contra Customer Or Firm
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_customer_or_firm.size = 1

-- Display: Contra Customer Or Firm
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_customer_or_firm.labels = {
  [0] = "Contra Customer Or Firm: Not Applicable (0)",
  [1] = "Contra Customer Or Firm: Customer (1)",
  [2] = "Contra Customer Or Firm: Firm (2)",
  [3] = "Contra Customer Or Firm: Broker (3)",
  [4] = "Contra Customer Or Firm: Market Maker (4)",
  [5] = "Contra Customer Or Firm: Away Market Maker (5)",
  [6] = "Contra Customer Or Firm: Prof Customer (6)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_customer_or_firm.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_customer_or_firm.labels[value] or "Contra Customer Or Firm: Unknown("..value..")"
end

-- Dissect: Contra Customer Or Firm
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_customer_or_firm.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_customer_or_firm.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_customer_or_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.contra_customer_or_firm, range, value, display)

  return offset + length, value
end

-- Contra Market Maker
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_market_maker = {}

-- Size: Contra Market Maker
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_market_maker.size = 10

-- Display: Contra Market Maker
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_market_maker.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contra Market Maker: No Value"
  end

  return "Contra Market Maker: "..value
end

-- Dissect: Contra Market Maker
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_market_maker.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_market_maker.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_market_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.contra_market_maker, range, value, display)

  return offset + length, value
end

-- Contra Mpid
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_mpid = {}

-- Size: Contra Mpid
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_mpid.size = 4

-- Display: Contra Mpid
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_mpid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contra Mpid: No Value"
  end

  return "Contra Mpid: "..value
end

-- Dissect: Contra Mpid
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_mpid.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.contra_mpid, range, value, display)

  return offset + length, value
end

-- Contra Open Close
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_open_close = {}

-- Size: Contra Open Close
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_open_close.size = 1

-- Display: Contra Open Close
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_open_close.labels = {
  [0] = "Contra Open Close: Not Applicable (0)",
  [1] = "Contra Open Close: Open (1)",
  [2] = "Contra Open Close: Close (2)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_open_close.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_open_close.labels[value] or "Contra Open Close: Unknown("..value..")"
end

-- Dissect: Contra Open Close
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_open_close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_open_close.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.contra_open_close, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contract_multiplier = {}

-- Size: Contract Multiplier
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contract_multiplier.size = 4

-- Display: Contract Multiplier
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contract_multiplier.display = function(value)
  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
nyse_arcaoptions_binarygateway_pillarstream_v3_27.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contract_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Count Calculation
nyse_arcaoptions_binarygateway_pillarstream_v3_27.count_calculation = {}

-- Size: Count Calculation
nyse_arcaoptions_binarygateway_pillarstream_v3_27.count_calculation.size = 4

-- Display: Count Calculation
nyse_arcaoptions_binarygateway_pillarstream_v3_27.count_calculation.display = function(value)
  return "Count Calculation: "..value
end

-- Dissect: Count Calculation
nyse_arcaoptions_binarygateway_pillarstream_v3_27.count_calculation.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.count_calculation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.count_calculation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.count_calculation, range, value, display)

  return offset + length, value
end

-- Count Limit
nyse_arcaoptions_binarygateway_pillarstream_v3_27.count_limit = {}

-- Size: Count Limit
nyse_arcaoptions_binarygateway_pillarstream_v3_27.count_limit.size = 4

-- Display: Count Limit
nyse_arcaoptions_binarygateway_pillarstream_v3_27.count_limit.display = function(value)
  return "Count Limit: "..value
end

-- Dissect: Count Limit
nyse_arcaoptions_binarygateway_pillarstream_v3_27.count_limit.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.count_limit.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.count_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.count_limit, range, value, display)

  return offset + length, value
end

-- Covered Or Uncovered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.covered_or_uncovered = {}

-- Size: Covered Or Uncovered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.covered_or_uncovered.size = 1

-- Display: Covered Or Uncovered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.covered_or_uncovered.labels = {
  [0] = "Covered Or Uncovered: Not Applicable (0)",
  [1] = "Covered Or Uncovered: Exposed (1)",
  [2] = "Covered Or Uncovered: Covered (2)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.covered_or_uncovered.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.covered_or_uncovered.labels[value] or "Covered Or Uncovered: Unknown("..value..")"
end

-- Dissect: Covered Or Uncovered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.covered_or_uncovered.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.covered_or_uncovered.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.covered_or_uncovered.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.covered_or_uncovered, range, value, display)

  return offset + length, value
end

-- Cross Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.cross_id = {}

-- Size: Cross Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.cross_id.size = 8

-- Display: Cross Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cross_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Cum Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.cum_qty = {}

-- Size: Cum Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.cum_qty.size = 4

-- Display: Cum Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cum_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Deal Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.deal_id = {}

-- Size: Deal Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.deal_id.size = 8

-- Display: Deal Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.deal_id.display = function(value)
  return "Deal Id: "..value
end

-- Dissect: Deal Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.deal_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.deal_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.deal_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.deal_id, range, value, display)

  return offset + length, value
end

-- Deliver To Comp Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.deliver_to_comp_id = {}

-- Size: Deliver To Comp Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.deliver_to_comp_id.size = 5

-- Display: Deliver To Comp Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.deliver_to_comp_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Deliver To Comp Id: No Value"
  end

  return "Deliver To Comp Id: "..value
end

-- Dissect: Deliver To Comp Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.deliver_to_comp_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.deliver_to_comp_id.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.deliver_to_comp_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.deliver_to_comp_id, range, value, display)

  return offset + length, value
end

-- End Seq
nyse_arcaoptions_binarygateway_pillarstream_v3_27.end_seq = {}

-- Size: End Seq
nyse_arcaoptions_binarygateway_pillarstream_v3_27.end_seq.size = 8

-- Display: End Seq
nyse_arcaoptions_binarygateway_pillarstream_v3_27.end_seq.display = function(value)
  return "End Seq: "..value
end

-- Dissect: End Seq
nyse_arcaoptions_binarygateway_pillarstream_v3_27.end_seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.end_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.end_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.end_seq, range, value, display)

  return offset + length, value
end

-- Group Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.group_id = {}

-- Size: Group Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.group_id.size = 4

-- Display: Group Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.group_id.display = function(value)
  return "Group Id: "..value
end

-- Dissect: Group Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.group_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.group_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.group_id, range, value, display)

  return offset + length, value
end

-- Ioc Attribution
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ioc_attribution = {}

-- Size: Ioc Attribution
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ioc_attribution.size = 1

-- Display: Ioc Attribution
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ioc_attribution.labels = {
  [0] = "Ioc Attribution: Not Applicable (0)",
  [1] = "Ioc Attribution: Include Ioc (1)",
  [2] = "Ioc Attribution: Exclude Ioc (2)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.ioc_attribution.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.ioc_attribution.labels[value] or "Ioc Attribution: Unknown("..value..")"
end

-- Dissect: Ioc Attribution
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ioc_attribution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ioc_attribution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ioc_attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.ioc_attribution, range, value, display)

  return offset + length, value
end

-- Last Px
nyse_arcaoptions_binarygateway_pillarstream_v3_27.last_px = {}

-- Size: Last Px
nyse_arcaoptions_binarygateway_pillarstream_v3_27.last_px.size = 8

-- Display: Last Px
nyse_arcaoptions_binarygateway_pillarstream_v3_27.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
nyse_arcaoptions_binarygateway_pillarstream_v3_27.last_px.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Px
nyse_arcaoptions_binarygateway_pillarstream_v3_27.last_px.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_arcaoptions_binarygateway_pillarstream_v3_27.last_px.translate(raw)
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.last_qty = {}

-- Size: Last Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.last_qty.size = 4

-- Display: Last Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Leaves Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leaves_qty = {}

-- Size: Leaves Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leaves_qty.size = 4

-- Display: Leaves Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Leg Open Close
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_open_close = {}

-- Size: Leg Open Close
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_open_close.size = 8

-- Display: Leg Open Close
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_open_close.labels = {
  [0] = "Leg Open Close: Open (0)",
  [1] = "Leg Open Close: Close (1)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_open_close.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_open_close.labels[value] or "Leg Open Close: Unknown("..value..")"
end

-- Dissect: Leg Open Close
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_open_close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_open_close.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.leg_open_close, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_ratio_qty.size = 2

-- Display: Leg Ratio Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Side
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_side = {}

-- Size: Leg Side
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_side.size = 1

-- Display: Leg Side
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_side.labels = {
  [1] = "Leg Side: Buy (1)",
  [2] = "Leg Side: Sell (2)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_side.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_side.labels[value] or "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Symbol Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_symbol_id = {}

-- Size: Leg Symbol Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_symbol_id.size = 4

-- Display: Leg Symbol Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_symbol_id.display = function(value)
  return "Leg Symbol Id: "..value
end

-- Dissect: Leg Symbol Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.leg_symbol_id, range, value, display)

  return offset + length, value
end

-- Legal Width Multiplier
nyse_arcaoptions_binarygateway_pillarstream_v3_27.legal_width_multiplier = {}

-- Size: Legal Width Multiplier
nyse_arcaoptions_binarygateway_pillarstream_v3_27.legal_width_multiplier.size = 1

-- Display: Legal Width Multiplier
nyse_arcaoptions_binarygateway_pillarstream_v3_27.legal_width_multiplier.display = function(value)
  return "Legal Width Multiplier: "..value
end

-- Dissect: Legal Width Multiplier
nyse_arcaoptions_binarygateway_pillarstream_v3_27.legal_width_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.legal_width_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.legal_width_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.legal_width_multiplier, range, value, display)

  return offset + length, value
end

-- Liquidity Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.liquidity_indicator = {}

-- Size: Liquidity Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.liquidity_indicator.size = 4

-- Display: Liquidity Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.liquidity_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Liquidity Indicator: No Value"
  end

  return "Liquidity Indicator: "..value
end

-- Dissect: Liquidity Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.liquidity_indicator.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Listed Mic
nyse_arcaoptions_binarygateway_pillarstream_v3_27.listed_mic = {}

-- Size: Listed Mic
nyse_arcaoptions_binarygateway_pillarstream_v3_27.listed_mic.size = 4

-- Display: Listed Mic
nyse_arcaoptions_binarygateway_pillarstream_v3_27.listed_mic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Listed Mic: No Value"
  end

  return "Listed Mic: "..value
end

-- Dissect: Listed Mic
nyse_arcaoptions_binarygateway_pillarstream_v3_27.listed_mic.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.listed_mic.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.listed_mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.listed_mic, range, value, display)

  return offset + length, value
end

-- Locate Reqd
nyse_arcaoptions_binarygateway_pillarstream_v3_27.locate_reqd = {}

-- Size: Locate Reqd
nyse_arcaoptions_binarygateway_pillarstream_v3_27.locate_reqd.size = 1

-- Display: Locate Reqd
nyse_arcaoptions_binarygateway_pillarstream_v3_27.locate_reqd.labels = {
  [0] = "Locate Reqd: No Locate Reqd (0)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.locate_reqd.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.locate_reqd.labels[value] or "Locate Reqd: Unknown("..value..")"
end

-- Dissect: Locate Reqd
nyse_arcaoptions_binarygateway_pillarstream_v3_27.locate_reqd.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.locate_reqd.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.locate_reqd.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.locate_reqd, range, value, display)

  return offset + length, value
end

-- Luldmpv
nyse_arcaoptions_binarygateway_pillarstream_v3_27.luldmpv = {}

-- Size: Luldmpv
nyse_arcaoptions_binarygateway_pillarstream_v3_27.luldmpv.size = 8

-- Display: Luldmpv
nyse_arcaoptions_binarygateway_pillarstream_v3_27.luldmpv.display = function(value)
  return "Luldmpv: "..value
end

-- Translate: Luldmpv
nyse_arcaoptions_binarygateway_pillarstream_v3_27.luldmpv.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Luldmpv
nyse_arcaoptions_binarygateway_pillarstream_v3_27.luldmpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.luldmpv.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = nyse_arcaoptions_binarygateway_pillarstream_v3_27.luldmpv.translate(raw)
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.luldmpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.luldmpv, range, value, display)

  return offset + length, value
end

-- Market Maker
nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker = {}

-- Size: Market Maker
nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.size = 10

-- Display: Market Maker
nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Market Maker: No Value"
  end

  return "Market Maker: "..value
end

-- Dissect: Market Maker
nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.market_maker, range, value, display)

  return offset + length, value
end

-- Maturity Date
nyse_arcaoptions_binarygateway_pillarstream_v3_27.maturity_date = {}

-- Size: Maturity Date
nyse_arcaoptions_binarygateway_pillarstream_v3_27.maturity_date.size = 8

-- Display: Maturity Date
nyse_arcaoptions_binarygateway_pillarstream_v3_27.maturity_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
nyse_arcaoptions_binarygateway_pillarstream_v3_27.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.maturity_date.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Max Floor
nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_floor = {}

-- Size: Max Floor
nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_floor.size = 4

-- Display: Max Floor
nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_floor.display = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_floor.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_floor.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_floor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Max Order Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_order_price = {}

-- Size: Max Order Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_order_price.size = 8

-- Display: Max Order Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_order_price.display = function(value)
  return "Max Order Price: "..value
end

-- Translate: Max Order Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_order_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Max Order Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_order_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_order_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_order_price.translate(raw)
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.max_order_price, range, value, display)

  return offset + length, value
end

-- Max Order Quantity
nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_order_quantity = {}

-- Size: Max Order Quantity
nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_order_quantity.size = 4

-- Display: Max Order Quantity
nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_order_quantity.display = function(value)
  return "Max Order Quantity: "..value
end

-- Dissect: Max Order Quantity
nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_order_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.max_order_quantity, range, value, display)

  return offset + length, value
end

-- Mic
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mic = {}

-- Size: Mic
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mic.size = 4

-- Display: Mic
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mic.labels = {
  ["ARCO"] = "Mic: Nyse Arca Options (ARCO)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.mic.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.mic.labels[value] or "Mic: Unknown("..value..")"
end

-- Dissect: Mic
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mic.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mic.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mic, range, value, display)

  return offset + length, value
end

-- Min Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.min_qty = {}

-- Size: Min Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.min_qty.size = 4

-- Display: Min Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Mm Sent Time
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mm_sent_time = {}

-- Size: Mm Sent Time
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mm_sent_time.size = 8

-- Dissect: Mm Sent Time
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mm_sent_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mm_sent_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mm_sent_time
  if nyse_arcaoptions_binarygateway_pillarstream_v3_27.absolute_time_base == 1 then field = omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mm_sent_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Mm Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mm_type = {}

-- Size: Mm Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mm_type.size = 1

-- Display: Mm Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mm_type.labels = {
  [1] = "Mm Type: Nyse Arca Options Lead Market Maker (1)",
  [2] = "Mm Type: Nyse Arca Options Market Maker (2)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.mm_type.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.mm_type.labels[value] or "Mm Type: Unknown("..value..")"
end

-- Dissect: Mm Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mm_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mm_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mm_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mm_type, range, value, display)

  return offset + length, value
end

-- Mode
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mode = {}

-- Size: Mode
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mode.size = 1

-- Display: Mode
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mode.display = function(value)
  return "Mode: "..value
end

-- Dissect: Mode
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mode.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mode.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mode, range, value, display)

  return offset + length, value
end

-- Mp Sub Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mp_sub_id = {}

-- Size: Mp Sub Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mp_sub_id.size = 4

-- Display: Mp Sub Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mp_sub_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mp Sub Id: No Value"
  end

  return "Mp Sub Id: "..value
end

-- Dissect: Mp Sub Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mp_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mp_sub_id.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mp_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mp_sub_id, range, value, display)

  return offset + length, value
end

-- Mpid
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid = {}

-- Size: Mpid
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.size = 4

-- Display: Mpid
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mpid: No Value"
  end

  return "Mpid: "..value
end

-- Dissect: Mpid
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mpid, range, value, display)

  return offset + length, value
end

-- Mpid Status
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid_status = {}

-- Size: Mpid Status
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid_status.size = 1

-- Display: Mpid Status
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid_status.labels = {
  [1] = "Mpid Status: Active (1)",
  [2] = "Mpid Status: Inactive (2)",
  [3] = "Mpid Status: Prospect (3)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid_status.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid_status.labels[value] or "Mpid Status: Unknown("..value..")"
end

-- Dissect: Mpid Status
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mpid_status, range, value, display)

  return offset + length, value
end

-- Mpv Class Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_class_id = {}

-- Size: Mpv Class Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_class_id.size = 2

-- Display: Mpv Class Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_class_id.display = function(value)
  return "Mpv Class Id: "..value
end

-- Dissect: Mpv Class Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_class_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_class_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_class_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mpv_class_id, range, value, display)

  return offset + length, value
end

-- Mpv Class Name
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_class_name = {}

-- Size: Mpv Class Name
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_class_name.size = 20

-- Display: Mpv Class Name
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_class_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mpv Class Name: No Value"
  end

  return "Mpv Class Name: "..value
end

-- Dissect: Mpv Class Name
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_class_name.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_class_name.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_class_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mpv_class_name, range, value, display)

  return offset + length, value
end

-- Mpv Level Name
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_level_name = {}

-- Size: Mpv Level Name
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_level_name.size = 24

-- Display: Mpv Level Name
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_level_name.display = function(value)
  return "Mpv Level Name: "..value
end

-- Dissect: Mpv Level Name
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_level_name.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_level_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_level_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mpv_level_name, range, value, display)

  return offset + length, value
end

-- Msg Length
nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_length = {}

-- Size: Msg Length
nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_length.size = 2

-- Display: Msg Length
nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_type = {}

-- Size: Msg Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_type.size = 2

-- Display: Msg Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_type.display = function(value)
  if value == 0x0201 then
    return "Msg Type: Login (0x0201)"
  end
  if value == 0x0202 then
    return "Msg Type: Login Response (0x0202)"
  end
  if value == 0x0203 then
    return "Msg Type: Stream Avail (0x0203)"
  end
  if value == 0x0204 then
    return "Msg Type: Heartbeat (0x0204)"
  end
  if value == 0x0205 then
    return "Msg Type: Open (0x0205)"
  end
  if value == 0x0206 then
    return "Msg Type: Open Response (0x0206)"
  end
  if value == 0x0207 then
    return "Msg Type: Close (0x0207)"
  end
  if value == 0x0208 then
    return "Msg Type: Close Response (0x0208)"
  end
  if value == 0x0905 then
    return "Msg Type: Seq Msg (0x0905)"
  end

  return "Msg Type: Unknown("..string.format("0x%04X", value)..")"
end

-- Dissect: Msg Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Multileg Reporting Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.multileg_reporting_type = {}

-- Size: Multileg Reporting Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.multileg_reporting_type.size = 1

-- Display: Multileg Reporting Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.multileg_reporting_type.labels = {
  [1] = "Multileg Reporting Type: Single Leg Security (1)",
  [2] = "Multileg Reporting Type: Individual Leg Of Multi Leg Security (2)",
  [3] = "Multileg Reporting Type: Multi Leg Security (3)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.multileg_reporting_type.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.multileg_reporting_type.labels[value] or "Multileg Reporting Type: Unknown("..value..")"
end

-- Dissect: Multileg Reporting Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.multileg_reporting_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.multileg_reporting_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.multileg_reporting_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.multileg_reporting_type, range, value, display)

  return offset + length, value
end

-- Next Seq
nyse_arcaoptions_binarygateway_pillarstream_v3_27.next_seq = {}

-- Size: Next Seq
nyse_arcaoptions_binarygateway_pillarstream_v3_27.next_seq.size = 8

-- Display: Next Seq
nyse_arcaoptions_binarygateway_pillarstream_v3_27.next_seq.display = function(value)
  return "Next Seq: "..value
end

-- Dissect: Next Seq
nyse_arcaoptions_binarygateway_pillarstream_v3_27.next_seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.next_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.next_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.next_seq, range, value, display)

  return offset + length, value
end

-- Nyse Symbol
nyse_arcaoptions_binarygateway_pillarstream_v3_27.nyse_symbol = {}

-- Size: Nyse Symbol
nyse_arcaoptions_binarygateway_pillarstream_v3_27.nyse_symbol.size = 24

-- Display: Nyse Symbol
nyse_arcaoptions_binarygateway_pillarstream_v3_27.nyse_symbol.display = function(value)
  return "Nyse Symbol: "..value
end

-- Dissect: Nyse Symbol
nyse_arcaoptions_binarygateway_pillarstream_v3_27.nyse_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.nyse_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.nyse_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.nyse_symbol, range, value, display)

  return offset + length, value
end

-- Occ Symbol Root
nyse_arcaoptions_binarygateway_pillarstream_v3_27.occ_symbol_root = {}

-- Size: Occ Symbol Root
nyse_arcaoptions_binarygateway_pillarstream_v3_27.occ_symbol_root.size = 24

-- Display: Occ Symbol Root
nyse_arcaoptions_binarygateway_pillarstream_v3_27.occ_symbol_root.display = function(value)
  return "Occ Symbol Root: "..value
end

-- Dissect: Occ Symbol Root
nyse_arcaoptions_binarygateway_pillarstream_v3_27.occ_symbol_root.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.occ_symbol_root.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.occ_symbol_root.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.occ_symbol_root, range, value, display)

  return offset + length, value
end

-- Open Close
nyse_arcaoptions_binarygateway_pillarstream_v3_27.open_close = {}

-- Size: Open Close
nyse_arcaoptions_binarygateway_pillarstream_v3_27.open_close.size = 1

-- Display: Open Close
nyse_arcaoptions_binarygateway_pillarstream_v3_27.open_close.labels = {
  [0] = "Open Close: Not Applicable (0)",
  [1] = "Open Close: Open (1)",
  [2] = "Open Close: Close (2)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.open_close.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.open_close.labels[value] or "Open Close: Unknown("..value..")"
end

-- Dissect: Open Close
nyse_arcaoptions_binarygateway_pillarstream_v3_27.open_close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.open_close.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.open_close, range, value, display)

  return offset + length, value
end

-- Optional Data
nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data = {}

-- Size: Optional Data
nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data.size = 16

-- Display: Optional Data
nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Optional Data: No Value"
  end

  return "Optional Data: "..value
end

-- Dissect: Optional Data
nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.optional_data, range, value, display)

  return offset + length, value
end

-- Optional Data Covered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data_covered = {}

-- Size: Optional Data Covered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data_covered.size = 16

-- Display: Optional Data Covered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data_covered.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Optional Data Covered: No Value"
  end

  return "Optional Data Covered: "..value
end

-- Dissect: Optional Data Covered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data_covered.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data_covered.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data_covered.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.optional_data_covered, range, value, display)

  return offset + length, value
end

-- Optional Data Exposed
nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data_exposed = {}

-- Size: Optional Data Exposed
nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data_exposed.size = 16

-- Display: Optional Data Exposed
nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data_exposed.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Optional Data Exposed: No Value"
  end

  return "Optional Data Exposed: "..value
end

-- Dissect: Optional Data Exposed
nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data_exposed.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data_exposed.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data_exposed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.optional_data_exposed, range, value, display)

  return offset + length, value
end

-- Order Entry Limit Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_entry_limit_price = {}

-- Size: Order Entry Limit Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_entry_limit_price.size = 8

-- Display: Order Entry Limit Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_entry_limit_price.display = function(value)
  return "Order Entry Limit Price: "..value
end

-- Translate: Order Entry Limit Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_entry_limit_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Order Entry Limit Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_entry_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_entry_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_entry_limit_price.translate(raw)
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_entry_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.order_entry_limit_price, range, value, display)

  return offset + length, value
end

-- Order Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_id = {}

-- Size: Order Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_id.size = 8

-- Display: Order Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Priority Update Ack Subscription
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_priority_update_ack_subscription = {}

-- Size: Order Priority Update Ack Subscription
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_priority_update_ack_subscription.size = 1

-- Display: Order Priority Update Ack Subscription
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_priority_update_ack_subscription.labels = {
  [0] = "Order Priority Update Ack Subscription: Not Subscribed (0)",
  [1] = "Order Priority Update Ack Subscription: Order Priority Update Only (1)",
  [2] = "Order Priority Update Ack Subscription: Order Priority Update And Repricing (2)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_priority_update_ack_subscription.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_priority_update_ack_subscription.labels[value] or "Order Priority Update Ack Subscription: Unknown("..value..")"
end

-- Dissect: Order Priority Update Ack Subscription
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_priority_update_ack_subscription.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_priority_update_ack_subscription.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_priority_update_ack_subscription.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.order_priority_update_ack_subscription, range, value, display)

  return offset + length, value
end

-- Order Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_qty = {}

-- Size: Order Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_qty.size = 4

-- Display: Order Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.orig_cl_ord_id.size = 8

-- Display: Orig Cl Ord Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.orig_cl_ord_id.display = function(value)
  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Participant Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.participant_type = {}

-- Size: Participant Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.participant_type.size = 1

-- Display: Participant Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.participant_type.labels = {
  [0] = "Participant Type: Not Applicable (0)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.participant_type.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.participant_type.labels[value] or "Participant Type: Unknown("..value..")"
end

-- Dissect: Participant Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.participant_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.participant_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.participant_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.participant_type, range, value, display)

  return offset + length, value
end

-- Password
nyse_arcaoptions_binarygateway_pillarstream_v3_27.password = {}

-- Size: Password
nyse_arcaoptions_binarygateway_pillarstream_v3_27.password.size = 32

-- Display: Password
nyse_arcaoptions_binarygateway_pillarstream_v3_27.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
nyse_arcaoptions_binarygateway_pillarstream_v3_27.password.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.password.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.password, range, value, display)

  return offset + length, value
end

-- Percentage Limit
nyse_arcaoptions_binarygateway_pillarstream_v3_27.percentage_limit = {}

-- Size: Percentage Limit
nyse_arcaoptions_binarygateway_pillarstream_v3_27.percentage_limit.size = 4

-- Display: Percentage Limit
nyse_arcaoptions_binarygateway_pillarstream_v3_27.percentage_limit.display = function(value)
  return "Percentage Limit: "..value
end

-- Dissect: Percentage Limit
nyse_arcaoptions_binarygateway_pillarstream_v3_27.percentage_limit.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.percentage_limit.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.percentage_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.percentage_limit, range, value, display)

  return offset + length, value
end

-- Pre Liquidity Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.pre_liquidity_indicator = {}

-- Size: Pre Liquidity Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.pre_liquidity_indicator.size = 4

-- Display: Pre Liquidity Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.pre_liquidity_indicator.labels = {
  ["0"] = "Pre Liquidity Indicator: None (0)",
  ["1"] = "Pre Liquidity Indicator: Local Market Candidate (1)",
  ["4"] = "Pre Liquidity Indicator: Join Nbbo Candidate (4)",
  ["5"] = "Pre Liquidity Indicator: Set Nbbo Candidate (5)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.pre_liquidity_indicator.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.pre_liquidity_indicator.labels[value] or "Pre Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Pre Liquidity Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.pre_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.pre_liquidity_indicator.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.pre_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.pre_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.price = {}

-- Size: Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.price.size = 8

-- Display: Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_arcaoptions_binarygateway_pillarstream_v3_27.price.translate(raw)
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.price, range, value, display)

  return offset + length, value
end

-- Price Scale
nyse_arcaoptions_binarygateway_pillarstream_v3_27.price_scale = {}

-- Size: Price Scale
nyse_arcaoptions_binarygateway_pillarstream_v3_27.price_scale.size = 1

-- Display: Price Scale
nyse_arcaoptions_binarygateway_pillarstream_v3_27.price_scale.labels = {
  [0] = "Price Scale: No Decimals (0)",
  [2] = "Price Scale: Two Decimals (2)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.price_scale.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.price_scale.labels[value] or "Price Scale: Unknown("..value..")"
end

-- Dissect: Price Scale
nyse_arcaoptions_binarygateway_pillarstream_v3_27.price_scale.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.price_scale.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.price_scale.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.price_scale, range, value, display)

  return offset + length, value
end

-- Put Or Call
nyse_arcaoptions_binarygateway_pillarstream_v3_27.put_or_call = {}

-- Size: Put Or Call
nyse_arcaoptions_binarygateway_pillarstream_v3_27.put_or_call.size = 1

-- Display: Put Or Call
nyse_arcaoptions_binarygateway_pillarstream_v3_27.put_or_call.labels = {
  [0] = "Put Or Call: Put (0)",
  [1] = "Put Or Call: Call (1)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.put_or_call.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.put_or_call.labels[value] or "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
nyse_arcaoptions_binarygateway_pillarstream_v3_27.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.put_or_call.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Quantity
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quantity = {}

-- Size: Quantity
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quantity.size = 4

-- Display: Quantity
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quoting Mpv
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quoting_mpv = {}

-- Size: Quoting Mpv
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quoting_mpv.size = 8

-- Display: Quoting Mpv
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quoting_mpv.display = function(value)
  return "Quoting Mpv: "..value
end

-- Translate: Quoting Mpv
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quoting_mpv.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Quoting Mpv
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quoting_mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.quoting_mpv.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = nyse_arcaoptions_binarygateway_pillarstream_v3_27.quoting_mpv.translate(raw)
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.quoting_mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.quoting_mpv, range, value, display)

  return offset + length, value
end

-- Reason Code
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reason_code = {}

-- Size: Reason Code
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reason_code.size = 2

-- Display: Reason Code
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reason_code.labels = {
  [0] = "Reason Code: Ok (0)",
  [1] = "Reason Code: Invalid Sender Comp Id (1)",
  [2] = "Reason Code: Invalid Sender Sub Id (2)",
  [3] = "Reason Code: Invalid Sending Time (3)",
  [4] = "Reason Code: Invalid Target Comp Id (4)",
  [5] = "Reason Code: Invalid Target Sub Id (5)",
  [6] = "Reason Code: Invalid On Behalf Of Comp Id (6)",
  [7] = "Reason Code: Invalid On Behalf Of Sub Id (7)",
  [8] = "Reason Code: Invalid Deliver To Comp Id (8)",
  [9] = "Reason Code: Invalid Deliver To Sub Id (9)",
  [10] = "Reason Code: Invalid Account (10)",
  [11] = "Reason Code: Invalid Cl Ord Id (11)",
  [12] = "Reason Code: Invalid Exec Inst (12)",
  [13] = "Reason Code: Invalid Id Source (13)",
  [14] = "Reason Code: Invalid Order Qty (14)",
  [15] = "Reason Code: Invalid Ord Type (15)",
  [16] = "Reason Code: Invalid Price (16)",
  [17] = "Reason Code: Invalid Order Capacity (17)",
  [18] = "Reason Code: Invalid Security Id (18)",
  [19] = "Reason Code: Invalid Side (19)",
  [20] = "Reason Code: Invalid Symbol Series (20)",
  [21] = "Reason Code: Invalid Text (21)",
  [22] = "Reason Code: Invalid Time In Force (22)",
  [23] = "Reason Code: Invalid Settlement Type (23)",
  [24] = "Reason Code: Invalid Fut Sett Date (24)",
  [25] = "Reason Code: Invalid Symbol Sfx (25)",
  [26] = "Reason Code: Invalid Open Close (26)",
  [27] = "Reason Code: Invalid Stop Px (27)",
  [28] = "Reason Code: Invalid Client Id (28)",
  [29] = "Reason Code: Invalid Min Qty (29)",
  [30] = "Reason Code: Invalid Max Floor (30)",
  [31] = "Reason Code: Invalid Locate Reqd (31)",
  [32] = "Reason Code: Invalid Expire Time (32)",
  [33] = "Reason Code: Invalid Security Type (33)",
  [34] = "Reason Code: Invalid Maturity Month Year (34)",
  [35] = "Reason Code: Invalid Put Or Call (35)",
  [36] = "Reason Code: Invalid Strike Price (36)",
  [37] = "Reason Code: Invalid Covered Or Uncovered (37)",
  [38] = "Reason Code: Invalid Customer Or Firm (38)",
  [39] = "Reason Code: Invalid Maturity Day (39)",
  [40] = "Reason Code: Invalid Peg Difference (40)",
  [41] = "Reason Code: Invalid Sellers Days (41)",
  [42] = "Reason Code: Invalid Trading Session Id (42)",
  [43] = "Reason Code: Invalid No Trading Sessions (43)",
  [44] = "Reason Code: Invalid Discretion Inst (44)",
  [45] = "Reason Code: Invalid Discretion Offset (45)",
  [46] = "Reason Code: Invalid Price Type (46)",
  [47] = "Reason Code: Invalid Clearing Firm (47)",
  [48] = "Reason Code: Invalid Clearing Account (48)",
  [49] = "Reason Code: Invalid Party Id (49)",
  [50] = "Reason Code: Invalid Optional Data (50)",
  [51] = "Reason Code: Invalid Cross Id (51)",
  [52] = "Reason Code: Invalid Strategy Indicator (52)",
  [53] = "Reason Code: Invalid Trade Id (53)",
  [54] = "Reason Code: Invalid No Self Trade (54)",
  [55] = "Reason Code: Invalid Cap Strategy (55)",
  [56] = "Reason Code: Invalid Special Ord Type (56)",
  [57] = "Reason Code: Invalid Routing Inst (57)",
  [58] = "Reason Code: Invalid Offset Price (58)",
  [59] = "Reason Code: Invalid Extended Exec Inst (59)",
  [60] = "Reason Code: Invalid Introducing Badge Id (60)",
  [61] = "Reason Code: Invalid Bill To (61)",
  [62] = "Reason Code: Invalid Parent Firm Cl Ord Id (62)",
  [63] = "Reason Code: Invalid Parent Firm Exchange Ord Id (63)",
  [64] = "Reason Code: Invalid Parent Firm (64)",
  [65] = "Reason Code: Invalid Interest Type (65)",
  [66] = "Reason Code: Invalid Display Ind (66)",
  [67] = "Reason Code: Invalid Peg Ind (67)",
  [68] = "Reason Code: Invalid Ceiling Floor Price (68)",
  [69] = "Reason Code: Invalid Min Peg Qty (69)",
  [70] = "Reason Code: Invalid D Order Auction Price (70)",
  [71] = "Reason Code: Invalid Disc Max Vol (71)",
  [72] = "Reason Code: Invalid Dics Route Ind (72)",
  [73] = "Reason Code: Invalid Minimum Trigger Vol Mtv (73)",
  [74] = "Reason Code: Invalid Attributed Quote (74)",
  [75] = "Reason Code: Invalid Proactive If Locked (75)",
  [76] = "Reason Code: System Not Available (76)",
  [77] = "Reason Code: System Full Mengrateexceeded (77)",
  [78] = "Reason Code: Throttle Reject (78)",
  [79] = "Reason Code: Symbol Series Halted (79)",
  [80] = "Reason Code: No Symbolseries Permission (80)",
  [81] = "Reason Code: Price Too Far Outside (81)",
  [82] = "Reason Code: Mwcb Halt (82)",
  [83] = "Reason Code: Market Closed (83)",
  [84] = "Reason Code: Symbolseries Closed (84)",
  [85] = "Reason Code: Luld Cancel Instruction (85)",
  [86] = "Reason Code: No Price Slide Inst During Ssr (86)",
  [87] = "Reason Code: Invalid Stock Leg Give Up (87)",
  [88] = "Reason Code: Invalid No Legs (88)",
  [89] = "Reason Code: Invalid Leg Position Effect (89)",
  [90] = "Reason Code: Invalid Leg Symbol (90)",
  [91] = "Reason Code: Invalid Leg Cfi Code (91)",
  [92] = "Reason Code: Invalid Leg Maturity Date (92)",
  [93] = "Reason Code: Invalid Leg Strike Price (93)",
  [94] = "Reason Code: Invalid Leg Contract Multiplier (94)",
  [95] = "Reason Code: Invalid Leg Ratio Qty (95)",
  [96] = "Reason Code: Invalid Leg Side (96)",
  [97] = "Reason Code: Invalid Leg Ref Id (97)",
  [98] = "Reason Code: Unsupported Order Type (98)",
  [99] = "Reason Code: Urout (99)",
  [100] = "Reason Code: Primary Market Not Available (100)",
  [101] = "Reason Code: No Nbbopbbo For Peg (101)",
  [102] = "Reason Code: No Market For Market Order (102)",
  [103] = "Reason Code: Marketable Price (103)",
  [104] = "Reason Code: Done For Day (104)",
  [105] = "Reason Code: Credit Limit Violation (105)",
  [106] = "Reason Code: Cancel Remaining Ioc (106)",
  [107] = "Reason Code: Too Late To Cancel (107)",
  [108] = "Reason Code: Invalid Poss Resend (108)",
  [109] = "Reason Code: Cancel Pending (109)",
  [110] = "Reason Code: Symbol Series Already Opened (110)",
  [111] = "Reason Code: Firm Bulk Cancel (111)",
  [112] = "Reason Code: On Behalf Of Comp Id Blocked (112)",
  [113] = "Reason Code: Clearing Firm Blocked (113)",
  [114] = "Reason Code: Cancel Replace Pending (114)",
  [115] = "Reason Code: Modify Pending (115)",
  [116] = "Reason Code: Cannot Flip Imbalance (116)",
  [117] = "Reason Code: Cannot Increase Imbalance (117)",
  [118] = "Reason Code: Pending Cancel Imbalance Freeze (118)",
  [119] = "Reason Code: Pending Replace Imbalance Freeze (119)",
  [120] = "Reason Code: Pending Modify Imbalance Freeze (120)",
  [121] = "Reason Code: Pending Cancel Routed Interest (121)",
  [122] = "Reason Code: Pending Replace Routed Interest (122)",
  [123] = "Reason Code: Pending Modify Routed Interest (123)",
  [124] = "Reason Code: Pending Auction Running (124)",
  [125] = "Reason Code: Duplicative Order Check (125)",
  [126] = "Reason Code: Cancelled By Exchange (126)",
  [127] = "Reason Code: New Order (127)",
  [128] = "Reason Code: Fill (128)",
  [129] = "Reason Code: Partial Fill (129)",
  [130] = "Reason Code: Reduced (130)",
  [131] = "Reason Code: Replaced (131)",
  [132] = "Reason Code: No Market For Cross (132)",
  [133] = "Reason Code: Stp Cancel (133)",
  [134] = "Reason Code: Invalid Poss Dupe (134)",
  [135] = "Reason Code: Tpid Blocked (135)",
  [136] = "Reason Code: Invalid Bulk Cancel (136)",
  [137] = "Reason Code: Pending Bulk Cancel (137)",
  [138] = "Reason Code: Symbol Series Not Open (138)",
  [139] = "Reason Code: Symbol Series Suspended (139)",
  [140] = "Reason Code: Symbol Ipo Halt (140)",
  [141] = "Reason Code: Invld Inst During Imbalance Freeze (141)",
  [142] = "Reason Code: Invld Inst After Cutoff Time (142)",
  [143] = "Reason Code: Cancelled By Primary Market (143)",
  [144] = "Reason Code: Pending Imbalance Freeze (144)",
  [145] = "Reason Code: No Rlp Permission (145)",
  [146] = "Reason Code: Invalid Instruction For Io Cs (146)",
  [147] = "Reason Code: System Full Cgrateexceeded (147)",
  [148] = "Reason Code: Pending Cancel Auction Running (148)",
  [149] = "Reason Code: Pending Modify Auction Running (149)",
  [150] = "Reason Code: Pending Replace Auction Running (150)",
  [151] = "Reason Code: Invld Inst For Pending Order (151)",
  [152] = "Reason Code: Ssh Price Below Nbb On Iso (152)",
  [153] = "Reason Code: Ioc Received While Auction Running (153)",
  [154] = "Reason Code: Pending Session Transition (154)",
  [155] = "Reason Code: Pending Cancel Session Transition (155)",
  [156] = "Reason Code: Pending Modify Session Transition (156)",
  [157] = "Reason Code: Pending Replace Session Transition (157)",
  [158] = "Reason Code: Invalid For Tick Pilot (158)",
  [159] = "Reason Code: Invalid Mmid (159)",
  [160] = "Reason Code: Invalid Mpid (160)",
  [161] = "Reason Code: Invalid Cancel Instead Of Reprice (161)",
  [162] = "Reason Code: Invalid Retail Indicator (162)",
  [163] = "Reason Code: Sender Comp Id Not Active (163)",
  [164] = "Reason Code: Mpid Blocked (164)",
  [165] = "Reason Code: Invalid Timestamp (165)",
  [166] = "Reason Code: Invalid Permission For Sender Comp Id (166)",
  [167] = "Reason Code: Invalid User Data (167)",
  [168] = "Reason Code: Pillar Risk Mitigation (168)",
  [169] = "Reason Code: No Last Sale For Peg (169)",
  [170] = "Reason Code: Symbol Pending Closing Auction (170)",
  [171] = "Reason Code: Extreme Closing Order Imbalance (171)",
  [172] = "Reason Code: Invalid Multi Message (172)",
  [173] = "Reason Code: Invalid Request Targeting Manual Sender Comp Id (173)",
  [174] = "Reason Code: Invalid Dmm Reject Reason (174)",
  [175] = "Reason Code: Pending Pending Auction State (175)",
  [176] = "Reason Code: Pending Cancel Pending Auction State (176)",
  [177] = "Reason Code: Pending Modify Pending Auction State (177)",
  [178] = "Reason Code: Pending Replace Pending Auction State (178)",
  [179] = "Reason Code: Cancelled Dmm Manual Order Reprice (179)",
  [180] = "Reason Code: Too Early To Open (180)",
  [181] = "Reason Code: Too Early To Close (181)",
  [182] = "Reason Code: Symbol Not Frozen By Auction Request (182)",
  [183] = "Reason Code: Symbol Is Frozen By Dbk Gui (183)",
  [184] = "Reason Code: Too Late Auction Running (184)",
  [185] = "Reason Code: Too Late Symbol Transition (185)",
  [186] = "Reason Code: No Eligible Crossing Interest (186)",
  [187] = "Reason Code: Book Is Lockedcrossed (187)",
  [188] = "Reason Code: No Interest Exists (188)",
  [189] = "Reason Code: Imbalance Too Large (189)",
  [190] = "Reason Code: Ssh Price Below Ssr Filing Price (190)",
  [191] = "Reason Code: Symbol Already Closed (191)",
  [192] = "Reason Code: Opening Template Opened (192)",
  [193] = "Reason Code: Closing Template Opened (193)",
  [194] = "Reason Code: Prin Entered On Auction Template (194)",
  [195] = "Reason Code: Mandatory Indication Submitted (195)",
  [196] = "Reason Code: Pending Crowd Exists (196)",
  [197] = "Reason Code: No Consolidated Last Sale (197)",
  [198] = "Reason Code: Paired Qty Exceeds Max Trade Parameter (198)",
  [199] = "Reason Code: Luld Or Mwcb Timer Running (199)",
  [200] = "Reason Code: Locking Crossing Away Quote (200)",
  [201] = "Reason Code: Cross Not Eligible (201)",
  [202] = "Reason Code: Reserved For Future Use 202 (202)",
  [203] = "Reason Code: Pending Acceptance For Ack On Order Arrival (203)",
  [204] = "Reason Code: Rejected Cancel By Dmm (204)",
  [205] = "Reason Code: Cancelled By Dmm (205)",
  [206] = "Reason Code: Price Is Outside Allowable Range (206)",
  [207] = "Reason Code: Auction Validation In Progress (207)",
  [208] = "Reason Code: Invalid Manual Action Id (208)",
  [209] = "Reason Code: Invalid Auction Sell Indicator (209)",
  [210] = "Reason Code: Invalid Intraday Sell Short Qty (210)",
  [211] = "Reason Code: Indication Template Is Open (211)",
  [212] = "Reason Code: No Prev Closing Price (212)",
  [213] = "Reason Code: Cancelled Due To Trading Collars (213)",
  [214] = "Reason Code: Underlying Is In Luld State (214)",
  [215] = "Reason Code: Invalid Manual Response Type (215)",
  [216] = "Reason Code: No Nyse Last Sale (216)",
  [217] = "Reason Code: Symbol Direct Listing State (217)",
  [218] = "Reason Code: Dmm Gui Reduction In Manual Order Qty (218)",
  [219] = "Reason Code: Cross Eligible (219)",
  [220] = "Reason Code: Dry Run (220)",
  [221] = "Reason Code: Unsupported By Broker Plex (221)",
  [222] = "Reason Code: Cross Blocked By Bbopbbo (222)",
  [223] = "Reason Code: Risk Single Ord Max Qty (223)",
  [224] = "Reason Code: Risk Single Ord Max Notional (224)",
  [225] = "Reason Code: Risk Gross Credit Breach (225)",
  [226] = "Reason Code: Risk Kill Switch (226)",
  [227] = "Reason Code: Invalid Route To Broker (227)",
  [228] = "Reason Code: Spread Too Wide (228)",
  [229] = "Reason Code: Expire Fok (229)",
  [230] = "Reason Code: Locks Displayed Interest (230)",
  [231] = "Reason Code: Mm Quote Price Lockcross Contra Side Nbbo (231)",
  [232] = "Reason Code: Invalid Leg Symbols (232)",
  [233] = "Reason Code: Duplicate Leg Symbol (233)",
  [234] = "Reason Code: Symbol Not In Underlying (234)",
  [235] = "Reason Code: Leg Ratios Not In The Most Reduced Form (235)",
  [236] = "Reason Code: Option Leg Ratio Too High (236)",
  [237] = "Reason Code: Stock Leg Ratio Too Low (237)",
  [238] = "Reason Code: Complex Series Already Exists (238)",
  [239] = "Reason Code: Number Of Legs Incorrect (239)",
  [240] = "Reason Code: Cancel Does Not Set Nbbo Inst (240)",
  [241] = "Reason Code: Cancel Avoid Reprice Inst (241)",
  [242] = "Reason Code: Allow Reprice Once Then Cancel Inst (242)",
  [243] = "Reason Code: Invalid Allocation Pct (243)",
  [244] = "Reason Code: Invalid Mm Quote Type (244)",
  [245] = "Reason Code: Invalid Mm Sent Time (245)",
  [246] = "Reason Code: Series Expired (246)",
  [247] = "Reason Code: Invalid Give Up Mmid (247)",
  [248] = "Reason Code: Invalid No Sides (248)",
  [249] = "Reason Code: Pending To Acceptance (249)",
  [250] = "Reason Code: Reserved For Future Use 250 (250)",
  [251] = "Reason Code: Invalid Bulk Action (251)",
  [252] = "Reason Code: Invalid Cancel Scope (252)",
  [253] = "Reason Code: No Legal Width Spread (253)",
  [254] = "Reason Code: Invalid Target Cancel Mpid (254)",
  [255] = "Reason Code: Invalid Target Cancel Sender Comp Id (255)",
  [256] = "Reason Code: Clear The Book Prev Entered (256)",
  [257] = "Reason Code: Timer Expired Api Allocation (257)",
  [258] = "Reason Code: Invalid Number Of Quotes (258)",
  [259] = "Reason Code: Invalid Order Id (259)",
  [260] = "Reason Code: Risk Control Event (260)",
  [261] = "Reason Code: To Rejected (261)",
  [262] = "Reason Code: Cancelled Corporate Action (262)",
  [263] = "Reason Code: Too Late To Replace (263)",
  [264] = "Reason Code: Invalid Ref Delta (264)",
  [265] = "Reason Code: Invalid Stock Price (265)",
  [266] = "Reason Code: Reserved For Future Use 266 (266)",
  [267] = "Reason Code: Invalid Tied To Stock (267)",
  [268] = "Reason Code: Too Late To Allocate (268)",
  [269] = "Reason Code: Customer Interest On Bbo (269)",
  [270] = "Reason Code: Ido Cannot Be Modified (270)",
  [271] = "Reason Code: Cross Outside Bbo (271)",
  [272] = "Reason Code: Pending To Approval (272)",
  [273] = "Reason Code: Invalid Leg Open Close (273)",
  [274] = "Reason Code: Invalid Risk Control Type (274)",
  [275] = "Reason Code: Invalid Risk Control Activation (275)",
  [276] = "Reason Code: Invalid Breach Action Request (276)",
  [277] = "Reason Code: Invalid Ioc Attribution (277)",
  [278] = "Reason Code: Invalid Risk Action Type (278)",
  [279] = "Reason Code: Invalid Usd Limit (279)",
  [280] = "Reason Code: Ido Already Exists (280)",
  [281] = "Reason Code: Invalid Time Limit (281)",
  [282] = "Reason Code: Invalid Percentage Limit (282)",
  [283] = "Reason Code: Invalid Count Limit (283)",
  [284] = "Reason Code: Risk Roll Transact Breach (284)",
  [285] = "Reason Code: Risk Roll Vol Breach (285)",
  [286] = "Reason Code: Risk Roll Pct Breach (286)",
  [287] = "Reason Code: Risk Roll Grmp Breach (287)",
  [288] = "Reason Code: Risk Mm Arbitrage Breach (288)",
  [289] = "Reason Code: Risk Mm Intrinsic Breach (289)",
  [290] = "Reason Code: Ido Must Exist (290)",
  [291] = "Reason Code: Invalid Allocation Tag (291)",
  [292] = "Reason Code: Invalid Trade Tag (292)",
  [293] = "Reason Code: Arbitrage Check (293)",
  [294] = "Reason Code: Intrinsic Value Check (294)",
  [295] = "Reason Code: Credit Debit Check (295)",
  [296] = "Reason Code: Invalid Risk User (296)",
  [297] = "Reason Code: Invalid Risk Entity (297)",
  [298] = "Reason Code: Invalid Flex Series Already Exists (298)",
  [299] = "Reason Code: Invalid Flex Series Key (299)",
  [300] = "Reason Code: Invalid Clear The Book (300)",
  [301] = "Reason Code: Invalid Stock Qty (301)",
  [302] = "Reason Code: Invalid Package Link Id (302)",
  [303] = "Reason Code: Complex Max Series Breach (303)",
  [304] = "Reason Code: Invalid Flex Eod Tag (304)",
  [305] = "Reason Code: Invalid Percentage Price (305)",
  [999] = "Reason Code: Unknown Issue Encountered (999)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.reason_code.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.reason_code.labels[value] or "Reason Code: Unknown("..value..")"
end

-- Dissect: Reason Code
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reason_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Ref Cl Ord Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ref_cl_ord_id = {}

-- Size: Ref Cl Ord Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ref_cl_ord_id.size = 8

-- Display: Ref Cl Ord Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ref_cl_ord_id.display = function(value)
  return "Ref Cl Ord Id: "..value
end

-- Dissect: Ref Cl Ord Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ref_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ref_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ref_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.ref_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Reinstatement Required By Other
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reinstatement_required_by_other = {}

-- Size: Reinstatement Required By Other
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reinstatement_required_by_other.size = 1

-- Display: Reinstatement Required By Other
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reinstatement_required_by_other.labels = {
  [0] = "Reinstatement Required By Other: Not Required (0)",
  [1] = "Reinstatement Required By Other: Required (1)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.reinstatement_required_by_other.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.reinstatement_required_by_other.labels[value] or "Reinstatement Required By Other: Unknown("..value..")"
end

-- Dissect: Reinstatement Required By Other
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reinstatement_required_by_other.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reinstatement_required_by_other.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reinstatement_required_by_other.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reinstatement_required_by_other, range, value, display)

  return offset + length, value
end

-- Reinstatement Required By Self
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reinstatement_required_by_self = {}

-- Size: Reinstatement Required By Self
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reinstatement_required_by_self.size = 1

-- Display: Reinstatement Required By Self
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reinstatement_required_by_self.labels = {
  [0] = "Reinstatement Required By Self: Not Required (0)",
  [1] = "Reinstatement Required By Self: Required (1)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.reinstatement_required_by_self.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.reinstatement_required_by_self.labels[value] or "Reinstatement Required By Self: Unknown("..value..")"
end

-- Dissect: Reinstatement Required By Self
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reinstatement_required_by_self.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reinstatement_required_by_self.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reinstatement_required_by_self.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reinstatement_required_by_self, range, value, display)

  return offset + length, value
end

-- Reject Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reject_type = {}

-- Size: Reject Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reject_type.size = 1

-- Display: Reject Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reject_type.labels = {
  [1] = "Reject Type: Order Or Cancel Replace Reject (1)",
  [2] = "Reject Type: Modify Request Reject (2)",
  [3] = "Reject Type: Cancel Request Reject (3)",
  [5] = "Reject Type: New Bulk Quote Reject (5)",
  [7] = "Reject Type: Risk Limit Update Request Reject (7)",
  [8] = "Reject Type: Bulk Cancel Request Reject Options (8)",
  [9] = "Reject Type: Cross Order Reject (9)",
  [10] = "Reject Type: New Complex Series Request Reject (10)",
  [11] = "Reject Type: Risk Action Request Reject (11)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.reject_type.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.reject_type.labels[value] or "Reject Type: Unknown("..value..")"
end

-- Dissect: Reject Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reject_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reject_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reject_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reject_type, range, value, display)

  return offset + length, value
end

-- Repeating Groups
nyse_arcaoptions_binarygateway_pillarstream_v3_27.repeating_groups = {}

-- Size: Repeating Groups
nyse_arcaoptions_binarygateway_pillarstream_v3_27.repeating_groups.size = 1

-- Display: Repeating Groups
nyse_arcaoptions_binarygateway_pillarstream_v3_27.repeating_groups.display = function(value)
  return "Repeating Groups: "..value
end

-- Dissect: Repeating Groups
nyse_arcaoptions_binarygateway_pillarstream_v3_27.repeating_groups.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.repeating_groups.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.repeating_groups.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.repeating_groups, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_1 = {}

-- Size: Reserved 1
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_1.size = 1

-- Display: Reserved 1
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 16
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_16 = {}

-- Size: Reserved 16
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_16.size = 16

-- Display: Reserved 16
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_16.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 190
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_190 = {}

-- Size: Reserved 190
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_190.size = 190

-- Display: Reserved 190
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_190.display = function(value)
  return "Reserved 190: "..value
end

-- Dissect: Reserved 190
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_190.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_190.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_190.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reserved_190, range, value, display)

  return offset + length, value
end

-- Reserved 199
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_199 = {}

-- Size: Reserved 199
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_199.size = 199

-- Display: Reserved 199
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_199.display = function(value)
  return "Reserved 199: "..value
end

-- Dissect: Reserved 199
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_199.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_199.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_199.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reserved_199, range, value, display)

  return offset + length, value
end

-- Reserved 2
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_2 = {}

-- Size: Reserved 2
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_2.size = 2

-- Display: Reserved 2
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 20
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_20 = {}

-- Size: Reserved 20
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_20.size = 20

-- Display: Reserved 20
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_20.display = function(value)
  return "Reserved 20: "..value
end

-- Dissect: Reserved 20
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_20.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_20.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_20.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reserved_20, range, value, display)

  return offset + length, value
end

-- Reserved 200
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_200 = {}

-- Size: Reserved 200
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_200.size = 200

-- Display: Reserved 200
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_200.display = function(value)
  return "Reserved 200: "..value
end

-- Dissect: Reserved 200
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_200.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_200.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_200.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reserved_200, range, value, display)

  return offset + length, value
end

-- Reserved 4
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_4 = {}

-- Size: Reserved 4
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_4.size = 4

-- Display: Reserved 4
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 49
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_49 = {}

-- Size: Reserved 49
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_49.size = 49

-- Display: Reserved 49
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_49.display = function(value)
  return "Reserved 49: "..value
end

-- Dissect: Reserved 49
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_49.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_49.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_49.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reserved_49, range, value, display)

  return offset + length, value
end

-- Reserved 50
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_50 = {}

-- Size: Reserved 50
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_50.size = 50

-- Display: Reserved 50
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_50.display = function(value)
  return "Reserved 50: "..value
end

-- Dissect: Reserved 50
nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_50.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_50.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_50.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.reserved_50, range, value, display)

  return offset + length, value
end

-- Risk Ack Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_ack_type = {}

-- Size: Risk Ack Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_ack_type.size = 1

-- Display: Risk Ack Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_ack_type.display = function(value)
  return "Risk Ack Type: "..value
end

-- Dissect: Risk Ack Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_ack_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_ack_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_ack_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_ack_type, range, value, display)

  return offset + length, value
end

-- Risk Action Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_type = {}

-- Size: Risk Action Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_type.size = 1

-- Display: Risk Action Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_type.labels = {
  [0] = "Risk Action Type: Not Applicable (0)",
  [1] = "Risk Action Type: Query (1)",
  [2] = "Risk Action Type: Kill Switch Block (2)",
  [3] = "Risk Action Type: Kill Switch Unblock (3)",
  [4] = "Risk Action Type: Kill Switch Cancel Auction Orders (4)",
  [5] = "Risk Action Type: Kill Switch Cancel Non Auction Orders (5)",
  [6] = "Risk Action Type: Kill Switch Cancel Gtc Orders (6)",
  [7] = "Risk Action Type: Approve Reinstatement (7)",
  [8] = "Risk Action Type: Risk Entity Reinstated (8)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_type.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_type.labels[value] or "Risk Action Type: Unknown("..value..")"
end

-- Dissect: Risk Action Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_action_type, range, value, display)

  return offset + length, value
end

-- Risk Control Activation
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_activation = {}

-- Size: Risk Control Activation
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_activation.size = 1

-- Display: Risk Control Activation
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_activation.labels = {
  [0] = "Risk Control Activation: Off (0)",
  [1] = "Risk Control Activation: On (1)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_activation.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_activation.labels[value] or "Risk Control Activation: Unknown("..value..")"
end

-- Dissect: Risk Control Activation
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_activation.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_activation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_activation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_control_activation, range, value, display)

  return offset + length, value
end

-- Risk Control Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_type = {}

-- Size: Risk Control Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_type.size = 1

-- Display: Risk Control Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_type.labels = {
  [0] = "Risk Control Type: Not Applicable (0)",
  [1] = "Risk Control Type: Single Order Max Qty (1)",
  [2] = "Risk Control Type: Single Order Max Notional (2)",
  [3] = "Risk Control Type: Gross Credit Executed (3)",
  [4] = "Risk Control Type: Gross Credit Open (4)",
  [5] = "Risk Control Type: Gross Credit Open And Executed (5)",
  [6] = "Risk Control Type: Maximum Duplicative Orders (6)",
  [8] = "Risk Control Type: Activity Rolling Transaction (8)",
  [9] = "Risk Control Type: Activity Rolling Volume (9)",
  [10] = "Risk Control Type: Activity Rolling Percentage (10)",
  [11] = "Risk Control Type: Global Risk Mitigation Protection (11)",
  [13] = "Risk Control Type: Reject Market Orders (13)",
  [14] = "Risk Control Type: Reject Moo And Moc (14)",
  [19] = "Risk Control Type: Reject Restricted Symbol (19)",
  [26] = "Risk Control Type: Limit Order Price Protection Options Single Leg (26)",
  [27] = "Risk Control Type: Limit Order Price Protection Options Complex (27)",
  [29] = "Risk Control Type: Order Rate Threshold (29)",
  [30] = "Risk Control Type: Reject Isoioc (30)",
  [31] = "Risk Control Type: Reject Iso Day (31)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_type.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_type.labels[value] or "Risk Control Type: Unknown("..value..")"
end

-- Dissect: Risk Control Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_control_type, range, value, display)

  return offset + length, value
end

-- Risk Minimum Value
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_minimum_value = {}

-- Size: Risk Minimum Value
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_minimum_value.size = 8

-- Display: Risk Minimum Value
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_minimum_value.display = function(value)
  return "Risk Minimum Value: "..value
end

-- Dissect: Risk Minimum Value
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_minimum_value.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_minimum_value.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_minimum_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_minimum_value, range, value, display)

  return offset + length, value
end

-- Risk Range Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_range_id = {}

-- Size: Risk Range Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_range_id.size = 1

-- Display: Risk Range Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_range_id.display = function(value)
  return "Risk Range Id: "..value
end

-- Dissect: Risk Range Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_range_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_range_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_range_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_range_id, range, value, display)

  return offset + length, value
end

-- Risk User Crd
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_crd = {}

-- Size: Risk User Crd
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_crd.size = 4

-- Display: Risk User Crd
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_crd.display = function(value)
  return "Risk User Crd: "..value
end

-- Dissect: Risk User Crd
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_crd.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_crd.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_crd.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_user_crd, range, value, display)

  return offset + length, value
end

-- Risk User Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_type = {}

-- Size: Risk User Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_type.size = 1

-- Display: Risk User Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_type.labels = {
  ["E"] = "Risk User Type: Entering Firm (E)",
  ["C"] = "Risk User Type: Clearing Firm (C)",
  ["O"] = "Risk User Type: Options Market Maker Firm (O)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_type.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_type.labels[value] or "Risk User Type: Unknown("..value..")"
end

-- Dissect: Risk User Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_user_type, range, value, display)

  return offset + length, value
end

-- Rpimpv
nyse_arcaoptions_binarygateway_pillarstream_v3_27.rpimpv = {}

-- Size: Rpimpv
nyse_arcaoptions_binarygateway_pillarstream_v3_27.rpimpv.size = 8

-- Display: Rpimpv
nyse_arcaoptions_binarygateway_pillarstream_v3_27.rpimpv.display = function(value)
  return "Rpimpv: "..value
end

-- Translate: Rpimpv
nyse_arcaoptions_binarygateway_pillarstream_v3_27.rpimpv.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Rpimpv
nyse_arcaoptions_binarygateway_pillarstream_v3_27.rpimpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.rpimpv.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = nyse_arcaoptions_binarygateway_pillarstream_v3_27.rpimpv.translate(raw)
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.rpimpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.rpimpv, range, value, display)

  return offset + length, value
end

-- Self Trade Prevention
nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_prevention = {}

-- Size: Self Trade Prevention
nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_prevention.size = 1

-- Display: Self Trade Prevention
nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_prevention.labels = {
  [1] = "Self Trade Prevention: No Self Trade Prevention (1)",
  [2] = "Self Trade Prevention: Cancel Newest (2)",
  [3] = "Self Trade Prevention: Cancel Oldest (3)",
  [4] = "Self Trade Prevention: Cancel Both (4)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_prevention.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_prevention.labels[value] or "Self Trade Prevention: Unknown("..value..")"
end

-- Dissect: Self Trade Prevention
nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_prevention.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_prevention.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_prevention.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.self_trade_prevention, range, value, display)

  return offset + length, value
end

-- Self Trade Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_type = {}

-- Size: Self Trade Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_type.size = 1

-- Display: Self Trade Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_type.labels = {
  [0] = "Self Trade Type: Use Session Configuration (0)",
  [1] = "Self Trade Type: No Self Trade Prevention (1)",
  [2] = "Self Trade Type: Cancel Newest (2)",
  [3] = "Self Trade Type: Cancel Oldest (3)",
  [4] = "Self Trade Type: Cancel Both (4)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_type.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_type.labels[value] or "Self Trade Type: Unknown("..value..")"
end

-- Dissect: Self Trade Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.self_trade_type, range, value, display)

  return offset + length, value
end

-- Seq
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq = {}

-- Size: Seq
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq.size = 8

-- Display: Seq
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq.display = function(value)
  return "Seq: "..value
end

-- Dissect: Seq
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.seq, range, value, display)

  return offset + length, value
end

-- Seq Msg Length
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_length = {}

-- Size: Seq Msg Length
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_length.size = 2

-- Display: Seq Msg Length
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_length.display = function(value)
  return "Seq Msg Length: "..value
end

-- Dissect: Seq Msg Length
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_length.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.seq_msg_length, range, value, display)

  return offset + length, value
end

-- Seq Msg Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_type = {}

-- Size: Seq Msg Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_type.size = 2

-- Display: Seq Msg Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_type.display = function(value)
  if value == 0x0220 then
    return "Seq Msg Type: Session Configuration Request Message (0x0220)"
  end
  if value == 0x0282 then
    return "Seq Msg Type: Sequenced Filler Message (0x0282)"
  end
  if value == 0x0248 then
    return "Seq Msg Type: New Order Message (0x0248)"
  end
  if value == 0x0250 then
    return "Seq Msg Type: Order Cancel Request Message (0x0250)"
  end
  if value == 0x0251 then
    return "Seq Msg Type: Order Modify Request Message (0x0251)"
  end
  if value == 0x0243 then
    return "Seq Msg Type: New Bulk Quote Message (0x0243)"
  end
  if value == 0x0259 then
    return "Seq Msg Type: New Bulk Quote With Order Id Message (0x0259)"
  end
  if value == 0x0222 then
    return "Seq Msg Type: New Order Cross Message (0x0222)"
  end
  if value == 0x0223 then
    return "Seq Msg Type: Bulk Cancel Request Message (0x0223)"
  end
  if value == 0x0224 then
    return "Seq Msg Type: Bulk Cancel Request With Mp Sub Id Message (0x0224)"
  end
  if value == 0x0330 then
    return "Seq Msg Type: Risk Limit Update Request Message (0x0330)"
  end
  if value == 0x0331 then
    return "Seq Msg Type: Risk Action Request Message (0x0331)"
  end
  if value == 0x0357 then
    return "Seq Msg Type: New Complex Series Request Message (0x0357)"
  end
  if value == 0x0233 then
    return "Seq Msg Type: Underlying Symbol Reference Data Message (0x0233)"
  end
  if value == 0x0234 then
    return "Seq Msg Type: Series Reference Data Message (0x0234)"
  end
  if value == 0x0230 then
    return "Seq Msg Type: Minimum Price Variant Class Reference Data Message (0x0230)"
  end
  if value == 0x0231 then
    return "Seq Msg Type: Minimum Price Variant Level Reference Data Message (0x0231)"
  end
  if value == 0x0272 then
    return "Seq Msg Type: Mpid Configuration Message (0x0272)"
  end
  if value == 0x0833 then
    return "Seq Msg Type: Options Market Maker Symbol Appointment Reference Data Message (0x0833)"
  end
  if value == 0x0221 then
    return "Seq Msg Type: Session Configuration Acknowledgement Message (0x0221)"
  end
  if value == 0x0269 then
    return "Seq Msg Type: Order And Cancel Replace Acknowledgement Message (0x0269)"
  end
  if value == 0x0294 then
    return "Seq Msg Type: Bulk Quote Acknowledgment Message (0x0294)"
  end
  if value == 0x0308 then
    return "Seq Msg Type: Bulk Quote Acknowledgment With Details Message (0x0308)"
  end
  if value == 0x0278 then
    return "Seq Msg Type: Order Single Complex Modify Cancel Request Acknowledgment And Urout Message (0x0278)"
  end
  if value == 0x0268 then
    return "Seq Msg Type: Order Priority Update Acknowledgment Message (0x0268)"
  end
  if value == 0x0295 then
    return "Seq Msg Type: Execution Report Message (0x0295)"
  end
  if value == 0x0293 then
    return "Seq Msg Type: Trade Bust Correct Message (0x0293)"
  end
  if value == 0x0267 then
    return "Seq Msg Type: Application Layer Reject Message (0x0267)"
  end
  if value == 0x0332 then
    return "Seq Msg Type: Risk Control Acknowledgement Message (0x0332)"
  end
  if value == 0x0333 then
    return "Seq Msg Type: Risk Control Alert Message (0x0333)"
  end
  if value == 0x0358 then
    return "Seq Msg Type: Complex Series Request Acknowledgement Message (0x0358)"
  end

  return "Seq Msg Type: Unknown("..string.format("0x%04X", value)..")"
end

-- Dissect: Seq Msg Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.seq_msg_type, range, value, display)

  return offset + length, value
end

-- Series Index
nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_index = {}

-- Size: Series Index
nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_index.size = 4

-- Display: Series Index
nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_index.display = function(value)
  return "Series Index: "..value
end

-- Dissect: Series Index
nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.series_index, range, value, display)

  return offset + length, value
end

-- Series Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_type = {}

-- Size: Series Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_type.size = 1

-- Display: Series Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_type.labels = {
  [0] = "Series Type: Standard (0)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_type.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_type.labels[value] or "Series Type: Unknown("..value..")"
end

-- Dissect: Series Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.series_type, range, value, display)

  return offset + length, value
end

-- Sess
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sess = {}

-- Size: Sess
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sess.size = 4

-- Display: Sess
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sess.display = function(value)
  return "Sess: "..value
end

-- Dissect: Sess
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sess.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sess.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sess.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.sess, range, value, display)

  return offset + length, value
end

-- Side
nyse_arcaoptions_binarygateway_pillarstream_v3_27.side = {}

-- Size: Side
nyse_arcaoptions_binarygateway_pillarstream_v3_27.side.size = 1

-- Display: Side
nyse_arcaoptions_binarygateway_pillarstream_v3_27.side.labels = {
  [0] = "Side: No Change In Side (0)",
  [1] = "Side: Buy (1)",
  [2] = "Side: Sell (2)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.side.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_arcaoptions_binarygateway_pillarstream_v3_27.side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.side, range, value, display)

  return offset + length, value
end

-- Start Seq
nyse_arcaoptions_binarygateway_pillarstream_v3_27.start_seq = {}

-- Size: Start Seq
nyse_arcaoptions_binarygateway_pillarstream_v3_27.start_seq.size = 8

-- Display: Start Seq
nyse_arcaoptions_binarygateway_pillarstream_v3_27.start_seq.display = function(value)
  return "Start Seq: "..value
end

-- Dissect: Start Seq
nyse_arcaoptions_binarygateway_pillarstream_v3_27.start_seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.start_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.start_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.start_seq, range, value, display)

  return offset + length, value
end

-- Status
nyse_arcaoptions_binarygateway_pillarstream_v3_27.status = {}

-- Size: Status
nyse_arcaoptions_binarygateway_pillarstream_v3_27.status.size = 1

-- Display: Status
nyse_arcaoptions_binarygateway_pillarstream_v3_27.status.labels = {
  [0] = "Status: Request Processed Successfully (0)",
  [18] = "Status: Not Logged In (18)",
  [24] = "Status: Invalid Login Details (24)",
  [27] = "Status: Already Logged In (27)",
  [28] = "Status: Heartbeat Timeout (28)",
  [29] = "Status: Login Timed Out (29)",
  [33] = "Status: Invalid Message (33)",
  [54] = "Status: No Stream Permission (54)",
  [81] = "Status: Invalid Protocol Version (81)",
  [82] = "Status: Message Out Of Sequence (82)",
  [84] = "Status: Invalid Stream (84)",
  [85] = "Status: Stream Not Open (85)",
  [86] = "Status: Invalid Timestamp (86)",
  [89] = "Status: Denial Of Service (89)",
  [90] = "Status: Write Permission Revoked (90)",
  [93] = "Status: Invalid Multimessage (93)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.status.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.status.labels[value] or "Status: Unknown("..value..")"
end

-- Dissect: Status
nyse_arcaoptions_binarygateway_pillarstream_v3_27.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.status, range, value, display)

  return offset + length, value
end

-- Stop Px
nyse_arcaoptions_binarygateway_pillarstream_v3_27.stop_px = {}

-- Size: Stop Px
nyse_arcaoptions_binarygateway_pillarstream_v3_27.stop_px.size = 8

-- Display: Stop Px
nyse_arcaoptions_binarygateway_pillarstream_v3_27.stop_px.display = function(value)
  return "Stop Px: "..value
end

-- Translate: Stop Px
nyse_arcaoptions_binarygateway_pillarstream_v3_27.stop_px.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Stop Px
nyse_arcaoptions_binarygateway_pillarstream_v3_27.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.stop_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_arcaoptions_binarygateway_pillarstream_v3_27.stop_px.translate(raw)
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.stop_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Strike Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.strike_price = {}

-- Size: Strike Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.strike_price.size = 8

-- Display: Strike Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.strike_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Strike Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = nyse_arcaoptions_binarygateway_pillarstream_v3_27.strike_price.translate(raw)
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Sub Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_id = {}

-- Size: Sub Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_id.size = 4

-- Display: Sub Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sub Id: No Value"
  end

  return "Sub Id: "..value
end

-- Dissect: Sub Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_id.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.sub_id, range, value, display)

  return offset + length, value
end

-- Sub Msg Length
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_length = {}

-- Size: Sub Msg Length
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_length.size = 2

-- Display: Sub Msg Length
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_length.display = function(value)
  return "Sub Msg Length: "..value
end

-- Dissect: Sub Msg Length
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_length.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.sub_msg_length, range, value, display)

  return offset + length, value
end

-- Sub Msg Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_type = {}

-- Size: Sub Msg Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_type.size = 2

-- Display: Sub Msg Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_type.display = function(value)
  return "Sub Msg Type: "..value
end

-- Dissect: Sub Msg Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.sub_msg_type, range, value, display)

  return offset + length, value
end

-- Symbol Eligibility
nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_eligibility = {}

-- Size: Symbol Eligibility
nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_eligibility.size = 1

-- Display: Symbol Eligibility
nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_eligibility.labels = {
  [1] = "Symbol Eligibility: All Symbols (1)",
  [2] = "Symbol Eligibility: Test Symbols Only (2)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_eligibility.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_eligibility.labels[value] or "Symbol Eligibility: Unknown("..value..")"
end

-- Dissect: Symbol Eligibility
nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_eligibility.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_eligibility.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_eligibility.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.symbol_eligibility, range, value, display)

  return offset + length, value
end

-- Symbol Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id = {}

-- Size: Symbol Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.size = 4

-- Display: Symbol Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.display = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Target Cancel Mpid
nyse_arcaoptions_binarygateway_pillarstream_v3_27.target_cancel_mpid = {}

-- Size: Target Cancel Mpid
nyse_arcaoptions_binarygateway_pillarstream_v3_27.target_cancel_mpid.size = 4

-- Display: Target Cancel Mpid
nyse_arcaoptions_binarygateway_pillarstream_v3_27.target_cancel_mpid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Target Cancel Mpid: No Value"
  end

  return "Target Cancel Mpid: "..value
end

-- Dissect: Target Cancel Mpid
nyse_arcaoptions_binarygateway_pillarstream_v3_27.target_cancel_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.target_cancel_mpid.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.target_cancel_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.target_cancel_mpid, range, value, display)

  return offset + length, value
end

-- Target Cancel Username
nyse_arcaoptions_binarygateway_pillarstream_v3_27.target_cancel_username = {}

-- Size: Target Cancel Username
nyse_arcaoptions_binarygateway_pillarstream_v3_27.target_cancel_username.size = 16

-- Display: Target Cancel Username
nyse_arcaoptions_binarygateway_pillarstream_v3_27.target_cancel_username.display = function(value)
  return "Target Cancel Username: "..value
end

-- Dissect: Target Cancel Username
nyse_arcaoptions_binarygateway_pillarstream_v3_27.target_cancel_username.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.target_cancel_username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.target_cancel_username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.target_cancel_username, range, value, display)

  return offset + length, value
end

-- Test Symbol Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.test_symbol_indicator = {}

-- Size: Test Symbol Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.test_symbol_indicator.size = 1

-- Display: Test Symbol Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.test_symbol_indicator.labels = {
  [0] = "Test Symbol Indicator: Production (0)",
  [1] = "Test Symbol Indicator: Test (1)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.test_symbol_indicator.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.test_symbol_indicator.labels[value] or "Test Symbol Indicator: Unknown("..value..")"
end

-- Dissect: Test Symbol Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.test_symbol_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.test_symbol_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.test_symbol_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.test_symbol_indicator, range, value, display)

  return offset + length, value
end

-- Threshold Breach Level
nyse_arcaoptions_binarygateway_pillarstream_v3_27.threshold_breach_level = {}

-- Size: Threshold Breach Level
nyse_arcaoptions_binarygateway_pillarstream_v3_27.threshold_breach_level.size = 1

-- Display: Threshold Breach Level
nyse_arcaoptions_binarygateway_pillarstream_v3_27.threshold_breach_level.labels = {
  [0] = "Threshold Breach Level: Not Applicable (0)",
  [4] = "Threshold Breach Level: Greater Than 100 Percent (4)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.threshold_breach_level.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.threshold_breach_level.labels[value] or "Threshold Breach Level: Unknown("..value..")"
end

-- Dissect: Threshold Breach Level
nyse_arcaoptions_binarygateway_pillarstream_v3_27.threshold_breach_level.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.threshold_breach_level.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.threshold_breach_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.threshold_breach_level, range, value, display)

  return offset + length, value
end

-- Throttle Preference
nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_preference = {}

-- Size: Throttle Preference
nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_preference.size = 1

-- Display: Throttle Preference
nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_preference.labels = {
  [0] = "Throttle Preference: Queue When Throttled (0)",
  [1] = "Throttle Preference: Reject When Throttled (1)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_preference.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_preference.labels[value] or "Throttle Preference: Unknown("..value..")"
end

-- Dissect: Throttle Preference
nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_preference.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_preference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_preference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.throttle_preference, range, value, display)

  return offset + length, value
end

-- Throttle Threshold
nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_threshold = {}

-- Size: Throttle Threshold
nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_threshold.size = 2

-- Display: Throttle Threshold
nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_threshold.display = function(value)
  return "Throttle Threshold: "..value
end

-- Dissect: Throttle Threshold
nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_threshold.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_threshold.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_threshold.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.throttle_threshold, range, value, display)

  return offset + length, value
end

-- Throttle Window
nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_window = {}

-- Size: Throttle Window
nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_window.size = 2

-- Display: Throttle Window
nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_window.display = function(value)
  return "Throttle Window: "..value
end

-- Dissect: Throttle Window
nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_window.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_window.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_window.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.throttle_window, range, value, display)

  return offset + length, value
end

-- Time Limit
nyse_arcaoptions_binarygateway_pillarstream_v3_27.time_limit = {}

-- Size: Time Limit
nyse_arcaoptions_binarygateway_pillarstream_v3_27.time_limit.size = 4

-- Display: Time Limit
nyse_arcaoptions_binarygateway_pillarstream_v3_27.time_limit.display = function(value)
  return "Time Limit: "..value
end

-- Dissect: Time Limit
nyse_arcaoptions_binarygateway_pillarstream_v3_27.time_limit.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.time_limit.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.time_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.time_limit, range, value, display)

  return offset + length, value
end

-- Timestamp
nyse_arcaoptions_binarygateway_pillarstream_v3_27.timestamp = {}

-- Size: Timestamp
nyse_arcaoptions_binarygateway_pillarstream_v3_27.timestamp.size = 8

-- Dissect: Timestamp
nyse_arcaoptions_binarygateway_pillarstream_v3_27.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.timestamp
  if nyse_arcaoptions_binarygateway_pillarstream_v3_27.absolute_time_base == 1 then field = omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trading Mpv
nyse_arcaoptions_binarygateway_pillarstream_v3_27.trading_mpv = {}

-- Size: Trading Mpv
nyse_arcaoptions_binarygateway_pillarstream_v3_27.trading_mpv.size = 8

-- Display: Trading Mpv
nyse_arcaoptions_binarygateway_pillarstream_v3_27.trading_mpv.display = function(value)
  return "Trading Mpv: "..value
end

-- Translate: Trading Mpv
nyse_arcaoptions_binarygateway_pillarstream_v3_27.trading_mpv.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Trading Mpv
nyse_arcaoptions_binarygateway_pillarstream_v3_27.trading_mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.trading_mpv.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = nyse_arcaoptions_binarygateway_pillarstream_v3_27.trading_mpv.translate(raw)
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.trading_mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.trading_mpv, range, value, display)

  return offset + length, value
end

-- Transact Time
nyse_arcaoptions_binarygateway_pillarstream_v3_27.transact_time = {}

-- Size: Transact Time
nyse_arcaoptions_binarygateway_pillarstream_v3_27.transact_time.size = 8

-- Dissect: Transact Time
nyse_arcaoptions_binarygateway_pillarstream_v3_27.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.transact_time
  if nyse_arcaoptions_binarygateway_pillarstream_v3_27.absolute_time_base == 1 then field = omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.transact_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Underlying Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.underlying_type = {}

-- Size: Underlying Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.underlying_type.size = 1

-- Display: Underlying Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.underlying_type.labels = {
  ["A"] = "Underlying Type: Adr (A)",
  ["C"] = "Underlying Type: Common Stock (C)",
  ["D"] = "Underlying Type: Debentures (D)",
  ["E"] = "Underlying Type: Etf (E)",
  ["F"] = "Underlying Type: Foreign (F)",
  ["H"] = "Underlying Type: Ads (H)",
  ["I"] = "Underlying Type: Units (I)",
  ["M"] = "Underlying Type: Miscellaneous (M)",
  ["L"] = "Underlying Type: Index Linked Notes (L)",
  ["N"] = "Underlying Type: Bonds (N)",
  ["O"] = "Underlying Type: Ordinary Shares (O)",
  ["P"] = "Underlying Type: Preferred Stock (P)",
  ["R"] = "Underlying Type: Rights (R)",
  ["S"] = "Underlying Type: Beneficiary Interest (S)",
  ["T"] = "Underlying Type: Structured Notes (T)",
  ["U"] = "Underlying Type: Closed End Fund (U)",
  ["W"] = "Underlying Type: Warrant (W)",
  ["X"] = "Underlying Type: Index (X)",
  ["Z"] = "Underlying Type: Options (Z)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.underlying_type.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.underlying_type.labels[value] or "Underlying Type: Unknown("..value..")"
end

-- Dissect: Underlying Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.underlying_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.underlying_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.underlying_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.underlying_type, range, value, display)

  return offset + length, value
end

-- Usd Calculation 1
nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_1 = {}

-- Size: Usd Calculation 1
nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_1.size = 8

-- Display: Usd Calculation 1
nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_1.display = function(value)
  return "Usd Calculation 1: "..value
end

-- Dissect: Usd Calculation 1
nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_1.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.usd_calculation_1, range, value, display)

  return offset + length, value
end

-- Usd Calculation 2
nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_2 = {}

-- Size: Usd Calculation 2
nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_2.size = 8

-- Display: Usd Calculation 2
nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_2.display = function(value)
  return "Usd Calculation 2: "..value
end

-- Dissect: Usd Calculation 2
nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_2.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.usd_calculation_2, range, value, display)

  return offset + length, value
end

-- Usd Calculation 3
nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_3 = {}

-- Size: Usd Calculation 3
nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_3.size = 8

-- Display: Usd Calculation 3
nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_3.display = function(value)
  return "Usd Calculation 3: "..value
end

-- Dissect: Usd Calculation 3
nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_3.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.usd_calculation_3, range, value, display)

  return offset + length, value
end

-- Usd Calculation 4
nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_4 = {}

-- Size: Usd Calculation 4
nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_4.size = 8

-- Display: Usd Calculation 4
nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_4.display = function(value)
  return "Usd Calculation 4: "..value
end

-- Dissect: Usd Calculation 4
nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_4.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.usd_calculation_4, range, value, display)

  return offset + length, value
end

-- Usd Limit
nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_limit = {}

-- Size: Usd Limit
nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_limit.size = 8

-- Display: Usd Limit
nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_limit.display = function(value)
  return "Usd Limit: "..value
end

-- Dissect: Usd Limit
nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_limit.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_limit.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.usd_limit, range, value, display)

  return offset + length, value
end

-- User Data
nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_data = {}

-- Size: User Data
nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_data.size = 10

-- Display: User Data
nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_data.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "User Data: No Value"
  end

  return "User Data: "..value
end

-- Dissect: User Data
nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_data.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_data.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.user_data, range, value, display)

  return offset + length, value
end

-- User Session Status
nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_session_status = {}

-- Size: User Session Status
nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_session_status.size = 1

-- Display: User Session Status
nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_session_status.labels = {
  [1] = "User Session Status: Active (1)",
  [2] = "User Session Status: Inactive (2)",
  [3] = "User Session Status: Prospect (3)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_session_status.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_session_status.labels[value] or "User Session Status: Unknown("..value..")"
end

-- Dissect: User Session Status
nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_session_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_session_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_session_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.user_session_status, range, value, display)

  return offset + length, value
end

-- User Session Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_session_type = {}

-- Size: User Session Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_session_type.size = 1

-- Display: User Session Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_session_type.labels = {
  [1] = "User Session Type: Customer (1)",
  [2] = "User Session Type: Service Bureau (2)",
  [4] = "User Session Type: Options Market Maker (4)",
  [12] = "User Session Type: Risk Admin (12)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_session_type.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_session_type.labels[value] or "User Session Type: Unknown("..value..")"
end

-- Dissect: User Session Type
nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_session_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_session_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_session_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.user_session_type, range, value, display)

  return offset + length, value
end

-- Username
nyse_arcaoptions_binarygateway_pillarstream_v3_27.username = {}

-- Size: Username
nyse_arcaoptions_binarygateway_pillarstream_v3_27.username.size = 16

-- Display: Username
nyse_arcaoptions_binarygateway_pillarstream_v3_27.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nyse_arcaoptions_binarygateway_pillarstream_v3_27.username.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.username, range, value, display)

  return offset + length, value
end

-- Value
nyse_arcaoptions_binarygateway_pillarstream_v3_27.value = {}

-- Size: Value
nyse_arcaoptions_binarygateway_pillarstream_v3_27.value.size = 4

-- Display: Value
nyse_arcaoptions_binarygateway_pillarstream_v3_27.value.display = function(value)
  return "Value: "..value
end

-- Dissect: Value
nyse_arcaoptions_binarygateway_pillarstream_v3_27.value.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.value.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.value, range, value, display)

  return offset + length, value
end

-- Version
nyse_arcaoptions_binarygateway_pillarstream_v3_27.version = {}

-- Size: Version
nyse_arcaoptions_binarygateway_pillarstream_v3_27.version.size = 20

-- Display: Version
nyse_arcaoptions_binarygateway_pillarstream_v3_27.version.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Version: No Value"
  end

  return "Version: "..value
end

-- Dissect: Version
nyse_arcaoptions_binarygateway_pillarstream_v3_27.version.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.version.size
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

  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.version, range, value, display)

  return offset + length, value
end

-- Working Away From Display
nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_away_from_display = {}

-- Size: Working Away From Display
nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_away_from_display.size = 1

-- Display: Working Away From Display
nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_away_from_display.labels = {
  [0] = "Working Away From Display: Equal To Display Price (0)",
  [1] = "Working Away From Display: Away From Display Price (1)",
}

nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_away_from_display.display = function(value)
  return nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_away_from_display.labels[value] or "Working Away From Display: Unknown("..value..")"
end

-- Dissect: Working Away From Display
nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_away_from_display.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_away_from_display.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_away_from_display.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.working_away_from_display, range, value, display)

  return offset + length, value
end

-- Working Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_price = {}

-- Size: Working Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_price.size = 8

-- Display: Working Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_price.display = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Working Price
nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_price.translate(raw)
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.working_price, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse ArcaOptions BinaryGateway PillarStream 3.27
-----------------------------------------------------------------------

-- Leg Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_group = {}

-- Size: Leg Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_group.size =
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_symbol_id.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_ratio_qty.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_side.size

-- Display: Leg Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_group.fields = function(buffer, offset, packet, parent, leg_group_index)
  local index = offset

  -- Implicit Leg Group Index
  if leg_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.leg_group_index, leg_group_index)
    iteration:set_generated()
  end

  -- Leg Symbol Id: u32
  index, leg_symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_symbol_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: u16
  index, leg_ratio_qty = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: u8
  index, leg_side = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_group.dissect = function(buffer, offset, packet, parent, leg_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.leg_group, buffer(offset, 0))
    local index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_group.fields(buffer, offset, packet, parent, leg_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_group.fields(buffer, offset, packet, parent, leg_group_index)
  end
end

-- Complex Series Request Acknowledgement Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.complex_series_request_acknowledgement_message = {}

-- Read runtime size of: Complex Series Request Acknowledgement Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.complex_series_request_acknowledgement_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Complex Series Request Acknowledgement Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.complex_series_request_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Series Request Acknowledgement Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.complex_series_request_acknowledgement_message.fields = function(buffer, offset, packet, parent, size_of_complex_series_request_acknowledgement_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_arcaoptions_binarygateway_pillarstream_v3_27.transact_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reason_code.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = nyse_arcaoptions_binarygateway_pillarstream_v3_27.side.dissect(buffer, index, packet, parent)

  -- Repeating Groups: u8
  index, repeating_groups = nyse_arcaoptions_binarygateway_pillarstream_v3_27.repeating_groups.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Group
  for leg_group_index = 1, repeating_groups do
    index, leg_group = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_group.dissect(buffer, index, packet, parent, leg_group_index)
  end

  return index
end

-- Dissect: Complex Series Request Acknowledgement Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.complex_series_request_acknowledgement_message.dissect = function(buffer, offset, packet, parent, size_of_complex_series_request_acknowledgement_message)
  local size_of_complex_series_request_acknowledgement_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.complex_series_request_acknowledgement_message.size(buffer, offset)
  local index = offset + size_of_complex_series_request_acknowledgement_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.complex_series_request_acknowledgement_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.complex_series_request_acknowledgement_message.fields(buffer, offset, packet, parent, size_of_complex_series_request_acknowledgement_message)
    parent:set_len(size_of_complex_series_request_acknowledgement_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.complex_series_request_acknowledgement_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.complex_series_request_acknowledgement_message.fields(buffer, offset, packet, parent, size_of_complex_series_request_acknowledgement_message)

    return index
  end
end

-- Risk Control Alert Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_alert_message = {}

-- Read runtime size of: Risk Control Alert Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_alert_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Risk Control Alert Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_alert_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Control Alert Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_alert_message.fields = function(buffer, offset, packet, parent, size_of_risk_control_alert_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: zchar(4)
  index, mp_sub_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Reserved 4: u32
  index, reserved_4 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_4.dissect(buffer, index, packet, parent)

  -- Clearing Number: zchar(5)
  index, clearing_number = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_number.dissect(buffer, index, packet, parent)

  -- Risk User Crd: u32
  index, risk_user_crd = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_crd.dissect(buffer, index, packet, parent)

  -- Risk User Type: char
  index, risk_user_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_type.dissect(buffer, index, packet, parent)

  -- Risk Control Type: u8
  index, risk_control_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_type.dissect(buffer, index, packet, parent)

  -- Usd Limit: i64
  index, usd_limit = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_limit.dissect(buffer, index, packet, parent)

  -- Time Limit: i32
  index, time_limit = nyse_arcaoptions_binarygateway_pillarstream_v3_27.time_limit.dissect(buffer, index, packet, parent)

  -- Percentage Limit: i32
  index, percentage_limit = nyse_arcaoptions_binarygateway_pillarstream_v3_27.percentage_limit.dissect(buffer, index, packet, parent)

  -- Count Limit: i32
  index, count_limit = nyse_arcaoptions_binarygateway_pillarstream_v3_27.count_limit.dissect(buffer, index, packet, parent)

  -- Breach Action Response: u8
  index, breach_action_response = nyse_arcaoptions_binarygateway_pillarstream_v3_27.breach_action_response.dissect(buffer, index, packet, parent)

  -- Ioc Attribution: u8
  index, ioc_attribution = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ioc_attribution.dissect(buffer, index, packet, parent)

  -- Usd Calculation 1: i64
  index, usd_calculation_1 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_1.dissect(buffer, index, packet, parent)

  -- Usd Calculation 2: i64
  index, usd_calculation_2 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_2.dissect(buffer, index, packet, parent)

  -- Usd Calculation 3: i64
  index, usd_calculation_3 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_3.dissect(buffer, index, packet, parent)

  -- Usd Calculation 4: i64
  index, usd_calculation_4 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_4.dissect(buffer, index, packet, parent)

  -- Count Calculation: u32
  index, count_calculation = nyse_arcaoptions_binarygateway_pillarstream_v3_27.count_calculation.dissect(buffer, index, packet, parent)

  -- Risk Action Type: u8
  index, risk_action_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_type.dissect(buffer, index, packet, parent)

  -- Threshold Breach Level: u8
  index, threshold_breach_level = nyse_arcaoptions_binarygateway_pillarstream_v3_27.threshold_breach_level.dissect(buffer, index, packet, parent)

  -- Blocked By Breach Indicator: u8
  index, blocked_by_breach_indicator = nyse_arcaoptions_binarygateway_pillarstream_v3_27.blocked_by_breach_indicator.dissect(buffer, index, packet, parent)

  -- Blocked By Kill Switch Indicator: u8
  index, blocked_by_kill_switch_indicator = nyse_arcaoptions_binarygateway_pillarstream_v3_27.blocked_by_kill_switch_indicator.dissect(buffer, index, packet, parent)

  -- Reinstatement Required By Self: u8
  index, reinstatement_required_by_self = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reinstatement_required_by_self.dissect(buffer, index, packet, parent)

  -- Reinstatement Required By Other: u8
  index, reinstatement_required_by_other = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reinstatement_required_by_other.dissect(buffer, index, packet, parent)

  -- Reserved 200: zchar(200)
  index, reserved_200 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_200.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Control Alert Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_alert_message.dissect = function(buffer, offset, packet, parent, size_of_risk_control_alert_message)
  local size_of_risk_control_alert_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_alert_message.size(buffer, offset)
  local index = offset + size_of_risk_control_alert_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_control_alert_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_alert_message.fields(buffer, offset, packet, parent, size_of_risk_control_alert_message)
    parent:set_len(size_of_risk_control_alert_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_alert_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_alert_message.fields(buffer, offset, packet, parent, size_of_risk_control_alert_message)

    return index
  end
end

-- Risk Control Acknowledgement Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_acknowledgement_message = {}

-- Read runtime size of: Risk Control Acknowledgement Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_acknowledgement_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Risk Control Acknowledgement Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Control Acknowledgement Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_acknowledgement_message.fields = function(buffer, offset, packet, parent, size_of_risk_control_acknowledgement_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: zchar(4)
  index, mp_sub_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Reserved 4: u32
  index, reserved_4 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_4.dissect(buffer, index, packet, parent)

  -- Clearing Number: zchar(5)
  index, clearing_number = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_number.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Risk Ack Type: u8
  index, risk_ack_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_ack_type.dissect(buffer, index, packet, parent)

  -- Risk User Crd: u32
  index, risk_user_crd = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_crd.dissect(buffer, index, packet, parent)

  -- Risk User Type: char
  index, risk_user_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_type.dissect(buffer, index, packet, parent)

  -- Risk Control Type: u8
  index, risk_control_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_type.dissect(buffer, index, packet, parent)

  -- Risk Control Activation: u8
  index, risk_control_activation = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_activation.dissect(buffer, index, packet, parent)

  -- Risk Action Type: u8
  index, risk_action_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_type.dissect(buffer, index, packet, parent)

  -- Usd Limit: i64
  index, usd_limit = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_limit.dissect(buffer, index, packet, parent)

  -- Time Limit: i32
  index, time_limit = nyse_arcaoptions_binarygateway_pillarstream_v3_27.time_limit.dissect(buffer, index, packet, parent)

  -- Percentage Limit: i32
  index, percentage_limit = nyse_arcaoptions_binarygateway_pillarstream_v3_27.percentage_limit.dissect(buffer, index, packet, parent)

  -- Count Limit: i32
  index, count_limit = nyse_arcaoptions_binarygateway_pillarstream_v3_27.count_limit.dissect(buffer, index, packet, parent)

  -- Breach Action Response: u8
  index, breach_action_response = nyse_arcaoptions_binarygateway_pillarstream_v3_27.breach_action_response.dissect(buffer, index, packet, parent)

  -- Ioc Attribution: u8
  index, ioc_attribution = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ioc_attribution.dissect(buffer, index, packet, parent)

  -- Usd Calculation 1: i64
  index, usd_calculation_1 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_1.dissect(buffer, index, packet, parent)

  -- Usd Calculation 2: i64
  index, usd_calculation_2 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_2.dissect(buffer, index, packet, parent)

  -- Usd Calculation 3: i64
  index, usd_calculation_3 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_3.dissect(buffer, index, packet, parent)

  -- Usd Calculation 4: i64
  index, usd_calculation_4 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_calculation_4.dissect(buffer, index, packet, parent)

  -- Count Calculation: u32
  index, count_calculation = nyse_arcaoptions_binarygateway_pillarstream_v3_27.count_calculation.dissect(buffer, index, packet, parent)

  -- Blocked By Breach Indicator: u8
  index, blocked_by_breach_indicator = nyse_arcaoptions_binarygateway_pillarstream_v3_27.blocked_by_breach_indicator.dissect(buffer, index, packet, parent)

  -- Blocked By Kill Switch Indicator: u8
  index, blocked_by_kill_switch_indicator = nyse_arcaoptions_binarygateway_pillarstream_v3_27.blocked_by_kill_switch_indicator.dissect(buffer, index, packet, parent)

  -- Reinstatement Required By Self: u8
  index, reinstatement_required_by_self = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reinstatement_required_by_self.dissect(buffer, index, packet, parent)

  -- Reinstatement Required By Other: u8
  index, reinstatement_required_by_other = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reinstatement_required_by_other.dissect(buffer, index, packet, parent)

  -- Risk Range Id: u8
  index, risk_range_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_range_id.dissect(buffer, index, packet, parent)

  -- Risk Minimum Value: i64
  index, risk_minimum_value = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_minimum_value.dissect(buffer, index, packet, parent)

  -- Price Scale: u8
  index, price_scale = nyse_arcaoptions_binarygateway_pillarstream_v3_27.price_scale.dissect(buffer, index, packet, parent)

  -- Reserved 190: zchar(190)
  index, reserved_190 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_190.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Control Acknowledgement Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_acknowledgement_message.dissect = function(buffer, offset, packet, parent, size_of_risk_control_acknowledgement_message)
  local size_of_risk_control_acknowledgement_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_acknowledgement_message.size(buffer, offset)
  local index = offset + size_of_risk_control_acknowledgement_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_control_acknowledgement_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_acknowledgement_message.fields(buffer, offset, packet, parent, size_of_risk_control_acknowledgement_message)
    parent:set_len(size_of_risk_control_acknowledgement_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_acknowledgement_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_acknowledgement_message.fields(buffer, offset, packet, parent, size_of_risk_control_acknowledgement_message)

    return index
  end
end

-- Application Layer Reject Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.application_layer_reject_message = {}

-- Read runtime size of: Application Layer Reject Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.application_layer_reject_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Application Layer Reject Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.application_layer_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Layer Reject Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.application_layer_reject_message.fields = function(buffer, offset, packet, parent, size_of_application_layer_reject_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_arcaoptions_binarygateway_pillarstream_v3_27.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reason_code.dissect(buffer, index, packet, parent)

  -- Reject Type: u8
  index, reject_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reject_type.dissect(buffer, index, packet, parent)

  -- User Data: zchar(10)
  index, user_data = nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_data.dissect(buffer, index, packet, parent)

  -- Reserved 4: u32
  index, reserved_4 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Application Layer Reject Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.application_layer_reject_message.dissect = function(buffer, offset, packet, parent, size_of_application_layer_reject_message)
  local size_of_application_layer_reject_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.application_layer_reject_message.size(buffer, offset)
  local index = offset + size_of_application_layer_reject_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.application_layer_reject_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.application_layer_reject_message.fields(buffer, offset, packet, parent, size_of_application_layer_reject_message)
    parent:set_len(size_of_application_layer_reject_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.application_layer_reject_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.application_layer_reject_message.fields(buffer, offset, packet, parent, size_of_application_layer_reject_message)

    return index
  end
end

-- Stream Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_id = {}

-- Size: Stream Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_id.size =
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.sess.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.value.size

-- Display: Stream Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sess: 4 Byte Unsigned Fixed Width Integer
  index, sess = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sess.dissect(buffer, index, packet, parent)

  -- Value: 4 Byte Unsigned Fixed Width Integer
  index, value = nyse_arcaoptions_binarygateway_pillarstream_v3_27.value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_id.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.stream_id, buffer(offset, 0))
    local index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_id.fields(buffer, offset, packet, parent)
  end
end

-- Ref Seq Msg Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ref_seq_msg_id = {}

-- Size: Ref Seq Msg Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ref_seq_msg_id.size =
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_id.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq.size

-- Display: Ref Seq Msg Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ref_seq_msg_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ref Seq Msg Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ref_seq_msg_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_id.dissect(buffer, index, packet, parent)

  -- Seq: 8 Byte Unsigned Fixed Width Integer
  index, seq = nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ref Seq Msg Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.ref_seq_msg_id.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.ref_seq_msg_id, buffer(offset, 0))
    local index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ref_seq_msg_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ref_seq_msg_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.ref_seq_msg_id.fields(buffer, offset, packet, parent)
  end
end

-- Trade Bust Correct Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.trade_bust_correct_message = {}

-- Read runtime size of: Trade Bust Correct Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.trade_bust_correct_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Trade Bust Correct Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.trade_bust_correct_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Correct Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.trade_bust_correct_message.fields = function(buffer, offset, packet, parent, size_of_trade_bust_correct_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_arcaoptions_binarygateway_pillarstream_v3_27.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Order Id: u64
  index, order_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Ref Seq Msg Id: Struct of 2 fields
  index, ref_seq_msg_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ref_seq_msg_id.dissect(buffer, index, packet, parent)

  -- Deal Id: u64
  index, deal_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.deal_id.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = nyse_arcaoptions_binarygateway_pillarstream_v3_27.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: u32
  index, last_qty = nyse_arcaoptions_binarygateway_pillarstream_v3_27.last_qty.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reason_code.dissect(buffer, index, packet, parent)

  -- User Data: zchar(10)
  index, user_data = nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_data.dissect(buffer, index, packet, parent)

  -- Bust Correct Indicator: u8
  index, bust_correct_indicator = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bust_correct_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Correct Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.trade_bust_correct_message.dissect = function(buffer, offset, packet, parent, size_of_trade_bust_correct_message)
  local size_of_trade_bust_correct_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.trade_bust_correct_message.size(buffer, offset)
  local index = offset + size_of_trade_bust_correct_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.trade_bust_correct_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.trade_bust_correct_message.fields(buffer, offset, packet, parent, size_of_trade_bust_correct_message)
    parent:set_len(size_of_trade_bust_correct_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.trade_bust_correct_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.trade_bust_correct_message.fields(buffer, offset, packet, parent, size_of_trade_bust_correct_message)

    return index
  end
end

-- Sub Msg Header
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_header = {}

-- Size: Sub Msg Header
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_header.size =
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_type.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_length.size

-- Display: Sub Msg Header
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sub Msg Header
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Msg Type: 2 Byte Unsigned Fixed Width Integer
  index, sub_msg_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_type.dissect(buffer, index, packet, parent)

  -- Sub Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, sub_msg_length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sub Msg Header
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.sub_msg_header, buffer(offset, 0))
    local index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Optional Order Add On
nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_order_add_on = {}

-- Size: Optional Order Add On
nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_order_add_on.size =
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_header.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.stop_px.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_floor.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.deliver_to_comp_id.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account.size

-- Display: Optional Order Add On
nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_order_add_on.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Optional Order Add On
nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_order_add_on.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Msg Header: Struct of 2 fields
  index, sub_msg_header = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_header.dissect(buffer, index, packet, parent)

  -- Stop Px: Price
  index, stop_px = nyse_arcaoptions_binarygateway_pillarstream_v3_27.stop_px.dissect(buffer, index, packet, parent)

  -- Max Floor: u32
  index, max_floor = nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_floor.dissect(buffer, index, packet, parent)

  -- Deliver To Comp Id: zchar(5)
  index, deliver_to_comp_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.deliver_to_comp_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: zchar(5)
  index, clearing_firm = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm.dissect(buffer, index, packet, parent)

  -- Optional Data: zchar(16)
  index, optional_data = nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data.dissect(buffer, index, packet, parent)

  -- Clearing Account: zchar(5)
  index, clearing_account = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Optional Order Add On
nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_order_add_on.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.optional_order_add_on, buffer(offset, 0))
    local index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_order_add_on.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_order_add_on.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_order_add_on.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.execution_report_message = {}

-- Read runtime size of: Execution Report Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.execution_report_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Execution Report Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.execution_report_message.fields = function(buffer, offset, packet, parent, size_of_execution_report_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_arcaoptions_binarygateway_pillarstream_v3_27.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Order Id: u64
  index, order_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Deal Id: u64
  index, deal_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.deal_id.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = nyse_arcaoptions_binarygateway_pillarstream_v3_27.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: u32
  index, leaves_qty = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: u32
  index, cum_qty = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cum_qty.dissect(buffer, index, packet, parent)

  -- Last Qty: u32
  index, last_qty = nyse_arcaoptions_binarygateway_pillarstream_v3_27.last_qty.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: zchar(4)
  index, liquidity_indicator = nyse_arcaoptions_binarygateway_pillarstream_v3_27.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Multileg Reporting Type: u8
  index, multileg_reporting_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.multileg_reporting_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: u8
  index, reserved_1 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: u16
  index, reserved_2 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_2.dissect(buffer, index, packet, parent)

  -- Locate Reqd: u8
  index, locate_reqd = nyse_arcaoptions_binarygateway_pillarstream_v3_27.locate_reqd.dissect(buffer, index, packet, parent)

  -- Participant Type: u8
  index, participant_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.participant_type.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reason_code.dissect(buffer, index, packet, parent)

  -- User Data: zchar(10)
  index, user_data = nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_data.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = nyse_arcaoptions_binarygateway_pillarstream_v3_27.side.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.dissect(buffer, index, packet, parent)

  -- Contra Market Maker: zchar(10)
  index, contra_market_maker = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_market_maker.dissect(buffer, index, packet, parent)

  -- Contra Clearing Firm: zchar(5)
  index, contra_clearing_firm = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_clearing_firm.dissect(buffer, index, packet, parent)

  -- Contra Mpid: zchar(4)
  index, contra_mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_mpid.dissect(buffer, index, packet, parent)

  -- Contra Open Close: u8
  index, contra_open_close = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_open_close.dissect(buffer, index, packet, parent)

  -- Contra Customer Or Firm: u8
  index, contra_customer_or_firm = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_customer_or_firm.dissect(buffer, index, packet, parent)

  -- Contra Clearing Account: zchar(5)
  index, contra_clearing_account = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_clearing_account.dissect(buffer, index, packet, parent)

  -- Contra Cross Type: u16
  index, contra_cross_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_cross_type.dissect(buffer, index, packet, parent)

  -- Contra Covered Or Uncovered: u8
  index, contra_covered_or_uncovered = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contra_covered_or_uncovered.dissect(buffer, index, packet, parent)

  -- Covered Or Uncovered: u8
  index, covered_or_uncovered = nyse_arcaoptions_binarygateway_pillarstream_v3_27.covered_or_uncovered.dissect(buffer, index, packet, parent)

  -- Cross Id: u64
  index, cross_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cross_id.dissect(buffer, index, packet, parent)

  -- Open Close: u8
  index, open_close = nyse_arcaoptions_binarygateway_pillarstream_v3_27.open_close.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  -- Runtime optional field: Optional Order Add On
  local optional_order_add_on = nil

  local optional_order_add_on_exists = seq_msg_length ~= 100

  if optional_order_add_on_exists then
    index, optional_order_add_on = nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_order_add_on.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Execution Report Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.execution_report_message.dissect = function(buffer, offset, packet, parent, size_of_execution_report_message)
  local size_of_execution_report_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.execution_report_message.size(buffer, offset)
  local index = offset + size_of_execution_report_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.execution_report_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.execution_report_message.fields(buffer, offset, packet, parent, size_of_execution_report_message)
    parent:set_len(size_of_execution_report_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.execution_report_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.execution_report_message.fields(buffer, offset, packet, parent, size_of_execution_report_message)

    return index
  end
end

-- Order Priority Update Acknowledgment Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_priority_update_acknowledgment_message = {}

-- Read runtime size of: Order Priority Update Acknowledgment Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_priority_update_acknowledgment_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Order Priority Update Acknowledgment Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_priority_update_acknowledgment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Priority Update Acknowledgment Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_priority_update_acknowledgment_message.fields = function(buffer, offset, packet, parent, size_of_order_priority_update_acknowledgment_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_arcaoptions_binarygateway_pillarstream_v3_27.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Order Id: u64
  index, order_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Working Price: Price
  index, working_price = nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_price.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_qty.dissect(buffer, index, packet, parent)

  -- Working Away From Display: u8
  index, working_away_from_display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_away_from_display.dissect(buffer, index, packet, parent)

  -- Pre Liquidity Indicator: zchar(4)
  index, pre_liquidity_indicator = nyse_arcaoptions_binarygateway_pillarstream_v3_27.pre_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Ack Type: u8
  index, ack_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_type.dissect(buffer, index, packet, parent)

  -- User Data: zchar(10)
  index, user_data = nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Priority Update Acknowledgment Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_priority_update_acknowledgment_message.dissect = function(buffer, offset, packet, parent, size_of_order_priority_update_acknowledgment_message)
  local size_of_order_priority_update_acknowledgment_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_priority_update_acknowledgment_message.size(buffer, offset)
  local index = offset + size_of_order_priority_update_acknowledgment_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.order_priority_update_acknowledgment_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_priority_update_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_order_priority_update_acknowledgment_message)
    parent:set_len(size_of_order_priority_update_acknowledgment_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_priority_update_acknowledgment_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_priority_update_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_order_priority_update_acknowledgment_message)

    return index
  end
end

-- Bitfield Flow Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_flow_indicator = {}

-- Size: Bitfield Flow Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_flow_indicator.size = 1

-- Display: Bitfield Flow Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_flow_indicator.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Throttled flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Throttled"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Bitfield Flow Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_flow_indicator.bits = function(range, value, packet, parent)

  -- Throttled: 1 Bit Enum with 2 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.throttled, range, value)

  -- Unused 7: 7 Bit
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.unused_7, range, value)
end

-- Dissect: Bitfield Flow Indicator
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_flow_indicator.dissect = function(buffer, offset, packet, parent)
  local size = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_flow_indicator.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_flow_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.bitfield_flow_indicator, range, display)

  if show.structs then
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_flow_indicator.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Single Complex Modify Cancel Request Acknowledgment And Urout Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message = {}

-- Read runtime size of: Order Single Complex Modify Cancel Request Acknowledgment And Urout Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Order Single Complex Modify Cancel Request Acknowledgment And Urout Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Single Complex Modify Cancel Request Acknowledgment And Urout Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message.fields = function(buffer, offset, packet, parent, size_of_order_single_complex_modify_cancel_request_acknowledgment_and_urout_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_arcaoptions_binarygateway_pillarstream_v3_27.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Order Id: u64
  index, order_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_id.dissect(buffer, index, packet, parent)

  -- Ref Cl Ord Id: u64
  index, ref_cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ref_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: u64
  index, orig_cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nyse_arcaoptions_binarygateway_pillarstream_v3_27.price.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: u32
  index, leaves_qty = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leaves_qty.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = nyse_arcaoptions_binarygateway_pillarstream_v3_27.side.dissect(buffer, index, packet, parent)

  -- Locate Reqd: u8
  index, locate_reqd = nyse_arcaoptions_binarygateway_pillarstream_v3_27.locate_reqd.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reason_code.dissect(buffer, index, packet, parent)

  -- Ack Type: u8
  index, ack_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_type.dissect(buffer, index, packet, parent)

  -- Bitfield Flow Indicator: Struct of 2 fields
  index, bitfield_flow_indicator = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_flow_indicator.dissect(buffer, index, packet, parent)

  -- User Data: zchar(10)
  index, user_data = nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_data.dissect(buffer, index, packet, parent)

  -- Group Id: u32
  index, group_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.group_id.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.dissect(buffer, index, packet, parent)

  -- Target Cancel Username: char(16)
  index, target_cancel_username = nyse_arcaoptions_binarygateway_pillarstream_v3_27.target_cancel_username.dissect(buffer, index, packet, parent)

  -- Target Cancel Mpid: zchar(4)
  index, target_cancel_mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.target_cancel_mpid.dissect(buffer, index, packet, parent)

  -- Bulk Action: u8
  index, bulk_action = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_action.dissect(buffer, index, packet, parent)

  -- Cancel Scope: u8
  index, cancel_scope = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cancel_scope.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Single Complex Modify Cancel Request Acknowledgment And Urout Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message.dissect = function(buffer, offset, packet, parent, size_of_order_single_complex_modify_cancel_request_acknowledgment_and_urout_message)
  local size_of_order_single_complex_modify_cancel_request_acknowledgment_and_urout_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message.size(buffer, offset)
  local index = offset + size_of_order_single_complex_modify_cancel_request_acknowledgment_and_urout_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message.fields(buffer, offset, packet, parent, size_of_order_single_complex_modify_cancel_request_acknowledgment_and_urout_message)
    parent:set_len(size_of_order_single_complex_modify_cancel_request_acknowledgment_and_urout_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message.fields(buffer, offset, packet, parent, size_of_order_single_complex_modify_cancel_request_acknowledgment_and_urout_message)

    return index
  end
end

-- Quote Ack With Id Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_ack_with_id_group = {}

-- Size: Quote Ack With Id Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_ack_with_id_group.size =
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_index.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.side.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_type.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.price.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.quantity.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.reason_code.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_away_from_display.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_id.size

-- Display: Quote Ack With Id Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_ack_with_id_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Ack With Id Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_ack_with_id_group.fields = function(buffer, offset, packet, parent, quote_ack_with_id_group_index)
  local index = offset

  -- Implicit Quote Ack With Id Group Index
  if quote_ack_with_id_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.quote_ack_with_id_group_index, quote_ack_with_id_group_index)
    iteration:set_generated()
  end

  -- Series Index: u32
  index, series_index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_index.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = nyse_arcaoptions_binarygateway_pillarstream_v3_27.side.dissect(buffer, index, packet, parent)

  -- Ack Type: u8
  index, ack_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_type.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nyse_arcaoptions_binarygateway_pillarstream_v3_27.price.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = nyse_arcaoptions_binarygateway_pillarstream_v3_27.quantity.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reason_code.dissect(buffer, index, packet, parent)

  -- Working Away From Display: u8
  index, working_away_from_display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_away_from_display.dissect(buffer, index, packet, parent)

  -- Order Id: u64
  index, order_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Ack With Id Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_ack_with_id_group.dissect = function(buffer, offset, packet, parent, quote_ack_with_id_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.quote_ack_with_id_group, buffer(offset, 0))
    local index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_ack_with_id_group.fields(buffer, offset, packet, parent, quote_ack_with_id_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_ack_with_id_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_ack_with_id_group.fields(buffer, offset, packet, parent, quote_ack_with_id_group_index)
  end
end

-- Bulk Quote Acknowledgment With Details Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_quote_acknowledgment_with_details_message = {}

-- Read runtime size of: Bulk Quote Acknowledgment With Details Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_quote_acknowledgment_with_details_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Bulk Quote Acknowledgment With Details Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_quote_acknowledgment_with_details_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Acknowledgment With Details Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_quote_acknowledgment_with_details_message.fields = function(buffer, offset, packet, parent, size_of_bulk_quote_acknowledgment_with_details_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_arcaoptions_binarygateway_pillarstream_v3_27.transact_time.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.dissect(buffer, index, packet, parent)

  -- Sub Id: zchar(4)
  index, sub_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Bitfield Flow Indicator: Struct of 2 fields
  index, bitfield_flow_indicator = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_flow_indicator.dissect(buffer, index, packet, parent)

  -- Self Trade Type: u8
  index, self_trade_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_type.dissect(buffer, index, packet, parent)

  -- Group Id: u32
  index, group_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.group_id.dissect(buffer, index, packet, parent)

  -- Repeating Groups: u8
  index, repeating_groups = nyse_arcaoptions_binarygateway_pillarstream_v3_27.repeating_groups.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Ack With Id Group
  for quote_ack_with_id_group_index = 1, repeating_groups do
    index, quote_ack_with_id_group = nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_ack_with_id_group.dissect(buffer, index, packet, parent, quote_ack_with_id_group_index)
  end

  return index
end

-- Dissect: Bulk Quote Acknowledgment With Details Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_quote_acknowledgment_with_details_message.dissect = function(buffer, offset, packet, parent, size_of_bulk_quote_acknowledgment_with_details_message)
  local size_of_bulk_quote_acknowledgment_with_details_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_quote_acknowledgment_with_details_message.size(buffer, offset)
  local index = offset + size_of_bulk_quote_acknowledgment_with_details_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.bulk_quote_acknowledgment_with_details_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_quote_acknowledgment_with_details_message.fields(buffer, offset, packet, parent, size_of_bulk_quote_acknowledgment_with_details_message)
    parent:set_len(size_of_bulk_quote_acknowledgment_with_details_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_quote_acknowledgment_with_details_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_quote_acknowledgment_with_details_message.fields(buffer, offset, packet, parent, size_of_bulk_quote_acknowledgment_with_details_message)

    return index
  end
end

-- Quote Ack Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_ack_group = {}

-- Size: Quote Ack Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_ack_group.size =
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_index.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.side.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_type.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.price.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.quantity.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.reason_code.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_away_from_display.size

-- Display: Quote Ack Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_ack_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Ack Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_ack_group.fields = function(buffer, offset, packet, parent, quote_ack_group_index)
  local index = offset

  -- Implicit Quote Ack Group Index
  if quote_ack_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.quote_ack_group_index, quote_ack_group_index)
    iteration:set_generated()
  end

  -- Series Index: u32
  index, series_index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_index.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = nyse_arcaoptions_binarygateway_pillarstream_v3_27.side.dissect(buffer, index, packet, parent)

  -- Ack Type: u8
  index, ack_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_type.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nyse_arcaoptions_binarygateway_pillarstream_v3_27.price.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = nyse_arcaoptions_binarygateway_pillarstream_v3_27.quantity.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reason_code.dissect(buffer, index, packet, parent)

  -- Working Away From Display: u8
  index, working_away_from_display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_away_from_display.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Ack Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_ack_group.dissect = function(buffer, offset, packet, parent, quote_ack_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.quote_ack_group, buffer(offset, 0))
    local index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_ack_group.fields(buffer, offset, packet, parent, quote_ack_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_ack_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_ack_group.fields(buffer, offset, packet, parent, quote_ack_group_index)
  end
end

-- Bulk Quote Acknowledgment Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_quote_acknowledgment_message = {}

-- Read runtime size of: Bulk Quote Acknowledgment Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_quote_acknowledgment_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Bulk Quote Acknowledgment Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_quote_acknowledgment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Acknowledgment Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_quote_acknowledgment_message.fields = function(buffer, offset, packet, parent, size_of_bulk_quote_acknowledgment_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_arcaoptions_binarygateway_pillarstream_v3_27.transact_time.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.dissect(buffer, index, packet, parent)

  -- Sub Id: zchar(4)
  index, sub_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Bitfield Flow Indicator: Struct of 2 fields
  index, bitfield_flow_indicator = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_flow_indicator.dissect(buffer, index, packet, parent)

  -- Self Trade Type: u8
  index, self_trade_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_type.dissect(buffer, index, packet, parent)

  -- Group Id: u32
  index, group_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.group_id.dissect(buffer, index, packet, parent)

  -- Repeating Groups: u8
  index, repeating_groups = nyse_arcaoptions_binarygateway_pillarstream_v3_27.repeating_groups.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Ack Group
  for quote_ack_group_index = 1, repeating_groups do
    index, quote_ack_group = nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_ack_group.dissect(buffer, index, packet, parent, quote_ack_group_index)
  end

  return index
end

-- Dissect: Bulk Quote Acknowledgment Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_quote_acknowledgment_message.dissect = function(buffer, offset, packet, parent, size_of_bulk_quote_acknowledgment_message)
  local size_of_bulk_quote_acknowledgment_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_quote_acknowledgment_message.size(buffer, offset)
  local index = offset + size_of_bulk_quote_acknowledgment_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.bulk_quote_acknowledgment_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_quote_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_bulk_quote_acknowledgment_message)
    parent:set_len(size_of_bulk_quote_acknowledgment_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_quote_acknowledgment_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_quote_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_bulk_quote_acknowledgment_message)

    return index
  end
end

-- Bitfield Order Instructions
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_order_instructions = {}

-- Size: Bitfield Order Instructions
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_order_instructions.size = 16

-- Display: Bitfield Order Instructions
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_order_instructions.display = function(range, value, packet, parent)
  local flags = {}

  -- Security Type: 5 Bits
  flags[#flags + 1] = "Security Type: "..value:band(0x00000000000000000000007C00000000):rshift(34)
  -- Customer Or Firm: 5 Bits
  flags[#flags + 1] = "Customer Or Firm: "..value:band(0x000000000000000000000F8000000000):rshift(39)
  -- Open Close Bits: 2 Bits
  flags[#flags + 1] = "Open Close Bits: "..value:band(0x00000000000000000000300000000000):rshift(44)
  -- Sub Id Indicator: 5 Bits
  flags[#flags + 1] = "Sub Id Indicator: "..value:band(0x00000000000000000007C00000000000):rshift(46)
  -- Special Ord Type: 5 Bits
  flags[#flags + 1] = "Special Ord Type: "..value:band(0x000000000000000000F8000000000000):rshift(51)
  -- Locate Reqd Bits: 2 Bits
  flags[#flags + 1] = "Locate Reqd Bits: "..value:band(0x00000000000000000300000000000000):rshift(56)
  -- Retail Indicator: 5 Bits
  flags[#flags + 1] = "Retail Indicator: "..value:band(0x00000000000000007C00000000000000):rshift(58)
  -- Attributed Quote: 5 Bits
  flags[#flags + 1] = "Attributed Quote: "..value:band(UInt64(0x00000000, 0x80000000)):rshift(63)
  -- Order Capacity: 5 Bits
  flags[#flags + 1] = "Order Capacity: "..value:band(0x000000000000000000000000000001F0):rshift(68)
  -- Interest Type: 5 Bits
  flags[#flags + 1] = "Interest Type: "..value:band(0x00000000000000000000000000003E00):rshift(73)
  -- Trading Session Id: 5 Bits
  flags[#flags + 1] = "Trading Session Id: "..value:band(0x0000000000000000000000000007C000):rshift(78)
  -- Time In Force: 5 Bits
  flags[#flags + 1] = "Time In Force: "..value:band(0x00000000000000000000000000F80000):rshift(83)
  -- Proactive If Locked: 5 Bits
  flags[#flags + 1] = "Proactive If Locked: "..value:band(0x0000000000000000000000001F000000):rshift(88)
  -- Self Trade Type Bits: 5 Bits
  flags[#flags + 1] = "Self Trade Type Bits: "..value:band(0x000000000000000000000003E0000000):rshift(93)
  -- Cancel Instead Of Reprice: 5 Bits
  flags[#flags + 1] = "Cancel Instead Of Reprice: "..value:band(0x00000000000000000000007C00000000):rshift(98)
  -- Routing Inst: 5 Bits
  flags[#flags + 1] = "Routing Inst: "..value:band(0x000000000000000000000F8000000000):rshift(103)
  -- Extended Exec Inst: 5 Bits
  flags[#flags + 1] = "Extended Exec Inst: "..value:band(0x00000000000000000001F00000000000):rshift(108)
  -- Exec Inst: 5 Bits
  flags[#flags + 1] = "Exec Inst: "..value:band(0x0000000000000000003E000000000000):rshift(113)
  -- Ord Type: 5 Bits
  flags[#flags + 1] = "Ord Type: "..value:band(0x000000000000000007C0000000000000):rshift(118)
  -- Side Bits: 5 Bits
  flags[#flags + 1] = "Side Bits: "..value:band(UInt64(0x00000000, 0xF8000000)):rshift(123)

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Bitfield Order Instructions
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_order_instructions.bits = function(range, value, packet, parent)

  -- Unused 34: 34 Bit
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.unused_34, range, value)

  -- Security Type: 5 Bit Unsigned Fixed Width Integer Enum with 3 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.security_type, range, value)

  -- Customer Or Firm: 5 Bit Unsigned Fixed Width Integer Enum with 7 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.customer_or_firm, range, value)

  -- Open Close Bits: 2 Bit Unsigned Fixed Width Integer Enum with 3 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.open_close_bits, range, value)

  -- Sub Id Indicator: 5 Bit Unsigned Fixed Width Integer Enum with 2 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.sub_id_indicator, range, value)

  -- Special Ord Type: 5 Bit Unsigned Fixed Width Integer Enum with 3 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.special_ord_type, range, value)

  -- Locate Reqd Bits: 2 Bit Unsigned Fixed Width Integer Enum with 1 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.locate_reqd_bits, range, value)

  -- Retail Indicator: 5 Bit Unsigned Fixed Width Integer Enum with 1 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.retail_indicator, range, value)

  -- Attributed Quote: 5 Bit Unsigned Fixed Width Integer Enum with 1 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.attributed_quote, range, value)

  -- Order Capacity: 5 Bit Unsigned Fixed Width Integer Enum with 1 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.order_capacity, range, value)

  -- Interest Type: 5 Bit Unsigned Fixed Width Integer Enum with 1 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.interest_type, range, value)

  -- Trading Session Id: 5 Bit Unsigned Fixed Width Integer Enum with 1 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.trading_session_id, range, value)

  -- Time In Force: 5 Bit Unsigned Fixed Width Integer Enum with 5 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.time_in_force, range, value)

  -- Proactive If Locked: 5 Bit Unsigned Fixed Width Integer Enum with 2 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.proactive_if_locked, range, value)

  -- Self Trade Type Bits: 5 Bit Unsigned Fixed Width Integer Enum with 5 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.self_trade_type_bits, range, value)

  -- Cancel Instead Of Reprice: 5 Bit Unsigned Fixed Width Integer Enum with 3 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.cancel_instead_of_reprice, range, value)

  -- Routing Inst: 5 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.routing_inst, range, value)

  -- Extended Exec Inst: 5 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.extended_exec_inst, range, value)

  -- Exec Inst: 5 Bit Unsigned Fixed Width Integer Enum with 2 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.exec_inst, range, value)

  -- Ord Type: 5 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.ord_type, range, value)

  -- Side Bits: 5 Bit Unsigned Fixed Width Integer Enum with 2 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.side_bits, range, value)
end

-- Dissect: Bitfield Order Instructions
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_order_instructions.dissect = function(buffer, offset, packet, parent)
  local size = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_order_instructions.size
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_order_instructions.display(range, value, packet, parent)
  local element = parent:add_le(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.bitfield_order_instructions, range, display)

  if show.structs then
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_order_instructions.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order And Cancel Replace Acknowledgement Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_and_cancel_replace_acknowledgement_message = {}

-- Read runtime size of: Order And Cancel Replace Acknowledgement Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_and_cancel_replace_acknowledgement_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Order And Cancel Replace Acknowledgement Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_and_cancel_replace_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order And Cancel Replace Acknowledgement Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_and_cancel_replace_acknowledgement_message.fields = function(buffer, offset, packet, parent, size_of_order_and_cancel_replace_acknowledgement_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: zchar(4)
  index, mp_sub_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: u64
  index, orig_cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Bitfield Order Instructions: Struct of 21 fields
  index, bitfield_order_instructions = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_order_instructions.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nyse_arcaoptions_binarygateway_pillarstream_v3_27.price.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: u32
  index, min_qty = nyse_arcaoptions_binarygateway_pillarstream_v3_27.min_qty.dissect(buffer, index, packet, parent)

  -- User Data: zchar(10)
  index, user_data = nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_data.dissect(buffer, index, packet, parent)

  -- Transact Time: Timestamp
  index, transact_time = nyse_arcaoptions_binarygateway_pillarstream_v3_27.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: u64
  index, order_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: u32
  index, leaves_qty = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leaves_qty.dissect(buffer, index, packet, parent)

  -- Working Price: Price
  index, working_price = nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_price.dissect(buffer, index, packet, parent)

  -- Working Away From Display: u8
  index, working_away_from_display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.working_away_from_display.dissect(buffer, index, packet, parent)

  -- Pre Liquidity Indicator: zchar(4)
  index, pre_liquidity_indicator = nyse_arcaoptions_binarygateway_pillarstream_v3_27.pre_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Reason Code: u16
  index, reason_code = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reason_code.dissect(buffer, index, packet, parent)

  -- Ack Type: u8
  index, ack_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_type.dissect(buffer, index, packet, parent)

  -- Bitfield Flow Indicator: Struct of 2 fields
  index, bitfield_flow_indicator = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_flow_indicator.dissect(buffer, index, packet, parent)

  -- Leg Open Close: u64
  index, leg_open_close = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_open_close.dissect(buffer, index, packet, parent)

  -- Auction Id: u64
  index, auction_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.auction_id.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  -- Runtime optional field: Optional Order Add On
  local optional_order_add_on = nil

  local optional_order_add_on_exists = seq_msg_length ~= 100

  if optional_order_add_on_exists then
    index, optional_order_add_on = nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_order_add_on.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order And Cancel Replace Acknowledgement Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_and_cancel_replace_acknowledgement_message.dissect = function(buffer, offset, packet, parent, size_of_order_and_cancel_replace_acknowledgement_message)
  local size_of_order_and_cancel_replace_acknowledgement_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_and_cancel_replace_acknowledgement_message.size(buffer, offset)
  local index = offset + size_of_order_and_cancel_replace_acknowledgement_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.order_and_cancel_replace_acknowledgement_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_and_cancel_replace_acknowledgement_message.fields(buffer, offset, packet, parent, size_of_order_and_cancel_replace_acknowledgement_message)
    parent:set_len(size_of_order_and_cancel_replace_acknowledgement_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_and_cancel_replace_acknowledgement_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_and_cancel_replace_acknowledgement_message.fields(buffer, offset, packet, parent, size_of_order_and_cancel_replace_acknowledgement_message)

    return index
  end
end

-- Session Configuration Acknowledgement Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.session_configuration_acknowledgement_message = {}

-- Read runtime size of: Session Configuration Acknowledgement Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.session_configuration_acknowledgement_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Session Configuration Acknowledgement Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.session_configuration_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Configuration Acknowledgement Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.session_configuration_acknowledgement_message.fields = function(buffer, offset, packet, parent, size_of_session_configuration_acknowledgement_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_arcaoptions_binarygateway_pillarstream_v3_27.transact_time.dissect(buffer, index, packet, parent)

  -- User Session Type: u8
  index, user_session_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_session_type.dissect(buffer, index, packet, parent)

  -- User Session Status: u8
  index, user_session_status = nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_session_status.dissect(buffer, index, packet, parent)

  -- Username: char(16)
  index, username = nyse_arcaoptions_binarygateway_pillarstream_v3_27.username.dissect(buffer, index, packet, parent)

  -- Mic: char(4)
  index, mic = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mic.dissect(buffer, index, packet, parent)

  -- Cancel On Disconnect: u8
  index, cancel_on_disconnect = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cancel_on_disconnect.dissect(buffer, index, packet, parent)

  -- Throttle Preference: u8
  index, throttle_preference = nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_preference.dissect(buffer, index, packet, parent)

  -- Throttle Window: u16
  index, throttle_window = nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_window.dissect(buffer, index, packet, parent)

  -- Throttle Threshold: u16
  index, throttle_threshold = nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_threshold.dissect(buffer, index, packet, parent)

  -- Symbol Eligibility: u8
  index, symbol_eligibility = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_eligibility.dissect(buffer, index, packet, parent)

  -- Max Order Quantity: u32
  index, max_order_quantity = nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_order_quantity.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention: u8
  index, self_trade_prevention = nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_prevention.dissect(buffer, index, packet, parent)

  -- Order Priority Update Ack Subscription: u8
  index, order_priority_update_ack_subscription = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_priority_update_ack_subscription.dissect(buffer, index, packet, parent)

  -- Ack Status: u8
  index, ack_status = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ack_status.dissect(buffer, index, packet, parent)

  -- Bold Designation: u8
  index, bold_designation = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bold_designation.dissect(buffer, index, packet, parent)

  -- Reserved 49: zchar(49)
  index, reserved_49 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_49.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Configuration Acknowledgement Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.session_configuration_acknowledgement_message.dissect = function(buffer, offset, packet, parent, size_of_session_configuration_acknowledgement_message)
  local size_of_session_configuration_acknowledgement_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.session_configuration_acknowledgement_message.size(buffer, offset)
  local index = offset + size_of_session_configuration_acknowledgement_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.session_configuration_acknowledgement_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.session_configuration_acknowledgement_message.fields(buffer, offset, packet, parent, size_of_session_configuration_acknowledgement_message)
    parent:set_len(size_of_session_configuration_acknowledgement_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.session_configuration_acknowledgement_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.session_configuration_acknowledgement_message.fields(buffer, offset, packet, parent, size_of_session_configuration_acknowledgement_message)

    return index
  end
end

-- Options Market Maker Symbol Appointment Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.options_market_maker_symbol_appointment_reference_data_message = {}

-- Read runtime size of: Options Market Maker Symbol Appointment Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.options_market_maker_symbol_appointment_reference_data_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Options Market Maker Symbol Appointment Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.options_market_maker_symbol_appointment_reference_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Market Maker Symbol Appointment Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.options_market_maker_symbol_appointment_reference_data_message.fields = function(buffer, offset, packet, parent, size_of_options_market_maker_symbol_appointment_reference_data_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_arcaoptions_binarygateway_pillarstream_v3_27.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Nyse Symbol: char(24)
  index, nyse_symbol = nyse_arcaoptions_binarygateway_pillarstream_v3_27.nyse_symbol.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Mm Type: u8
  index, mm_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mm_type.dissect(buffer, index, packet, parent)

  -- Appointment Status: u8
  index, appointment_status = nyse_arcaoptions_binarygateway_pillarstream_v3_27.appointment_status.dissect(buffer, index, packet, parent)

  -- Reserved 50: char(50)
  index, reserved_50 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_50.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Market Maker Symbol Appointment Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.options_market_maker_symbol_appointment_reference_data_message.dissect = function(buffer, offset, packet, parent, size_of_options_market_maker_symbol_appointment_reference_data_message)
  local size_of_options_market_maker_symbol_appointment_reference_data_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.options_market_maker_symbol_appointment_reference_data_message.size(buffer, offset)
  local index = offset + size_of_options_market_maker_symbol_appointment_reference_data_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.options_market_maker_symbol_appointment_reference_data_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.options_market_maker_symbol_appointment_reference_data_message.fields(buffer, offset, packet, parent, size_of_options_market_maker_symbol_appointment_reference_data_message)
    parent:set_len(size_of_options_market_maker_symbol_appointment_reference_data_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.options_market_maker_symbol_appointment_reference_data_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.options_market_maker_symbol_appointment_reference_data_message.fields(buffer, offset, packet, parent, size_of_options_market_maker_symbol_appointment_reference_data_message)

    return index
  end
end

-- Mpid Configuration Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid_configuration_message = {}

-- Read runtime size of: Mpid Configuration Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid_configuration_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Mpid Configuration Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid_configuration_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mpid Configuration Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid_configuration_message.fields = function(buffer, offset, packet, parent, size_of_mpid_configuration_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_arcaoptions_binarygateway_pillarstream_v3_27.transact_time.dissect(buffer, index, packet, parent)

  -- Mpid Status: u8
  index, mpid_status = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid_status.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Username: char(16)
  index, username = nyse_arcaoptions_binarygateway_pillarstream_v3_27.username.dissect(buffer, index, packet, parent)

  -- Reserved 50: char(50)
  index, reserved_50 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_50.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mpid Configuration Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid_configuration_message.dissect = function(buffer, offset, packet, parent, size_of_mpid_configuration_message)
  local size_of_mpid_configuration_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid_configuration_message.size(buffer, offset)
  local index = offset + size_of_mpid_configuration_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mpid_configuration_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid_configuration_message.fields(buffer, offset, packet, parent, size_of_mpid_configuration_message)
    parent:set_len(size_of_mpid_configuration_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid_configuration_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid_configuration_message.fields(buffer, offset, packet, parent, size_of_mpid_configuration_message)

    return index
  end
end

-- Mpv Level Definition
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_level_definition = {}

-- Size: Mpv Level Definition
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_level_definition.size =
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_level_name.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_entry_limit_price.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.quoting_mpv.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.trading_mpv.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_class_id.size

-- Display: Mpv Level Definition
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_level_definition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mpv Level Definition
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_level_definition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mpv Level Name: char(24)
  index, mpv_level_name = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_level_name.dissect(buffer, index, packet, parent)

  -- Order Entry Limit Price: uPrice
  index, order_entry_limit_price = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_entry_limit_price.dissect(buffer, index, packet, parent)

  -- Quoting Mpv: uPrice
  index, quoting_mpv = nyse_arcaoptions_binarygateway_pillarstream_v3_27.quoting_mpv.dissect(buffer, index, packet, parent)

  -- Trading Mpv: uPrice
  index, trading_mpv = nyse_arcaoptions_binarygateway_pillarstream_v3_27.trading_mpv.dissect(buffer, index, packet, parent)

  -- Mpv Class Id: u16
  index, mpv_class_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_class_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mpv Level Definition
nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_level_definition.dissect = function(buffer, offset, packet, parent)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mpv_level_definition, buffer(offset, 0))
    local index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_level_definition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_level_definition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_level_definition.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Price Variant Level Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.minimum_price_variant_level_reference_data_message = {}

-- Read runtime size of: Minimum Price Variant Level Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.minimum_price_variant_level_reference_data_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Minimum Price Variant Level Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.minimum_price_variant_level_reference_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Price Variant Level Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.minimum_price_variant_level_reference_data_message.fields = function(buffer, offset, packet, parent, size_of_minimum_price_variant_level_reference_data_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_arcaoptions_binarygateway_pillarstream_v3_27.transact_time.dissect(buffer, index, packet, parent)

  -- Dependency for Mpv Level Definition
  local end_of_payload = offset + size_of_minimum_price_variant_level_reference_data_message

  -- Mpv Level Definition: Struct of 5 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, mpv_level_definition = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_level_definition.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Minimum Price Variant Level Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.minimum_price_variant_level_reference_data_message.dissect = function(buffer, offset, packet, parent, size_of_minimum_price_variant_level_reference_data_message)
  local size_of_minimum_price_variant_level_reference_data_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.minimum_price_variant_level_reference_data_message.size(buffer, offset)
  local index = offset + size_of_minimum_price_variant_level_reference_data_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.minimum_price_variant_level_reference_data_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.minimum_price_variant_level_reference_data_message.fields(buffer, offset, packet, parent, size_of_minimum_price_variant_level_reference_data_message)
    parent:set_len(size_of_minimum_price_variant_level_reference_data_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.minimum_price_variant_level_reference_data_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.minimum_price_variant_level_reference_data_message.fields(buffer, offset, packet, parent, size_of_minimum_price_variant_level_reference_data_message)

    return index
  end
end

-- Minimum Price Variant Class Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.minimum_price_variant_class_reference_data_message = {}

-- Read runtime size of: Minimum Price Variant Class Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.minimum_price_variant_class_reference_data_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Minimum Price Variant Class Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.minimum_price_variant_class_reference_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Price Variant Class Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.minimum_price_variant_class_reference_data_message.fields = function(buffer, offset, packet, parent, size_of_minimum_price_variant_class_reference_data_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_arcaoptions_binarygateway_pillarstream_v3_27.transact_time.dissect(buffer, index, packet, parent)

  -- Mpv Class Name: zchar(20)
  index, mpv_class_name = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_class_name.dissect(buffer, index, packet, parent)

  -- Mpv Class Id: u16
  index, mpv_class_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_class_id.dissect(buffer, index, packet, parent)

  -- Rpimpv: uPrice
  index, rpimpv = nyse_arcaoptions_binarygateway_pillarstream_v3_27.rpimpv.dissect(buffer, index, packet, parent)

  -- Luldmpv: uPrice
  index, luldmpv = nyse_arcaoptions_binarygateway_pillarstream_v3_27.luldmpv.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Price Variant Class Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.minimum_price_variant_class_reference_data_message.dissect = function(buffer, offset, packet, parent, size_of_minimum_price_variant_class_reference_data_message)
  local size_of_minimum_price_variant_class_reference_data_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.minimum_price_variant_class_reference_data_message.size(buffer, offset)
  local index = offset + size_of_minimum_price_variant_class_reference_data_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.minimum_price_variant_class_reference_data_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.minimum_price_variant_class_reference_data_message.fields(buffer, offset, packet, parent, size_of_minimum_price_variant_class_reference_data_message)
    parent:set_len(size_of_minimum_price_variant_class_reference_data_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.minimum_price_variant_class_reference_data_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.minimum_price_variant_class_reference_data_message.fields(buffer, offset, packet, parent, size_of_minimum_price_variant_class_reference_data_message)

    return index
  end
end

-- Series Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_reference_data_message = {}

-- Read runtime size of: Series Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_reference_data_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Series Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_reference_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_reference_data_message.fields = function(buffer, offset, packet, parent, size_of_series_reference_data_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_arcaoptions_binarygateway_pillarstream_v3_27.transact_time.dissect(buffer, index, packet, parent)

  -- Series Index: u32
  index, series_index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_index.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Occ Symbol Root: char(24)
  index, occ_symbol_root = nyse_arcaoptions_binarygateway_pillarstream_v3_27.occ_symbol_root.dissect(buffer, index, packet, parent)

  -- Put Or Call: u8
  index, put_or_call = nyse_arcaoptions_binarygateway_pillarstream_v3_27.put_or_call.dissect(buffer, index, packet, parent)

  -- Strike Price: uPrice
  index, strike_price = nyse_arcaoptions_binarygateway_pillarstream_v3_27.strike_price.dissect(buffer, index, packet, parent)

  -- Maturity Date: zchar(8)
  index, maturity_date = nyse_arcaoptions_binarygateway_pillarstream_v3_27.maturity_date.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: u32
  index, contract_multiplier = nyse_arcaoptions_binarygateway_pillarstream_v3_27.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Series Type: u8
  index, series_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_type.dissect(buffer, index, packet, parent)

  -- Closing Only Indicator: u8
  index, closing_only_indicator = nyse_arcaoptions_binarygateway_pillarstream_v3_27.closing_only_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_reference_data_message.dissect = function(buffer, offset, packet, parent, size_of_series_reference_data_message)
  local size_of_series_reference_data_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_reference_data_message.size(buffer, offset)
  local index = offset + size_of_series_reference_data_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.series_reference_data_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_reference_data_message.fields(buffer, offset, packet, parent, size_of_series_reference_data_message)
    parent:set_len(size_of_series_reference_data_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_reference_data_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_reference_data_message.fields(buffer, offset, packet, parent, size_of_series_reference_data_message)

    return index
  end
end

-- Underlying Symbol Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.underlying_symbol_reference_data_message = {}

-- Read runtime size of: Underlying Symbol Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.underlying_symbol_reference_data_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Underlying Symbol Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.underlying_symbol_reference_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Symbol Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.underlying_symbol_reference_data_message.fields = function(buffer, offset, packet, parent, size_of_underlying_symbol_reference_data_message)
  local index = offset

  -- Transact Time: Timestamp
  index, transact_time = nyse_arcaoptions_binarygateway_pillarstream_v3_27.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Nyse Symbol: char(24)
  index, nyse_symbol = nyse_arcaoptions_binarygateway_pillarstream_v3_27.nyse_symbol.dissect(buffer, index, packet, parent)

  -- Listed Mic: zchar(4)
  index, listed_mic = nyse_arcaoptions_binarygateway_pillarstream_v3_27.listed_mic.dissect(buffer, index, packet, parent)

  -- Underlying Type: char
  index, underlying_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.underlying_type.dissect(buffer, index, packet, parent)

  -- Max Order Price: Price
  index, max_order_price = nyse_arcaoptions_binarygateway_pillarstream_v3_27.max_order_price.dissect(buffer, index, packet, parent)

  -- Mpv Class Id: u16
  index, mpv_class_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpv_class_id.dissect(buffer, index, packet, parent)

  -- Test Symbol Indicator: u8
  index, test_symbol_indicator = nyse_arcaoptions_binarygateway_pillarstream_v3_27.test_symbol_indicator.dissect(buffer, index, packet, parent)

  -- Channel Id: u8
  index, channel_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.channel_id.dissect(buffer, index, packet, parent)

  -- Legal Width Multiplier: u8
  index, legal_width_multiplier = nyse_arcaoptions_binarygateway_pillarstream_v3_27.legal_width_multiplier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Symbol Reference Data Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.underlying_symbol_reference_data_message.dissect = function(buffer, offset, packet, parent, size_of_underlying_symbol_reference_data_message)
  local size_of_underlying_symbol_reference_data_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.underlying_symbol_reference_data_message.size(buffer, offset)
  local index = offset + size_of_underlying_symbol_reference_data_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.underlying_symbol_reference_data_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.underlying_symbol_reference_data_message.fields(buffer, offset, packet, parent, size_of_underlying_symbol_reference_data_message)
    parent:set_len(size_of_underlying_symbol_reference_data_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.underlying_symbol_reference_data_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.underlying_symbol_reference_data_message.fields(buffer, offset, packet, parent, size_of_underlying_symbol_reference_data_message)

    return index
  end
end

-- Server Sequenced Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_sequenced_message = {}

-- Dissect: Server Sequenced Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_sequenced_message.dissect = function(buffer, offset, packet, parent, seq_msg_type)
  -- Dissect Underlying Symbol Reference Data Message
  if seq_msg_type == 0x0233 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.underlying_symbol_reference_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Series Reference Data Message
  if seq_msg_type == 0x0234 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_reference_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Minimum Price Variant Class Reference Data Message
  if seq_msg_type == 0x0230 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.minimum_price_variant_class_reference_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Minimum Price Variant Level Reference Data Message
  if seq_msg_type == 0x0231 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.minimum_price_variant_level_reference_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mpid Configuration Message
  if seq_msg_type == 0x0272 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid_configuration_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Market Maker Symbol Appointment Reference Data Message
  if seq_msg_type == 0x0833 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.options_market_maker_symbol_appointment_reference_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Session Configuration Acknowledgement Message
  if seq_msg_type == 0x0221 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.session_configuration_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order And Cancel Replace Acknowledgement Message
  if seq_msg_type == 0x0269 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_and_cancel_replace_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Quote Acknowledgment Message
  if seq_msg_type == 0x0294 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_quote_acknowledgment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Quote Acknowledgment With Details Message
  if seq_msg_type == 0x0308 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_quote_acknowledgment_with_details_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Single Complex Modify Cancel Request Acknowledgment And Urout Message
  if seq_msg_type == 0x0278 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_single_complex_modify_cancel_request_acknowledgment_and_urout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Priority Update Acknowledgment Message
  if seq_msg_type == 0x0268 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_priority_update_acknowledgment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Message
  if seq_msg_type == 0x0295 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.execution_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Correct Message
  if seq_msg_type == 0x0293 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.trade_bust_correct_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Application Layer Reject Message
  if seq_msg_type == 0x0267 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.application_layer_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Control Acknowledgement Message
  if seq_msg_type == 0x0332 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Control Alert Message
  if seq_msg_type == 0x0333 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_alert_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Series Request Acknowledgement Message
  if seq_msg_type == 0x0358 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.complex_series_request_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Seq Msg Header
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_header = {}

-- Size: Seq Msg Header
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_header.size =
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_type.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_length.size

-- Display: Seq Msg Header
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seq Msg Header
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 31 values
  index, seq_msg_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_type.dissect(buffer, index, packet, parent)

  -- Seq Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, seq_msg_length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seq Msg Header
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.seq_msg_header, buffer(offset, 0))
    local index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Seq Msg Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_id = {}

-- Size: Seq Msg Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_id.size =
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_id.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq.size

-- Display: Seq Msg Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seq Msg Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_id.dissect(buffer, index, packet, parent)

  -- Seq: 8 Byte Unsigned Fixed Width Integer
  index, seq = nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seq Msg Id
nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_id.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.seq_msg_id, buffer(offset, 0))
    local index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_id.fields(buffer, offset, packet, parent)
  end
end

-- Msg Header
nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_header = {}

-- Size: Msg Header
nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_header.size =
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_type.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_length.size

-- Display: Msg Header
nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Msg Header
nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, msg_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, msg_length = nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Msg Header
nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.msg_header, buffer(offset, 0))
    local index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Seq Msg
nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_seq_msg = {}

-- Read runtime size of: Server Seq Msg
nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_seq_msg.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset + 2, 2):le_uint()

  return msg_length
end

-- Display: Server Seq Msg
nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_seq_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Seq Msg
nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_seq_msg.fields = function(buffer, offset, packet, parent, size_of_server_seq_msg)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_header.dissect(buffer, index, packet, parent)

  -- Seq Msg Id: Struct of 2 fields
  index, seq_msg_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_id.dissect(buffer, index, packet, parent)

  -- Reserved 4: u32
  index, reserved_4 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_4.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_arcaoptions_binarygateway_pillarstream_v3_27.timestamp.dissect(buffer, index, packet, parent)

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Type
  local seq_msg_type = buffer(index - 4, 2):le_uint()

  -- Server Sequenced Message: Runtime Type with 18 branches
  index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_sequenced_message.dissect(buffer, index, packet, parent, seq_msg_type)

  return index
end

-- Dissect: Server Seq Msg
nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_seq_msg.dissect = function(buffer, offset, packet, parent, size_of_server_seq_msg)
  local size_of_server_seq_msg = nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_seq_msg.size(buffer, offset)
  local index = offset + size_of_server_seq_msg

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.server_seq_msg, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_seq_msg.fields(buffer, offset, packet, parent, size_of_server_seq_msg)
    parent:set_len(size_of_server_seq_msg)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_seq_msg.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_seq_msg.fields(buffer, offset, packet, parent, size_of_server_seq_msg)

    return index
  end
end

-- Close Response
nyse_arcaoptions_binarygateway_pillarstream_v3_27.close_response = {}

-- Read runtime size of: Close Response
nyse_arcaoptions_binarygateway_pillarstream_v3_27.close_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset + 2, 2):le_uint()

  return msg_length
end

-- Display: Close Response
nyse_arcaoptions_binarygateway_pillarstream_v3_27.close_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Close Response
nyse_arcaoptions_binarygateway_pillarstream_v3_27.close_response.fields = function(buffer, offset, packet, parent, size_of_close_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_id.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, status = nyse_arcaoptions_binarygateway_pillarstream_v3_27.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Close Response
nyse_arcaoptions_binarygateway_pillarstream_v3_27.close_response.dissect = function(buffer, offset, packet, parent, size_of_close_response)
  local size_of_close_response = nyse_arcaoptions_binarygateway_pillarstream_v3_27.close_response.size(buffer, offset)
  local index = offset + size_of_close_response

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.close_response, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.close_response.fields(buffer, offset, packet, parent, size_of_close_response)
    parent:set_len(size_of_close_response)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.close_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.close_response.fields(buffer, offset, packet, parent, size_of_close_response)

    return index
  end
end

-- Open Response
nyse_arcaoptions_binarygateway_pillarstream_v3_27.open_response = {}

-- Read runtime size of: Open Response
nyse_arcaoptions_binarygateway_pillarstream_v3_27.open_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset + 2, 2):le_uint()

  return msg_length
end

-- Display: Open Response
nyse_arcaoptions_binarygateway_pillarstream_v3_27.open_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Response
nyse_arcaoptions_binarygateway_pillarstream_v3_27.open_response.fields = function(buffer, offset, packet, parent, size_of_open_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_id.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, status = nyse_arcaoptions_binarygateway_pillarstream_v3_27.status.dissect(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_arcaoptions_binarygateway_pillarstream_v3_27.access.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Response
nyse_arcaoptions_binarygateway_pillarstream_v3_27.open_response.dissect = function(buffer, offset, packet, parent, size_of_open_response)
  local size_of_open_response = nyse_arcaoptions_binarygateway_pillarstream_v3_27.open_response.size(buffer, offset)
  local index = offset + size_of_open_response

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.open_response, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.open_response.fields(buffer, offset, packet, parent, size_of_open_response)
    parent:set_len(size_of_open_response)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.open_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.open_response.fields(buffer, offset, packet, parent, size_of_open_response)

    return index
  end
end

-- Heartbeat
nyse_arcaoptions_binarygateway_pillarstream_v3_27.heartbeat = {}

-- Read runtime size of: Heartbeat
nyse_arcaoptions_binarygateway_pillarstream_v3_27.heartbeat.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset + 2, 2):le_uint()

  return msg_length
end

-- Display: Heartbeat
nyse_arcaoptions_binarygateway_pillarstream_v3_27.heartbeat.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat
nyse_arcaoptions_binarygateway_pillarstream_v3_27.heartbeat.fields = function(buffer, offset, packet, parent, size_of_heartbeat)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
nyse_arcaoptions_binarygateway_pillarstream_v3_27.heartbeat.dissect = function(buffer, offset, packet, parent, size_of_heartbeat)
  local size_of_heartbeat = nyse_arcaoptions_binarygateway_pillarstream_v3_27.heartbeat.size(buffer, offset)
  local index = offset + size_of_heartbeat

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.heartbeat, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.heartbeat.fields(buffer, offset, packet, parent, size_of_heartbeat)
    parent:set_len(size_of_heartbeat)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.heartbeat.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.heartbeat.fields(buffer, offset, packet, parent, size_of_heartbeat)

    return index
  end
end

-- Stream Avail
nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_avail = {}

-- Read runtime size of: Stream Avail
nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_avail.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset + 2, 2):le_uint()

  return msg_length
end

-- Display: Stream Avail
nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_avail.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Avail
nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_avail.fields = function(buffer, offset, packet, parent, size_of_stream_avail)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_id.dissect(buffer, index, packet, parent)

  -- Next Seq: 8 Byte Unsigned Fixed Width Integer
  index, next_seq = nyse_arcaoptions_binarygateway_pillarstream_v3_27.next_seq.dissect(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_arcaoptions_binarygateway_pillarstream_v3_27.access.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Avail
nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_avail.dissect = function(buffer, offset, packet, parent, size_of_stream_avail)
  local size_of_stream_avail = nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_avail.size(buffer, offset)
  local index = offset + size_of_stream_avail

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.stream_avail, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_avail.fields(buffer, offset, packet, parent, size_of_stream_avail)
    parent:set_len(size_of_stream_avail)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_avail.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_avail.fields(buffer, offset, packet, parent, size_of_stream_avail)

    return index
  end
end

-- Login Response
nyse_arcaoptions_binarygateway_pillarstream_v3_27.login_response = {}

-- Read runtime size of: Login Response
nyse_arcaoptions_binarygateway_pillarstream_v3_27.login_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset + 2, 2):le_uint()

  return msg_length
end

-- Display: Login Response
nyse_arcaoptions_binarygateway_pillarstream_v3_27.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
nyse_arcaoptions_binarygateway_pillarstream_v3_27.login_response.fields = function(buffer, offset, packet, parent, size_of_login_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_header.dissect(buffer, index, packet, parent)

  -- Username: char(16)
  index, username = nyse_arcaoptions_binarygateway_pillarstream_v3_27.username.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, status = nyse_arcaoptions_binarygateway_pillarstream_v3_27.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
nyse_arcaoptions_binarygateway_pillarstream_v3_27.login_response.dissect = function(buffer, offset, packet, parent, size_of_login_response)
  local size_of_login_response = nyse_arcaoptions_binarygateway_pillarstream_v3_27.login_response.size(buffer, offset)
  local index = offset + size_of_login_response

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.login_response, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.login_response.fields(buffer, offset, packet, parent, size_of_login_response)
    parent:set_len(size_of_login_response)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.login_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.login_response.fields(buffer, offset, packet, parent, size_of_login_response)

    return index
  end
end

-- Server Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_message = {}

-- Dissect: Server Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_message.dissect = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Login Response
  if msg_type == 0x0202 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.login_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Avail
  if msg_type == 0x0203 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_avail.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if msg_type == 0x0204 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Response
  if msg_type == 0x0206 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.open_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Close Response
  if msg_type == 0x0208 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.close_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Seq Msg
  if msg_type == 0x0905 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_seq_msg.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Pillar Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_pillar_message = {}

-- Verify required size of Tcp packet
nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_pillar_message.requiredsize = function(buffer)
  return buffer:len() >= nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_type.size
end

-- Dissect Server Pillar Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_pillar_message.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency element: Msg Type
  local msg_type = buffer(index, 2):le_uint()

  -- Server Message: Runtime Type with 6 branches
  index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_message.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Complex Series Leg Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.complex_series_leg_group = {}

-- Size: Complex Series Leg Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.complex_series_leg_group.size =
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_symbol_id.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_ratio_qty.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_side.size

-- Display: Complex Series Leg Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.complex_series_leg_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Series Leg Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.complex_series_leg_group.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol Id: u32
  index, leg_symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_symbol_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: u16
  index, leg_ratio_qty = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: u8
  index, leg_side = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Series Leg Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.complex_series_leg_group.dissect = function(buffer, offset, packet, parent)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.complex_series_leg_group, buffer(offset, 0))
    local index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.complex_series_leg_group.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.complex_series_leg_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.complex_series_leg_group.fields(buffer, offset, packet, parent)
  end
end

-- New Complex Series Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_complex_series_request_message = {}

-- Read runtime size of: New Complex Series Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_complex_series_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: New Complex Series Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_complex_series_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Complex Series Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_complex_series_request_message.fields = function(buffer, offset, packet, parent, size_of_new_complex_series_request_message)
  local index = offset

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Dependency for Complex Series Leg Group
  local end_of_payload = offset + size_of_new_complex_series_request_message

  -- Complex Series Leg Group: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, complex_series_leg_group = nyse_arcaoptions_binarygateway_pillarstream_v3_27.complex_series_leg_group.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Complex Series Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_complex_series_request_message.dissect = function(buffer, offset, packet, parent, size_of_new_complex_series_request_message)
  local size_of_new_complex_series_request_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_complex_series_request_message.size(buffer, offset)
  local index = offset + size_of_new_complex_series_request_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.new_complex_series_request_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_complex_series_request_message.fields(buffer, offset, packet, parent, size_of_new_complex_series_request_message)
    parent:set_len(size_of_new_complex_series_request_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_complex_series_request_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_complex_series_request_message.fields(buffer, offset, packet, parent, size_of_new_complex_series_request_message)

    return index
  end
end

-- Risk Action Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_request_message = {}

-- Read runtime size of: Risk Action Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Risk Action Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Action Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_request_message.fields = function(buffer, offset, packet, parent, size_of_risk_action_request_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: zchar(4)
  index, mp_sub_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Reserved 4: u32
  index, reserved_4 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_4.dissect(buffer, index, packet, parent)

  -- Clearing Number: zchar(5)
  index, clearing_number = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_number.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Risk User Crd: u32
  index, risk_user_crd = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_crd.dissect(buffer, index, packet, parent)

  -- Risk User Type: char
  index, risk_user_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_type.dissect(buffer, index, packet, parent)

  -- Risk Control Type: u8
  index, risk_control_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_type.dissect(buffer, index, packet, parent)

  -- Risk Action Type: u8
  index, risk_action_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_type.dissect(buffer, index, packet, parent)

  -- Risk Range Id: u8
  index, risk_range_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_range_id.dissect(buffer, index, packet, parent)

  -- Reserved 199: zchar(199)
  index, reserved_199 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_199.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Action Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_request_message.dissect = function(buffer, offset, packet, parent, size_of_risk_action_request_message)
  local size_of_risk_action_request_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_request_message.size(buffer, offset)
  local index = offset + size_of_risk_action_request_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_action_request_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_request_message.fields(buffer, offset, packet, parent, size_of_risk_action_request_message)
    parent:set_len(size_of_risk_action_request_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_request_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_request_message.fields(buffer, offset, packet, parent, size_of_risk_action_request_message)

    return index
  end
end

-- Risk Limit Update Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_limit_update_request_message = {}

-- Read runtime size of: Risk Limit Update Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_limit_update_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Risk Limit Update Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_limit_update_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Limit Update Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_limit_update_request_message.fields = function(buffer, offset, packet, parent, size_of_risk_limit_update_request_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: zchar(4)
  index, mp_sub_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Reserved 4: u32
  index, reserved_4 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_4.dissect(buffer, index, packet, parent)

  -- Clearing Number: zchar(5)
  index, clearing_number = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_number.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Risk User Crd: u32
  index, risk_user_crd = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_crd.dissect(buffer, index, packet, parent)

  -- Risk User Type: char
  index, risk_user_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_user_type.dissect(buffer, index, packet, parent)

  -- Risk Control Type: u8
  index, risk_control_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_type.dissect(buffer, index, packet, parent)

  -- Risk Control Activation: u8
  index, risk_control_activation = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_control_activation.dissect(buffer, index, packet, parent)

  -- Usd Limit: i64
  index, usd_limit = nyse_arcaoptions_binarygateway_pillarstream_v3_27.usd_limit.dissect(buffer, index, packet, parent)

  -- Time Limit: i32
  index, time_limit = nyse_arcaoptions_binarygateway_pillarstream_v3_27.time_limit.dissect(buffer, index, packet, parent)

  -- Percentage Limit: i32
  index, percentage_limit = nyse_arcaoptions_binarygateway_pillarstream_v3_27.percentage_limit.dissect(buffer, index, packet, parent)

  -- Count Limit: i32
  index, count_limit = nyse_arcaoptions_binarygateway_pillarstream_v3_27.count_limit.dissect(buffer, index, packet, parent)

  -- Breach Action Request: u8
  index, breach_action_request = nyse_arcaoptions_binarygateway_pillarstream_v3_27.breach_action_request.dissect(buffer, index, packet, parent)

  -- Ioc Attribution: u8
  index, ioc_attribution = nyse_arcaoptions_binarygateway_pillarstream_v3_27.ioc_attribution.dissect(buffer, index, packet, parent)

  -- Risk Range Id: u8
  index, risk_range_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_range_id.dissect(buffer, index, packet, parent)

  -- Risk Minimum Value: i64
  index, risk_minimum_value = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_minimum_value.dissect(buffer, index, packet, parent)

  -- Price Scale: u8
  index, price_scale = nyse_arcaoptions_binarygateway_pillarstream_v3_27.price_scale.dissect(buffer, index, packet, parent)

  -- Reserved 190: zchar(190)
  index, reserved_190 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_190.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Limit Update Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_limit_update_request_message.dissect = function(buffer, offset, packet, parent, size_of_risk_limit_update_request_message)
  local size_of_risk_limit_update_request_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_limit_update_request_message.size(buffer, offset)
  local index = offset + size_of_risk_limit_update_request_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.risk_limit_update_request_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_limit_update_request_message.fields(buffer, offset, packet, parent, size_of_risk_limit_update_request_message)
    parent:set_len(size_of_risk_limit_update_request_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_limit_update_request_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_limit_update_request_message.fields(buffer, offset, packet, parent, size_of_risk_limit_update_request_message)

    return index
  end
end

-- Bulk Cancel Request With Mp Sub Id Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_cancel_request_with_mp_sub_id_message = {}

-- Read runtime size of: Bulk Cancel Request With Mp Sub Id Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_cancel_request_with_mp_sub_id_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Bulk Cancel Request With Mp Sub Id Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_cancel_request_with_mp_sub_id_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Cancel Request With Mp Sub Id Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_cancel_request_with_mp_sub_id_message.fields = function(buffer, offset, packet, parent, size_of_bulk_cancel_request_with_mp_sub_id_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: zchar(4)
  index, mp_sub_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = nyse_arcaoptions_binarygateway_pillarstream_v3_27.side.dissect(buffer, index, packet, parent)

  -- Target Cancel Username: char(16)
  index, target_cancel_username = nyse_arcaoptions_binarygateway_pillarstream_v3_27.target_cancel_username.dissect(buffer, index, packet, parent)

  -- Bulk Action: u8
  index, bulk_action = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_action.dissect(buffer, index, packet, parent)

  -- Target Cancel Mpid: zchar(4)
  index, target_cancel_mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.target_cancel_mpid.dissect(buffer, index, packet, parent)

  -- Reserved 20: char(20)
  index, reserved_20 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_20.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Cancel Request With Mp Sub Id Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_cancel_request_with_mp_sub_id_message.dissect = function(buffer, offset, packet, parent, size_of_bulk_cancel_request_with_mp_sub_id_message)
  local size_of_bulk_cancel_request_with_mp_sub_id_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_cancel_request_with_mp_sub_id_message.size(buffer, offset)
  local index = offset + size_of_bulk_cancel_request_with_mp_sub_id_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.bulk_cancel_request_with_mp_sub_id_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_cancel_request_with_mp_sub_id_message.fields(buffer, offset, packet, parent, size_of_bulk_cancel_request_with_mp_sub_id_message)
    parent:set_len(size_of_bulk_cancel_request_with_mp_sub_id_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_cancel_request_with_mp_sub_id_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_cancel_request_with_mp_sub_id_message.fields(buffer, offset, packet, parent, size_of_bulk_cancel_request_with_mp_sub_id_message)

    return index
  end
end

-- Bulk Cancel Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_cancel_request_message = {}

-- Read runtime size of: Bulk Cancel Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_cancel_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Bulk Cancel Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Cancel Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_cancel_request_message.fields = function(buffer, offset, packet, parent, size_of_bulk_cancel_request_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Mm Sent Time: Timestamp
  index, mm_sent_time = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mm_sent_time.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = nyse_arcaoptions_binarygateway_pillarstream_v3_27.side.dissect(buffer, index, packet, parent)

  -- Group Id: u32
  index, group_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.group_id.dissect(buffer, index, packet, parent)

  -- Target Cancel Username: char(16)
  index, target_cancel_username = nyse_arcaoptions_binarygateway_pillarstream_v3_27.target_cancel_username.dissect(buffer, index, packet, parent)

  -- Bulk Action: u8
  index, bulk_action = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_action.dissect(buffer, index, packet, parent)

  -- Cancel Scope: u8
  index, cancel_scope = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cancel_scope.dissect(buffer, index, packet, parent)

  -- Target Cancel Mpid: zchar(4)
  index, target_cancel_mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.target_cancel_mpid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Cancel Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_cancel_request_message.dissect = function(buffer, offset, packet, parent, size_of_bulk_cancel_request_message)
  local size_of_bulk_cancel_request_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_cancel_request_message.size(buffer, offset)
  local index = offset + size_of_bulk_cancel_request_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.bulk_cancel_request_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_cancel_request_message.fields(buffer, offset, packet, parent, size_of_bulk_cancel_request_message)
    parent:set_len(size_of_bulk_cancel_request_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_cancel_request_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_cancel_request_message.fields(buffer, offset, packet, parent, size_of_bulk_cancel_request_message)

    return index
  end
end

-- Covered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.covered = {}

-- Size of Covered: not written, it needs Seq Msg Length passed down from New Order Cross Message

-- Display: Covered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.covered.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Covered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.covered.fields = function(buffer, offset, packet, parent, seq_msg_length)
  local index = offset

  -- Sub Msg Header: Struct of 2 fields
  index, sub_msg_header = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_header.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: zchar(4)
  index, mp_sub_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: u64
  index, orig_cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Bitfield Order Instructions: Struct of 21 fields
  index, bitfield_order_instructions = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_order_instructions.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nyse_arcaoptions_binarygateway_pillarstream_v3_27.price.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: u32
  index, min_qty = nyse_arcaoptions_binarygateway_pillarstream_v3_27.min_qty.dissect(buffer, index, packet, parent)

  -- User Data: zchar(10)
  index, user_data = nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_data.dissect(buffer, index, packet, parent)

  -- Leg Open Close: u64
  index, leg_open_close = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_open_close.dissect(buffer, index, packet, parent)

  -- Auction Id: u64
  index, auction_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.auction_id.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Optional Order Add On
  local optional_order_add_on = nil

  local optional_order_add_on_exists = seq_msg_length ~= 100

  if optional_order_add_on_exists then
    index, optional_order_add_on = nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_order_add_on.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Covered
nyse_arcaoptions_binarygateway_pillarstream_v3_27.covered.dissect = function(buffer, offset, packet, parent, seq_msg_length)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.covered, buffer(offset, 0))
    local index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.covered.fields(buffer, offset, packet, parent, seq_msg_length)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.covered.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.covered.fields(buffer, offset, packet, parent, seq_msg_length)
  end
end

-- Exposed
nyse_arcaoptions_binarygateway_pillarstream_v3_27.exposed = {}

-- Calculate size of: Exposed
nyse_arcaoptions_binarygateway_pillarstream_v3_27.exposed.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_header.size

  index = index + nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.size

  index = index + nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.size

  index = index + nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.size

  index = index + nyse_arcaoptions_binarygateway_pillarstream_v3_27.mp_sub_id.size

  index = index + nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.size

  index = index + nyse_arcaoptions_binarygateway_pillarstream_v3_27.orig_cl_ord_id.size

  index = index + nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_order_instructions.size

  index = index + nyse_arcaoptions_binarygateway_pillarstream_v3_27.price.size

  index = index + nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_qty.size

  index = index + nyse_arcaoptions_binarygateway_pillarstream_v3_27.min_qty.size

  index = index + nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_data.size

  index = index + nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_open_close.size

  index = index + nyse_arcaoptions_binarygateway_pillarstream_v3_27.auction_id.size

  local seq_msg_length = buffer(offset - 79, 2):le_uint()

  if seq_msg_length ~= 100 then
    index = index + nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_order_add_on.size

  end

  return index
end

-- Display: Exposed
nyse_arcaoptions_binarygateway_pillarstream_v3_27.exposed.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Exposed
nyse_arcaoptions_binarygateway_pillarstream_v3_27.exposed.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Msg Header: Struct of 2 fields
  index, sub_msg_header = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_msg_header.dissect(buffer, index, packet, parent)

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: zchar(4)
  index, mp_sub_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: u64
  index, orig_cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Bitfield Order Instructions: Struct of 21 fields
  index, bitfield_order_instructions = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_order_instructions.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nyse_arcaoptions_binarygateway_pillarstream_v3_27.price.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: u32
  index, min_qty = nyse_arcaoptions_binarygateway_pillarstream_v3_27.min_qty.dissect(buffer, index, packet, parent)

  -- User Data: zchar(10)
  index, user_data = nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_data.dissect(buffer, index, packet, parent)

  -- Leg Open Close: u64
  index, leg_open_close = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_open_close.dissect(buffer, index, packet, parent)

  -- Auction Id: u64
  index, auction_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.auction_id.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 79, 2):le_uint()

  -- Runtime optional field: Optional Order Add On
  local optional_order_add_on = nil

  local optional_order_add_on_exists = seq_msg_length ~= 100

  if optional_order_add_on_exists then
    index, optional_order_add_on = nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_order_add_on.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Exposed
nyse_arcaoptions_binarygateway_pillarstream_v3_27.exposed.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.exposed, buffer(offset, 0))
    local index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.exposed.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.exposed.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.exposed.fields(buffer, offset, packet, parent)
  end
end

-- New Order Cross Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_order_cross_message = {}

-- Read runtime size of: New Order Cross Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_order_cross_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: New Order Cross Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_order_cross_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Cross Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_order_cross_message.fields = function(buffer, offset, packet, parent, size_of_new_order_cross_message)
  local index = offset
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  -- Cross Id: u64
  index, cross_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cross_id.dissect(buffer, index, packet, parent)

  -- Allocation Pct: u8
  index, allocation_pct = nyse_arcaoptions_binarygateway_pillarstream_v3_27.allocation_pct.dissect(buffer, index, packet, parent)

  -- Clearing Firm Exposed: zchar(5)
  index, clearing_firm_exposed = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm_exposed.dissect(buffer, index, packet, parent)

  -- Clearing Account Exposed: zchar(5)
  index, clearing_account_exposed = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account_exposed.dissect(buffer, index, packet, parent)

  -- Optional Data Exposed: zchar(16)
  index, optional_data_exposed = nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data_exposed.dissect(buffer, index, packet, parent)

  -- Clearing Firm Covered: zchar(5)
  index, clearing_firm_covered = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_firm_covered.dissect(buffer, index, packet, parent)

  -- Clearing Account Covered: zchar(5)
  index, clearing_account_covered = nyse_arcaoptions_binarygateway_pillarstream_v3_27.clearing_account_covered.dissect(buffer, index, packet, parent)

  -- Optional Data Covered: zchar(16)
  index, optional_data_covered = nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_data_covered.dissect(buffer, index, packet, parent)

  -- Reserved 16: char(16)
  index, reserved_16 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_16.dissect(buffer, index, packet, parent)

  -- Exposed: Struct of 15 fields
  index, exposed = nyse_arcaoptions_binarygateway_pillarstream_v3_27.exposed.dissect(buffer, index, packet, parent)

  -- Covered: Struct of 15 fields
  index, covered = nyse_arcaoptions_binarygateway_pillarstream_v3_27.covered.dissect(buffer, index, packet, parent, seq_msg_length)

  return index
end

-- Dissect: New Order Cross Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_order_cross_message.dissect = function(buffer, offset, packet, parent, size_of_new_order_cross_message)
  local size_of_new_order_cross_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_order_cross_message.size(buffer, offset)
  local index = offset + size_of_new_order_cross_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.new_order_cross_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_order_cross_message.fields(buffer, offset, packet, parent, size_of_new_order_cross_message)
    parent:set_len(size_of_new_order_cross_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_order_cross_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_order_cross_message.fields(buffer, offset, packet, parent, size_of_new_order_cross_message)

    return index
  end
end

-- Bitfield Quote Inst
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_quote_inst = {}

-- Size: Bitfield Quote Inst
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_quote_inst.size = 1

-- Display: Bitfield Quote Inst
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_quote_inst.display = function(range, value, packet, parent)
  local flags = {}

  -- Quote Side: 2 Bits
  flags[#flags + 1] = "Quote Side: "..bit.rshift(bit.band(value, 0x03), 0)
  -- Mm Quote Type: 3 Bits
  flags[#flags + 1] = "Mm Quote Type: "..bit.rshift(bit.band(value, 0x1C), 2)

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Bitfield Quote Inst
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_quote_inst.bits = function(range, value, packet, parent)

  -- Quote Side: 2 Bit Unsigned Fixed Width Integer Enum with 2 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.quote_side, range, value)

  -- Mm Quote Type: 3 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.mm_quote_type, range, value)

  -- Unused 3: 3 Bit
  parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.unused_3, range, value)
end

-- Dissect: Bitfield Quote Inst
nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_quote_inst.dissect = function(buffer, offset, packet, parent)
  local size = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_quote_inst.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_quote_inst.display(range, value, packet, parent)
  local element = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.bitfield_quote_inst, range, display)

  if show.structs then
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_quote_inst.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Quote Request Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_request_group = {}

-- Size: Quote Request Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_request_group.size =
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_index.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_quote_inst.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.price.size + 
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_qty.size

-- Display: Quote Request Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_request_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_request_group.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series Index: u32
  index, series_index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.series_index.dissect(buffer, index, packet, parent)

  -- Bitfield Quote Inst: Struct of 3 fields
  index, bitfield_quote_inst = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_quote_inst.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nyse_arcaoptions_binarygateway_pillarstream_v3_27.price.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request Group
nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_request_group.dissect = function(buffer, offset, packet, parent)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.quote_request_group, buffer(offset, 0))
    local index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_request_group.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_request_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_request_group.fields(buffer, offset, packet, parent)
  end
end

-- New Bulk Quote With Order Id Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_bulk_quote_with_order_id_message = {}

-- Read runtime size of: New Bulk Quote With Order Id Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_bulk_quote_with_order_id_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: New Bulk Quote With Order Id Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_bulk_quote_with_order_id_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Bulk Quote With Order Id Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_bulk_quote_with_order_id_message.fields = function(buffer, offset, packet, parent, size_of_new_bulk_quote_with_order_id_message)
  local index = offset

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.dissect(buffer, index, packet, parent)

  -- Sub Id: zchar(4)
  index, sub_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Self Trade Type: u8
  index, self_trade_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_type.dissect(buffer, index, packet, parent)

  -- Group Id: u32
  index, group_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.group_id.dissect(buffer, index, packet, parent)

  -- Mm Sent Time: Timestamp
  index, mm_sent_time = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mm_sent_time.dissect(buffer, index, packet, parent)

  -- Dependency for Quote Request Group
  local end_of_payload = offset + size_of_new_bulk_quote_with_order_id_message

  -- Quote Request Group: Struct of 4 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, quote_request_group = nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_request_group.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Bulk Quote With Order Id Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_bulk_quote_with_order_id_message.dissect = function(buffer, offset, packet, parent, size_of_new_bulk_quote_with_order_id_message)
  local size_of_new_bulk_quote_with_order_id_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_bulk_quote_with_order_id_message.size(buffer, offset)
  local index = offset + size_of_new_bulk_quote_with_order_id_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.new_bulk_quote_with_order_id_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_bulk_quote_with_order_id_message.fields(buffer, offset, packet, parent, size_of_new_bulk_quote_with_order_id_message)
    parent:set_len(size_of_new_bulk_quote_with_order_id_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_bulk_quote_with_order_id_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_bulk_quote_with_order_id_message.fields(buffer, offset, packet, parent, size_of_new_bulk_quote_with_order_id_message)

    return index
  end
end

-- New Bulk Quote Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_bulk_quote_message = {}

-- Read runtime size of: New Bulk Quote Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_bulk_quote_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: New Bulk Quote Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_bulk_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Bulk Quote Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_bulk_quote_message.fields = function(buffer, offset, packet, parent, size_of_new_bulk_quote_message)
  local index = offset

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.dissect(buffer, index, packet, parent)

  -- Sub Id: zchar(4)
  index, sub_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Self Trade Type: u8
  index, self_trade_type = nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_type.dissect(buffer, index, packet, parent)

  -- Group Id: u32
  index, group_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.group_id.dissect(buffer, index, packet, parent)

  -- Mm Sent Time: Timestamp
  index, mm_sent_time = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mm_sent_time.dissect(buffer, index, packet, parent)

  -- Dependency for Quote Request Group
  local end_of_payload = offset + size_of_new_bulk_quote_message

  -- Quote Request Group: Struct of 4 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, quote_request_group = nyse_arcaoptions_binarygateway_pillarstream_v3_27.quote_request_group.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Bulk Quote Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_bulk_quote_message.dissect = function(buffer, offset, packet, parent, size_of_new_bulk_quote_message)
  local size_of_new_bulk_quote_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_bulk_quote_message.size(buffer, offset)
  local index = offset + size_of_new_bulk_quote_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.new_bulk_quote_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_bulk_quote_message.fields(buffer, offset, packet, parent, size_of_new_bulk_quote_message)
    parent:set_len(size_of_new_bulk_quote_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_bulk_quote_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_bulk_quote_message.fields(buffer, offset, packet, parent, size_of_new_bulk_quote_message)

    return index
  end
end

-- Order Modify Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_modify_request_message = {}

-- Read runtime size of: Order Modify Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_modify_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Order Modify Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_modify_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_modify_request_message.fields = function(buffer, offset, packet, parent, size_of_order_modify_request_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: u64
  index, orig_cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_qty.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = nyse_arcaoptions_binarygateway_pillarstream_v3_27.side.dissect(buffer, index, packet, parent)

  -- Locate Reqd: u8
  index, locate_reqd = nyse_arcaoptions_binarygateway_pillarstream_v3_27.locate_reqd.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_modify_request_message.dissect = function(buffer, offset, packet, parent, size_of_order_modify_request_message)
  local size_of_order_modify_request_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_modify_request_message.size(buffer, offset)
  local index = offset + size_of_order_modify_request_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.order_modify_request_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_modify_request_message.fields(buffer, offset, packet, parent, size_of_order_modify_request_message)
    parent:set_len(size_of_order_modify_request_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_modify_request_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_modify_request_message.fields(buffer, offset, packet, parent, size_of_order_modify_request_message)

    return index
  end
end

-- Order Cancel Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_cancel_request_message = {}

-- Read runtime size of: Order Cancel Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_cancel_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Order Cancel Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_cancel_request_message.fields = function(buffer, offset, packet, parent, size_of_order_cancel_request_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: u64
  index, orig_cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_cancel_request_message.dissect = function(buffer, offset, packet, parent, size_of_order_cancel_request_message)
  local size_of_order_cancel_request_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_cancel_request_message.size(buffer, offset)
  local index = offset + size_of_order_cancel_request_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.order_cancel_request_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_cancel_request_message.fields(buffer, offset, packet, parent, size_of_order_cancel_request_message)
    parent:set_len(size_of_order_cancel_request_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_cancel_request_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_cancel_request_message.fields(buffer, offset, packet, parent, size_of_order_cancel_request_message)

    return index
  end
end

-- New Order Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_order_message = {}

-- Read runtime size of: New Order Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_order_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: New Order Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_order_message.fields = function(buffer, offset, packet, parent, size_of_new_order_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mpid.dissect(buffer, index, packet, parent)

  -- Market Maker: zchar(10)
  index, market_maker = nyse_arcaoptions_binarygateway_pillarstream_v3_27.market_maker.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: zchar(4)
  index, mp_sub_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: u64
  index, orig_cl_ord_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Bitfield Order Instructions: Struct of 21 fields
  index, bitfield_order_instructions = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bitfield_order_instructions.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nyse_arcaoptions_binarygateway_pillarstream_v3_27.price.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: u32
  index, min_qty = nyse_arcaoptions_binarygateway_pillarstream_v3_27.min_qty.dissect(buffer, index, packet, parent)

  -- User Data: zchar(10)
  index, user_data = nyse_arcaoptions_binarygateway_pillarstream_v3_27.user_data.dissect(buffer, index, packet, parent)

  -- Leg Open Close: u64
  index, leg_open_close = nyse_arcaoptions_binarygateway_pillarstream_v3_27.leg_open_close.dissect(buffer, index, packet, parent)

  -- Auction Id: u64
  index, auction_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.auction_id.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  -- Runtime optional field: Optional Order Add On
  local optional_order_add_on = nil

  local optional_order_add_on_exists = seq_msg_length ~= 100

  if optional_order_add_on_exists then
    index, optional_order_add_on = nyse_arcaoptions_binarygateway_pillarstream_v3_27.optional_order_add_on.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Order Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_order_message.dissect = function(buffer, offset, packet, parent, size_of_new_order_message)
  local size_of_new_order_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_order_message.size(buffer, offset)
  local index = offset + size_of_new_order_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.new_order_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_order_message.fields(buffer, offset, packet, parent, size_of_new_order_message)
    parent:set_len(size_of_new_order_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_order_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_order_message.fields(buffer, offset, packet, parent, size_of_new_order_message)

    return index
  end
end

-- Sequenced Filler Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sequenced_filler_message = {}

-- Display: Sequenced Filler Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sequenced_filler_message.display = function(packet, parent, length)
  return "Sequenced Filler Message"
end


-- Dissect: Sequenced Filler Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.sequenced_filler_message.dissect = function(buffer, offset, packet, parent)
  local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.sequenced_filler_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Session Configuration Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.session_configuration_request_message = {}

-- Read runtime size of: Session Configuration Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.session_configuration_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: Session Configuration Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.session_configuration_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Configuration Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.session_configuration_request_message.fields = function(buffer, offset, packet, parent, size_of_session_configuration_request_message)
  local index = offset

  -- Username: char(16)
  index, username = nyse_arcaoptions_binarygateway_pillarstream_v3_27.username.dissect(buffer, index, packet, parent)

  -- Cancel On Disconnect: u8
  index, cancel_on_disconnect = nyse_arcaoptions_binarygateway_pillarstream_v3_27.cancel_on_disconnect.dissect(buffer, index, packet, parent)

  -- Throttle Preference: u8
  index, throttle_preference = nyse_arcaoptions_binarygateway_pillarstream_v3_27.throttle_preference.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention: u8
  index, self_trade_prevention = nyse_arcaoptions_binarygateway_pillarstream_v3_27.self_trade_prevention.dissect(buffer, index, packet, parent)

  -- Order Priority Update Ack Subscription: u8
  index, order_priority_update_ack_subscription = nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_priority_update_ack_subscription.dissect(buffer, index, packet, parent)

  -- Bold Designation: u8
  index, bold_designation = nyse_arcaoptions_binarygateway_pillarstream_v3_27.bold_designation.dissect(buffer, index, packet, parent)

  -- Reserved 49: zchar(49)
  index, reserved_49 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_49.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Configuration Request Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.session_configuration_request_message.dissect = function(buffer, offset, packet, parent, size_of_session_configuration_request_message)
  local size_of_session_configuration_request_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.session_configuration_request_message.size(buffer, offset)
  local index = offset + size_of_session_configuration_request_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.session_configuration_request_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.session_configuration_request_message.fields(buffer, offset, packet, parent, size_of_session_configuration_request_message)
    parent:set_len(size_of_session_configuration_request_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.session_configuration_request_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.session_configuration_request_message.fields(buffer, offset, packet, parent, size_of_session_configuration_request_message)

    return index
  end
end

-- Client Sequenced Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_sequenced_message = {}

-- Dissect: Client Sequenced Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_sequenced_message.dissect = function(buffer, offset, packet, parent, seq_msg_type)
  -- Dissect Session Configuration Request Message
  if seq_msg_type == 0x0220 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.session_configuration_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Filler Message
  if seq_msg_type == 0x0282 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.sequenced_filler_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Message
  if seq_msg_type == 0x0248 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request Message
  if seq_msg_type == 0x0250 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Request Message
  if seq_msg_type == 0x0251 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.order_modify_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Bulk Quote Message
  if seq_msg_type == 0x0243 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_bulk_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Bulk Quote With Order Id Message
  if seq_msg_type == 0x0259 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_bulk_quote_with_order_id_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Cross Message
  if seq_msg_type == 0x0222 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_order_cross_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Cancel Request Message
  if seq_msg_type == 0x0223 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Cancel Request With Mp Sub Id Message
  if seq_msg_type == 0x0224 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.bulk_cancel_request_with_mp_sub_id_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Limit Update Request Message
  if seq_msg_type == 0x0330 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_limit_update_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Action Request Message
  if seq_msg_type == 0x0331 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.risk_action_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Series Request Message
  if seq_msg_type == 0x0357 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.new_complex_series_request_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Seq Msg
nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_seq_msg = {}

-- Read runtime size of: Client Seq Msg
nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_seq_msg.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset + 2, 2):le_uint()

  return msg_length
end

-- Display: Client Seq Msg
nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_seq_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Seq Msg
nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_seq_msg.fields = function(buffer, offset, packet, parent, size_of_client_seq_msg)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_header.dissect(buffer, index, packet, parent)

  -- Seq Msg Id: Struct of 2 fields
  index, seq_msg_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_id.dissect(buffer, index, packet, parent)

  -- Reserved 4: u32
  index, reserved_4 = nyse_arcaoptions_binarygateway_pillarstream_v3_27.reserved_4.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_arcaoptions_binarygateway_pillarstream_v3_27.timestamp.dissect(buffer, index, packet, parent)

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_arcaoptions_binarygateway_pillarstream_v3_27.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Type
  local seq_msg_type = buffer(index - 4, 2):le_uint()

  -- Client Sequenced Message: Runtime Type with 13 branches
  index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_sequenced_message.dissect(buffer, index, packet, parent, seq_msg_type)

  return index
end

-- Dissect: Client Seq Msg
nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_seq_msg.dissect = function(buffer, offset, packet, parent, size_of_client_seq_msg)
  local size_of_client_seq_msg = nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_seq_msg.size(buffer, offset)
  local index = offset + size_of_client_seq_msg

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.client_seq_msg, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_seq_msg.fields(buffer, offset, packet, parent, size_of_client_seq_msg)
    parent:set_len(size_of_client_seq_msg)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_seq_msg.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_seq_msg.fields(buffer, offset, packet, parent, size_of_client_seq_msg)

    return index
  end
end

-- Close
nyse_arcaoptions_binarygateway_pillarstream_v3_27.close = {}

-- Read runtime size of: Close
nyse_arcaoptions_binarygateway_pillarstream_v3_27.close.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset + 2, 2):le_uint()

  return msg_length
end

-- Display: Close
nyse_arcaoptions_binarygateway_pillarstream_v3_27.close.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Close
nyse_arcaoptions_binarygateway_pillarstream_v3_27.close.fields = function(buffer, offset, packet, parent, size_of_close)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Close
nyse_arcaoptions_binarygateway_pillarstream_v3_27.close.dissect = function(buffer, offset, packet, parent, size_of_close)
  local size_of_close = nyse_arcaoptions_binarygateway_pillarstream_v3_27.close.size(buffer, offset)
  local index = offset + size_of_close

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.close, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.close.fields(buffer, offset, packet, parent, size_of_close)
    parent:set_len(size_of_close)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.close.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.close.fields(buffer, offset, packet, parent, size_of_close)

    return index
  end
end

-- Open
nyse_arcaoptions_binarygateway_pillarstream_v3_27.open = {}

-- Read runtime size of: Open
nyse_arcaoptions_binarygateway_pillarstream_v3_27.open.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset + 2, 2):le_uint()

  return msg_length
end

-- Display: Open
nyse_arcaoptions_binarygateway_pillarstream_v3_27.open.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open
nyse_arcaoptions_binarygateway_pillarstream_v3_27.open.fields = function(buffer, offset, packet, parent, size_of_open)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_arcaoptions_binarygateway_pillarstream_v3_27.stream_id.dissect(buffer, index, packet, parent)

  -- Start Seq: 8 Byte Unsigned Fixed Width Integer
  index, start_seq = nyse_arcaoptions_binarygateway_pillarstream_v3_27.start_seq.dissect(buffer, index, packet, parent)

  -- End Seq: 8 Byte Unsigned Fixed Width Integer
  index, end_seq = nyse_arcaoptions_binarygateway_pillarstream_v3_27.end_seq.dissect(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_arcaoptions_binarygateway_pillarstream_v3_27.access.dissect(buffer, index, packet, parent)

  -- Mode: 1 Byte Unsigned Fixed Width Integer
  index, mode = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mode.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open
nyse_arcaoptions_binarygateway_pillarstream_v3_27.open.dissect = function(buffer, offset, packet, parent, size_of_open)
  local size_of_open = nyse_arcaoptions_binarygateway_pillarstream_v3_27.open.size(buffer, offset)
  local index = offset + size_of_open

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.open, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.open.fields(buffer, offset, packet, parent, size_of_open)
    parent:set_len(size_of_open)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.open.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.open.fields(buffer, offset, packet, parent, size_of_open)

    return index
  end
end

-- Login Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.login_message = {}

-- Read runtime size of: Login Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.login_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset + 2, 2):le_uint()

  return msg_length
end

-- Display: Login Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.login_message.fields = function(buffer, offset, packet, parent, size_of_login_message)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_header.dissect(buffer, index, packet, parent)

  -- Username: char(16)
  index, username = nyse_arcaoptions_binarygateway_pillarstream_v3_27.username.dissect(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String
  index, password = nyse_arcaoptions_binarygateway_pillarstream_v3_27.password.dissect(buffer, index, packet, parent)

  -- Mic: char(4)
  index, mic = nyse_arcaoptions_binarygateway_pillarstream_v3_27.mic.dissect(buffer, index, packet, parent)

  -- Version: 20 Byte Ascii String
  index, version = nyse_arcaoptions_binarygateway_pillarstream_v3_27.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.login_message.dissect = function(buffer, offset, packet, parent, size_of_login_message)
  local size_of_login_message = nyse_arcaoptions_binarygateway_pillarstream_v3_27.login_message.size(buffer, offset)
  local index = offset + size_of_login_message

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.fields.login_message, buffer(offset, 0))
    local current = nyse_arcaoptions_binarygateway_pillarstream_v3_27.login_message.fields(buffer, offset, packet, parent, size_of_login_message)
    parent:set_len(size_of_login_message)
    local display = nyse_arcaoptions_binarygateway_pillarstream_v3_27.login_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_binarygateway_pillarstream_v3_27.login_message.fields(buffer, offset, packet, parent, size_of_login_message)

    return index
  end
end

-- Client Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_message = {}

-- Dissect: Client Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_message.dissect = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Login Message
  if msg_type == 0x0201 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if msg_type == 0x0204 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open
  if msg_type == 0x0205 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.open.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Close
  if msg_type == 0x0207 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.close.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Seq Msg
  if msg_type == 0x0905 then
    return nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_seq_msg.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Pillar Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_pillar_message = {}

-- Verify required size of Tcp packet
nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_pillar_message.requiredsize = function(buffer)
  return buffer:len() >= nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_type.size
end

-- Dissect Client Pillar Message
nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_pillar_message.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency element: Msg Type
  local msg_type = buffer(index, 2):le_uint()

  -- Client Message: Runtime Type with 5 branches
  index = nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_message.dissect(buffer, index, packet, parent, msg_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.init()
end

-- Connection roles for Nyse ArcaOptions BinaryGateway PillarStream 3.27: Client is the initiator, Server is the acceptor
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
nyse_arcaoptions_binarygateway_pillarstream_v3_27.role = function(packet)
  if omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.acceptor_port

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

  if omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.prefs.swap_sides then
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
nyse_arcaoptions_binarygateway_pillarstream_v3_27.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nyse ArcaOptions BinaryGateway PillarStream 3.27
function omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.name

  local role = nyse_arcaoptions_binarygateway_pillarstream_v3_27.role(packet)
  local dissect = nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_pillar_message.dissect
  if role == "initiator" then
    dissect = nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_pillar_message.dissect
  end

  local length = buffer:len()
  local index = 0

  -- Dissect each message the segment carries
  while index < length do
    local remaining = length - index

    -- The message length lives in the header: wait for the header before reading it
    if remaining < nyse_arcaoptions_binarygateway_pillarstream_v3_27.msg_header.size then
      packet.desegment_offset = index
      packet.desegment_len = DESEGMENT_ONE_MORE_SEGMENT
      return length
    end

    local size = buffer(index + 2, 2):le_uint()
    -- A message split across segments: ask TCP for exactly the bytes still missing
    if remaining < size then
      packet.desegment_offset = index
      packet.desegment_len = size - remaining
      return length
    end

    local protocol = parent:add(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27, buffer(index, size), omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.description, "("..size.." Bytes)")
    dissect(buffer(index, size):tvb(), packet, protocol)
    protocol:set_len(size)
    index = index + size
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Pillar Message: would its message dispatch accept this frame?
nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_pillar_message.fingerprint = function(buffer)
  if buffer:len() < 2 then
    return false
  end

  local msg_type = buffer(0, 2):le_uint()

  -- Login Message
  if msg_type == 0x0201 then
    return true
  end

  -- Heartbeat
  if msg_type == 0x0204 then
    return true
  end

  -- Open
  if msg_type == 0x0205 then
    return true
  end

  -- Close
  if msg_type == 0x0207 then
    return true
  end

  -- Client Seq Msg: carries the application messages, which tell this protocol from others sharing the session framing
  if msg_type == 0x0905 then
    if buffer:len() < 34 then
      return false
    end

    local seq_msg_type = buffer(32, 2):le_uint()

    -- Session Configuration Request Message
    if seq_msg_type == 0x0220 then
      return true
    end

    -- Sequenced Filler Message
    if seq_msg_type == 0x0282 then
      return true
    end

    -- New Order Message
    if seq_msg_type == 0x0248 then
      return true
    end

    -- Order Cancel Request Message
    if seq_msg_type == 0x0250 then
      return true
    end

    -- Order Modify Request Message
    if seq_msg_type == 0x0251 then
      return true
    end

    -- New Bulk Quote Message
    if seq_msg_type == 0x0243 then
      return true
    end

    -- New Bulk Quote With Order Id Message
    if seq_msg_type == 0x0259 then
      return true
    end

    -- New Order Cross Message
    if seq_msg_type == 0x0222 then
      return true
    end

    -- Bulk Cancel Request Message
    if seq_msg_type == 0x0223 then
      return true
    end

    -- Bulk Cancel Request With Mp Sub Id Message
    if seq_msg_type == 0x0224 then
      return true
    end

    -- Risk Limit Update Request Message
    if seq_msg_type == 0x0330 then
      return true
    end

    -- Risk Action Request Message
    if seq_msg_type == 0x0331 then
      return true
    end

    -- New Complex Series Request Message
    if seq_msg_type == 0x0357 then
      return true
    end

    return false
  end

  return false
end

-- Fingerprint of Server Pillar Message: would its message dispatch accept this frame?
nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_pillar_message.fingerprint = function(buffer)
  if buffer:len() < 2 then
    return false
  end

  local msg_type = buffer(0, 2):le_uint()

  -- Login Response
  if msg_type == 0x0202 then
    return true
  end

  -- Stream Avail
  if msg_type == 0x0203 then
    return true
  end

  -- Heartbeat
  if msg_type == 0x0204 then
    return true
  end

  -- Open Response
  if msg_type == 0x0206 then
    return true
  end

  -- Close Response
  if msg_type == 0x0208 then
    return true
  end

  -- Server Seq Msg: carries the application messages, which tell this protocol from others sharing the session framing
  if msg_type == 0x0905 then
    if buffer:len() < 34 then
      return false
    end

    local seq_msg_type = buffer(32, 2):le_uint()

    -- Underlying Symbol Reference Data Message
    if seq_msg_type == 0x0233 then
      return true
    end

    -- Series Reference Data Message
    if seq_msg_type == 0x0234 then
      return true
    end

    -- Minimum Price Variant Class Reference Data Message
    if seq_msg_type == 0x0230 then
      return true
    end

    -- Minimum Price Variant Level Reference Data Message
    if seq_msg_type == 0x0231 then
      return true
    end

    -- Mpid Configuration Message
    if seq_msg_type == 0x0272 then
      return true
    end

    -- Options Market Maker Symbol Appointment Reference Data Message
    if seq_msg_type == 0x0833 then
      return true
    end

    -- Session Configuration Acknowledgement Message
    if seq_msg_type == 0x0221 then
      return true
    end

    -- Order And Cancel Replace Acknowledgement Message
    if seq_msg_type == 0x0269 then
      return true
    end

    -- Bulk Quote Acknowledgment Message
    if seq_msg_type == 0x0294 then
      return true
    end

    -- Bulk Quote Acknowledgment With Details Message
    if seq_msg_type == 0x0308 then
      return true
    end

    -- Order Single Complex Modify Cancel Request Acknowledgment And Urout Message
    if seq_msg_type == 0x0278 then
      return true
    end

    -- Order Priority Update Acknowledgment Message
    if seq_msg_type == 0x0268 then
      return true
    end

    -- Execution Report Message
    if seq_msg_type == 0x0295 then
      return true
    end

    -- Trade Bust Correct Message
    if seq_msg_type == 0x0293 then
      return true
    end

    -- Application Layer Reject Message
    if seq_msg_type == 0x0267 then
      return true
    end

    -- Risk Control Acknowledgement Message
    if seq_msg_type == 0x0332 then
      return true
    end

    -- Risk Control Alert Message
    if seq_msg_type == 0x0333 then
      return true
    end

    -- Complex Series Request Acknowledgement Message
    if seq_msg_type == 0x0358 then
      return true
    end

    return false
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nyse ArcaOptions BinaryGateway PillarStream 3.27 (Tcp)
local function omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_pillar_message.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client pillar message message dispatch
  if not nyse_arcaoptions_binarygateway_pillarstream_v3_27.client_pillar_message.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27
  omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nyse ArcaOptions BinaryGateway PillarStream 3.27 (Tcp)
local function omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_pillar_message.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server pillar message message dispatch
  if not nyse_arcaoptions_binarygateway_pillarstream_v3_27.server_pillar_message.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27
  omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nyse ArcaOptions BinaryGateway PillarStream 3.27 (Tcp): apply the heuristic of the sender's connection role
local function omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27_tcp_heuristic(buffer, packet, parent)
  local role = nyse_arcaoptions_binarygateway_pillarstream_v3_27.role(packet)
  local initiator = omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27_tcp_initiator_heuristic
  local acceptor = omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nyse_arcaoptions_binarygateway_pillarstream_v3_27.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nyse_arcaoptions_binarygateway_pillarstream_v3_27.swap(packet)

  return false
end

-- Register Heuristics for Nyse ArcaOptions BinaryGateway PillarStream 3.27
omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27:register_heuristic("tcp", omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27_tcp_heuristic)

-- Register Nyse ArcaOptions BinaryGateway PillarStream 3.27 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nyse_arcaoptions_binarygateway_pillarstream_v3_27)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 3.27
--   Since: 3.24
--   Date: Tuesday, July 21, 2026
--   Specification: NYSE_Pillar_Options_Gateway_Binary_Protocol_Specification.pdf
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
